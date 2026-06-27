import Database_Interactions.Integrity as DB_Integrity
import Database_Interactions.Queries as DB_Queries
import Reporting.Presentation as Reports

if __name__ == "__main__":
    DB_Integrity.Verify_Existence()
    dataframes = DB_Queries.Parse_to_Dataframes()
    Reports.Generate_Reports(dataframes)
