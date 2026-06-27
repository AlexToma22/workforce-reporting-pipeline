-- ============================================================================
-- QUERY 1: WORKFORCE SHIFT VARIANCE & LATENESS AUDIT
-- Objective: Identify punctuality violations across non-management tiers
-- ============================================================================

SELECT 
    e.employee_ID,
    e.first_name || ' ' || e.last_name AS employee_name,
    d.department_name,
    r.role_title,
    t.work_date,
    s.shift_code,
    s.scheduled_start_time,
    TIME(t.clock_in) AS punch_in_time,
    -- Calculate variance in minutes using SQLite's strftime unixepoch conversion
    ( (strftime('%s', t.clock_in) - strftime('%s', t.work_date || ' ' || s.scheduled_start_time)) / 60 ) AS lateness_minutes_delta

FROM employees e
INNER JOIN departments d ON e.department_ID = d.department_ID
INNER JOIN roles r ON e.role_ID = r.role_ID
INNER JOIN employee_timestamps t ON e.employee_ID = t.employee_ID
INNER JOIN shifts s ON t.shift_ID = s.shift_ID

WHERE t.attendance_status = 'Late'
ORDER BY lateness_minutes_delta DESC, t.work_date ASC;


-- Python splitter
-- ============================================================================
-- QUERY 2: PRODUCTION QUALITY & EFFICIENCY LEADERBOARD
-- Objective: Rank frontline (production) operators and isolate low-quality anomalies
-- ============================================================================

SELECT 
    e.employee_ID,
    e.first_name || ' ' || e.last_name AS employee_name,
    d.department_name,
    r.role_title,
    SUM(p.units_processed) AS total_volume_scanned,
    ROUND(AVG(p.quality_score_percentage), 2) AS average_quality_metric,
    -- Conditional alert flags for managers to capture variance
    CASE 
        WHEN AVG(p.quality_score_percentage) < 95.00 THEN '🔴 CRITICAL: Quality Below Baseline'
        WHEN AVG(p.quality_score_percentage) BETWEEN 95.00 AND 98.00 THEN '🟡 WARNING: Monitor Accuracy'
        ELSE '🟢 EXCELLENT: High Precision'
    END AS operational_compliance_status

FROM employees e
INNER JOIN departments d ON e.department_ID = d.department_ID
INNER JOIN roles r ON e.role_ID = r.role_ID
INNER JOIN production_performance p ON e.employee_ID = p.employee_ID

GROUP BY e.employee_ID, e.first_name, e.last_name, d.department_name, r.role_title
ORDER BY total_volume_scanned DESC;


-- Python splitter
-- ============================================================================
-- QUERY 3: CROSS-BORDER LANGUAGE COMPLIANCE AUDIT
-- Objective: Identify departmental risk profiles failing bilingual thresholds
-- ============================================================================

SELECT 
    e.employee_ID,
    e.first_name || ' ' || e.last_name AS employee_name,
    d.department_name,
    r.role_title,
    -- Generate counts for specific strategic languages per employee
    COUNT(CASE WHEN l.language_code = 'DE' THEN 1 END) AS speaks_german,
    COUNT(CASE WHEN l.language_code = 'EN' THEN 1 END) AS speaks_english,
    COUNT(CASE WHEN l.language_code = 'RO' THEN 1 END) AS speaks_romanian,
    COUNT(CASE WHEN l.language_code = 'PT' THEN 1 END) AS speaks_portuguese,
    COUNT(l.language_id) AS total_languages_spoken,
    
    -- Evaluate precise compliance logic based on departmental rules
    CASE 
        -- HR & Safety Rule: Mandatory at least 2 of 3 (DE, EN, RO)
        WHEN d.department_ID IN (4, 7) AND 
             (COUNT(CASE WHEN l.language_code IN ('DE', 'EN', 'RO') THEN 1 END) < 2) 
             THEN '❌ NON-COMPLIANT: Missing Core HR/Safety Pair'
             
        -- Payroll Rule: Mandatory at least BOTH English and Romanian
        WHEN d.department_ID = 6 AND 
             (COUNT(CASE WHEN l.language_code = 'EN' THEN 1 END) = 0 OR COUNT(CASE WHEN l.language_code = 'RO' THEN 1 END) = 0) 
             THEN '❌ NON-COMPLIANT: Missing Mandatory EN/RO Combo'
             
        -- IT Rule: Mandatory at least English
        WHEN d.department_ID = 5 AND 
             COUNT(CASE WHEN l.language_code = 'EN' THEN 1 END) = 0 
             THEN '❌ NON-COMPLIANT: Missing Technical English'
             
        -- Security Lead Rule: Manager (role_ID 8) mandatory BOTH English and Romanian
        WHEN d.department_ID = 8 AND r.role_ID = 8 AND 
             (COUNT(CASE WHEN l.language_code = 'EN' THEN 1 END) = 0 OR COUNT(CASE WHEN l.language_code = 'RO' THEN 1 END) = 0) 
             THEN '❌ NON-COMPLIANT: Security Lead Lacks Dual Fluency'
             
        ELSE '✅ COMPLIANT'
    END AS language_compliance_status

FROM employees e
INNER JOIN departments d ON e.department_ID = d.department_ID
INNER JOIN roles r ON e.role_ID = r.role_ID
INNER JOIN employee_languages el ON e.employee_ID = el.employee_ID
INNER JOIN languages l ON el.language_ID = l.language_ID

GROUP BY e.employee_ID, e.first_name, e.last_name, d.department_ID, d.department_name, r.role_ID, r.role_title
ORDER BY language_compliance_status ASC, d.department_name ASC;