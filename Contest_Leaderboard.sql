SELECT best_score_query.hacker_id, Hackers.name, SUM(best_score_query.best_score) AS total_score FROM
(SELECT hacker_id, challenge_id, MAX(score) AS best_score FROM Submissions WHERE score > 0 GROUP BY hacker_id, challenge_id) AS best_score_query
JOIN Hackers ON best_score_query.hacker_id = Hackers.hacker_id 
GROUP By best_score_query.hacker_id, Hackers.name
ORDER BY total_score DESC, best_score_query.hacker_id;
