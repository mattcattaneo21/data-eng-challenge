-- 1. Daily Active Users over the last 30 days
SELECT 
    DATE(timestamp) as day,
    COUNT(DISTINCT user_id) as daily_active_users
FROM events
WHERE DATE(timestamp) >= DATE('now', '-30 day')
GROUP BY day
ORDER BY day DESC

-- 2. Average session duration by user (in seconds)

SELECT
    user_id,
    AVG(session_duration) AS avg_session_duration_seconds
FROM events
WHERE session_duration IS NOT NULL
GROUP BY user_id
ORDER BY avg_session_duration_seconds DESC
LIMIT 10;

-- 3. Top 10 most edited documents
SELECT 
    document_id,
    COUNT(*) as edit_count
FROM events
WHERE event_type = 'document_edit'
GROUP BY document_id
ORDER BY edit_count DESC
LIMIT 10

-- 4. Number of shared documents per user
SELECT 
    user_id,
    COUNT(*) as shared_documents
FROM events
WHERE event_type = 'document_shared'
GROUP BY user_id
ORDER BY shared_documents DESC
