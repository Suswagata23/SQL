--You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N. Write a query to find the node type of Binary Tree ordered by the value of the node.

select N , 
(Case when P is Null then 'Root'
when N in (select distinct(P) from BST) then 'Inner'
else 'Leaf' end)
from BST
order by N;
