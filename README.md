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
1. To compare Kimia Farma revenue year over year.
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

   * kf_kantor_cabang

   * kf_product

## Query
After I entered the dataset into BigQuery, I created a transaction analysis table. The following is the syntax that I use
