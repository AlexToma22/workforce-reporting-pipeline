import sqlite3
import File_Config as config

DBP = config.DB_PATH
BDP = config.BASE_DIR


def Initialize_Database():
    print("🗄️ Initializing SQLite Database...")
    
    # Ensure database directory exists safely
    DBP.parent.mkdir(parents=True, exist_ok=True)
    
    connection = sqlite3.connect(DBP)
    cursor = connection.cursor()
    
    # Execute the structural layout blueprint (DDL)
    ddl_path = BDP / "Database" / "DDL_Schema.sql"
    with open(ddl_path, "r", encoding="utf-8") as ddl_file:
        cursor.executescript(ddl_file.read())
        
    # Execute the master dataset seeding records (DML)
    dml_path = BDP / "Database" / "DML_Seed.sql"
    with open(dml_path, "r", encoding="utf-8") as dml_file:
        cursor.executescript(dml_file.read())
        
    connection.commit()
    connection.close()
    print("✅ Database successfully built and populated with 60 explicit profiles.")

def Verify_Existence(database_path = DBP):
    if not database_path.exists():
        Initialize_Database()
