import File_Config as Config

report_names = [
    "Workforce_Lateness_Audit_Report.xlsx",
    "Production_Quality_Leaderboard.xlsx",
    "Cross_Border_Language_Compliance_Report.xlsx"
]

def Generate_Reports(dataframes):
    for i, report in enumerate(report_names):
        final_output_path = Config.OUTPUT_DIR / report

        df = dataframes[i]
                
        # Export data cleanly to Microsoft Excel without index column data blocks
        df.to_excel(final_output_path, index=False, sheet_name="BI_Insights_Data")