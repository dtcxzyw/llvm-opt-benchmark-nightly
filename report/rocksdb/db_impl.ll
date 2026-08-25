Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl?download=true
inline.NumInlined: 18355
inline.NumDeleted: 8074
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 38
begin_hunk_0
@.str.55 = private unnamed_addr constant [68 x i8] c"[%s:933] optimize_manifest_for_recovery close-time write failed: %s\00", align 1
@.str.56 = private unnamed_addr constant [60 x i8] c"[%s:948] Unable to clear writer for WAL %s with error -- %s\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"[%s:976] Unable to close MANIFEST with error -- %s\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"[%s:1026] Shutdown complete\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"[%s:1093] Ignoring error %s\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"[%s:1112] STATISTICS:\0A %s\00", align 1
@.str.61 = private unnamed_addr constant [60 x i8] c"[%s:1302] Failed to unregister periodic task %d, status: %s\00", align 1
@_ZN7rocksdb15kMicrosInSecondE = external local_unnamed_addr constant i64, align 8
@.str.62 = private unnamed_addr constant [43 x i8] c"[%s:1351] ------- PERSISTING STATS -------\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"[%s:1359] Reading %zu stats from statistics\0A\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"[%s:1388] Writing to persistent stats CF failed -- %s\00", align 1
@.str.65 = private unnamed_addr constant [80 x i8] c"[%s:1393] Writing %zu stats with timestamp %lu to persistent stats CF succeeded\00", align 1
@.str.66 = private unnamed_addr constant [74 x i8] c"[%s:1409] Storing %zu stats with timestamp %lu to in-memory stats history\00", align 1
@.str.67 = private unnamed_addr constant [77 x i8] c"[%s:1422] [Pre-GC] In-memory stats history size: %zu bytes, slice count: %zu\00", align 1
@.str.68 = private unnamed_addr constant [78 x i8] c"[%s:1431] [Post-GC] In-memory stats history size: %zu bytes, slice count: %zu\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"stats_iterator not preallocated.\00", align 1
@_ZN7rocksdb2DB10Properties8kDBStatsB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@_ZN7rocksdb13InternalStats16kPeriodicCFStatsB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.70 = private unnamed_addr constant [40 x i8] c"[%s:1533] ------- DUMPING STATS -------\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"[%s:1534] %s\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"[%s:1540] ------- Malloc STATS -------\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"[%s:1541] %s\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"[%s:1611] SetOptions() on column family [%s], empty input\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"empty input\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"preserve_internal_time_seconds\00", align 1
@.str.77 = private unnamed_addr constant [33 x i8] c"preclude_last_level_data_seconds\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"[%s:1720] SetOptions() on [%zu] column families, inputs:\00", align 1
@.str.79 = private unnamed_addr constant [63 x i8] c"[%s:1726] Set options on column family [%s] (%zu/%zu), inputs:\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"[%s:1729] %s: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [85 x i8] c"[%s:1738] Set options on column family [%s] (%zu/%zu) succeeded, updated CF options:\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"[%s:1748] SetOptions() failed: %s\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"[%s:1758] SetDBOptions(), empty input.\00", align 1
@.str.84 = private unnamed_addr constant [80 x i8] c"[%s:1781] SetDBOptions(), input option value is not changed, skipping updating.\00", align 1
@.str.85 = private unnamed_addr constant [60 x i8] c"[%s:1908] Unable to purge WAL files in SetDBOptions() -- %s\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"[%s:1921] SetDBOptions(), inputs:\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"[%s:1924] %s: %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [35 x i8] c"[%s:1927] SetDBOptions() succeeded\00", align 1
@.str.89 = private unnamed_addr constant [56 x i8] c"SetDBOptions() succeeded, but unable to persist options\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"[%s:1935] SetDBOptions failed\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"[%s:1980] WAL flush error %s\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"[%s:1988] FlushWAL sync=false\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"[%s:1996] FlushWAL sync=true\00", align 1
@.str.94 = private unnamed_addr constant [63 x i8] c"SyncWAL() is not supported for this implementation of WAL file\00", align 1
@.str.95 = private unnamed_addr constant [48 x i8] c"try setting Options::allow_mmap_writes to false\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"[%s:2098] [JOB %d] Syncing log #%lu\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"[%s:2137] WAL Sync error %s\00", align 1
@.str.98 = private unnamed_addr constant [36 x i8] c"No LockWAL() held by current thread\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"ts_low is nullptr\00", align 1
@.str.100 = private unnamed_addr constant [47 x i8] c"Timestamp is not enabled in this column family\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"newest_timestamp is nullptr\00", align 1
@.str.102 = private unnamed_addr constant [98 x i8] c"GetNewestUserDefinedTimestamp doesn't support the case when userdefined timestamps are persisted.\00", align 1
@.str.103 = private unnamed_addr constant [53 x i8] c"Cannot call GetEntity without a column family handle\00", align 1
@.str.104 = private unnamed_addr constant [59 x i8] c"Cannot call GetEntity without a PinnableWideColumns object\00", align 1
@.str.105 = private unnamed_addr constant [124 x i8] c"Can only call GetEntity with `ReadOptions::io_activity` set to `Env::IOActivity::kUnknown` or `Env::IOActivity::kGetEntity`\00", align 1
@.str.106 = private unnamed_addr constant [61 x i8] c"Cannot call GetEntity without PinnableAttributeGroups object\00", align 1
@.str.107 = private unnamed_addr constant [79 x i8] c"DB failed to query because one or more group(s) have null column family handle\00", align 1
@.str.108 = private unnamed_addr constant [36 x i8] c"Column family handle cannot be null\00", align 1
@.str.109 = private unnamed_addr constant [81 x i8] c"DB not queried due to invalid argument(s) in one or more of the attribute groups\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Wide column blob metadata out of sync\00", align 1
@.str.111 = private unnamed_addr constant [61 x i8] c"Encountered blob-backed memtable value without blob fetcher.\00", align 1
@.str.112 = private unnamed_addr constant [51 x i8] c"Cannot call MultiGetEntity without column families\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Cannot call MultiGetEntity without keys\00", align 1
@.str.114 = private unnamed_addr constant [63 x i8] c"Cannot call MultiGetEntity without PinnableWideColumns objects\00", align 1
@.str.115 = private unnamed_addr constant [134 x i8] c"Can only call MultiGetEntity with `ReadOptions::io_activity` set to `Env::IOActivity::kUnknown` or `Env::IOActivity::kMultiGetEntity`\00", align 1
@.str.116 = private unnamed_addr constant [58 x i8] c"Cannot call MultiGetEntity without a column family handle\00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"Column family name cannot be the empty string\00", align 1
@.str.118 = private unnamed_addr constant [29 x i8] c"Column family already exists\00", align 1
@.str.119 = private unnamed_addr constant [45 x i8] c"[%s:3930] Created column family [%s] (ID %u)\00", align 1
@.str.120 = private unnamed_addr constant [51 x i8] c"[%s:3934] Creating column family [%s] FAILED -- %s\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"Can't drop default column family\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"Column family already dropped!\0A\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"[%s:4053] Dropped column family with id %u\0A\00", align 1
@.str.124 = private unnamed_addr constant [58 x i8] c"[%s:4057] Dropping column family with id %u FAILED -- %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [123 x i8] c"Can only call NewIterator with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kDBIterator`\00", align 1
@.str.126 = private unnamed_addr constant [60 x i8] c"ReadTier::kPersistedData is not yet supported in iterators.\00", align 1
@.str.127 = private unnamed_addr constant [124 x i8] c"Can only call NewIterators with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kDBIterator`\00", align 1
@.str.128 = private unnamed_addr constant [55 x i8] c"timestamp lower bound must be smaller than upper bound\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"Memtable does not support snapshot\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"snapshot exists with larger timestamp \00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"Allocated seq is \00", align 1
@.str.133 = private unnamed_addr constant [42 x i8] c", while snapshot exists with smaller seq \00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c" but same timestamp \00", align 1
@_ZN7rocksdb17kValueTypeForSeekE = external local_unnamed_addr constant i8, align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"Invalid options\00", align 1
@.str.136 = private unnamed_addr constant [81 x i8] c"This API is not yet compatible with write-prepared/write-unprepared transactions\00", align 1
@.str.137 = private unnamed_addr constant [45 x i8] c"Requested sequence not yet written in the db\00", align 1
@.str.138 = private unnamed_addr constant [27 x i8] c"file_info must not be null\00", align 1
@.str.140 = private unnamed_addr constant [26 x i8] c"Invalid table file name: \00", align 1
@.str.141 = private unnamed_addr constant [38 x i8] c"Path does not match live table file: \00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"Cannot destroy the handle returned by DefaultColumnFamily()\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.144 = private unnamed_addr constant [48 x i8] c"[%s:5803] Unable to delete temp options file %s\00", align 1
@.str.145 = private unnamed_addr constant [43 x i8] c"[%s:5809] Unnable to persist options -- %s\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"Unable to persist options.\00", align 1
@.str.147 = private unnamed_addr constant [54 x i8] c"[%s:5953] Unable to delete obsolete OPTIONS files: %s\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"RocksDB version: %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"rocksdb_build_git_sha\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"Git sha %s\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"rocksdb_build_date\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"Compile date %s\00", align 1
@.str.153 = private unnamed_addr constant [61 x i8] c"[%s:6069] Unexpected status returned from MemTable::Get: %s\0A\00", align 1
@.str.154 = private unnamed_addr constant [65 x i8] c"[%s:6103] Unexpected status returned from MemTableList::Get: %s\0A\00", align 1
@.str.155 = private unnamed_addr constant [76 x i8] c"[%s:6137] Unexpected status returned from MemTableList::GetFromHistory: %s\0A\00", align 1
@.str.156 = private unnamed_addr constant [60 x i8] c"[%s:6173] Unexpected status returned from Version::Get: %s\0A\00", align 1
@_ZTVN7rocksdb23FileIngestionHandleImplE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb23FileIngestionHandleImplD1Ev, ptr @_ZN7rocksdb23FileIngestionHandleImplD0Ev, ptr @_ZN7rocksdb23FileIngestionHandleImpl5AbortEv] }, align 8
@.str.157 = private unnamed_addr constant [112 x i8] c"[%s:6221] [%zu CF(s)] File ingestion handle destroyed without commit or abort; prepared files were rolled back.\00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"file ingestion aborted\00", align 1
@.str.159 = private unnamed_addr constant [60 x i8] c"file ingestion handle has already been committed or aborted\00", align 1
@.str.160 = private unnamed_addr constant [37 x i8] c"file ingestion handle output is null\00", align 1
@.str.161 = private unnamed_addr constant [28 x i8] c"ingestion arg list is empty\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"column family handle is null\00", align 1
@.str.163 = private unnamed_addr constant [46 x i8] c"ingestion args have duplicate column families\00", align 1
@.str.164 = private unnamed_addr constant [16 x i8] c"external_files[\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"] is empty\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"file_infos[\00", align 1
@.str.167 = private unnamed_addr constant [34 x i8] c"] size must match external_files[\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"] size\00", align 1
@.str.169 = private unnamed_addr constant [59 x i8] c"write_global_seqno is not supported when file_infos is set\00", align 1
@.str.170 = private unnamed_addr constant [56 x i8] c"fill_cache should be the same across ingestion options.\00", align 1
@.str.171 = private unnamed_addr constant [82 x i8] c"Column family with user-defined timestamps enabled doesn't support ingest behind.\00", align 1
@.str.172 = private unnamed_addr constant [78 x i8] c"Can't ingest_behind file in ColumnFamily %s with cf_allow_ingest_behind=false\00", align 1
@.str.173 = private unnamed_addr constant [55 x i8] c"Can't combine atomic_replace_range with ingest_behind.\00", align 1
@.str.174 = private unnamed_addr constant [66 x i8] c"atomic_replace_range not yet supported with snapshot_consistency.\00", align 1
@.str.175 = private unnamed_addr constant [77 x i8] c"Only one of atomic_replace_range.{start,limit}.has_value() is not supported.\00", align 1
@.str.176 = private unnamed_addr constant [82 x i8] c"write_global_seqno is deprecated and does not work with allow_db_generated_files.\00", align 1
@.str.177 = private unnamed_addr constant [52 x i8] c"`move_files` and `link_files` can not both be true.\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"no file ingestion handles to commit\00", align 1
@.str.179 = private unnamed_addr constant [53 x i8] c"fill cache arg must be consistent across all handles\00", align 1
@_ZN7rocksdb12perf_contextE = external thread_local global %"struct.rocksdb::PerfContext", align 8
@.str.180 = private unnamed_addr constant [49 x i8] c"cannot ingest an external file into a dropped CF\00", align 1
@.str.181 = private unnamed_addr constant [25 x i8] c"Comparator name mismatch\00", align 1
@.str.182 = private unnamed_addr constant [48 x i8] c"[%s:6907] DropColumnFamily failed with error %s\00", align 1
@.str.183 = private unnamed_addr constant [140 x i8] c"Can only call VerifyFileChecksums with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kVerifyFileChecksums`\00", align 1
@.str.184 = private unnamed_addr constant [132 x i8] c"Can only call VerifyChecksum with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kVerifyDBChecksum`\00", align 1
@_ZN7rocksdb15iostats_contextE = external thread_local local_unnamed_addr global %"struct.rocksdb::IOStatsContext", align 8
@.str.185 = private unnamed_addr constant [73 x i8] c"Cannot verify file checksum if options.file_checksum_gen_factory is null\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c" file checksum mismatch, \00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"expecting \00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c", but actual \00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"No trace file to close\00", align 1
@.str.190 = private unnamed_addr constant [43 x i8] c"This API only works if max_open_files = -1\00", align 1
@.str.191 = private unnamed_addr constant [60 x i8] c"[%s:7527] Running the periodic task to trigger compactions.\00", align 1
@.str.192 = private unnamed_addr constant [88 x i8] c"[%s:7553] Periodic task to trigger compaction queued Column family [%s] for compaction.\00", align 1
@.str.193 = private unnamed_addr constant [108 x i8] c"Can only call Get with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kGet`\00", align 1
@_ZN7rocksdb10perf_levelE = external thread_local local_unnamed_addr global i8, align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"Query abort.\00", align 1
@.str.195 = private unnamed_addr constant [63 x i8] c"DB not queried due to invalid argument(s) in the same MultiGet\00", align 1
@.str.196 = private unnamed_addr constant [118 x i8] c"Can only call MultiGet with `ReadOptions::io_activity` is `Env::IOActivity::kUnknown` or `Env::IOActivity::kMultiGet`\00", align 1
@_ZTVN7rocksdb2DBE = unnamed_addr constant { [177 x ptr] } { [177 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb2DB6ResumeEv, ptr @_ZN7rocksdb2DB5CloseEv, ptr @_ZN7rocksdb2DBD1Ev, ptr @_ZN7rocksdb2DBD0Ev, ptr @_ZN7rocksdb2DB18CreateColumnFamilyERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPNS_18ColumnFamilyHandleE, ptr @_ZN7rocksdb2DB20CreateColumnFamiliesERKNS_19ColumnFamilyOptionsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPS4_IPNS_18ColumnFamilyHandleESaISG_EE, ptr @_ZN7rocksdb2DB20CreateColumnFamiliesERKSt6vectorINS_22ColumnFamilyDescriptorESaIS2_EEPS1_IPNS_18ColumnFamilyHandleESaIS8_EE, ptr @_ZN7rocksdb2DB16DropColumnFamilyEPNS_18ColumnFamilyHandleE, ptr @_ZN7rocksdb2DB18DropColumnFamiliesERKSt6vectorIPNS_18ColumnFamilyHandleESaIS3_EE, ptr @_ZN7rocksdb2DB25DestroyColumnFamilyHandleEPNS_18ColumnFamilyHandleE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB3PutERKNS_12WriteOptionsERKNS_5SliceES6_, ptr @_ZN7rocksdb2DB3PutERKNS_12WriteOptionsERKNS_5SliceES6_S6_, ptr @_ZN7rocksdb2DB9PutEntityERKNS_12WriteOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceERKSt6vectorINS_10WideColumnESaISA_EE, ptr @_ZN7rocksdb2DB9PutEntityERKNS_12WriteOptionsERKNS_5SliceERKSt6vectorINS_14AttributeGroupESaIS8_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB6DeleteERKNS_12WriteOptionsERKNS_5SliceE, ptr @_ZN7rocksdb2DB6DeleteERKNS_12WriteOptionsERKNS_5SliceES6_, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB12SingleDeleteERKNS_12WriteOptionsERKNS_5SliceE, ptr @_ZN7rocksdb2DB12SingleDeleteERKNS_12WriteOptionsERKNS_5SliceES6_, ptr @_ZN7rocksdb2DB11DeleteRangeERKNS_12WriteOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceES8_, ptr @_ZN7rocksdb2DB11DeleteRangeERKNS_12WriteOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceES8_S8_, ptr @_ZN7rocksdb2DB11DeleteRangeERKNS_12WriteOptionsERKNS_5SliceES6_, ptr @_ZN7rocksdb2DB11DeleteRangeERKNS_12WriteOptionsERKNS_5SliceES6_S6_, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB5MergeERKNS_12WriteOptionsERKNS_5SliceES6_, ptr @_ZN7rocksdb2DB5MergeERKNS_12WriteOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceES8_S8_, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB17WriteWithCallbackERKNS_12WriteOptionsEPNS_10WriteBatchEPNS_17UserWriteCallbackE, ptr @_ZN7rocksdb2DB25IngestWriteBatchWithIndexERKNS_12WriteOptionsESt10shared_ptrINS_19WriteBatchWithIndexEE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_, ptr @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceE, ptr @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_, ptr @_ZN7rocksdb2DB9GetEntityERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_19PinnableWideColumnsE, ptr @_ZN7rocksdb2DB9GetEntityERKNS_11ReadOptionsERKNS_5SliceEPSt6vectorINS_22PinnableAttributeGroupESaIS8_EE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorIPNS_18ColumnFamilyHandleESaIS6_EERKS4_INS_5SliceESaISB_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EESO_, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorIPNS_18ColumnFamilyHandleESaIS6_EERKS4_INS_5SliceESaISB_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EE, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorINS_5SliceESaIS5_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EE, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsERKSt6vectorINS_5SliceESaIS5_EEPS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EESI_, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEb, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb, ptr @_ZN7rocksdb2DB8MultiGetERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEb, ptr @_ZN7rocksdb2DB14MultiGetEntityERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleEmPKNS_5SliceEPNS_19PinnableWideColumnsEPNS_6StatusEb, ptr @_ZN7rocksdb2DB14MultiGetEntityERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_19PinnableWideColumnsEPNS_6StatusEb, ptr @_ZN7rocksdb2DB14MultiGetEntityERKNS_11ReadOptionsEmPKNS_5SliceEPSt6vectorINS_22PinnableAttributeGroupESaIS8_EE, ptr @_ZN7rocksdb2DB11KeyMayExistERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_Pb, ptr @_ZN7rocksdb2DB11KeyMayExistERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb, ptr @_ZN7rocksdb2DB11KeyMayExistERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb, ptr @_ZN7rocksdb2DB11KeyMayExistERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_Pb, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB11NewIteratorERKNS_11ReadOptionsE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB12NewMultiScanERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_13MultiScanArgsE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNS_13PinnableSliceERNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_RNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB13MultiGetAsyncERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEbRNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB13MultiGetAsyncERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusEbRNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB13MultiGetAsyncERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusERNS0_13AsyncCallbackE, ptr @_ZN7rocksdb2DB13MultiGetAsyncERKNS_11ReadOptionsEmPPNS_18ColumnFamilyHandleEPKNS_5SliceEPNS_13PinnableSliceEPNS_6StatusERNS0_13AsyncCallbackE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB11GetPropertyERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB14GetMapPropertyERKNS_5SliceEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB14GetIntPropertyERKNS_5SliceEPm, ptr @_ZN7rocksdb2DB10ResetStatsEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB19GetApproximateSizesEPNS_18ColumnFamilyHandleEPKNS_5RangeEiPmNS0_22SizeApproximationFlagsE, ptr @_ZN7rocksdb2DB19GetApproximateSizesEPKNS_5RangeEiPmNS0_22SizeApproximationFlagsE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB27GetApproximateMemTableStatsERKNS_5RangeEPmS4_, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB12CompactRangeERKNS_19CompactRangeOptionsEPKNS_5SliceES6_, ptr @_ZN7rocksdb2DB10SetOptionsEPNS_18ColumnFamilyHandleERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEE, ptr @_ZN7rocksdb2DB10SetOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEE, ptr @_ZN7rocksdb2DB10SetOptionsERKSt6vectorIPNS_18ColumnFamilyHandleESaIS3_EERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_St4hashISE_ESt8equal_toISE_ESaISt4pairIKSE_SE_EEE, ptr @_ZN7rocksdb2DB10SetOptionsERKSt13unordered_mapIPNS_18ColumnFamilyHandleES1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_S9_EEESA_IS3_ESC_IS3_ESaISE_IKS3_SI_EEE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB12CompactFilesERKNS_17CompactionOptionsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEiiPSC_PNS_17CompactionJobInfoE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB12NumberLevelsEv, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB22Level0StopWriteTriggerEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK7rocksdb2DB13GetFileSystemEv, ptr @__cxa_pure_virtual, ptr @_ZNK7rocksdb2DB10GetOptionsEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB5FlushERKNS_12FlushOptionsE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB8FlushWALEb, ptr @_ZN7rocksdb2DB8FlushWALERKNS_15FlushWALOptionsE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB7LockWALEv, ptr @_ZN7rocksdb2DB9UnlockWALEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB20GetLiveFilesMetaDataEPSt6vectorINS_16LiveFileMetaDataESaIS2_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB23GetColumnFamilyMetaDataEPNS_18ColumnFamilyHandleEPNS_20ColumnFamilyMetaDataE, ptr @_ZN7rocksdb2DB23GetColumnFamilyMetaDataEPNS_18ColumnFamilyHandleERKNS_30GetColumnFamilyMetaDataOptionsEPNS_20ColumnFamilyMetaDataE, ptr @_ZN7rocksdb2DB26GetAllColumnFamilyMetaDataEPSt6vectorINS_20ColumnFamilyMetaDataESaIS2_EE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB18IngestExternalFileERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERKNS_25IngestExternalFileOptionsE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB20PrepareFileIngestionEPNS_18ColumnFamilyHandleERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERKNS_25IngestExternalFileOptionsEPSt10unique_ptrINS_19FileIngestionHandleESt14default_deleteISI_EE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB25CommitFileIngestionHandleESt10unique_ptrINS_19FileIngestionHandleESt14default_deleteIS2_EE, ptr @_ZN7rocksdb2DB28CreateColumnFamilyWithImportERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_25ImportColumnFamilyOptionsERKNS_25ExportImportFilesMetaDataEPPNS_18ColumnFamilyHandleE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB19VerifyFileChecksumsERKNS_11ReadOptionsE, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB14VerifyChecksumEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB24GetPropertiesOfAllTablesEPSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKNS_15TablePropertiesEESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_SB_EEE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb2DB19SuggestCompactRangeEPNS_18ColumnFamilyHandleEPKNS_5SliceES5_, ptr @_ZN7rocksdb2DB9PromoteL0EPNS_18ColumnFamilyHandleEi, ptr @_ZN7rocksdb2DB10StartTraceERKNS_12TraceOptionsEOSt10unique_ptrINS_11TraceWriterESt14default_deleteIS5_EE, ptr @_ZN7rocksdb2DB8EndTraceEv, ptr @_ZN7rocksdb2DB12StartIOTraceERKNS_12TraceOptionsEOSt10unique_ptrINS_11TraceWriterESt14default_deleteIS5_EE, ptr @_ZN7rocksdb2DB10EndIOTraceEv, ptr @_ZN7rocksdb2DB20StartBlockCacheTraceERKNS_12TraceOptionsEOSt10unique_ptrINS_11TraceWriterESt14default_deleteIS5_EE, ptr @_ZN7rocksdb2DB20StartBlockCacheTraceERKNS_22BlockCacheTraceOptionsEOSt10unique_ptrINS_21BlockCacheTraceWriterESt14default_deleteIS5_EE, ptr @_ZN7rocksdb2DB18EndBlockCacheTraceEv, ptr @_ZN7rocksdb2DB18NewDefaultReplayerERKSt6vectorIPNS_18ColumnFamilyHandleESaIS3_EEOSt10unique_ptrINS_11TraceReaderESt14default_deleteIS9_EEPS8_INS_8ReplayerESA_ISE_EE, ptr @_ZN7rocksdb2DB9GetRootDBEv, ptr @_ZN7rocksdb2DB15GetStatsHistoryEmmPSt10unique_ptrINS_20StatsHistoryIteratorESt14default_deleteIS2_EE, ptr @_ZN7rocksdb2DB21TryCatchUpWithPrimaryEv] }, align 8
@_ZTVN7rocksdb8SnapshotE = unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN7rocksdb8SnapshotD1Ev, ptr @_ZN7rocksdb8SnapshotD0Ev] }, align 8
@.str.197 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.198 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb24FileSystemTracingWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24FileSystemTracingWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24FileSystemTracingWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24FileSystemTracingWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24FileSystemTracingWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN7rocksdb24FileSystemTracingWrapperE = external unnamed_addr constant { [67 x ptr] }, align 8
@_ZTVN7rocksdb17FileSystemWrapperE = external unnamed_addr constant { [67 x ptr] }, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZN7rocksdb23kDefaultToAdaptiveMutexE = external local_unnamed_addr constant i8, align 1
@_ZTVN7rocksdb15LRUCacheOptionsE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb19ShardedCacheOptionsD2Ev, ptr @_ZN7rocksdb15LRUCacheOptionsD0Ev] }, comdat, align 8
@_ZTVN7rocksdb19ShardedCacheOptionsE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb19ShardedCacheOptionsD2Ev, ptr @_ZN7rocksdb19ShardedCacheOptionsD0Ev] }, comdat, align 8
@_ZTVN7rocksdb25ColumnFamilyMemTablesImplE = external unnamed_addr constant { [9 x ptr] }, align 8
@_ZTVN7rocksdb26ColumnFamilyHandleInternalE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb22ColumnFamilyHandleImplD2Ev, ptr @_ZN7rocksdb26ColumnFamilyHandleInternalD0Ev, ptr @_ZNK7rocksdb22ColumnFamilyHandleImpl7GetNameB5cxx11Ev, ptr @_ZNK7rocksdb22ColumnFamilyHandleImpl5GetIDEv, ptr @_ZN7rocksdb22ColumnFamilyHandleImpl13GetDescriptorEPNS_22ColumnFamilyDescriptorE, ptr @_ZNK7rocksdb22ColumnFamilyHandleImpl13GetComparatorEv, ptr @_ZNK7rocksdb26ColumnFamilyHandleInternal3cfdEv, ptr @_ZNK7rocksdb22ColumnFamilyHandleImpl2dbEv] }, comdat, align 8
@.str.199 = private unnamed_addr constant [34 x i8] c"Compression algorithms supported:\00", align 1
@_ZN7rocksdb13OptionsHelper27compression_type_string_mapB5cxx11E = external local_unnamed_addr global %"class.std::unordered_map.1828", align 8
@.str.200 = private unnamed_addr constant [18 x i8] c"\09%s supported: %d\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"Fast CRC32 supported: %s\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"DMutex implementation: %s\00", align 1
@.str.203 = private unnamed_addr constant [23 x i8] c"Jemalloc supported: %d\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"pthread_mutex_t\00", align 1
@_ZTVN7rocksdb6DBImpl17WBMStallInterfaceE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb6DBImpl17WBMStallInterfaceD2Ev, ptr @_ZN7rocksdb6DBImpl17WBMStallInterfaceD0Ev, ptr @_ZN7rocksdb6DBImpl17WBMStallInterface5BlockEv, ptr @_ZN7rocksdb6DBImpl17WBMStallInterface6SignalEv] }, comdat, align 8
@_ZTVN7rocksdb11WriteThreadE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb11WriteThreadD2Ev, ptr @_ZN7rocksdb11WriteThreadD0Ev] }, comdat, align 8
@.str.205 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.206 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN7rocksdb30PersistentStatsHistoryIteratorE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN7rocksdb28InMemoryStatsHistoryIteratorE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN7rocksdb16ColumnFamilyData24kDummyColumnFamilyDataIdE = external local_unnamed_addr constant i32, align 4
@.str.207 = private unnamed_addr constant [11 x i8] c"BlockCache\00", align 1
@.str.208 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZN7rocksdbL18empty_operand_listE = internal unnamed_addr constant { { ptr, ptr, ptr } } zeroinitializer, align 8
@.str.210 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.211 = private unnamed_addr constant [48 x i8] c"Unexpected TTL blob index for blob direct write\00", align 1
@.str.212 = private unnamed_addr constant [32 x i8] c"Error while decoding blob index\00", align 1
@.str.213 = private unnamed_addr constant [26 x i8] c"Unknown blob index type: \00", align 1
@.str.214 = private unnamed_addr constant [21 x i8] c"Corrupted expiration\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"Corrupted blob offset\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZN7rocksdb22kDefaultWideColumnNameE = external local_unnamed_addr global %"class.rocksdb::Slice", align 8
@.str.216 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN7rocksdb28GetWithTimestampReadCallbackE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12ReadCallbackD2Ev, ptr @_ZN7rocksdb28GetWithTimestampReadCallbackD0Ev, ptr @_ZN7rocksdb28GetWithTimestampReadCallback18IsVisibleFullCheckEm, ptr @_ZN7rocksdb12ReadCallback7RefreshEm] }, comdat, align 8
@.str.218 = private unnamed_addr constant [36 x i8] c"column family handle cannot be null\00", align 1
@.str.219 = private unnamed_addr constant [42 x i8] c"cannot call this method on column family \00", align 1
@.str.220 = private unnamed_addr constant [32 x i8] c" that does not enable timestamp\00", align 1
@.str.221 = private unnamed_addr constant [34 x i8] c"Timestamp sizes mismatch: expect \00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c" given\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.225 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.226 = private unnamed_addr constant [24 x i8] c" that enables timestamp\00", align 1
@.str.227 = private unnamed_addr constant [88 x i8] c"ReadOptions::table_filter is not supported when min_tombstones_for_range_conversion > 0\00", align 1
@.str.228 = private unnamed_addr constant [17 x i8] c"Read timestamp: \00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c" is smaller than full_history_ts_low: \00", align 1
@_ZTVN7rocksdb12SnapshotImplE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNK7rocksdb12SnapshotImpl17GetSequenceNumberEv, ptr @_ZNK7rocksdb12SnapshotImpl11GetUnixTimeEv, ptr @_ZNK7rocksdb12SnapshotImpl12GetTimestampEv, ptr @_ZN7rocksdb8SnapshotD2Ev, ptr @_ZN7rocksdb12SnapshotImplD0Ev] }, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.230 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@_ZZN7rocksdb12_GLOBAL__N_114DbSessionIdGenEvE3gen = internal global %"class.rocksdb::SemiStructuredUniqueIdGen" zeroinitializer, align 8
@_ZGVZN7rocksdb12_GLOBAL__N_114DbSessionIdGenEvE3gen = internal global i64 0, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTISt9exception = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr constant [13 x i8] c"St9exception\00", comdat, align 1
@.str.233 = private unnamed_addr constant [43 x i8] c"[%s:5832] Unable to delete options file %s\00", align 1
@.str.234 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@_ZTVN7rocksdb18VersionBlobFetcherE = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb11BlobFetcherD2Ev, ptr @_ZN7rocksdb18VersionBlobFetcherD0Ev, ptr @_ZNK7rocksdb22VersionBlobFetcherBase9FetchBlobERKNS_5SliceERKNS_9BlobIndexEPNS_18FilePrefetchBufferEPNS_13PinnableSliceEPm, ptr @_ZNK7rocksdb18VersionBlobFetcher12read_optionsEv] }, comdat, align 8
@_ZN7rocksdb31TablePropertiesCollectorFactory7Context20kUnknownColumnFamilyE = external local_unnamed_addr constant i32, align 4
@_ZN7rocksdbL28kUnknownFileChecksumFuncNameE = internal unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.235 = private unnamed_addr constant [54 x i8] c"WriteWithCallback not implemented for this interface.\00", align 1
@.str.236 = private unnamed_addr constant [43 x i8] c"IngestWriteBatchWithIndex not implemented.\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"GetEntity not supported\00", align 1
@.str.238 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.239 = private unnamed_addr constant [29 x i8] c"MultiGetEntity not supported\00", align 1
@_ZTVZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackEE15CallbackWrapper = linkonce_odr unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackEEN15CallbackWrapperD2Ev, ptr @_ZZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackEEN15CallbackWrapperD0Ev, ptr @_ZZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackEENK15CallbackWrapper11EnableStatsEv, ptr @_ZZN7rocksdb2DB8GetAsyncERKNS_11ReadOptionsEPNS_18ColumnFamilyHandleERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_RNS_6StatusERNS0_13AsyncCallbackEEN15CallbackWrapper10OnCompleteEPKNS_11PerfContextEPKNS_14IOStatsContextE] }, comdat, align 8
@.str.240 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.241 = private unnamed_addr constant [25 x i8] c"FlushWAL not implemented\00", align 1
@.str.242 = private unnamed_addr constant [24 x i8] c"LockWAL not implemented\00", align 1
@.str.243 = private unnamed_addr constant [26 x i8] c"UnlockWAL not implemented\00", align 1
@.str.244 = private unnamed_addr constant [32 x i8] c"File verification not supported\00", align 1
@.str.245 = private unnamed_addr constant [42 x i8] c"SuggestCompactRange() is not implemented.\00", align 1
@.str.246 = private unnamed_addr constant [32 x i8] c"PromoteL0() is not implemented.\00", align 1
@.str.247 = private unnamed_addr constant [33 x i8] c"StartTrace() is not implemented.\00", align 1
@.str.248 = private unnamed_addr constant [31 x i8] c"EndTrace() is not implemented.\00", align 1
@.str.249 = private unnamed_addr constant [35 x i8] c"StartIOTrace() is not implemented.\00", align 1
@.str.250 = private unnamed_addr constant [33 x i8] c"EndIOTrace() is not implemented.\00", align 1
@.str.251 = private unnamed_addr constant [43 x i8] c"StartBlockCacheTrace() is not implemented.\00", align 1
@.str.252 = private unnamed_addr constant [41 x i8] c"EndBlockCacheTrace() is not implemented.\00", align 1
@.str.253 = private unnamed_addr constant [41 x i8] c"NewDefaultReplayer() is not implemented.\00", align 1
@.str.254 = private unnamed_addr constant [38 x i8] c"GetStatsHistory() is not implemented.\00", align 1
@.str.255 = private unnamed_addr constant [37 x i8] c"Supported only by secondary instance\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb8IOTracerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb8IOTracerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb8IOTracerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb8IOTracerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb8IOTracerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb24BlobFilePartitionManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24BlobFilePartitionManagerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24BlobFilePartitionManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24BlobFilePartitionManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb24BlobFilePartitionManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.256 = private unnamed_addr constant [8 x i8] c"map::at\00", align 1
@.str.257 = private unnamed_addr constant [30 x i8] c"No Column Family was provided\00", align 1
@.str.258 = private unnamed_addr constant [48 x i8] c"Different comparators are being used across CFs\00", align 1
@_ZTVN7rocksdb18CoalescingIteratorE = linkonce_odr unnamed_addr constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb18CoalescingIteratorD2Ev, ptr @_ZN7rocksdb18CoalescingIteratorD0Ev, ptr @_ZNK7rocksdb18CoalescingIterator5ValidEv, ptr @_ZN7rocksdb18CoalescingIterator11SeekToFirstEv, ptr @_ZN7rocksdb18CoalescingIterator10SeekToLastEv, ptr @_ZN7rocksdb18CoalescingIterator4SeekERKNS_5SliceE, ptr @_ZN7rocksdb18CoalescingIterator11SeekForPrevERKNS_5SliceE, ptr @_ZN7rocksdb18CoalescingIterator4NextEv, ptr @_ZN7rocksdb18CoalescingIterator4PrevEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEPKNS_8SnapshotE, ptr @_ZN7rocksdb18CoalescingIterator12PrepareValueEv, ptr @_ZNK7rocksdb18CoalescingIterator3keyEv, ptr @_ZNK7rocksdb18CoalescingIterator6statusEv, ptr @_ZNK7rocksdb18CoalescingIterator5valueEv, ptr @_ZNK7rocksdb18CoalescingIterator7columnsEv, ptr @_ZN7rocksdb8Iterator11GetPropertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_, ptr @_ZNK7rocksdb8Iterator9timestampEv, ptr @_ZN7rocksdb8Iterator7PrepareERKNS_13MultiScanArgsE] }, comdat, align 8
@.str.259 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.260 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTVSt18bad_variant_access = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@.str.261 = private unnamed_addr constant [27 x i8] c"Refresh() is not supported\00", align 1
@_ZTVN7rocksdb27EmptyAttributeGroupIteratorE = linkonce_odr unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb27EmptyAttributeGroupIteratorD2Ev, ptr @_ZN7rocksdb27EmptyAttributeGroupIteratorD0Ev, ptr @_ZNK7rocksdb27EmptyAttributeGroupIterator5ValidEv, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator11SeekToFirstEv, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator10SeekToLastEv, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator4SeekERKNS_5SliceE, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator11SeekForPrevERKNS_5SliceE, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator4NextEv, ptr @_ZN7rocksdb27EmptyAttributeGroupIterator4PrevEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEPKNS_8SnapshotE, ptr @_ZN7rocksdb12IteratorBase12PrepareValueEv, ptr @_ZNK7rocksdb27EmptyAttributeGroupIterator3keyEv, ptr @_ZNK7rocksdb27EmptyAttributeGroupIterator6statusEv, ptr @_ZNK7rocksdb27EmptyAttributeGroupIterator16attribute_groupsEv] }, comdat, align 8
@_ZN7rocksdb26kNoIteratorAttributeGroupsE = external global %"class.std::vector.2286", align 8
@_ZTVN7rocksdb26AttributeGroupIteratorImplE = linkonce_odr unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb26AttributeGroupIteratorImplD2Ev, ptr @_ZN7rocksdb26AttributeGroupIteratorImplD0Ev, ptr @_ZNK7rocksdb26AttributeGroupIteratorImpl5ValidEv, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl11SeekToFirstEv, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl10SeekToLastEv, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl4SeekERKNS_5SliceE, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl11SeekForPrevERKNS_5SliceE, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl4NextEv, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl4PrevEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEv, ptr @_ZN7rocksdb12IteratorBase7RefreshEPKNS_8SnapshotE, ptr @_ZN7rocksdb26AttributeGroupIteratorImpl12PrepareValueEv, ptr @_ZNK7rocksdb26AttributeGroupIteratorImpl3keyEv, ptr @_ZNK7rocksdb26AttributeGroupIteratorImpl6statusEv, ptr @_ZNK7rocksdb26AttributeGroupIteratorImpl16attribute_groupsEv] }, comdat, align 8
@_ZTVSt19_Sp_counted_deleterIPN7rocksdb12SnapshotImplESt5_BindIFMNS0_6DBImplEFvPKNS0_8SnapshotEEPS4_St12_PlaceholderILi1EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN7rocksdb12SnapshotImplESt5_BindIFMNS0_6DBImplEFvPKNS0_8SnapshotEEPS4_St12_PlaceholderILi1EEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN7rocksdb12SnapshotImplESt5_BindIFMNS0_6DBImplEFvPKNS0_8SnapshotEEPS4_St12_PlaceholderILi1EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN7rocksdb12SnapshotImplESt5_BindIFMNS0_6DBImplEFvPKNS0_8SnapshotEEPS4_St12_PlaceholderILi1EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN7rocksdb12SnapshotImplESt5_BindIFMNS0_6DBImplEFvPKNS0_8SnapshotEEPS4_St12_PlaceholderILi1EEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb16PreparedFileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb16PreparedFileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb16PreparedFileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb16PreparedFileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb16PreparedFileInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb18SeqnoToTimeMappingESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18SeqnoToTimeMappingESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18SeqnoToTimeMappingESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18SeqnoToTimeMappingESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb18SeqnoToTimeMappingESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_db_impl.cc, ptr null }]
@switch.table._ZN7rocksdb6DBImplC2ERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb = private unnamed_addr constant [7 x i8] c"\01\01\00\01\01\00\01", align 4

@_ZN7rocksdb6DBImplC1ERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb = unnamed_addr alias void (ptr, ptr, ptr, i1, i1, i1), ptr @_ZN7rocksdb6DBImplC2ERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbb
@_ZN7rocksdb6DBImplD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb6DBImplD2Ev
@_ZN7rocksdb2DBD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb2DBD2Ev
@_ZN7rocksdb8SnapshotD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb8SnapshotD2Ev
@_ZN7rocksdb23FileIngestionHandleImplD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7rocksdb23FileIngestionHandleImplD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #1 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 448), align 16, !tbaa !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 464)
  br i1 %i.b, label %_ZN7rocksdb13OperationInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 464), align 16, !tbaa !15
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit

_ZN7rocksdb13OperationInfoD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 408), align 8, !tbaa !9 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 424)
  br i1 %i.f, label %_ZN7rocksdb13OperationInfoD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 424), align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.1

_ZN7rocksdb13OperationInfoD2Ev.exit.1:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 368), align 16, !tbaa !9 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 384)
  br i1 %i.j, label %_ZN7rocksdb13OperationInfoD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 384), align 16, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.2

_ZN7rocksdb13OperationInfoD2Ev.exit.2:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 328), align 8, !tbaa !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 344)
  br i1 %i.n, label %_ZN7rocksdb13OperationInfoD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 344), align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.3

_ZN7rocksdb13OperationInfoD2Ev.exit.3:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 288), align 16, !tbaa !9 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 304)
  br i1 %i.r, label %_ZN7rocksdb13OperationInfoD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 304), align 16, !tbaa !15
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.4

_ZN7rocksdb13OperationInfoD2Ev.exit.4:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 248), align 8, !tbaa !9 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 264)
  br i1 %i.v, label %_ZN7rocksdb13OperationInfoD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 264), align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.5

_ZN7rocksdb13OperationInfoD2Ev.exit.5:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 208), align 16, !tbaa !9 ; 2 uses
  %i.z = icmp eq ptr %i.y, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 224)
  br i1 %i.z, label %_ZN7rocksdb13OperationInfoD2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.5
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 224), align 16, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.6

_ZN7rocksdb13OperationInfoD2Ev.exit.6:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 168), align 8, !tbaa !9 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 184)
  br i1 %i.ad, label %_ZN7rocksdb13OperationInfoD2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.6
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 184), align 8, !tbaa !15
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.7

_ZN7rocksdb13OperationInfoD2Ev.exit.7:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 128), align 16, !tbaa !9 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144)
  br i1 %i.ah, label %_ZN7rocksdb13OperationInfoD2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.7
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 144), align 16, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.8

_ZN7rocksdb13OperationInfoD2Ev.exit.8:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 88), align 8, !tbaa !9 ; 2 uses
  %i.al = icmp eq ptr %i.ak, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104)
  br i1 %i.al, label %_ZN7rocksdb13OperationInfoD2Ev.exit.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.8
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 104), align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.9

_ZN7rocksdb13OperationInfoD2Ev.exit.9:            ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.9
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 48), align 16, !tbaa !9 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64)
  br i1 %i.ap, label %_ZN7rocksdb13OperationInfoD2Ev.exit.10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10: ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.9
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 64), align 16, !tbaa !15
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #41
  br label %_ZN7rocksdb13OperationInfoD2Ev.exit.10

_ZN7rocksdb13OperationInfoD2Ev.exit.10:           ; preds = %_ZN7rocksdb13OperationInfoD2Ev.exit.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.10
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 8), align 8, !tbaa !9 ; 2 uses
  %i.at = icmp eq ptr %i.as, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL22global_operation_tableE, i64 24)
end_hunk_0
begin_hunk_1_@_ZNSt3setIPN7rocksdb12FileMetaDataESt4lessIS2_ESaIS2_EED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !548
  invoke void @_ZNSt8_Rb_treeIPN7rocksdb12FileMetaDataES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIPN7rocksdb12FileMetaDataES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #45
  unreachable

_ZNSt8_Rb_treeIPN7rocksdb12FileMetaDataES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl20GetLiveFilesMetaDataEPSt6vectorINS_16LiveFileMetaDataESaIS2_EE(ptr noundef nonnull align 64 dereferenceable(7336) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !639
  invoke void @_ZN7rocksdb10VersionSet20GetLiveFilesMetaDataEPSt6vectorINS_16LiveFileMetaDataESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(874) %i.c, ptr noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #45
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #45
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit3:     ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

declare void @_ZN7rocksdb10VersionSet20GetLiveFilesMetaDataEPSt6vectorINS_16LiveFileMetaDataESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(874), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl24GetLiveFilesChecksumInfoEPNS_16FileChecksumListE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !639
  invoke void @_ZN7rocksdb10VersionSet24GetLiveFilesChecksumInfoEPNS_16FileChecksumListE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(874) %i.c, ptr noundef %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #45
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit:      ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.a)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #45
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit3:     ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

declare void @_ZN7rocksdb10VersionSet24GetLiveFilesChecksumInfoEPNS_16FileChecksumListE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(874), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl42GetPreparedFileInfoForExternalSstIngestionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10shared_ptrIKNS_16PreparedFileInfoEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %12 = alloca %"class.std::shared_ptr.1436", align 8 ; 8 uses
  %13 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 20 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 15 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Defer", align 8   ; 11 uses
  %20 = alloca %"class.std::shared_ptr.1440", align 8 ; 7 uses
  %i.g = icmp eq ptr %3, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  store ptr @.str.138, ptr %6, align 8, !tbaa !823
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 26, ptr %i.h, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  store ptr @.str, ptr %7, align 8, !tbaa !823
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !825
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !2962
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !492  ; 8 uses
  store ptr null, ptr %i.j, align 8, !tbaa !492
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 8, !tbaa !489
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !491
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #44, !inline_history !2964
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #44, !inline_history !2964
  br label %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.f:                                             ; preds = %bb.d
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !494
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !104

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #44
  br label %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !103 ; 13 uses
  %.not109 = icmp eq i64 %i.ab, 0
  %.pre = load ptr, ptr %2, align 8, !tbaa !9     ; 4 uses
  br i1 %.not109, label %._crit_edge.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ac, ptr %8, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, %bb.j
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.j ], [ %i.ab, %_ZNSt12__shared_ptrIKN7rocksdb16PreparedFileInfoELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit ] ; 5 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  switch i8 %i.ae, label %bb.j [
    i8 92, label %21
    i8 47, label %21
  ]

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !2965

.loopexit:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !102
  %i.ag = icmp ugt i64 %i.ab, 15
  br i1 %i.ag, label %bb.k, label %._crit_edge.i.i

bb.k:                                             ; preds = %.loopexit
  %i.ah = icmp slt i64 %i.ab, 0
  br i1 %i.ah, label %.noexc.i, label %bb.l

.noexc.i:                                         ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #42
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.aj = icmp slt i64 %i.ai, 0
  br i1 %i.aj, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !104

.noexc6.i:                                        ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #43 ; 2 uses
  store ptr %i.ak, ptr %8, align 8, !tbaa !9
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.loopexit
  %i.al = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.af, %.loopexit ] ; 5 uses
  switch i64 %i.ab, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %.pre, align 1, !tbaa !15
  store i8 %i.am, ptr %i.al, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %.pre, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i, %bb.m, %bb.n
  %i.an = phi ptr [ %i.ac, %._crit_edge.i.i.thread ], [ %i.al, %._crit_edge.i.i ], [ %i.al, %bb.m ], [ %i.al, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ab, ptr %i.ao, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ab
  store i8 0, ptr %i.ap, align 1, !tbaa !15
  br label %bb.s

21:                                               ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  %22 = icmp ugt i64 %.1.i.i.in, %i.ab
  br i1 %22, label %23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

23:                                               ; preds = %21
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.230, i64 noundef %.1.i.i.in, i64 noundef %i.ab) #42, !noalias !2966
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %21
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !102, !alias.scope !2966
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i.in ; 2 uses
  %i.as = sub nuw i64 %i.ab, %.1.i.i.in           ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.o, label %._crit_edge.i.i.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc10.i.i, label %bb.p

.noexc10.i.i:                                     ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #42
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !104

.noexc11.i.i:                                     ; preds = %bb.p
  call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.p
  %i.ax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #43 ; 2 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !9, !alias.scope !2966
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !15, !alias.scope !2966
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ay = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.as, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !15
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.q, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !103, !alias.scope !2966
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 0, ptr %i.a, align 8, !tbaa !811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #44
  %i.bc = invoke noundef zeroext i1 @_ZN7rocksdb13ParseFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPNS_8FileTypeEPNS_11WalFileTypeE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not = xor i1 %i.bc, true
  %i.bd = load i32, ptr %i.b, align 4
  %i.be = icmp ne i32 %i.bd, 2
  %or.cond = select i1 %.not, i1 true, i1 %i.be
  %i.bf = load i64, ptr %i.a, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bg
  br i1 %or.cond3, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.bh = load ptr, ptr %2, align 8, !tbaa !9, !noalias !2969
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !103, !noalias !2969
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44, !noalias !2969
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.140, i64 noundef 25, ptr noundef %i.bh, i64 noundef %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44, !noalias !2969
  %i.bj = load ptr, ptr %10, align 8, !tbaa !9
  store ptr %i.bj, ptr %9, align 8, !tbaa !823
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !103
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !825
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  store ptr @.str, ptr %11, align 8, !tbaa !823
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !825
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.y

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.bo = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.cc

bb.w:                                             ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.x:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.y:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  %i.bw = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.y
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.x
  %.pn47 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.bv, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %bb.cd

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  store i32 -1, ptr %i.c, align 4, !tbaa !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store ptr null, ptr %i.d, align 8, !tbaa !2939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  store ptr null, ptr %i.e, align 8, !tbaa !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  store ptr null, ptr %i.f, align 8, !tbaa !2253
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %13, i8 0, i64 44, i1 false)
  store i32 4, ptr %i.cb, align 4, !tbaa !1468
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 -1, ptr %i.cc, align 8, !tbaa !1480
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i8 0, ptr %i.cd, align 8, !tbaa !1481
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 72
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ce, align 8, !tbaa !611
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i8 1, ptr %i.cf, align 4, !tbaa !1482
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i8 0, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.cg, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.ci, align 8, !tbaa !1483
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 153
  store i8 0, ptr %i.cj, align 1, !tbaa !1484
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 154
  store i8 0, ptr %i.ck, align 2, !tbaa !1485
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.cm, align 8, !tbaa !1486
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 184
  store ptr null, ptr %i.cn, align 8, !tbaa !1487
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 4 uses
  invoke void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.co)
          to label %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit unwind label %bb.ac

_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !639
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !811
  invoke void @_ZN7rocksdb10VersionSet18GetMetadataForFileEmPiPPNS_12FileMetaDataEPPNS_16ColumnFamilyDataE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(874) %i.cq, i64 noundef %i.cr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit
  %i.cs = load i8, ptr %14, align 8, !tbaa !815   ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.ae, label %.critedge

.critedge:                                        ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@_ZSt25__unguarded_linear_insertIN7rocksdb10autovectorIPNS0_10KeyContextELm32EE13iterator_implIS4_S3_EEN9__gnu_cxx5__ops14_Val_comp_iterINS0_12_GLOBAL__N_117CompareKeyContextEEEEvT_T0_:bb.a
  %.val3.val5 = phi ptr [ %i.i, %bb.a ], [ %.val3.val5.pre, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.val3.val = phi ptr [ %i.f, %bb.a ], [ %.val3.val.pre, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.sroa.7.0.in = phi i64 [ %i.c, %bb.a ], [ %.sroa.7.0, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread ]
  %.sroa.7.0 = add i64 %.sroa.7.0.in, -1          ; 7 uses
  %i.n = icmp ult i64 %.sroa.7.0, 32              ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val3.val, i64 %.sroa.7.0
  %i.p = getelementptr [8 x i8], ptr %.val3.val5, i64 %.sroa.7.0
  %i.q = getelementptr i8, ptr %i.p, i64 -256
  %.0.i.i.i = select i1 %i.n, ptr %i.o, ptr %i.q
  %i.r = load ptr, ptr %.0.i.i.i, align 8, !tbaa !2045 ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !2083 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s), !inline_history !3751
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1249 ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.s), !inline_history !3751
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1847 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2083 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.af), !inline_history !3751
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1249 ; 2 uses
  %i.al = icmp ult i32 %i.x, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.am = icmp ugt i32 %i.x, %i.ak
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit: ; preds = %bb.b
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !2223
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !2223
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i1 noundef zeroext false), !inline_history !3751
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread: ; preds = %.noexc, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit
  %i.au = load ptr, ptr %i.e, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.7.0
  %i.aw = load ptr, ptr %i.h, align 8
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %.sroa.7.0
  %i.ay = getelementptr i8, ptr %i.ax, i64 -256
  %.0.i.i9 = select i1 %i.n, ptr %i.av, ptr %i.ay
  %i.az = load ptr, ptr %.0.i.i9, align 8, !tbaa !2045
  %i.ba = load ptr, ptr %0, align 8, !tbaa !2207  ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !2212 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 272
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bb
  %i.bj = getelementptr i8, ptr %i.bi, i64 -256
  %.0.i.i10 = select i1 %i.bc, ptr %i.bf, ptr %i.bj
  store ptr %i.az, ptr %.0.i.i10, align 8, !tbaa !2045
  store ptr %i.a, ptr %0, align 8, !tbaa !2205
  store i64 %.sroa.7.0, ptr %i.b, align 8, !tbaa !811
  %.val3.val.pre = load ptr, ptr %i.e, align 8
  %.val3.val5.pre = load ptr, ptr %i.h, align 8
  br label %.noexc, !llvm.loop !3752

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit.thread20: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7rocksdb12_GLOBAL__N_117CompareKeyContextEEclIPNS2_10KeyContextENS2_10autovectorIS8_Lm32EE13iterator_implISA_S8_EEEEbRT_T0_.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !2207  ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !2212 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 264
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bl
  %i.bt = getelementptr i8, ptr %i.bs, i64 -256
  %.0.i.i11 = select i1 %i.bm, ptr %i.bp, ptr %i.bt
  store ptr %i.l, ptr %.0.i.i11, align 8, !tbaa !2045
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb28GetWithTimestampReadCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb28GetWithTimestampReadCallback18IsVisibleFullCheckEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2145
  %i.c = icmp ule i64 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3608
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3609 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !489
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !491
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44, !inline_history !3753
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44, !inline_history !3753
  br label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !494
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !104

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #44
  br label %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #41
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb11FSDirectoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #41
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3754

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN7rocksdb11FSDirectoryEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #24

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #24

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare void @_ZN7rocksdb6DBIterC1EPNS_3EnvERKNS_11ReadOptionsERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsEPKNS_10ComparatorEPNS_20InternalIteratorBaseINS_5SliceEEEPKNS_7VersionEmbPNS_12ReadCallbackEPNS_6DBImplEPNS_16ColumnFamilyDataEbPNS_16ReadOnlyMemTableE(ptr noundef nonnull align 8 dereferenceable(2304), ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(875), ptr noundef nonnull align 8 dereferenceable(736), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #29

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE17_M_realloc_insertIJRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2738 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2742   ; 13 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #42
  unreachable

_ZNKSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 13 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !492  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !63
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !494
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !494
  br label %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %i.z = add i64 %i.m, -16
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 272
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = add i64 %i.m, -16
  %i.ae = sub i64 %i.ad, %i.e
  %i.af = and i64 %i.ae, -16                      ; 2 uses
  %i.ag = or disjoint i64 %i.af, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.ag
  %scevgep36 = getelementptr i8, ptr %i.c, i64 %i.ag
  %scevgep37 = getelementptr i8, ptr %i.c, i64 8
  %i.ah = add i64 %i.af, 16                       ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.c, i64 %i.ah
  %scevgep39 = getelementptr i8, ptr %i.p, i64 8
  %scevgep40 = getelementptr i8, ptr %i.p, i64 %i.ah
  %bound0 = icmp ult ptr %i.p, %scevgep36
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %scevgep37, %scevgep40
  %bound142 = icmp ult ptr %scevgep39, %scevgep38
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 2305843009213693948     ; 3 uses
  %i.ai = shl i64 %n.vec, 4                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 4                       ; 3 uses
  %i.am = or disjoint i64 %i.al, 32               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.al
  %next.gep44 = getelementptr i8, ptr %i.p, i64 %i.am
  %next.gep45 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.c, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  %wide.vec = load <4 x ptr>, ptr %next.gep45, align 8, !tbaa !63, !alias.scope !3758, !noalias !3755
  %wide.vec48 = load <4 x ptr>, ptr %next.gep46, align 8, !tbaa !63, !alias.scope !3758, !noalias !3755
  store <4 x ptr> %wide.vec, ptr %next.gep, align 8, !tbaa !63, !alias.scope !3755, !noalias !3758
  store <4 x ptr> %wide.vec48, ptr %next.gep44, align 8, !tbaa !63, !alias.scope !3755, !noalias !3758
  store <4 x ptr> splat (ptr null), ptr %next.gep45, align 8, !tbaa !63, !alias.scope !3758, !noalias !3755
  store <4 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !63, !alias.scope !3758, !noalias !3755
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !3760

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader91

.lr.ph.i.i.i.preheader91:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader91, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader91 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !63, !alias.scope !3758, !noalias !3755
  store ptr null, ptr %i.ao, align 8, !tbaa !492, !alias.scope !3758, !noalias !3755
  store <2 x ptr> %i.ap, ptr %.012.i.i.i, align 8, !tbaa !63, !alias.scope !3755, !noalias !3758
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !2696, !alias.scope !3758, !noalias !3755
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !3761

_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIKN7rocksdb12SnapshotImplEEJRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i ] ; 4 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 7 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10shared_ptrIKN7rocksdb12SnapshotImplEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.at = add i64 %i.d, -16
  %i.au = sub i64 %i.at, %i.m                     ; 2 uses
  %i.av = lshr i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.au, 304
  br i1 %min.iters.check68, label %.lr.ph.i.i.i17.preheader90, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ax = add i64 %i.d, -16
  %i.ay = sub i64 %i.ax, %i.m
  %i.az = and i64 %i.ay, -16                      ; 4 uses
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.az
  %scevgep54 = getelementptr i8, ptr %i.ba, i64 24
  %i.bb = getelementptr i8, ptr %1, i64 %i.az
  %scevgep55 = getelementptr i8, ptr %i.bb, i64 8
  %scevgep56 = getelementptr i8, ptr %1, i64 8
  %i.bc = getelementptr i8, ptr %1, i64 %i.az
  %scevgep57 = getelementptr i8, ptr %i.bc, i64 16
  %scevgep58 = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.az
  %scevgep59 = getelementptr i8, ptr %i.bd, i64 32
  %bound060 = icmp ult ptr %i.as, %scevgep55
  %bound161 = icmp ult ptr %1, %scevgep54
  %found.conflict62 = and i1 %bound060, %bound161
  %bound063 = icmp ult ptr %scevgep56, %scevgep59
  %bound164 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %found.conflict62, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph.i.i.i17.preheader90, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck53
  %n.vec70 = and i64 %i.aw, 2305843009213693948   ; 3 uses
  %i.be = shl i64 %n.vec70, 4                     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.as, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 %i.be
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next85, %vector.body71 ] ; 2 uses
  %i.bh = shl i64 %index72, 4                     ; 3 uses
  %i.bi = or disjoint i64 %i.bh, 32               ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.as, i64 %i.bh
end_hunk_2
