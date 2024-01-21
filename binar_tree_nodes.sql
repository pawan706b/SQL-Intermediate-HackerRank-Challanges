/*
Enter your query here.
*/
SELECT b1.N,
    CASE
        WHEN P IS NULL 
        THEN 'Root'
        WHEN (SELECT COUNT(*) FROM BST b2 WHERE b2.P = b1.N) > 0
        THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST b1
ORDER BY N;