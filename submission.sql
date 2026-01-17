-- Steps taken to obtain information

\d -- To show all tables

\d forum_posts -- To show all data fields for the posts

-- Select all posts from a date range to isolate post that talks about dad/emptystack
SELECT * FROM forum_posts
WHERE date >= '2048-04-01'
AND date < '2048-05-01';

-- Record username: smart-money-44 and find details from forum_accounts
SELECT * FROM forum_accounts
WHERE "username" = 'smart-money-44';

-- Search all forum accounts that have the last_name of 'Steele'
SELECT * FROM forum_accounts
WHERE "last_name" = 'Steele';

-- Ssearch emptystack_accounts that match first namt and last name from forum accounts as well
SELECT * FROM emptystack_accounts
WHERE "last_name" = 'Steele';

-- Find name that matches both tables, Andrew Steele and record username and password
-- Run node mainframe with credentials
-- Explore data
\d -- See what new tables are available

\d emptystack_messages -- to see what columns exist in messages

-- I did a select all for the messages and accounts and yielded too many results
-- Googled how to search for specific words in a field and learned about LIKE and ILIKE
SELECT * FROM emptystack_messages
WHERE "body" ILIKE '%taxi%';

-- Record username in the from field and project name TAXI
-- Search for admin credentials in emptystack_accounts with your-boss-99
SELECT * FROM emptystack_accounts
WHERE username = 'your-boss-99';

\d emptystack_projects -- to see what the column fields are

-- Search for the TAXI code in the emptystack_projects
SELECT * FROM emptystack_projects
WHERE "code" = 'TAXI';

-- Record project ID and attempt to stop the mainframe