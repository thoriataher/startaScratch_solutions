import pandas as pd
# Convert joining_date to datetime 
worker["joining_date"] = pd.to_datetime(worker["joining_date"])
# Extract the month
worker["month"] = worker["joining_date"].dt.month
# Filter employees who joined in April or later
april_df = worker.loc[worker["month"] >= 4]
# Count rows where department == "Admin"
n_admins = april_df[april_df["department"] == "Admin"]["department"].count()
# Store the result in a DataFrame
result = pd.DataFrame({"n_admins": [n_admins]})