
INSERT INTO departments (department_ID, department_name, monthly_budget, german_market_sync_code) VALUES 
(1, 'Inbound Fulfillment', 85000.00, 'DE-MUC-INB'),
(2, 'Outbound Sorting', 95000.00, 'DE-MUC-OUT'),
(3, 'Quality Assurance', 35000.00, 'DE-MUC-QAS'),
(4, 'Human Resources & Staffing', 45000.00, 'DE-MUC-HRS'),
(5, 'IT Infrastructure & Support', 60000.00, 'DE-MUC-ITS'),
(6, 'Payroll & Corporate Finance', 55000.00, 'DE-MUC-FIN'),
(7, 'Workplace Health & Safety', 30000.00, 'DE-MUC-WHS'),
(8, 'Loss Prevention & Security', 40000.00, 'DE-MUC-SEC');


INSERT INTO employees (employee_ID, first_name, last_name, hire_date, department_ID, role_ID, is_active) VALUES 
(1, 'Alex', 'Toma', '2024-01-15', 5, 3, 1),             -- IT Infrastructure Lead
(2, 'Ana', 'Antonie', '2024-03-22', 4, 10, 1),          -- HR Lead
(3, 'Abigail', 'Alexandrescu', '2024-06-01', 1, 2, 1),
(4, 'Alexandru', 'Aron', '2024-09-10', 2, 2, 1),  
(5, 'Alina', 'Althaus', '2025-01-10', 6, 6, 1),         -- Payroll Analyst
(6, 'Antonia', 'Albers', '2025-02-15', 4, 5, 1),        -- HR Operations Partner
(7, 'Andrei', 'Adimei', '2025-04-01', 5, 4, 1),      
(8, 'Bert', 'Baake', '2025-05-20', 7, 2, 1),           
(9, 'Bernardo', 'Barbosa', '2025-05-20', 1, 2, 1),
(10, 'Baltasar', 'Borges', '2025-05-20', 2, 2, 1),
(11, 'Beatriz', 'Barros', '2024-02-10', 2, 2, 1),
(12, 'Bogdan', 'Baciu', '2024-04-15', 8, 7, 1),         -- Security Guard
(13, 'Bruno', 'Brandao', '2024-07-19', 5, 4, 1),
(14, 'Carmen', 'Cojocaru', '2024-10-05', 4, 5, 1),      -- HR Operations Partner
(15, 'Catarina', 'Cardoso', '2025-01-05', 1, 2, 1),
(16, 'Catalin', 'Craciun', '2025-03-01', 3, 2, 1),
(17, 'Christian', 'Claus', '2025-05-12', 6, 6, 1),      -- Payroll Analyst
(18, 'Daniel', 'Dima', '2024-01-20', 1, 1, 1),          -- Logistics Operations Manager
(19, 'Dieter', 'Dierks', '2024-05-18', 2, 2, 1),
(20, 'Diogo', 'Dias', '2024-08-22', 8, 7, 1),           -- Security Guard
(21, 'Elena', 'Enache', '2024-11-14', 4, 5, 1),         -- HR Operations Partner
(22, 'Eduardo', 'Esteves', '2025-02-20', 2, 2, 1),
(23, 'Elsa', 'Ebert', '2025-06-02', 3, 2, 1),
(24, 'Florin', 'Filip', '2024-03-10', 1, 2, 1),
(25, 'Franziska', 'Fuchs', '2024-06-25', 5, 4, 1),
(26, 'Filipa', 'Fonseca', '2024-09-30', 7, 2, 1),
(27, 'Gabriel', 'Gheorghe', '2025-01-18', 2, 2, 1),
(28, 'Gisela', 'Grote', '2025-04-05', 6, 6, 1),         -- Payroll Analyst
(29, 'Goncalo', 'Gomes', '2025-06-15', 1, 2, 1),
(30, 'Hans', 'Hermann', '2024-02-28', 8, 7, 1),         -- Security Guard
(31, 'Horia', 'Haiduc', '2024-07-04', 3, 2, 1),
(32, 'Helena', 'Henriques', '2024-11-20', 2, 2, 1),
(33, 'Ines', 'Iliescu', '2025-02-28', 4, 5, 1),         -- HR Operations Partner
(34, 'Igor', 'Imhoff', '2025-05-30', 5, 4, 1),
(35, 'Joao', 'Jacinto', '2024-04-01', 1, 2, 1),
(36, 'Julia', 'Jaeger', '2024-08-12', 7, 2, 1),
(37, 'Klaus', 'Klein', '2024-12-01', 5, 3, 1),          -- IT Infrastructure Lead
(38, 'Laura', 'Lazar', '2025-03-15', 2, 2, 1),
(39, 'Luis', 'Lopes', '2025-06-10', 1, 2, 1),
(40, 'Marius', 'Marin', '2024-03-18', 6, 6, 1),         -- Payroll Analyst
(41, 'Margarida', 'Martins', '2024-08-25', 4, 5, 1),    -- HR Operations Partner
(42, 'Mathias', 'Mayer', '2025-01-22', 2, 2, 1),
(43, 'Nicolae', 'Nistor', '2025-04-18', 1, 2, 1),
(44, 'Oana', 'Olaru', '2024-05-02', 3, 2, 1),
(45, 'Pedro', 'Pereira', '2024-10-12', 2, 2, 1),
(46, 'Radu', 'Rusu', '2025-02-05', 8, 7, 1),            -- Security Guard
(47, 'Ricardo', 'Rocha', '2025-05-18', 5, 4, 1),
(48, 'Stefan', 'Stoica', '2024-06-30', 1, 2, 1),
(49, 'Sofia', 'Santos', '2024-12-15', 2, 2, 1),
(50, 'Thomas', 'Thiel', '2025-04-22', 7, 2, 1),
(51, 'Uwe', 'Ullrich', '2024-08-14', 1, 2, 1),
(52, 'Yannick', 'Young', '2024-01-10', 8, 8, 1),        -- Security Lead
(53, 'Ute', 'Unger', '2025-02-11', 2, 2, 1),
(54, 'Vasile', 'Vasilescu', '2024-05-19', 1, 2, 1),
(55, 'Ursula', 'Ullmann', '2024-02-15', 2, 1, 1),       -- Logistics Operations Manager
(56, 'Viktoria', 'Vogel', '2025-03-24', 2, 2, 1),
(57, 'Victor', 'Vasilescu', '2024-03-01', 3, 1, 1),     -- Logistics Operations Manager
(58, 'Valerie', 'Vargas', '2025-01-15', 5, 4, 1),
(59, 'Werner', 'Wagner', '2024-01-05', 6, 9, 1),        -- Payroll Lead
(60, 'Xenia', 'Xavier', '2024-02-20', 7, 11, 1);        -- Workplace Compliance Manager


INSERT INTO roles (role_ID, role_title, is_management) VALUES 
(1, 'Logistics Operations Manager', 1),
(2, 'Warehouse Fulfillment Associate', 0),
(3, 'IT Infrastructure Lead', 1),
(4, 'Technical Support Specialist', 0),
(5, 'HR Operations Partner', 0),
(6, 'Payroll Analyst', 0),
(7, 'Security Guard', 0),
(8, 'Security Lead', 1),
(9, 'Payroll Lead', 1),
(10, 'HR Lead', 1),
(11, 'Workplace Compliance Manager', 1);


INSERT INTO languages (language_ID, language_code, language_name) VALUES 
(1, 'DE', 'German'),
(2, 'EN', 'English'),
(3, 'PT', 'Portuguese'),
(4, 'RO', 'Romanian');


INSERT INTO employee_languages (employee_ID, language_ID) VALUES 
-- 1-10
(1, 1), (1, 2), (1, 3), (1, 4), -- Alex Toma (IT Infrastructure Lead): DE, EN, PT, RO
(2, 1), (2, 2), (2, 4),         -- Ana Antonie (HR Lead): DE, EN, RO (HR Compliance)
(3, 4),                         -- Abigail Alexandrescu (Inbound Floor): RO (Native Only)
(4, 2), (4, 4),                 -- Alexandru Aron (Outbound Floor): EN, RO
(5, 2), (5, 4),                 -- Alina Althaus (Payroll Analyst): EN, RO (Payroll Compliance: EN + RO)
(6, 1), (6, 2),                 -- Antonia Albers (HR Operations Partner): DE, EN (HR Compliance)
(7, 2), (7, 4),                 -- Andrei Adimei (Tech Support Specialist): EN, RO (IT Compliance: EN minimum)
(8, 1), (8, 4),                 -- Bert Baake (Health & Safety Floor): DE, RO (H&S Compliance)
(9, 3),                         -- Bernardo Barbosa (Inbound Floor): PT (Native Only)
(10, 2), (10, 3),               -- Baltasar Borges (Outbound Floor): EN, PT

-- 11-20
(11, 3),                        -- Beatriz Barros (Outbound Floor): PT (Native Only)
(12, 4),                        -- Bogdan Baciu (Security Guard): RO (Security Compliance: EN or RO)
(13, 2), (13, 4),               -- Bruno Brandao (Tech Support Specialist): EN, RO (IT Compliance: EN minimum)
(14, 2), (14, 4),               -- Carmen Cojocaru (HR Operations Partner): EN, RO (HR Compliance)
(15, 2), (15, 3),               -- Catarina Cardoso (Inbound Floor): EN, PT
(16, 2), (16, 4),               -- Catalin Craciun (QA Floor): EN, RO (QA Compliance: EN mandatory)
(17, 2), (17, 4),               -- Christian Claus (Payroll Analyst): EN, RO (Payroll Compliance: EN + RO)
(18, 2), (18, 4),               -- Daniel Dima (Logistics Operations Manager): EN, RO (Manager Compliance: EN minimum)
(19, 1), (19, 2),               -- Dieter Dierks (Outbound Floor): DE, EN
(20, 2),                        -- Diogo Dias (Security Guard): EN (Security Compliance: EN or RO)

-- 21-30
(21, 1), (21, 4),               -- Elena Enache (HR Operations Partner): DE, RO (HR Compliance)
(22, 2), (22, 3),               -- Eduardo Esteves (Outbound Floor): EN, PT
(23, 2), (23, 4),               -- Elsa Ebert (QA Floor): EN, RO (QA Compliance: EN mandatory)
(24, 4),                        -- Florin Filip (Inbound Floor): RO (Native Only)
(25, 1), (25, 2),               -- Franziska Fuchs (Tech Support Specialist): DE, EN (IT Compliance: EN minimum)
(26, 1), (26, 2), (26, 4),      -- Filipa Fonseca (Health & Safety Floor): DE, EN, RO (H&S Compliance)
(27, 2), (27, 4),               -- Gabriel Gheorghe (Outbound Floor): EN, RO
(28, 2), (28, 4),               -- Gisela Grote (Payroll Analyst): EN, RO (Payroll Compliance: EN + RO)
(29, 2), (29, 3),               -- Goncalo Gomes (Inbound Floor): EN, PT
(30, 4),                        -- Hans Hermann (Security Guard): RO (Security Compliance: EN or RO)

-- 31-40
(31, 2), (31, 4),               -- Horia Haiduc (QA Floor): EN, RO (QA Compliance: EN mandatory)
(32, 2), (32, 3),               -- Helena Henriques (Outbound Floor): EN, PT
(33, 1), (33, 2),               -- Ines Iliescu (HR Operations Partner): DE, EN (HR Compliance)
(34, 2),                        -- Igor Imhoff (Tech Support Specialist): EN (IT Compliance: EN minimum)
(35, 2), (35, 3),               -- Joao Jacinto (Inbound Floor): EN, PT
(36, 1), (36, 2), (36, 4),      -- Julia Jaeger (Health & Safety Floor): DE, EN, RO (H&S Compliance)
(37, 1), (37, 2), (37, 4),      -- Klaus Klein (IT Infrastructure Lead): DE, EN, RO (IT Compliance: EN minimum)
(38, 2), (38, 4),               -- Laura Lazar (Outbound Floor): EN, RO
(39, 3),                        -- Luis Lopes (Inbound Floor): PT (Native Only)
(40, 2), (40, 4),               -- Marius Marin (Payroll Analyst): EN, RO (Payroll Compliance: EN + RO)

-- 41-50
(41, 1), (41, 2),               -- Margarida Martins (HR Operations Partner): DE, EN (HR Compliance)
(42, 2), (42, 4),               -- Mathias Mayer (Outbound Floor): EN, RO
(43, 4),                        -- Nicolae Nistor (Inbound Floor): RO (Native Only)
(44, 2),                        -- Oana Olaru (QA Floor): EN (QA Compliance: EN mandatory)
(45, 2), (45, 3),               -- Pedro Pereira (Outbound Floor): EN, PT
(46, 4),                        -- Radu Rusu (Security Guard): RO (Security Compliance: EN or RO)
(47, 2), (47, 4),               -- Ricardo Rocha (Tech Support Specialist): EN, RO (IT Compliance: EN minimum)
(48, 2), (48, 4),               -- Stefan Stoica (Inbound Floor): EN, RO
(49, 2), (49, 3),               -- Sofia Santos (Outbound Floor): EN, PT
(50, 1), (50, 2),               -- Thomas Thiel (Health & Safety Floor): DE, EN (H&S Compliance)

-- 51-60
(51, 1), (51, 2),               -- Uwe Ullrich (Inbound Floor): DE, EN
(52, 2), (52, 4),               -- Yannick Young (Security Lead): EN, RO (Both Mandatory)
(53, 4),                        -- Ute Unger (Outbound Floor): RO (Native Only)
(54, 4),                        -- Vasile Vasilescu (Inbound Floor): RO (Native Only)
(55, 1), (55, 2),               -- Ursula Ullmann (Logistics Operations Manager): DE, EN (Manager Compliance: EN minimum)
(56, 2),                        -- Viktoria Vogel (Outbound Floor): EN
(57, 2), (57, 4),               -- Victor Vasilescu (Logistics Operations Manager): EN, RO (Manager Compliance: EN minimum)
(58, 2), (58, 4),               -- Valerie Vargas (Tech Support Specialist): EN, RO (IT Compliance: EN minimum)
(59, 2), (59, 4),               -- Werner Wagner (Payroll Lead): EN, RO (Payroll Compliance: EN + RO)
(60, 1), (60, 2);               -- Xenia Xavier (Workplace Compliance Manager): DE, EN (H&S Compliance)


INSERT INTO shifts (shift_ID, shift_code, shift_name, scheduled_start_time, scheduled_end_time) VALUES 
(1, 'EARLY_DS', 'Early Day Shift', '06:00:00', '14:30:00'),
(2, 'LATE_DS', 'Late Day Shift', '14:30:00', '23:00:00'),
(3, 'NIGHT_NS', 'Night Network Shift', '23:00:00', '06:30:00');


INSERT INTO employee_timestamps (employee_ID, shift_ID, work_date, clock_in, clock_out, attendance_status) VALUES 
-- DAY 1: JUNE 22, 2026
(3, 1, '2026-06-22', '2026-06-22 05:55:00', '2026-06-22 14:32:00', 'Present'), -- Abigail (Inbound)
(4, 2, '2026-06-22', '2026-06-22 14:25:00', '2026-06-22 23:01:00', 'Present'), -- Alexandru (Outbound)
(5, 1, '2026-06-22', '2026-06-22 05:58:00', '2026-06-22 14:30:00', 'Present'), -- Alina (Payroll)
(7, 1, '2026-06-22', '2026-06-22 06:12:00', '2026-06-22 14:30:00', 'Late'),    -- Andrei (IT Support): 12m Late
(8, 1, '2026-06-22', '2026-06-22 06:15:00', '2026-06-22 14:30:00', 'Late'),    -- Bert (Health & Safety): 15m Late
(9, 1, '2026-06-22', '2026-06-22 05:52:00', '2026-06-22 14:30:00', 'Present'), -- Bernardo (Inbound)
(10, 2, '2026-06-22', '2026-06-22 14:28:00', '2026-06-22 23:00:00', 'Present'),-- Baltasar (Outbound)
(11, 2, '2026-06-22', '2026-06-22 14:22:00', '2026-06-22 23:05:00', 'Present'),-- Beatriz (Outbound)
(12, 1, '2026-06-22', '2026-06-22 05:50:00', '2026-06-22 14:30:00', 'Present'),-- Bogdan (Security)
(13, 1, '2026-06-22', '2026-06-22 05:57:00', '2026-06-22 14:30:00', 'Present'),-- Bruno (IT Support)
(15, 1, '2026-06-22', '2026-06-22 05:54:00', '2026-06-22 14:30:00', 'Present'),-- Catarina (Inbound)
(16, 1, '2026-06-22', '2026-06-22 05:56:00', '2026-06-22 14:31:00', 'Present'),-- Catalin (QA)
(17, 1, '2026-06-22', '2026-06-22 06:05:00', '2026-06-22 14:30:00', 'Late'),    -- Christian (Payroll): 5m Late
(19, 2, '2026-06-22', '2026-06-22 14:29:00', '2026-06-22 23:00:00', 'Present'),-- Dieter (Outbound)
(20, 2, '2026-06-22', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'Absent'), -- Diogo (Security): No-Show
(22, 2, '2026-06-22', '2026-06-22 14:45:00', '2026-06-22 23:00:00', 'Late'),    -- Eduardo (Outbound): 15m Late
(23, 1, '2026-06-22', '2026-06-22 05:59:00', '2026-06-22 14:30:00', 'Present'),-- Elsa (QA)
(24, 1, '2026-06-22', '2026-06-22 05:53:00', '2026-06-22 14:30:00', 'Present'),-- Florin (Inbound)
(25, 1, '2026-06-22', '2026-06-22 05:55:00', '2026-06-22 14:30:00', 'Present'),-- Franziska (IT Support)
(26, 1, '2026-06-22', '2026-06-22 05:58:00', '2026-06-22 14:30:00', 'Present'),-- Filipa (Health & Safety)

-- DAY 2: JUNE 23, 2026
(3, 1, '2026-06-23', '2026-06-23 05:58:00', '2026-06-23 14:30:00', 'Present'), -- Abigail (Inbound)
(4, 2, '2026-06-23', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'Sick'),    -- Alexandru (Outbound): Sick Leave
(5, 1, '2026-06-23', '2026-06-23 05:57:00', '2026-06-23 14:30:00', 'Present'), -- Alina (Payroll)
(7, 1, '2026-06-23', '2026-06-23 05:54:00', '2026-06-23 14:30:00', 'Present'), -- Andrei (IT Support)
(8, 1, '2026-06-23', '2026-06-23 05:54:00', '2026-06-23 14:35:00', 'Present'), -- Bert (Health & Safety)
(9, 1, '2026-06-23', '2026-06-23 06:20:00', '2026-06-23 14:30:00', 'Late'),    -- Bernardo (Inbound): 20m Late
(10, 2, '2026-06-23', '2026-06-23 14:26:00', '2026-06-23 23:02:00', 'Present'),-- Baltasar (Outbound)
(11, 2, '2026-06-23', '2026-06-23 14:29:00', '2026-06-23 23:00:00', 'Present'),-- Beatriz (Outbound)
(12, 1, '2026-06-23', '2026-06-23 05:51:00', '2026-06-23 14:30:00', 'Present'),-- Bogdan (Security)
(13, 1, '2026-06-23', '2026-06-23 06:10:00', '2026-06-23 14:30:00', 'Late'),    -- Bruno (IT Support): 10m Late
(15, 1, '2026-06-23', '2026-06-23 05:55:00', '2026-06-23 14:30:00', 'Present'),-- Catarina (Inbound)
(16, 1, '2026-06-23', '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'Sick'),    -- Catalin (QA): Sick Leave
(17, 1, '2026-06-23', '2026-06-23 05:56:00', '2026-06-23 14:30:00', 'Present'), -- Christian (Payroll)
(19, 2, '2026-06-23', '2026-06-23 14:22:00', '2026-06-23 23:00:00', 'Present'), -- Dieter (Outbound)
(20, 2, '2026-06-23', '2026-06-23 14:27:00', '2026-06-23 23:00:00', 'Present'), -- Diogo (Security): Back to work
(22, 2, '2026-06-23', '2026-06-23 14:25:00', '2026-06-23 23:00:00', 'Present'), -- Eduardo (Outbound)
(23, 1, '2026-06-23', '2026-06-23 05:58:00', '2026-06-23 14:30:00', 'Present'), -- Elsa (QA)
(24, 1, '2026-06-23', '2026-06-23 05:52:00', '2026-06-23 14:30:00', 'Present'), -- Florin (Inbound)
(25, 1, '2026-06-23', '2026-06-23 05:54:00', '2026-06-23 14:30:00', 'Present'), -- Franziska (IT Support)
(26, 1, '2026-06-23', '2026-06-23 06:18:00', '2026-06-23 14:30:00', 'Late');


INSERT INTO production_performance (employee_ID, work_date, units_processed, quality_score_percentage) VALUES 
-- DAY 1: JUNE 22, 2026
(3, '2026-06-22', 450, 99.20),  -- Abigail (Inbound): Top quality
(4, '2026-06-22', 520, 91.50),  -- Alexandru (Outbound): High volume, critical quality drop
(9, '2026-06-22', 410, 97.40),  -- Bernardo (Inbound)
(10, '2026-06-22', 430, 98.10), -- Baltasar (Outbound)
(11, '2026-06-22', 480, 99.50), -- Beatriz (Outbound): Elite performance
(15, '2026-06-22', 390, 96.80), -- Catarina (Inbound)
(16, '2026-06-22', 310, 99.90), -- Catalin (QA): Slow volume, near perfect quality
(19, '2026-06-22', 440, 95.20), -- Dieter (Outbound)
(22, '2026-06-22', 320, 97.00), -- Eduardo (Outbound): Low volume due to lateness
(23, '2026-06-22', 340, 99.10), -- Elsa (QA)
(24, '2026-06-22', 460, 98.60), -- Florin (Inbound)

-- DAY 2: JUNE 23, 2026
(3, '2026-06-23', 465, 99.45),  -- Abigail (Inbound)
-- Alexandru (ID 4) is missing today because he clocked out 'Sick' in timestamps
(9, '2026-06-23', 350, 96.10),  -- Bernardo (Inbound): Drops volume due to lateness
(10, '2026-06-23', 440, 98.30), -- Baltasar (Outbound)
(11, '2026-06-23', 495, 99.70), -- Beatriz (Outbound): Dominant stats
(15, '2026-06-23', 415, 97.20), -- Catarina (Inbound)
-- Catalin (ID 16) is missing today because he clocked out 'Sick' in timestamps
(19, '2026-06-23', 420, 94.80), -- Dieter (Outbound): High errors warning
(22, '2026-06-23', 430, 98.00), -- Eduardo (Outbound): Normal speed today
(23, '2026-06-23', 355, 99.30), -- Elsa (QA)
(24, '2026-06-23', 470, 98.90); -- Florin (Inbound)