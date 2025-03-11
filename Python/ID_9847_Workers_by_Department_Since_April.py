# Import your libraries
import pandas as pd

# Start writing code
#create worker as DataFrame
worker = pd.DataFrame(worker)
#filtered workers who joined on 1 April 2014
filtered_workers = worker[worker["joining_date"] >= '2014-04-01']
#Count the workers group by department
dept_counts = filtered_workers.groupby("department").size().reset_index(name="num_workers")
#sort the count 
sorted_dept = dept_counts.sort_values(by="num_workers", ascending=False)
