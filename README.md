# 🚖 Uber Supply–Demand Gap Analysis
**📝 Summary**

This project analyzes Uber ride request data to identify supply–demand mismatches in different time slots and pickup points. Using Excel, SQL, and Python (Pandas, Matplotlib, Seaborn), the project highlights when and where Uber faces the biggest operational challenges, and provides data-driven recommendations to improve efficiency.

**❓ Business Problem**
1. Uber frequently encounters situations where customer ride requests remain unfulfilled due to:
2. Drivers cancelling rides during high-demand hours
3. Cars being unavailable at night
4. Higher cancellation rates from Airport pickups compared to City pickups

This results in dissatisfied customers, lost revenue, and reduced operational efficiency.

**🔎 Methodology**
1. Data Cleaning (Excel): Removed duplicates, standardized timestamps, and created helper columns (Hour, Day, Trip Completed) and built 12 interactive charts in Excel to visualize trends in requests, cancellations, and availability.

2. SQL Analysis: Queried the dataset in MySQL to count completed vs incomplete trips, analyze hourly demand, and compare Airport vs City performance and identified peak hours for cancellations and car unavailability.

3. Exploratory Data Analysis (Python): Used Pandas for preprocessing and Seaborn/Matplotlib for visualizations. Created charts showing trip status distribution, completion rate, and unavailability trends.

**🛠️ Skills & Tools**
1. Excel → Data cleaning, PivotTables, dashboards
2. SQL (MySQL Workbench) → Data querying, aggregations
3. Python → Pandas, NumPy, Matplotlib, Seaborn for EDA & visualization

**📊 Results**
1. Out of 6,745 ride requests, about 58% were incomplete (either cancelled or no cars available).
2. Morning hours (5 AM–9 AM): High cancellations due to drivers rejecting rides.
3. Night hours (10 PM–2 AM): High rate of “No Cars Available.”
4. Airport pickups: Faced significantly higher cancellations compared to City pickups.

**💡 Business Recommendations**
1. Incentivize drivers during early mornings with surge or rush-hour pricing to reduce cancellations.
2. Introduce night shifts for drivers to improve availability during late-night hours.
3. Deploy more drivers at Airports during peak travel times.
4. Build a real-time monitoring dashboard to continuously track demand–supply gaps and take corrective action.
