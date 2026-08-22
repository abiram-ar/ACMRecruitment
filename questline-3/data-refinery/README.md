No missing values ( checked using df.isnull().sum())

No duplication (checked using df.duplicated().sum())

Saved the verified dataset as cleaned_students_performance.csv using df.to_csv('cleaned_students_performance.csv', index=False)