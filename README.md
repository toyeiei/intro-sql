# Intro to SQL

`Course`: พื้นฐานการเขียน SQL สำหรับ Data Analyst

### ทำไมต้องเรียน SQL

SQL ย่อมาจาก Structured (English) Query Language เป็นภาษาทางการที่ใช้ทำงานกับ (relational) database มาตั้งแต่ปี 1970s คิดค้นโดยนักวิจัยของ IBM สำหรับงานด้าน data analytics SQL คือภาษาแรกที่ทุกคนควรเขียนให้เป็น จะได้ดึงข้อมูลจาก database มาวิเคราะห์ต่อได้ อ้างอิงจากเว็บไซต์ [payscale](https://www.payscale.com/research/TH/Job=Data_Analyst/Salary) รายได้เฉลี่ยของ SQL data analyst อยู่ที่ 360,000 บาทต่อปี (สูงสุดคือ 2 ล้านบาท)

สำหรับ GitHub นี้ แอดออกแบบมาสำหรับนักเรียนที่ไม่เคยเขียนโปรแกรมมาก่อนเลย ติดตั้งโปรแกรม ดาวน์โหลด slide และไฟล์ตัวอย่าง เรียนตามบทเรียนด้านล่าง ใช้เวลาประมาณ 1-2 ชั่วโมง SQL ไม่ยาก จริงๆเรียนพื้นฐานคร่าวๆก็ต่อยอดได้สบายๆแล้ว

### เตรียมตัวก่อนเริ่มเรียน

* ดาวน์โหลดโปรแกรมฟรี [DB Browser](https://sqlitebrowser.org/)
* ดาวน์โหลดไฟล์ [chinook.db](https://github.com/datarockie/intro-sql/blob/master/chinook.db) ใน GitHub นี้
* ดาวน์โหลด slide ฟรีของเราได้ที่ [Google Drive](https://bit.ly/DATASQL2020)

### เรียน SQL tutorial ตามลำดับนี้

ถ้าไม่เคยเขียน SQL มาก่อน แอดแนะนำให้ทุกคนเรียนตามบทเรียนนี้เลย เรียนจบ SELECT และ WHERE ก็สามารถดึงข้อมูลง่ายๆจาก database ได้แล้ว :D

```SQL
-- select these columns from customers table
SELECT firstname, lastname, country, email
FROM customers;
```

1. `SELECT`
2. `WHERE`
3. Aggregate Functions: `AVG` `SUM` `MIN` `MAX` `COUNT`
4. Value Functions: `UPPER` `LOWER` `COALESCE` `RANDOM` `ROUND`
5. `GROUP BY`
6. `HAVING`
7. `ORDER BY`
8. `JOIN`
9. `CASE WHEN`
10. Subqueries (coming soon)
11. `CREATE VIEW` (coming soon)
12. `CREATE TABLE` (coming soon)

มีคำถาม? ทักแชทแอดได้ที่ [FB messenger](https://m.me/datarockie) :)

ติดตามเราทาง facebook: [DataRockie](https://www.facebook.com/datarockie)
