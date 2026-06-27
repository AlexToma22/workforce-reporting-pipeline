import sqlite3, re
import pandas as pd
import File_Config as config

SFP = config.SQL_FILE_PATH
DBP = config.DB_PATH


def Parse_to_Dataframes():

    dataframes = []
    connection = sqlite3.connect(DBP)

    with sqlite3.connect(DBP) as connection:

        # Read DQL queries script file
        with open(SFP, "r", encoding="utf-8") as sql_file:
            sql_content = sql_file.read()

        # Split individual queries by the predefined "spliter"
        queries = sql_content.split("-- Python splitter")

        for query_block in queries:
            # Strip standard single-line SQL comments (-- comment) to prevent syntax mixing
            clean_query = re.sub(r'--.*$', '', query_block, flags=re.MULTILINE).strip()
        
            # Skip the block if it is completely empty after removing comments
            if not clean_query:
                continue

            # Use Pandas to run the SQL script and parse records straight into memory dataframes
            df = pd.read_sql_query(clean_query, connection)
            dataframes.append(df)

    return dataframes