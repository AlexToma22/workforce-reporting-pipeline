-- Departments table
CREATE TABLE IF NOT EXISTS departments (
    department_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    department_name VARCHAR(50) NOT NULL UNIQUE,
    monthly_budget DECIMAL(12, 2) NOT NULL,
    german_market_sync_code VARCHAR(10) NOT NULL UNIQUE
);

-- Employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    department_ID INTEGER,
    role_ID INTEGER,
    is_active INTEGER DEFAULT 1,     -- 1 for active, 0 for inactive/terminated
    FOREIGN KEY (department_ID) REFERENCES departments(department_ID) ON DELETE SET NULL
    FOREIGN KEY (role_ID) REFERENCES roles(role_ID) ON DELETE SET NULL
);

-- Roles/Job Titles table
CREATE TABLE IF NOT EXISTS roles (
    role_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    role_title VARCHAR(50) NOT NULL UNIQUE,
    is_management INTEGER DEFAULT 0            -- 1 for managers, 0 for frontline operators
);

-- Languages spoken table
CREATE TABLE IF NOT EXISTS languages (
    language_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    language_code VARCHAR(5) NOT NULL UNIQUE, -- 'DE', 'EN', 'PT', 'RO'
    language_name VARCHAR(30) NOT NULL
);

-- Employees-Languages Table M-to-N Bridge
CREATE TABLE IF NOT EXISTS employee_languages (
    employee_ID INTEGER,
    language_ID INTEGER,
    PRIMARY KEY (employee_ID, language_ID), -- Composite Primary Key prevents duplicate links
    FOREIGN KEY (employee_ID) REFERENCES employees(employee_ID) ON DELETE CASCADE,
    FOREIGN KEY (language_ID) REFERENCES languages(language_ID) ON DELETE RESTRICT
);

-- Shift master table (fixed shift times)
CREATE TABLE IF NOT EXISTS shifts (
    shift_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    shift_code VARCHAR(10) NOT NULL UNIQUE,     -- e.g., 'EARLY_NS', 'LATE_DS', 'NIGHT_A'
    shift_name VARCHAR(50) NOT NULL,            -- e.g., 'Morning Fulfillment Shift'
    scheduled_start_time TIME NOT NULL,         -- e.g., '06:00:00'
    scheduled_end_time TIME NOT NULL            -- e.g., '14:30:00'
);

-- Employee timestamps
CREATE TABLE IF NOT EXISTS employee_timestamps (
    timestamp_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_ID INTEGER,
    shift_ID INTEGER,                                   -- Maps to the master shift they were scheduled for
    work_date DATE NOT NULL,
    clock_in DATETIME NOT NULL,
    clock_out DATETIME NOT NULL,
    attendance_status VARCHAR(20) DEFAULT 'Present',    -- 'Present', 'Absent', 'Late', 'Sick'
    FOREIGN KEY (employee_ID) REFERENCES employees(employee_ID) ON DELETE CASCADE,
    FOREIGN KEY (shift_ID) REFERENCES shifts(shift_ID) ON DELETE SET NULL
);

-- Employee production performance
CREATE TABLE IF NOT EXISTS production_performance (
    performance_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_ID INTEGER,
    work_date DATE NOT NULL,
    units_processed INTEGER NOT NULL,                   -- Quantity of output
    quality_score_percentage DECIMAL(5, 2) NOT NULL,    -- e.g., 99.45 (Accuracy rate / error-free scans)
    FOREIGN KEY (employee_ID) REFERENCES employees(employee_ID) ON DELETE CASCADE
);

-- Department
CREATE TABLE IF NOT EXISTS operational_costs (
    cost_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    department_ID INTEGER,
    billing_period VARCHAR(7) NOT NULL,        -- Format: 'MM-YYYY'
    equipment_maintenance DECIMAL(10, 2) NOT NULL,
    software_licensing DECIMAL(10, 2) NOT NULL,
    facility_overhead DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department_ID) REFERENCES departments(department_ID) ON DELETE CASCADE
);