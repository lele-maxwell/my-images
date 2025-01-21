\c mydb;


 SELECT p.post_id, p.content,
       SUM(CASE WHEN r.react = 'yes' THEN 1 ELSE 0 END) as yes_count,
       SUM(CASE WHEN r.react = 'good' THEN 1 ELSE 0 END) as good_count,
       SUM(CASE WHEN r.react = 'like' THEN 1 ELSE 0 END) as like_count,

       SUM(CASE WHEN r.react = 'sad' THEN 1 ELSE 0 END) as sad_count,
       SUM(CASE WHEN r.react = 'tumpup' THEN 1 ELSE 0 END) as tumpup_count,
       SUM(CASE WHEN r.react = 'tumpdown' THEN 1 ELSE 0 END) as tumpdown_count,
       SUM(CASE WHEN r.react NOT IN ('yes', 'no', 'tumpup', 'tumpdown') THEN 1 ELSE 0 END) as other_count
FROM posts p
JOIN reactions r ON p.post_id = r.post_id
GROUP BY p.post_id, p.content
ORDER BY (
  SUM(CASE WHEN r.react = 'yes' THEN 1 ELSE 0 END) +
  SUM(CASE WHEN r.react = 'no' THEN 1 ELSE 0 END) +
  SUM(CASE WHEN r.react = 'tumpup' THEN 1 ELSE 0 END) +
  SUM(CASE WHEN r.react = 'tumpdown' THEN 1 ELSE 0 END) +
  SUM(CASE WHEN r.react NOT IN ('yes', 'no', 'tumpup', 'tumpdown') THEN 1 ELSE 0 END)
) DESC
LIMIT 2;
