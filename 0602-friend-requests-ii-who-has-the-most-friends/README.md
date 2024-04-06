<h2><a href="https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/">602. Friend Requests II: Who Has the Most Friends</a></h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>RequestAccepted</code></p>

<pre>+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| requester_id   | int     |
| accepter_id    | int     |
| accept_date    | date    |
+----------------+---------+
(requester_id, accepter_id) is the primary key (combination of columns with unique values) for this table.
This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
</pre>

<p>&nbsp;</p>

<p>Write a solution to find the people who have the most friends and the most friends number.</p>

<p>The test cases are generated so that only one person has the most friends.</p>

<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> 
RequestAccepted table:
+--------------+-------------+-------------+
| requester_id | accepter_id | accept_date |
+--------------+-------------+-------------+
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |
+--------------+-------------+-------------+
<strong>Output:</strong> 
+----+-----+
| id | num |
+----+-----+
| 3  | 3   |
+----+-----+
<strong>Explanation:</strong> 
The person with id 3 is a friend of people 1, 2, and 4, so he has three friends in total, which is the most number than any others.
</pre>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> In the real world, multiple people could have the same most number of friends. Could you find all these people in this case?</p>
</div>