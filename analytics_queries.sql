-- 1. Daily Active Users over the last 30 days
SELECT 
    DATE(timestamp) as day,
    COUNT(DISTINCT user_id) as daily_active_users
FROM events
WHERE DATE(timestamp) >= DATE('now', '-30 day')
GROUP BY day
ORDER BY day DESC

-- 2. Top 10 most edited documents
SELECT 
    document_id,
    COUNT(*) as edit_count
FROM events
WHERE event_type = 'document_edit'
GROUP BY document_id
ORDER BY edit_count DESC
LIMIT 10

-- 3. Number of shared documents per user
SELECT 
    user_id,
    COUNT(*) as shared_documents
FROM events
WHERE event_type = 'document_shared'
GROUP BY user_id
ORDER BY shared_documents DESC
