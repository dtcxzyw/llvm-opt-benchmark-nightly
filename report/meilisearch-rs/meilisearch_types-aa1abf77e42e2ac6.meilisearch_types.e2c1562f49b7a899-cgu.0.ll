Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0
@2098 = private unnamed_addr constant [11 x i8] c"payloadSize", align 1
@2099 = private unnamed_addr constant [207 x i8] c"A map of index patterns to their export settings for an `export`\0Atask. The keys are index patterns (which may include wildcards) and\0Athe values contain the specific export configuration for matching\0Aindexes.", align 1
@2100 = private unnamed_addr constant [132 x i8] c"The original unique identifier of the index before an `indexRename`\0Aoperation. This is the name the index had before it was renamed.", align 1
@2101 = private unnamed_addr constant [11 x i8] c"oldIndexUid", align 1
@2102 = private unnamed_addr constant [133 x i8] c"The new unique identifier assigned to the index after an `indexRename`\0Aoperation. This is the name the index has after being renamed.", align 1
@2103 = private unnamed_addr constant [11 x i8] c"newIndexUid", align 1
@2104 = private unnamed_addr constant [195 x i8] c"The size of the index before an `indexCompaction` task was performed,\0Aformatted as a human-readable string (e.g., `1.5 GB`). Compare with\0A`postCompactionSize` to see how much space was reclaimed.", align 1
@2105 = private unnamed_addr constant [17 x i8] c"preCompactionSize", align 1
@2106 = private unnamed_addr constant [180 x i8] c"The size of the index after an `indexCompaction` task completed,\0Aformatted as a human-readable string (e.g., `1.2 GB`). This should\0Abe smaller than or equal to `preCompactionSize`.", align 1
@2107 = private unnamed_addr constant [18 x i8] c"postCompactionSize", align 1
@2108 = private unnamed_addr constant [166 x i8] c"The number of documents that were redistributed during a\0A`networkTopologyChange` task in a distributed deployment. This\0Aoccurs when the cluster configuration changes.", align 1
@2109 = private unnamed_addr constant [14 x i8] c"movedDocuments", align 1
@2110 = private unnamed_addr constant [155 x i8] c"A human-readable message providing additional information about the\0Atask, such as status updates or explanatory text about what occurred\0Aduring processing.", align 1
@2111 = private unnamed_addr constant [32 x i8] c"The updated dynamic search rule.", align 1
@2112 = private unnamed_addr constant [4 x i8] c"rule", align 1
@2113 = private unnamed_addr constant [70 x i8] c"Number of dynamic search rules that were created, modified or deleted.", align 1
@2114 = private unnamed_addr constant [12 x i8] c"updatedRules", align 1
@2115 = private unnamed_addr constant [252 x i8] c"Contains type-specific details about a task's execution.\0A\0AThe fields present depend on the task type. For example, document addition\0Atasks will have `receivedDocuments` and `indexedDocuments`, while settings\0Aupdate tasks will have the applied settings.", align 1
@2116 = private unnamed_addr constant [138 x i8] c"The name of the remote Meilisearch instance where this task originated.\0AThis corresponds to a remote defined in the network configuration.", align 1
@2117 = private unnamed_addr constant [10 x i8] c"remoteName", align 1
@2118 = private unnamed_addr constant [127 x i8] c"The unique task identifier on the originating remote. This allows\0Atracking the same task across different nodes in the network.", align 1
@2119 = private unnamed_addr constant [7 x i8] c"taskUid", align 1
@2120 = private unnamed_addr constant [135 x i8] c"The version of the network topology when this task was created. Used to\0Aensure consistent task routing during network topology changes.", align 1
@2121 = private unnamed_addr constant [14 x i8] c"networkVersion", align 1
@2122 = private unnamed_addr constant [167 x i8] c"Information about the origin of a task in a distributed Meilisearch\0Adeployment. This tracks where a task was originally created before being\0Areplicated to other nodes.", align 1
@2123 = private unnamed_addr constant [76 x i8] c"Name of the remote that will no longer export any document to this instance.", align 1
@2124 = private unnamed_addr constant [6 x i8] c"remote", align 1
@2125 = private unnamed_addr constant [178 x i8] c"The specified remote will not longer export any document to this instance.\0A\0ASend this message to remotes that are blocked waiting on the specified remote to export its documents.", align 1
@2126 = private unnamed_addr constant [22 x i8] c"exportNoIndexForRemote", align 1
@2127 = private unnamed_addr constant [57 x i8] c"Name of the remote that finished importing its documents.", align 1
@2128 = private unnamed_addr constant [164 x i8] c"Whether the import was successful.\0A\0ADocuments from shards that no longer belong to remotes are only deleted if all remotes are successful\0Aimporting their documents.", align 1
@2129 = private unnamed_addr constant [10 x i8] c"successful", align 1
@2130 = private unnamed_addr constant [171 x i8] c"The specified remote is finished importing its documents.\0A\0ASend this message to remotes that are blocked waiting on the specified remote to finish importing its documents.", align 1
@2131 = private unnamed_addr constant [23 x i8] c"importFinishedForRemote", align 1
@2132 = private unnamed_addr constant [48 x i8] c"Name of the remote whose status will be changed.", align 1
@2133 = private unnamed_addr constant [30 x i8] c"The new status for the remote.", align 1
@2134 = private unnamed_addr constant [108 x i8] c"The specified remote will see it's status change.\0A\0ASend this message to change the accessiblity of a remote.", align 1
@2135 = private unnamed_addr constant [21 x i8] c"statusChangeForRemote", align 1
@2136 = private unnamed_addr constant [1141 x i8] c"You are a highly capable research assistant with access to powerful search tools. IMPORTANT INSTRUCTIONS:1. When answering questions, you MUST make multiple tool calls (at least 2-3) to gather comprehensive information.2. Use different search queries for each tool call - vary keywords, rephrase questions, and explore different semantic angles to ensure broad coverage.3. Always explicitly announce BEFORE making each tool call by saying: \22I'll search for [specific information] now.\224. Combine information from ALL tool calls to provide complete, nuanced answers rather than relying on a single source.5. For complex topics, break down your research into multiple targeted queries rather than using a single generic search. Meilisearch doesn't use the colon (:) syntax to filter but rather the equal (=) one. Separate filters from query and keep the q parameter empty if needed. Same for the filter parameter: keep it empty if need be. If you need to find documents that CONTAINS keywords simply put the keywords in the q parameter do no use a filter for this purpose. Whenever you get an error, read the error message and fix your error. ", align 1
@2137 = private unnamed_addr constant [680 x i8] c"Query: 'best story about Rust before 2018' with year: 2018, 2020, 2021\0Alabel: analysis, golang, javascript\0Atype: story, link\0Avote: 300, 298, 278\0A: {\22q\22: \22\22, \22filter\22: \22category = Rust AND type = story AND year < 2018 AND vote > 100\22}\0AQuery: 'A black or green car that can go fast with red brakes' with maxspeed_kmh: 200, 150, 130\0Acolor: black, grey, red, green\0Abrand: Toyota, Renault, Jeep, Ferrari\0A: {\22q\22: \22red brakes\22, \22filter\22: \22maxspeed_kmh > 150 AND color IN ['black', green]\22}\0AQuery: 'Superman movie released in 2018 or after' with year: 2018, 2020, 2021\0Agenres: Drama, Comedy, Adventure, Fiction\0A: {\22q\22:\22Superman\22,\22filter\22:\22genres IN [Adventure, Fiction] AND year >= 2018\22}", align 1
@2138 = private unnamed_addr constant [214 x i8] c"The search query string used to find relevant documents in the index. This should contain keywords or phrases that best represent what the user is looking for. More specific queries will yield more precise results.", align 1
@2139 = private unnamed_addr constant [179 x i8] c"The name of the index to search within. An index is a collection of documents organized for search. Selecting the right index ensures the most relevant results for the user query.", align 1
@2140 = private unnamed_addr constant [51 x i8] c"Sorted by decreasing number of matched query terms.", align 1
@2141 = private unnamed_addr constant [4 x i8] c"typo", align 1
@2142 = private unnamed_addr constant [37 x i8] c"Sorted by increasing number of typos.", align 1
@2143 = private unnamed_addr constant [9 x i8] c"proximity", align 1
@2144 = private unnamed_addr constant [58 x i8] c"Sorted by increasing distance between matched query terms.", align 1
@2145 = private unnamed_addr constant [9 x i8] c"attribute", align 1
@2146 = private unnamed_addr constant [132 x i8] c"Documents with query words contained in more important\0Aattributes and at a closer-to-the-front position in it\0Aare considered better.", align 1
@2147 = private unnamed_addr constant [13 x i8] c"attributeRank", align 1
@2148 = private unnamed_addr constant [151 x i8] c"Documents with query words contained in more important\0Aattributes are considered better. Position of the\0Aquery words in an attribute is not considered.", align 1
@2149 = private unnamed_addr constant [12 x i8] c"wordPosition", align 1
@2150 = private unnamed_addr constant [128 x i8] c"Documents with query words that are closer to the front\0Aof an attribute are considered better. Attribute rank\0Ais not considered.", align 1
@2151 = private unnamed_addr constant [4 x i8] c"sort", align 1
@2152 = private unnamed_addr constant [150 x i8] c"Dynamically sort at query time the documents. None, one or multiple\0AAsc/Desc sortable attributes can be used in place of this criterion at\0Aquery time.", align 1
@2153 = private unnamed_addr constant [9 x i8] c"exactness", align 1
@2154 = private unnamed_addr constant [67 x i8] c"Sorted by the similarity of the matched words with the query words.", align 1
@2155 = private unnamed_addr constant [54 x i8] c"Sorted by the increasing value of the field specified.", align 1
@2156 = private unnamed_addr constant [3 x i8] c"asc", align 1
@2157 = private unnamed_addr constant [54 x i8] c"Sorted by the decreasing value of the field specified.", align 1
@2158 = private unnamed_addr constant [4 x i8] c"desc", align 1
@2159 = private unnamed_addr constant [174 x i8] c"Core batch statistics including the total number of tasks, counts by\0Astatus (succeeded, failed, canceled), task types included, and which\0Aindexes were affected by this batch.", align 1
@2160 = private unnamed_addr constant [208 x i8] c"Statistics about AI embedder API requests made during batch processing.\0AIncludes total requests, successful/failed counts, and response times.\0AOnly present when the batch involved vector embedding operations.", align 1
@2161 = private unnamed_addr constant [16 x i8] c"embedderRequests", align 1
@2162 = private unnamed_addr constant [223 x i8] c"Provides comprehensive statistics about a batch's execution.\0A\0AIncludes task counts, status breakdowns, and AI embedder usage. This\0Ainformation is useful for monitoring system performance and understanding\0Abatch composition.", align 1
@2163 = private unnamed_addr constant [33 x i8] c"Total number of embedder requests", align 1
@2164 = private unnamed_addr constant [5 x i8] c"total", align 1
@2165 = private unnamed_addr constant [34 x i8] c"Number of failed embedder requests", align 1
@2166 = private unnamed_addr constant [36 x i8] c"Last error message from the embedder", align 1
@2167 = private unnamed_addr constant [9 x i8] c"lastError", align 1
@2168 = private unnamed_addr constant [32 x i8] c"Statistics for embedder requests", align 1
@2169 = private unnamed_addr constant [104 x i8] c"Maximum number of facet values returned per facet. Values are sorted in ascending lexicographical order.", align 1
@2170 = private unnamed_addr constant [17 x i8] c"maxValuesPerFacet", align 1
@2171 = private unnamed_addr constant [119 x i8] c"Sort order per facet: by descending count (`count`) or ascending alphanumeric (`alpha`). Key `*` applies to all facets.", align 1
@2172 = private unnamed_addr constant [17 x i8] c"sortFacetValuesBy", align 1
@2173 = private unnamed_addr constant [65 x i8] c"Faceting: maximum number of facet values and how they are sorted.", align 1
@2174 = private unnamed_addr constant [48 x i8] c"Filter expression to select documents for export", align 1
@2175 = private unnamed_addr constant [53 x i8] c"Whether to override settings on the destination index", align 1
@2176 = private unnamed_addr constant [16 x i8] c"overrideSettings", align 1
@2177 = private unnamed_addr constant [28 x i8] c"Export settings for an index", align 1
@2178 = private unnamed_addr constant [38 x i8] c"Remote that this task is imported from", align 1
@2179 = private unnamed_addr constant [27 x i8] c"Index relevant to this task", align 1
@2180 = private unnamed_addr constant [9 x i8] c"indexName", align 1
@2181 = private unnamed_addr constant [32 x i8] c"Number of documents in this task", align 1
@2182 = private unnamed_addr constant [13 x i8] c"documentCount", align 1
@2183 = private unnamed_addr constant [28 x i8] c"Import data stored in a task", align 1
@2184 = private unnamed_addr constant [136 x i8] c"The unique task identifier assigned by the remote Meilisearch instance.\0APresent when the task was successfully replicated to the remote.", align 1
@2185 = private unnamed_addr constant [130 x i8] c"Error details if the task failed to replicate to this remote. Contains\0Athe error message, code, and type from the remote instance.", align 1
@2186 = private unnamed_addr constant [154 x i8] c"Represents a task that was replicated to a remote Meilisearch instance.\0AContains either the remote task UID on success, or an error if\0Areplication failed.", align 1
@2187 = private unnamed_addr constant [35 x i8] c"a base64 encoded cbo roaring bitmap", align 1
@2188 = private unnamed_addr constant [48 x i8] c"data are neither an object nor a list of objects", align 1
@2189 = private unnamed_addr constant [3 x i8] c"...", align 1
@2190 = private unnamed_addr constant [49 x i8] c"crates/meilisearch-types/src/document_formats.rs\00", align 1
@2191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2190, [16 x i8] c"0\00\00\00\00\00\00\00C\00\00\00!\00\00\00" }>, align 8
@2192 = private unnamed_addr constant [5 x i8] c"The `", align 1
@2193 = private unnamed_addr constant [69 x i8] c"` payload provided is malformed. `Couldn't serialize document value: ", align 1
@2194 = private unnamed_addr constant [2 x i8] c"`.", align 1
@2195 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2192, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @2193, [8 x i8] c"E\00\00\00\00\00\00\00", ptr @2194, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@2196 = private unnamed_addr constant [34 x i8] c"` payload provided is malformed: `", align 1
@2197 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @2192, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @2196, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @2194, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@2198 = private unnamed_addr constant [218 x i8] c"Fields returned in search results. Affects only search endpoints, not get-document endpoints. See [displayed and searchable attributes](https://www.meilisearch.com/docs/learn/relevancy/displayed_searchable_attributes).", align 1
@2199 = private unnamed_addr constant [5 x i8] c"title", align 1
@2200 = private unnamed_addr constant [19 x i8] c"displayedAttributes", align 1
@2201 = private unnamed_addr constant [290 x i8] c"Fields searched for query words, in order of importance. Defines [attribute ranking order](https://www.meilisearch.com/docs/learn/relevancy/attribute_ranking_order). See [displayed and searchable attributes](https://www.meilisearch.com/docs/learn/relevancy/displayed_searchable_attributes).", align 1
@2202 = private unnamed_addr constant [20 x i8] c"searchableAttributes", align 1
@2203 = private unnamed_addr constant [286 x i8] c"Attributes that can be used as [filters](https://www.meilisearch.com/docs/learn/filtering_and_sorting/filter_search_results) and [facets](https://www.meilisearch.com/docs/learn/filtering_and_sorting/search_with_facet_filters). Strings or objects with `attributePatterns` and `features`.", align 1
@2204 = private unnamed_addr constant [12 x i8] c"release_date", align 1
@2205 = private unnamed_addr constant [5 x i8] c"genre", align 1
@2206 = private unnamed_addr constant [20 x i8] c"filterableAttributes", align 1
@2207 = private unnamed_addr constant [135 x i8] c"Attributes that can be used to [sort search results](https://www.meilisearch.com/docs/learn/filtering_and_sorting/sort_search_results).", align 1
@2208 = private unnamed_addr constant [18 x i8] c"sortableAttributes", align 1
@2209 = private unnamed_addr constant [53 x i8] c"Foreign keys to use for cross-index filtering search.", align 1
@2210 = private unnamed_addr constant [15 x i8] c"foreignIndexUid", align 1
@2211 = private unnamed_addr constant [9 x i8] c"fieldName", align 1
@2212 = private unnamed_addr constant [9 x i8] c"productId", align 1
@2213 = private unnamed_addr constant [11 x i8] c"foreignKeys", align 1
@2214 = private unnamed_addr constant [179 x i8] c"[Ranking rules](https://www.meilisearch.com/docs/learn/relevancy/ranking_rules) in order of importance. Built-in rules and custom sort rules (`attribute:asc` or `attribute:desc`).", align 1
@2215 = private unnamed_addr constant [12 x i8] c"rankingRules", align 1
@2216 = private unnamed_addr constant [45 x i8] c"Words ignored when present in search queries.", align 1
@2217 = private unnamed_addr constant [3 x i8] c"the", align 1
@2218 = private unnamed_addr constant [9 x i8] c"stopWords", align 1
@2219 = private unnamed_addr constant [91 x i8] c"Characters that are not treated as word separators. Removed from the default separator set.", align 1
@2220 = private unnamed_addr constant [18 x i8] c"nonSeparatorTokens", align 1
@2221 = private unnamed_addr constant [70 x i8] c"Characters that delimit words. Added on top of the default separators.", align 1
@2222 = private unnamed_addr constant [15 x i8] c"separatorTokens", align 1
@2223 = private unnamed_addr constant [78 x i8] c"Strings Meilisearch parses as a single term. Useful for names or domain terms.", align 1
@2224 = private unnamed_addr constant [10 x i8] c"dictionary", align 1
@2225 = private unnamed_addr constant [154 x i8] c"Pairs of words or phrases treated as equivalent for search. Key maps to an array of [synonyms](https://www.meilisearch.com/docs/learn/relevancy/synonyms).", align 1
@2226 = private unnamed_addr constant [8 x i8] c"synonyms", align 1
@2227 = private unnamed_addr constant [187 x i8] c"Field whose value must be unique in the returned documents. One document per distinct value. See [distinct attribute](https://www.meilisearch.com/docs/learn/relevancy/distinct_attribute).", align 1
@2228 = private unnamed_addr constant [3 x i8] c"sku", align 1
@2229 = private unnamed_addr constant [17 x i8] c"distinctAttribute", align 1
@2230 = private unnamed_addr constant [120 x i8] c"Precision for the proximity ranking rule and phrase search: `byWord` (exact distance) or `byAttribute` (same attribute).", align 1
@2231 = private unnamed_addr constant [18 x i8] c"proximityPrecision", align 1
@2232 = private unnamed_addr constant [163 x i8] c"[Typo tolerance](https://www.meilisearch.com/docs/learn/relevancy/typo_tolerance_settings): enable/disable, minimum word length for typos, and where to disable it.", align 1
@2233 = private unnamed_addr constant [13 x i8] c"typoTolerance", align 1
@2234 = private unnamed_addr constant [170 x i8] c"Related to [faceting](https://www.meilisearch.com/docs/learn/filtering_and_sorting/search_with_facet_filters): max facet values per facet and how facet values are sorted.", align 1
@2235 = private unnamed_addr constant [8 x i8] c"faceting", align 1
@2236 = private unnamed_addr constant [133 x i8] c"Related to [pagination](https://www.meilisearch.com/docs/guides/front_end/pagination): maximum number of results a search can return.", align 1
@2237 = private unnamed_addr constant [12 x i8] c"maxTotalHits", align 1
@2238 = private unnamed_addr constant [10 x i8] c"pagination", align 1
@2239 = private unnamed_addr constant [306 x i8] c"[Embedders](https://www.meilisearch.com/docs/learn/ai_powered_search/getting_started_with_ai_search) used for semantic and [hybrid search](https://www.meilisearch.com/docs/learn/ai_powered_search/getting_started_with_ai_search). Map of embedder name to config (`source`, `model`, `documentTemplate`, etc.).", align 1
@2240 = private unnamed_addr constant [7 x i8] c"default", align 1
@2241 = private unnamed_addr constant [6 x i8] c"openAi", align 1
@2242 = private unnamed_addr constant [22 x i8] c"text-embedding-3-small", align 1
@2243 = private unnamed_addr constant [16 x i8] c"documentTemplate", align 1
@2244 = private unnamed_addr constant [31 x i8] c"{{doc.title}}: {{doc.overview}}", align 1
@2245 = private unnamed_addr constant [9 x i8] c"embedders", align 1
@2246 = private unnamed_addr constant [139 x i8] c"Maximum duration of a search in milliseconds. If reached, the search stops and returns results computed so far. When null, 1500 ms is used.", align 1
@2247 = private unnamed_addr constant [14 x i8] c"searchCutoffMs", align 1
@2248 = private unnamed_addr constant [184 x i8] c"Locales and attribute patterns for [language-specific tokenization](https://www.meilisearch.com/docs/learn/resources/language). Affects searchable, filterable, and sortable attributes.", align 1
@2249 = private unnamed_addr constant [19 x i8] c"localizedAttributes", align 1
@2250 = private unnamed_addr constant [176 x i8] c"When true, [facet search](https://www.meilisearch.com/docs/learn/filtering_and_sorting/search_with_facet_filters) is enabled. When false, the facet-search endpoint is disabled.", align 1
@2251 = private unnamed_addr constant [11 x i8] c"facetSearch", align 1
@2252 = private unnamed_addr constant [114 x i8] c"When to compute prefix matches: `indexingTime` or `disabled`. `disabled` speeds up indexing but reduces relevancy.", align 1
@2253 = private unnamed_addr constant [12 x i8] c"indexingTime", align 1
@2254 = private unnamed_addr constant [12 x i8] c"prefixSearch", align 1
@2255 = private unnamed_addr constant [200 x i8] c"[Chat (conversation)](https://www.meilisearch.com/docs/learn/chat/getting_started_with_chat) settings: index description, document template, and search parameters used when the LLM queries this index.", align 1
@2256 = private unnamed_addr constant [4 x i8] c"chat", align 1
@2257 = private unnamed_addr constant [343 x i8] c"Index settings: every option you can configure for search and index behavior.\0A\0AUsed as the request body for PATCH settings. Only the fields you send are updated; pass `null` to reset a setting to its default.\0A\0ASee also: [Configuring index settings on the Cloud](https://www.meilisearch.com/docs/learn/configuration/configuring_index_settings).", align 1
@2258 = private unnamed_addr constant [91 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/collections/btree/map.rs\00", align 1
@2259 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00\FE\00\00\00-\00\00\00" }>, align 8
@2260 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00\0A\01\00\00?\00\00\00" }>, align 8
@2261 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00\11\01\00\00*\00\00\00" }>, align 8
@2262 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00\FE\00\00\008\00\00\00" }>, align 8
@2263 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00\12\01\00\00*\00\00\00" }>, align 8
@2264 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2258, [16 x i8] c"Z\00\00\00\00\00\00\00/\01\00\00.\00\00\00" }>, align 8
@2265 = private unnamed_addr constant [102 x i8] c"Maximum number of search results Meilisearch can return. Limit and offset cannot go beyond this value.", align 1
@2266 = private unnamed_addr constant [56 x i8] c"Pagination: cap on how many results a search can return.", align 1
@2267 = private unnamed_addr constant [115 x i8] c"The origin of this message\0A\0AGet it in the details of the network topology change task that is currently processing.", align 1
@2268 = private unnamed_addr constant [6 x i8] c"origin", align 1
@2269 = private unnamed_addr constant [60 x i8] c"Message to send to control the network topology change task.", align 1
@2270 = private unnamed_addr constant [40 x i8] c"Tasks that were duplicated from `origin`", align 1
@2271 = private unnamed_addr constant [12 x i8] c"remote_tasks", align 1
@2272 = private unnamed_addr constant [15 x i8] c"network_version", align 1
@2273 = private unnamed_addr constant [44 x i8] c"Tasks that were duplicated as `remote_tasks`", align 1
@2274 = private unnamed_addr constant [11 x i8] c"import_from", align 1
@2275 = private unnamed_addr constant [14 x i8] c"network_change", align 1
@2276 = private unnamed_addr constant [61 x i8] c"Document import tasks sent in the context of `network_change`", align 1
@2277 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN46_$LT$T$u20$as$u20$serde_core..de..Expected$GT$3fmt17hcf40d534811a7f23E" }>, align 8
@2278 = private unnamed_addr constant [8 x i8] c"disabled", align 1
@2279 = private unnamed_addr constant [91 x i8] c"/opt-bench/work/meilisearch-rs/meilisearch/crates/milli/src/filterable_attributes_rules.rs\00", align 1
@2280 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2279, [16 x i8] c"Z\00\00\00\00\00\00\00\0D\00\00\001\00\00\00" }>, align 8
@2281 = private unnamed_addr constant [25 x i8] c"text/plain; charset=utf-8", align 1
@2282 = private unnamed_addr constant <{ [8 x i8], [8 x i8], [16 x i8], [16 x i8], [2 x i8], [6 x i8], ptr, [8 x i8], [8 x i8], [8 x i8] }> <{ [8 x i8] zeroinitializer, [8 x i8] undef, [16 x i8] c"\00\00\00\00\00\00\00\80\0A\00\00\00\00\00\00\00", [16 x i8] undef, [2 x i8] c"\00\04", [6 x i8] undef, ptr @2281, [8 x i8] c"\19\00\00\00\00\00\00\00", [8 x i8] undef, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@2283 = private unnamed_addr constant <{ [9 x i8], [23 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\1D", [23 x i8] undef }>, align 8
@2284 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5857865808776727058 to ptr), ptr inttoptr (i64 4822279664300779584 to ptr) }>, align 8
@2285 = private unnamed_addr constant [110 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/actix-web-4.13.0/src/response/builder.rs\00", align 1
@2286 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN57_$LT$http..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hccc659433d937535E" }>, align 8
@2287 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @"_ZN55_$LT$http..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he51cedc6db70e012E", ptr @"_ZN57_$LT$http..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hccc659433d937535E", ptr @2286, ptr @_ZN9actix_web5error14response_error13ResponseError11status_code17h3862cf22a61768d9E, ptr @_ZN9actix_web5error14response_error13ResponseError14error_response17h118e66f265c66694E, ptr @_ZN9actix_web5error14response_error13ResponseError23__private_get_type_id__17h86ef1fa8d54cf5b7E }>, align 8
@2288 = private unnamed_addr constant [29 x i8] c"cannot reuse response builder", align 1
@2289 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2285, [16 x i8] c"m\00\00\00\00\00\00\008\01\00\00\0E\00\00\00" }>, align 8
@_ZN9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN17h0540fd16b3f266fbE = external local_unnamed_addr global { { ptr } }
@"switch.table._ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h02455765bb7d82baE" = private unnamed_addr constant [18 x ptr] [ptr @772, ptr @773, ptr @774, ptr @775, ptr @776, ptr @777, ptr @778, ptr @779, ptr @780, ptr @781, ptr @782, ptr @783, ptr @784, ptr @785, ptr @786, ptr @787, ptr @788, ptr @789], align 8
@"switch.table._ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h02455765bb7d82baE.1977" = private unnamed_addr constant [18 x i8] c"\18\0F\10\0E\0D\0D\0B\09\0F\0C\0C\10\06\0F\0F\15\09\08", align 8
@"switch.table._ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$8previous17he7ac5f5ad8e9fb1aE" = private unnamed_addr constant [58 x i8] c":\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./012345678", align 1
@switch.table._ZN17meilisearch_types4keys6Action11index_scope17h3b12d05078f30f8aE = private unnamed_addr constant [58 x i8] c"\03\01\03\02\01\02\03\01\01\02\02\01\03\01\01\01\03\01\02\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\03\00\00\00\00\00\02\02\00\00\00\00\00\00", align 1
@switch.table._ZN17meilisearch_types5error4Code4http17h2fc761349c00cb09E = private unnamed_addr constant [289 x i16] [i16 409, i16 404, i16 400, i16 400, i16 400, i16 500, i16 404, i16 409, i16 404, i16 500, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 412, i16 412, i16 412, i16 503, i16 409, i16 500, i16 404, i16 400, i16 400, i16 400, i16 500, i16 403, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 415, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 500, i16 400, i16 400, i16 500, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 422, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 401, i16 415, i16 400, i16 400, i16 400, i16 401, i16 400, i16 400, i16 400, i16 400, i16 400, i16 412, i16 422, i16 400, i16 413, i16 502, i16 400, i16 400, i16 502, i16 403, i16 502, i16 502, i16 503, i16 404, i16 404, i16 404, i16 422, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 415, i16 400, i16 400, i16 502, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 501, i16 501, i16 501, i16 404, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 451, i16 400, i16 400, i16 404, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 404, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 400, i16 404], align 2
@switch.table._ZN17meilisearch_types5error4Code5type_17hfae8036072efb29cE = private unnamed_addr constant [289 x i8] c"\01\01\01\01\01\00\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\00\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\01\01\01\01\01\01\02\01\01\01\01\02\01\01\01\01\01\01\03\01\01\03\01\01\03\02\03\03\03\01\01\01\03\01\01\01\01\00\01\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 1
@"switch.table._ZN17meilisearch_types5tasks1_84_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..tasks..Kind$GT$8previous17h3dc363ab2592f829E" = private unnamed_addr constant [18 x i8] c"\12\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 1
@"switch.table._ZN17meilisearch_types7locales138_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..Locale$GT$$u20$for$u20$charabia..detection..script_language..Language$GT$4from17hd9a534fa3156798cE" = private unnamed_addr constant [256 x i8] [i8 46, i8 60, i8 26, i8 11, i8 45, i8 48, i8 44, i8 17, i8 0, i8 62, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 64, i8 61, i8 19, i8 13, i8 50, i8 32, i8 8, i8 31, i8 67, i8 29, i8 23, i8 10, i8 30, i8 2, i8 1, i8 42, i8 25, i8 9, i8 47, i8 16, i8 14, i8 37, i8 28, i8 69, i8 51, i8 7, i8 20, i8 15, i8 34, i8 12, i8 59, i8 21, i8 65, i8 41, i8 40, i8 54, i8 33, i8 39, i8 56, i8 57, i8 27, i8 22, i8 55, i8 49, i8 53, i8 18, i8 6, i8 35, i8 3, i8 58, i8 66, i8 36, i8 63, i8 5, i8 38, i8 24, i8 43, i8 52, i8 68, i8 46, i8 60, i8 26, i8 11, i8 45, i8 48, i8 44, i8 17, i8 0, i8 62, i8 64, i8 61, i8 19, i8 13, i8 50, i8 32, i8 8, i8 31, i8 67, i8 29, i8 23, i8 10, i8 30, i8 2, i8 1, i8 42, i8 25, i8 9, i8 47, i8 16, i8 14, i8 37, i8 28, i8 69, i8 51, i8 7, i8 20, i8 15, i8 34, i8 12, i8 59, i8 21, i8 65, i8 41, i8 40, i8 54, i8 33, i8 39, i8 56, i8 57, i8 27, i8 22, i8 55, i8 49, i8 53, i8 18, i8 6, i8 35, i8 3, i8 58, i8 66, i8 36, i8 63, i8 5, i8 38, i8 24, i8 43, i8 52, i8 68], align 1
@switch.table._ZN17meilisearch_types9task_view8TaskView9from_task17h97e7a18366a7801cE = private unnamed_addr constant [20 x i8] c"\00\02\02\01\02\03\05\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11", align 1
@switch.table._ZN3std2io5error5Error4kind17hcef9c5606d2f7459E = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h04b7996bb1763cb7E" = private unnamed_addr constant [11 x i8] c"\0E\0D\10\0B\0D\0D\10\13\07\05\0D", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h04b7996bb1763cb7E.1978" = private unnamed_addr constant [11 x ptr] [ptr @1094, ptr @1095, ptr @1096, ptr @1097, ptr @1098, ptr @1099, ptr @1100, ptr @1101, ptr @1102, ptr @1103, ptr @1104], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fabd0c6320a78f6E" = private unnamed_addr constant [6 x i8] c"\06\0B\06\0C\04\09", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2fabd0c6320a78f6E.1979" = private unnamed_addr constant [6 x ptr] [ptr @1274, ptr @1275, ptr @1276, ptr @1277, ptr @1278, ptr @1279], align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haeaec0d4e35c444eE" = private unnamed_addr constant [3 x i8] c"\08\08\09", align 8
@"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17haeaec0d4e35c444eE.1980" = private unnamed_addr constant [3 x ptr] [ptr @1874, ptr @1875, ptr @1876], align 8
@"switch.table._ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he446606c877b11fbE" = private unnamed_addr constant [4 x ptr] [ptr @1242, ptr @1243, ptr @1244, ptr @1245], align 8
@"switch.table._ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17he446606c877b11fbE.1981" = private unnamed_addr constant [4 x i8] c"\08\0F\04\06", align 8
@switch.table._ZN4core4iter6traits8iterator8Iterator7collect17hc0810015d0fd1f17E = private unnamed_addr constant [70 x i8] c"\88SRu\8Azs^KVP\83bHY`X\87rG_dnO|U\82m[NQLJiatxZ{jgfT}\86\84\80W\85pI]~qhoklvc\81F\89yEewM\7F\\", align 1
@"switch.table._ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E" = private unnamed_addr constant [7 x i8] c"\01\02\03\04\05\06\00", align 2
@"switch.table._ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E.1983" = private unnamed_addr constant [13 x i16] [i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6], align 2
@"switch.table._ZN84_$LT$tempfile..file..PersistError$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h62f4f574420d0092E" = private unnamed_addr constant [24 x i8] c"\B5\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\D6\1E\1E\1E\C8", align 2

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h0d21a60733169e82E"(ptr nofree captures(none) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 12 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !206, !noalias !207, !noundef !21 ; 3 uses
  %i.c = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !206, !noalias !207, !noundef !21
  %i.d = icmp eq i64 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.b, i64 noundef range(i64 1, 0) 1, i64 noundef 1, i64 noundef 1), !noalias !207
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !208, !noalias !207
  br label %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i

_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i: ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !208, !noalias !207, !nonnull !21, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  store i8 34, ptr %i.i, align 1, !noalias !209
  %i.j = add nuw i64 %i.e, 1                      ; 3 uses
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !208, !noalias !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %exitcond.not.i.i411 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i.i411, label %.outer.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i
  %.sroa.01.0.ph.i.i13 = phi ptr [ %i.ac, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ], [ %0, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ] ; 4 uses
  %.sroa.8.0.ph.i.i12 = phi i64 [ %i.ae, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ], [ %1, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ] ; 3 uses
  %i.k = phi i64 [ %storemerge.i.i, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ], [ %i.j, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ] ; 5 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.f
  %i.l = add i64 %.sroa.06.0.i.i5, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %.sroa.8.0.ph.i.i12
  br i1 %exitcond.not.i.i, label %.outer.i.i._crit_edge, label %bb.f

.outer.i.i._crit_edge:                            ; preds = %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i, %bb.c, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i
  %.lcssa3 = phi i64 [ %i.k, %bb.c ], [ %i.j, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ], [ %storemerge.i.i, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ] ; 4 uses
  %.sroa.8.0.ph.i.i.lcssa = phi i64 [ %.sroa.8.0.ph.i.i12, %bb.c ], [ %1, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ], [ %i.ae, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ] ; 5 uses
  %.sroa.01.0.ph.i.i.lcssa = phi ptr [ %.sroa.01.0.ph.i.i13, %bb.c ], [ %0, %_ZN10serde_json3ser9Formatter12begin_string17h04fc1c1c810c7a31E.exit.i ], [ %i.ac, %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i ]
  %i.m = icmp eq i64 %.sroa.8.0.ph.i.i.lcssa, 0
  br i1 %i.m, label %_ZN10serde_json3ser27format_escaped_str_contents17h7782df3d55734527E.exit.i, label %bb.d

bb.d:                                             ; preds = %.outer.i.i._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.n = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !215, !noalias !216, !noundef !21
  %i.o = sub i64 %i.n, %.lcssa3
  %i.p = icmp ugt i64 %.sroa.8.0.ph.i.i.lcssa, %i.o
  br i1 %i.p, label %bb.e, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit.i.i, !prof !23

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %.lcssa3, i64 noundef range(i64 1, 0) %.sroa.8.0.ph.i.i.lcssa, i64 noundef 1, i64 noundef 1), !noalias !216
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !217, !noalias !216
  br label %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit.i.i

_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i64 [ %.lcssa3, %bb.d ], [ %.pre.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = load ptr, ptr %i.g, align 8, !alias.scope !217, !noalias !216, !nonnull !21, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i.lcssa, i64 range(i64 1, 0) %.sroa.8.0.ph.i.i.lcssa, i1 false), !noalias !217
  %i.u = add i64 %i.q, %.sroa.8.0.ph.i.i.lcssa    ; 2 uses
  store i64 %i.u, ptr %i.a, align 8, !alias.scope !217, !noalias !216
  br label %_ZN10serde_json3ser27format_escaped_str_contents17h7782df3d55734527E.exit.i

bb.f:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.06.0.i.i5 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i13, i64 %.sroa.06.0.i.i5
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !218, !noundef !21 ; 3 uses
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser6ESCAPE17h0276473040442971E, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !218, !noundef !21 ; 3 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0.ph.i.i13, i64 %.sroa.06.0.i.i5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ad = xor i64 %.sroa.06.0.i.i5, -1
  %i.ae = add i64 %.sroa.8.0.ph.i.i12, %i.ad      ; 3 uses
  %i.af = icmp eq i64 %.sroa.06.0.i.i5, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ag = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !223, !noalias !224, !noundef !21
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = icmp ugt i64 %.sroa.06.0.i.i5, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit24.i.i, !prof !23

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.k, i64 noundef range(i64 1, 0) %.sroa.06.0.i.i5, i64 noundef 1, i64 noundef 1), !noalias !224
  %.pre.i.i.i.i.i.i23.i.i = load i64, ptr %i.a, align 8, !alias.scope !225, !noalias !224
  br label %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit24.i.i

_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit24.i.i: ; preds = %bb.i, %bb.h
  %i.aj = phi i64 [ %i.k, %bb.h ], [ %.pre.i.i.i.i.i.i23.i.i, %bb.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !225, !noalias !224, !nonnull !21, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.01.0.ph.i.i13, i64 range(i64 1, 0) %.sroa.06.0.i.i5, i1 false), !noalias !225
  %i.an = add i64 %i.aj, %.sroa.06.0.i.i5         ; 2 uses
  store i64 %i.an, ptr %i.a, align 8, !alias.scope !225, !noalias !224
  br label %bb.j

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit24.i.i, %bb.g
  %i.ao = phi i64 [ %i.an, %_ZN10serde_json3ser9Formatter21write_string_fragment17h631c95ae98f55926E.exit24.i.i ], [ %i.k, %bb.g ] ; 6 uses
  %i.ap = icmp eq i8 %i.z, 117
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aq = and i8 %i.w, 15
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = lshr i8 %i.w, 4
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !218, !noundef !21
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZN10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS17h3ef7aa5f51889305E, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !218, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ay = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !230, !noalias !231, !noundef !21
  %i.az = sub i64 %i.ay, %i.ao
  %i.ba = icmp ult i64 %i.az, 6
  br i1 %i.ba, label %bb.l, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit.i.i.i", !prof !23

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 6, i64 noundef 1, i64 noundef 1), !noalias !231
  %.pre.i.i.i.i.i.i25.i.i = load i64, ptr %i.a, align 8, !alias.scope !232, !noalias !231
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %i.bb = phi i64 [ %i.ao, %bb.k ], [ %.pre.i.i.i.i.i.i25.i.i, %bb.l ] ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = load ptr, ptr %i.g, align 8, !alias.scope !232, !noalias !231, !nonnull !21, !noundef !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.be, align 1, !noalias !233
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i8 %i.av, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !233
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 5
  store i8 %i.ax, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !233
  %i.bf = add nuw i64 %i.bb, 6
  br label %_ZN10serde_json3ser9Formatter17write_char_escape17h1bb89d99d04bf0f0E.exit.i.i

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.bg = load i64, ptr %.0.val, align 8, !range !22, !alias.scope !238, !noalias !239, !noundef !21
  %i.bh = sub i64 %i.bg, %i.ao
  %i.bi = icmp ult i64 %i.bh, 2
  br i1 %i.bi, label %bb.n, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit7.i.i.i", !prof !23

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 2, i64 noundef 1, i64 noundef 1), !noalias !239
  %.pre.i.i.i.i.i6.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !240, !noalias !239
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit7.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h3caf2f6b7b3cc503E.exit7.i.i.i": ; preds = %bb.n, %bb.m
  %i.bj = phi i64 [ %i.ao, %bb.m ], [ %.pre.i.i.i.i.i6.i.i.i, %bb.n ] ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = load ptr, ptr %i.g, align 8, !alias.scope !240, !noalias !239, !nonnull !21, !noundef !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8547
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.val20.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8552
  %i.x = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8547
  %i.y = icmp eq i64 %i.x, %4
  br i1 %i.y, label %_ZN4core4iter6traits8iterator8Iterator7collect17hb1608f5fc2c115aeE.exit, label %bb.d

common.resume:                                    ; preds = %bb.f, %bb.h, %bb.i, %.body.i.i.i.i
  %.sink = phi ptr [ %i.f, %.body.i.i.i.i ], [ %i.i, %bb.i ], [ %i.i, %bb.h ], [ %i.i, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.z, %.body.i.i.i.i ], [ %i.ag, %bb.i ], [ %i.ag, %bb.h ], [ %i.ae, %bb.f ]
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #55
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i:                                    ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  store i64 %.val20.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !alias.scope !8553, !noalias !8554
  br label %common.resume

_ZN4core4iter6traits8iterator8Iterator7collect17hb1608f5fc2c115aeE.exit: ; preds = %bb.e, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h4c2ffab09fcfeb15E.exit.i.i.i.i.i.i"
  store i64 %4, ptr %i.t, align 8, !alias.scope !8553, !noalias !8554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8543
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_ZN5alloc3str17join_generic_copy17hb65833a9b1fceafeE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @811, i64 noundef 2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb1608f5fc2c115aeE.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.g:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hb1608f5fc2c115aeE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.l, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h64720f0b0ca45038E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.j, ptr %i.af, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8555
  store ptr @827, ptr %i.a, align 8, !noalias !8556
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !8556
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !8556
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !8556
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !8556
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8557)
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !8557 ; 2 uses
  %i.ah = icmp eq i64 %.val.i, 0
  br i1 %i.ah, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.ai, align 8, !alias.scope !8557, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8557
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  %.val.i9 = load i64, ptr %i.j, align 8, !alias.scope !8558 ; 2 uses
  %i.aj = icmp eq i64 %.val.i9, 0
  br i1 %i.aj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i10 = load ptr, ptr %i.ak, align 8, !alias.scope !8558, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8558
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11": ; preds = %bb.k, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !8559)
  call void @llvm.experimental.noalias.scope.decl(metadata !8560)
  %i.al = icmp eq i64 %i.ad, 0
  br i1 %i.al, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.an, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11" ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.an = add nuw i64 %.sroa.0.010.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8561)
  %.val.i.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !8562, !noalias !8559 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ao, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !8562, !noalias !8559, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8563
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i": ; preds = %bb.l, %.lr.ph.i.i.i
  %i.aq = icmp eq i64 %i.an, %i.ad
  br i1 %i.aq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11"
  %.val2.i = load i64, ptr %i.i, align 8, !range !22, !alias.scope !8559, !noundef !21 ; 2 uses
  %i.ar = icmp eq i64 %.val2.i, 0
  br i1 %i.ar, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i"
  %i.as = mul nuw i64 %.val2.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !8559
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h4bfba0ed27bdd111E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h29df9b7a9d118a79E.exit.i", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %5, ptr %i.at, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types7batches19default_stop_reason17hb01fea24709ea154E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8569
  store i64 0, ptr %i.c, align 8, !noalias !8569
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8569
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !8569
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8569
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !8569
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !8569
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !8569
  store ptr %i.c, ptr %i.b, align 8, !noalias !8569
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1053, ptr %i.f, align 8, !noalias !8569
  %i.g = invoke noundef zeroext i1 @"_ZN80_$LT$meilisearch_types..tasks..BatchStopReason$u20$as$u20$core..fmt..Display$GT$3fmt17he4cfcfb79bc6e131E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !8570

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8571)
  %.val.i.i = load i64, ptr %i.c, align 8, !alias.scope !8571, !noalias !8569 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !8571, !noalias !8569, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !8572
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1054, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1075, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #57
          to label %.noexc.i unwind label %bb.b, !noalias !8570

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.b, %bb.c
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..BatchStopReason$GT$17hc62af38e26a82caaE"(ptr noalias noundef align 8 dereferenceable(64) %i.d) #55
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !8573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8569
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$meilisearch_types..tasks..BatchStopReason$GT$17hc62af38e26a82caaE"(ptr noalias noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 70) i8 @"_ZN17meilisearch_types7locales138_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..Locale$GT$$u20$for$u20$charabia..detection..script_language..Language$GT$4from17hd9a534fa3156798cE"(i8 noundef range(i8 0, -117) %0) unnamed_addr #2 {
switch.lookup:
  %switch.tableidx = xor i8 %0, -128
  %i.a = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN17meilisearch_types7locales138_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..Locale$GT$$u20$for$u20$charabia..detection..script_language..Language$GT$4from17hd9a534fa3156798cE", i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @"_ZN17meilisearch_types7locales171_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$u20$for$u20$milli..localized_attributes_rules..LocalizedAttributesRule$GT$4from17h4e3f7dd61e20bf46E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.012.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8 ; 4 uses
  %i.b = icmp sgt i64 %.sroa.514.0.copyload, -1
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.514.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !80, !noalias !8589, !noundef !21
  %i.e = tail call noundef range(i8 0, 70) i8 @"_ZN17meilisearch_types7locales138_$LT$impl$u20$core..convert..From$LT$meilisearch_types..locales..Locale$GT$$u20$for$u20$charabia..detection..script_language..Language$GT$4from17hd9a534fa3156798cE"(i8 noundef range(i8 0, -117) %i.d)
  %i.f = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !noalias !8589
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.f, %.sroa.514.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17hcf48efbd388278aeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.012.0.copyload, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.413.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.514.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN17meilisearch_types7network18RemoteAvailability12is_available17h98744a22ec2d02f4E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.8 = alloca ptr, align 8                  ; 8 uses
  %.sroa.11 = alloca ptr, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8607
  %i.i = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5seize3raw3tls9thread_id6THREAD29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hb0ffe1e3a992a583E") ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !8608
  %i.j = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !8609
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

bb.c:                                             ; preds = %bb.a
  call void @_ZN5seize3raw3tls9thread_id6Thread9init_slow17h7da54b82a5c2c906E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.i), !noalias !8609
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.08.0.copyload9.i = load i64, ptr %i.f, align 8, !noalias !8607 ; 3 uses
  %.sroa.3.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload11.i = load i64, ptr %.sroa.3.0..sroa_idx10.i, align 8, !noalias !8607 ; 3 uses
  %.sroa.412.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.412.0.copyload14.i = load i64, ptr %.sroa.412.0..sroa_idx13.i, align 8, !noalias !8607 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8607
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.l = icmp ult i64 %.sroa.412.0.copyload14.i, 59
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.412.0.copyload14.i ; 2 uses
  %i.n = load atomic ptr, ptr %i.m acquire, align 8, !noalias !8610 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e, !prof !23

bb.d:                                             ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8610
  store i64 %.sroa.08.0.copyload9.i, ptr %i.e, align 8, !noalias !8607
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.4.0..sroa_idx4.i, align 8, !noalias !8607
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !8607
  %i.p = call noundef ptr @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$10initialize17h021f31fe11d8afebE"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e), !noalias !8610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8610
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i"
  %.sroa.01.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.n, %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hf62a9631c34d085bE.exit.i" ] ; 2 uses
  %i.q = getelementptr inbounds nuw [256 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.3.0.copyload11.i ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load atomic i8, ptr %i.r monotonic, align 1, !noalias !8610
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  call void @"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$5write17h925250c03b873f28E"(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 128 %i.q), !noalias !8610
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  br label %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"

"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i": ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !8607, !noundef !21 ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !noalias !8607
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.h, label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

bb.h:                                             ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i"
  %i.y = load atomic i8, ptr @_ZN5seize3raw10membarrier5linux8STRATEGY17hb6fd5acc0a73eed9E monotonic, align 1, !noalias !8607
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %.split2.i, label %.split.i

.split2.i:                                        ; preds = %bb.h
  store atomic ptr null, ptr %i.q seq_cst, align 8, !noalias !8607
  br label %bb.i

.split.i:                                         ; preds = %bb.h
  store atomic ptr null, ptr %i.q monotonic, align 8, !noalias !8607
  br label %bb.i

bb.i:                                             ; preds = %.split.i, %.split2.i
  fence syncscope("singlethread") seq_cst
  br label %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit

_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit: ; preds = %"_ZN5seize3raw3tls20ThreadLocal$LT$T$GT$7load_or17h37da99e105ccaf8aE.exit.i", %bb.i
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.08.0.copyload9.i, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.3.0.copyload11.i, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.412.0.copyload14.i, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.q, ptr %.sroa.715.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %0, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8611)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load atomic ptr, ptr %i.ab seq_cst, align 8, !noalias !8612 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !8612, !noundef !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !8612, !noundef !21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %.val.i = load i64, ptr %i.ah, align 8, !noalias !8612, !noundef !21
  %i.ai = getelementptr i8, ptr %0, i64 1016
  %.val51.i = load i64, ptr %i.ai, align 8, !noalias !8612, !noundef !21
  %i.aj = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h12a0e2b1fd2f067aE(i64 %.val.i, i64 %.val51.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !8613 ; 2 uses
  %i.ak = lshr i64 %i.aj, 57
  %i.al = trunc nuw nsw i64 %i.ak to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8612
  store i8 1, ptr %i.d, align 1, !noalias !8612
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.k

.critedge.i:                                      ; preds = %_ZN5seize5guard10LocalGuard5enter17h24d308f051bfeccaE.exit
  store ptr null, ptr %.sroa.8, align 8, !alias.scope !8611, !noalias !8614
  br label %"_ZN6papaya3raw24HashMap$LT$K$C$V$C$S$GT$9remove_if17h19e238d7aeec1165E.exit"

bb.k:                                             ; preds = %bb.y, %bb.j
  %.sroa.15.1.i = phi ptr [ %i.ac, %bb.j ], [ %.sroa.3.0.copyload.i, %bb.y ] ; 3 uses
  %.sroa.12.1.i = phi i64 [ %i.ag, %bb.j ], [ %.sroa.2.0.copyload.i, %bb.y ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.ae, %bb.j ], [ %.sroa.025.0.copyload.i, %bb.y ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.15.1.i, i64 136 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.sroa.0.1.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i, %bb.k
  %.pn100.i = phi i64 [ %i.aj, %bb.k ], [ %.pn50.be.i, %.backedge.i ]
  %.sroa.035.082.i = phi i64 [ 0, %bb.k ], [ %.sroa.035.0.be.i, %.backedge.i ]
  %.sroa.026.083.i = and i64 %.pn100.i, %.sroa.0.1.i ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.026.083.i
  %i.at = load atomic i8, ptr %i.as acquire, align 1, !noalias !8612 ; 2 uses
  %i.au = icmp eq i8 %i.at, -128
  br i1 %i.au, label %bb.n, label %bb.m

end_hunk_1
