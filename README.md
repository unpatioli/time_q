# TimeQ

Query is tab-delimited string, containing four params:
1. query issuing node identificator
2. time to start query (UNIX timestamp)
3. query duration (in seconds). During this period the API is considered blocked
4. API identificator

TimeQ.max_queries accepts the array of queries and returns the maximal possible number of queries to issue (facing the fact, that the API we're calling may be blocked)

For example:

A	2	5	vk
B	9	7	vk
C	15	6	vk
D	9	3	vk

the max_queries for this array is 3, because queries from B and C are overlapping

