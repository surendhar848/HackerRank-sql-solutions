SELECT challenge.hacker_id, hacker.name, COUNT(challenge.challenge_id) AS number_of_challenges
FROM Hackers AS hacker JOIN Challenges AS challenge ON hacker.hacker_id = challenge.hacker_id
GROUP BY challenge.hacker_id, hacker.name HAVING
number_of_challenges = (SELECT COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC LIMIT 1) OR
number_of_challenges NOT IN (SELECT COUNT(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <> challenge.hacker_id)
ORDER BY number_of_challenges DESC, challenge.hacker_id;
