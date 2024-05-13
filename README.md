# Rakamin-Project-Base-Intern-Kimia-Farma-Data-Analystics Batch May 2024

Tools : 
* Google BigQuery
* Google Looker Studio
Dataset sources : Project Base Intern Kimia Farma X Rakamin Academy

## Introduction
The Project-Based Internship (PBI) is a virtual internship program created by Rakamin Academy in partnership with various companies. Its goal is to uncover potential and enrich the experience of PBI participants. Within this program, I hold the role of a Big Data Analytics intern at Kimia Farma, where I analyze and present data related to Kimia Farma's Performance Analytics spanning from 2020 to 2023.

#### Challenge
* Create a transaction analysis table as datamart from the dataset provided by Kimia Farma
* Create dashboard to visualize Kimia Farma Performace Analysis from bussiness year 2020 to 2023, with the following objectives :
1. To compare Kimia Farma revenue year on year (YoY).
2. To find Top 10 total transaction branches by province.
3. To find Top 10 nett sales branches by province.
4. To find 5 branch with the highest rating, but with lowest rating transaction.
5. To visualize total profit of each province using Geo Map.

#### Dataset 
* Final Transaction 
* Inventory
* Branch Office
* Product

## Creating a Datamart
First of all i imported all the dataset provided in this final task guidebook to Google BigQuery. After that I combined several columns from each dataset to make it a data mart

### Preview of Dataset in BigQuery
   * kf_final_transaction
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20231807.png?raw=true)
   * kf_inventory
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20231832.png?raw=true)
   * kf_kantor_cabang
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20231846.png?raw=true)
   * kf_product
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20231900.png?raw=true)

### Query
After I entered the dataset into BigQuery, I created a transaction analysis table. The following is the syntax that I use
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20230549.png?raw=true)

### Preview of Transaction Analysis Table
Here is the preview of the result from above query.
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20231917.png?raw=true)

## Data Visualization
After I created the datamart. i visualize using google looker studio. Data visualization is used to make it easier for the audience to read and understand the data that has been processed.

### Dashboard preview
The following is a display of the dashboard that I created:

                        ![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20235558.png?raw=true)

### Data Snapshot in a Scorecard
I made 3 important data into a scorecard, here is what it looks like :
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232852.png?raw=true)

### Comparison of Kimia Farma's Profit Year on Year (YoY)
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232249.png?raw=true)

From the visualization of Kimia Farma's profit range from 2020 to 2023, we can observe a surge in profits which fluctuates up and down every year. In 2020 and 2022, there will be high profits. This could be because in the past 2 years Covid-19 cases have been increasing. Meanwhile, in 2021 and 2023, profits will decrease by around 0.497% to 0.570%.

### Top 10 Branch Transaction by Province
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232307.png?raw=true)

From the display above there are the Top 10 branch transactions based on province. West Java is the province with the highest total transactions of 198.7K transactions. This number is quite far considering that numbers 2 to 10 are in the number of transactions range between 48.2K to 19.6K. My next step was to investigate why West Java had such significant total transactions. What factors cause this? The findings of this investigation have the potential to be applied to branches in other provinces to increase transactions in each province.

### Top 10 Branch Sales by Province
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232345.png?raw=true)

From the display above there are the Top 10 Sales based on branch province. West Java was the branch with the highest sales of IDR 94.87B. This number is quite far because numbers 2 to 10 are in the number range from IDR 22.95B to IDR 9.35B. My next step was to investigate why sales in West Java were so high, by looking at the correlation between sales and other variables. The findings of this analysis have the potential to be applied to branches in other provinces to increase sales in each province.

### Top 5 Branches with Highest Ratings but Lowest Transaction Ratings
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232426.png?raw=true)

From the visualization above, there are the Top 5 branches with the highest ratings but the lowest transaction ratings. In first place is the province of South Sumatra with a transaction rating of 361. Even numbers 2 to 5 do not reach 400 transaction ratings. Given these discoveries, my subsequent action involves delving deeper into these 5 provinces, particularly at the city or individual branch levels. Following this, I will pinpoint the factors behind low transaction ratings at each branch within these cities and work towards resolving them to enhance transaction ratings. Moreover, I'll analyze the factors leading to high branch ratings in these areas, aiming to replicate their success in other provinces. Additionally, I intend to investigate the relationship between transaction ratings or branch ratings and overall transactions and sales figures.

### Geo Map Total Profit of Each Province
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232418.png?raw=true)

The geo map display shows the total profit for each province. The more profits generated by a branch in a province, the darker the color of the area.

### Top 3 Best Selling Category
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232408.png?raw=true)

From the display above, information is obtained that there are 3 best-selling drug categories. the first are Psycholeptic Drugs, Hypnotic Drugs, and Sedatives. the second is Psycholeptic Drugs and Anxiolytic Drugs. and finally Obstructive Airway Disease Medicine. This could be a factor in the increase in income both in 2020 and 2022. So I need to analyze it more deeply with other factors.

### Top 3 Least Selling Category
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232356.png?raw=true)

From the display above, information is obtained that there are 3 drug categories with the lowest sales. the first is Other analgesics and antipyretics, Pyrazolones and Anilides. the second is Anti-inflammatory and antirheumatic products, non-steroids, Propionic acid derivatives. the third is Anti-inflammatory and antirheumatic products, non-steroids, Acetic acid derivatives and related substances. This requires deeper analysis to find out why these 3 categories have the lowest sales value.

### Link Datamart to Filter
![README.md](https://github.com/devarapratama/Rakamin-Project-Base-Intern---Kimia-Farma-Data-Analystics/blob/main/images/Screenshot%202024-05-13%20232858.png?raw=true)

The image above is the 3 filters that I made. The function of the filter is to retrieve the data we want to see. for example from 2020 because you want to see data from that year. or province to find out data from a province using either a specific year or the whole. Likewise with city filters to see certain city branches.

## Summary

### Insight
  * The highest revenue will be in 2022 due to the recovery stage from the impact of the COVID-19 pandemic, especially after the outbreak of the Omicron variant which created new needs in the pharmaceutical industry. This is proven by the 3 best-selling drug categories, namely Psycholeptic Drugs, Hypnotic Drugs, and Sedatives: This category includes drugs used to treat mental health problems and sleep disorders. In post-pandemic conditions, demand for these drugs increases as many people experience stress and sleep disorders due to the unstable situation. Next are Psycholeptic Drugs and Anxiolytic Drugs: The focus on this category shows that many consumers are looking for solutions to deal with anxiety and other psychological problems that have increased during the pandemic. This reflects increased attention to mental health and psychological well-being. And finally Obstructive Airway Disease Drugs: Lastly, drugs for obstructive airway disease are also a category of interest. This may be related to the greater attention paid to respiratory health following the COVID-19 pandemic, where the health of the lungs and respiratory system has taken center stage.
  * The highest revenue and highest transaction volume is in West Java with a volume of 49.6K in 2022.
  * The lowest income and few sales were at the West Papua province branch with net sales of 2 billion rupiah and total transactions of 4,200 transactions.
  * The top 5 branches with the highest ratings and lowest transaction ratings are in South Sumatra, South Sulawesi, Papua, Riau, Malu.
  * Michael Smith was the customer with the most purchases with 316.

## Recommendation

**Optimizing West Java Potential**
Focus marketing and sales efforts on West Java, considering that this is the region with the highest revenue and transaction volume in 2022. Increase cooperation with business partners there and develop effective promotional strategies to increase market share.

**Paying attention to West Papua**
Even though branches in West Papua have lower revenues and sales, set specific strategies to optimize the performance of these branches. Further analysis may be required to understand the causes of low performance and establish appropriate remedial measures.

**Pay attention to loyal customers**
customers with the most purchases, become the focus for increasing customer retention and transaction value. Provide special offers, superior customer service, and loyalty programs to customers with more than 200 transactions to maintain good relationships and increase the value of their purchases.

**Increase sales of 3 drug categories with small sales**
Establish partnerships with health professionals such as doctors, pharmacists and other health practitioners. They can be a powerful influence in recommending products to their patients or customers. Provide incentives such as discounts, bundle offers, or loyalty programs to customers who purchase these products. These programs can increase repeat purchases and customer loyalty.
