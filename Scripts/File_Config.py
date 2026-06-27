from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
DB_PATH = BASE_DIR / "Database" / "workforce_warehouse.db"
SQL_FILE_PATH = BASE_DIR / "Database" / "DQL_Queries.sql"
OUTPUT_DIR = BASE_DIR / "Output_Reports"