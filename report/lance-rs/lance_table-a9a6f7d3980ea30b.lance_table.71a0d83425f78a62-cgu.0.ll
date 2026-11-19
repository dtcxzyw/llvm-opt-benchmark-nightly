Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 101
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 295
begin_hunk_0
@1945 = private unnamed_addr constant [51 x i8] c"\14RangeWithHoles hole \C0\16 is outside the range \C0\02..\C0\00", align 1, !guid !62
@1946 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @811, [16 x i8] c"$\00\00\00\00\00\00\00\8C\00\00\00+\00\00\00" }>, align 8, !guid !62
@1947 = private unnamed_addr constant [135 x i8] c":RangeWithBitmap padding bits must be zero for range start \C0\06, end \C0\0D, and length \C0\0C: last byte \C3 \00\80i\04\00\12 has padding mask \C3 \00\80i\04\00\04 set\00", align 1, !guid !62
@1948 = private unnamed_addr constant [100 x i8] c"\1CRangeWithBitmap byte length \C0\19 does not match expected \C0\11 for range start \C0\06, end \C0\0D, and length \C0\00", align 1, !guid !62
@1949 = private unnamed_addr constant [70 x i8] c"-SortedArray values are not sorted at indices \C0\05 and \C0\02: \C0\09 exceeds \C0\00", align 1, !guid !62
@1950 = private unnamed_addr constant [31 x i8] c"`Ready` polled after completion", align 1, !guid !62
@1951 = private unnamed_addr constant [81 x i8] c"/rustc/2d8144b7880597b6e6d3dfd63a9a9efae3f533d3/library/core/src/future/ready.rs\00", align 1, !guid !62
@1952 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1951, [16 x i8] c"P\00\00\00\00\00\00\00\17\00\00\00#\00\00\00" }>, align 8, !guid !62
@1953 = private unnamed_addr constant [8 x i8] c"OnceCell", align 1, !guid !62
@1954 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionRjENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@1955 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1, !guid !62
@1956 = private unnamed_addr constant [31 x i8] c"/lance.table.Transaction.Delete", align 1, !guid !62
@1957 = private unnamed_addr constant [30 x i8] c"lance.table.Transaction.Delete", align 1, !guid !62
@1958 = private unnamed_addr constant [38 x i8] c"/lance.table.U64Segment.RangeWithHoles", align 1, !guid !62
@1959 = private unnamed_addr constant [37 x i8] c"lance.table.U64Segment.RangeWithHoles", align 1, !guid !62
@1960 = private unnamed_addr constant [37 x i8] c"/lance.table.EncodedU64Array.U32Array", align 1, !guid !62
@1961 = private unnamed_addr constant [36 x i8] c"lance.table.EncodedU64Array.U32Array", align 1, !guid !62
@1962 = private unnamed_addr constant [53 x i8] c"/lance.table.FragmentReuseIndexDetails.FragmentDigest", align 1, !guid !62
@1963 = private unnamed_addr constant [52 x i8] c"lance.table.FragmentReuseIndexDetails.FragmentDigest", align 1, !guid !62
@1964 = private unnamed_addr constant [39 x i8] c"/lance.table.Manifest.DataStorageFormat", align 1, !guid !62
@1965 = private unnamed_addr constant [38 x i8] c"lance.table.Manifest.DataStorageFormat", align 1, !guid !62
@1966 = private unnamed_addr constant [20 x i8] c"inconsistent in drop", align 1, !guid !62
@1967 = private unnamed_addr constant [45 x i8] c"/lance.table.Transaction.Rewrite.RewriteGroup", align 1, !guid !62
@1968 = private unnamed_addr constant [44 x i8] c"lance.table.Transaction.Rewrite.RewriteGroup", align 1, !guid !62
@1969 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRRlNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@1970 = private unnamed_addr constant [4 x i8] c"Path", align 1, !guid !62
@1971 = private unnamed_addr constant [3 x i8] c"raw", align 1, !guid !62
@1972 = private unnamed_addr constant [33 x i8] c"Missing shard_id in ShardManifest", align 1, !guid !62
@1973 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @759, [16 x i8] c",\00\00\00\00\00\00\00\03\01\00\00\1C\00\00\00" }>, align 8, !guid !62
@1974 = private unnamed_addr constant [25 x i8] c"/lance.table.ExternalFile", align 1, !guid !62
@1975 = private unnamed_addr constant [24 x i8] c"lance.table.ExternalFile", align 1, !guid !62
@1976 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @806, [16 x i8] c"'\00\00\00\00\00\00\00\C1\03\00\00\18\00\00\00" }>, align 8, !guid !62
@1977 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt }>, align 8, !guid !62
@1978 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@1979 = private unnamed_addr constant [15 x i8] c"UringFileHandle", align 1, !guid !62
@1980 = private unnamed_addr constant [2 x i8] c"fd", align 1, !guid !62
@1981 = private unnamed_addr constant [43 x i8] c"/lance.table.Transaction.KeyExistenceFilter", align 1, !guid !62
@1982 = private unnamed_addr constant [42 x i8] c"lance.table.Transaction.KeyExistenceFilter", align 1, !guid !62
@1983 = private unnamed_addr constant [10 x i8] c"FragDigest", align 1, !guid !62
@1984 = private unnamed_addr constant [38 x i8] c"/lance.table.FragmentReuseIndexDetails", align 1, !guid !62
@1985 = private unnamed_addr constant [37 x i8] c"lance.table.FragmentReuseIndexDetails", align 1, !guid !62
@1986 = private unnamed_addr constant [3 x i8] c"0.1", align 1, !guid !62
@1987 = private unnamed_addr constant [3 x i8] c"2.0", align 1, !guid !62
@1988 = private unnamed_addr constant [3 x i8] c"2.1", align 1, !guid !62
@1989 = private unnamed_addr constant [3 x i8] c"2.2", align 1, !guid !62
@1990 = private unnamed_addr constant [3 x i8] c"2.3", align 1, !guid !62
@1991 = private unnamed_addr constant [11 x i8] c"UringReader", align 1, !guid !62
@1992 = private unnamed_addr constant [35 x i8] c"/lance.table.Transaction.UInt32List", align 1, !guid !62
@1993 = private unnamed_addr constant [34 x i8] c"lance.table.Transaction.UInt32List", align 1, !guid !62
@1994 = private unnamed_addr constant [27 x i8] c"InlineLastUpdatedAtVersions", align 1, !guid !62
@1995 = private unnamed_addr constant [29 x i8] c"ExternalLastUpdatedAtVersions", align 1, !guid !62
@1996 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1112, [16 x i8] c"t\00\00\00\00\00\00\00\89\01\00\00 \00\00\00" }>, align 8, !guid !62
@1997 = private unnamed_addr constant [12 x i8] c"RewriteGroup", align 1, !guid !62
@1998 = private unnamed_addr constant [71 x i8] c"PrimitiveArray data should contain a single buffer only (values buffer)", align 1, !guid !62
@1999 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @244, [16 x i8] c"t\00\00\00\00\00\00\00:\06\00\00\09\00\00\00" }>, align 8, !guid !62
@2000 = private unnamed_addr constant [2 x i8] c"V1", align 1, !guid !62
@2001 = private unnamed_addr constant [2 x i8] c"V2", align 1, !guid !62
@2002 = private unnamed_addr constant [26 x i8] c"/lance.table.ShardManifest", align 1, !guid !62
@2003 = private unnamed_addr constant [25 x i8] c"lance.table.ShardManifest", align 1, !guid !62
@2004 = private unnamed_addr constant [31 x i8] c"/lance.table.Transaction.Update", align 1, !guid !62
@2005 = private unnamed_addr constant [30 x i8] c"lance.table.Transaction.Update", align 1, !guid !62
@2006 = private unnamed_addr constant [28 x i8] c"/lance.table.ShardFieldEntry", align 1, !guid !62
@2007 = private unnamed_addr constant [27 x i8] c"lance.table.ShardFieldEntry", align 1, !guid !62
@2008 = private unnamed_addr constant [22 x i8] c"count overflowed usize", align 1, !guid !62
@2009 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1895, [16 x i8] c"N\00\00\00\00\00\00\00\8B\05\00\00\0E\00\00\00" }>, align 8, !guid !62
@2010 = private unnamed_addr constant [39 x i8] c"/lance.table.Transaction.UpdateMapEntry", align 1, !guid !62
@2011 = private unnamed_addr constant [38 x i8] c"lance.table.Transaction.UpdateMapEntry", align 1, !guid !62
@2012 = private unnamed_addr constant [5 x i8] c"Plain", align 1, !guid !62
@2013 = private unnamed_addr constant [9 x i8] c"VarBinary", align 1, !guid !62
@2014 = private unnamed_addr constant [3 x i8] c"RLE", align 1, !guid !62
@2015 = private unnamed_addr constant [20 x i8] c"/lance.table.SsTable", align 1, !guid !62
@2016 = private unnamed_addr constant [19 x i8] c"lance.table.SsTable", align 1, !guid !62
@2017 = private unnamed_addr constant [34 x i8] c"/lance.table.Transaction.UpdateMap", align 1, !guid !62
@2018 = private unnamed_addr constant [33 x i8] c"lance.table.Transaction.UpdateMap", align 1, !guid !62
@2019 = private unnamed_addr constant [11 x i8] c"LogicalType", align 1, !guid !62
@2020 = private unnamed_addr constant [29 x i8] c"/lance.table.CompactedSsTable", align 1, !guid !62
@2021 = private unnamed_addr constant [28 x i8] c"lance.table.CompactedSsTable", align 1, !guid !62
@2022 = private unnamed_addr constant [37 x i8] c"/lance.table.Transaction.UpdateConfig", align 1, !guid !62
@2023 = private unnamed_addr constant [36 x i8] c"lance.table.Transaction.UpdateConfig", align 1, !guid !62
@2024 = private unnamed_addr constant [33 x i8] c"/lance.table.IndexCatchupProgress", align 1, !guid !62
@2025 = private unnamed_addr constant [32 x i8] c"lance.table.IndexCatchupProgress", align 1, !guid !62
@2026 = private unnamed_addr constant [45 x i8] c"/lance.table.Transaction.DataReplacementGroup", align 1, !guid !62
@2027 = private unnamed_addr constant [44 x i8] c"lance.table.Transaction.DataReplacementGroup", align 1, !guid !62
@2028 = private unnamed_addr constant [31 x i8] c"/lance.table.MemWalIndexDetails", align 1, !guid !62
@2029 = private unnamed_addr constant [30 x i8] c"lance.table.MemWalIndexDetails", align 1, !guid !62
@2030 = private unnamed_addr constant [40 x i8] c"/lance.table.Transaction.DataReplacement", align 1, !guid !62
@2031 = private unnamed_addr constant [39 x i8] c"lance.table.Transaction.DataReplacement", align 1, !guid !62
@2032 = private unnamed_addr constant [14 x i8] c"FragmentDigest", align 1, !guid !62
@2033 = private unnamed_addr constant [25 x i8] c"/lance.table.ShardingSpec", align 1, !guid !62
@2034 = private unnamed_addr constant [24 x i8] c"lance.table.ShardingSpec", align 1, !guid !62
@2035 = private unnamed_addr constant [5 x i8] c"Array", align 1, !guid !62
@2036 = private unnamed_addr constant [5 x i8] c"Empty", align 1, !guid !62
@2037 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1, !guid !62
@2038 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1, !guid !62
@2039 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1, !guid !62
@2040 = private unnamed_addr constant [4 x i8] c"Zero", align 1, !guid !62
@2041 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1, !guid !62
@2042 = private unnamed_addr constant [41 x i8] c"/lance.table.Transaction.DataOverlayGroup", align 1, !guid !62
@2043 = private unnamed_addr constant [40 x i8] c"lance.table.Transaction.DataOverlayGroup", align 1, !guid !62
@2044 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtB8_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6format2pb15EncodedU64ArrayENtB6_5Debug3fmtBY_ }>, align 8, !guid !62
@2045 = private unnamed_addr constant [23 x i8] c"InlineCreatedAtVersions", align 1, !guid !62
@2046 = private unnamed_addr constant [25 x i8] c"ExternalCreatedAtVersions", align 1, !guid !62
@2047 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_10get_ranges0ECs9KQ7US1M400_11lance_table, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_10get_ranges0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2048 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_11rename_opts0ECs9KQ7US1M400_11lance_table, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_11rename_opts0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2049 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_18put_multipart_opts0ECs9KQ7US1M400_11lance_table, [16 x i8] c"x\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_18put_multipart_opts0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2050 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_19list_with_delimiter0ECs9KQ7US1M400_11lance_table, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_19list_with_delimiter0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2051 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_8get_opts0ECs9KQ7US1M400_11lance_table, [16 x i8] c"\B0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_8get_opts0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2052 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_8put_opts0ECs9KQ7US1M400_11lance_table, [16 x i8] c"\B8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_8put_opts0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2053 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_9copy_opts0ECs9KQ7US1M400_11lance_table, [16 x i8] c"@\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EB18_9copy_opts0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2054 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_NtNtCs9KQ7US1M400_11lance_table2io6commitNtBJ_19UnsafeCommitHandlerNtBJ_13CommitHandler6commit0EBN_, [16 x i8] c"p\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsj_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB7_19UnsafeCommitHandlerNtB7_13CommitHandler6commit0Bb_ }>, align 8, !guid !62
@2055 = private unnamed_addr constant [26 x i8] c"/lance.table.ShardingField", align 1, !guid !62
@2056 = private unnamed_addr constant [25 x i8] c"lance.table.ShardingField", align 1, !guid !62
@2057 = private unnamed_addr constant [36 x i8] c"/lance.table.Transaction.DataOverlay", align 1, !guid !62
@2058 = private unnamed_addr constant [35 x i8] c"lance.table.Transaction.DataOverlay", align 1, !guid !62
@2059 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtB8_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2060 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @75, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8, !guid !62
@2061 = private unnamed_addr constant [42 x i8] c"/lance.table.Transaction.UpdateMemWalState", align 1, !guid !62
@2062 = private unnamed_addr constant [41 x i8] c"lance.table.Transaction.UpdateMemWalState", align 1, !guid !62
@2063 = private unnamed_addr constant [24 x i8] c"/lance.table.Transaction", align 1, !guid !62
@2064 = private unnamed_addr constant [23 x i8] c"lance.table.Transaction", align 1, !guid !62
@2065 = private unnamed_addr constant [36 x i8] c"/lance.table.Transaction.UpdateBases", align 1, !guid !62
@2066 = private unnamed_addr constant [35 x i8] c"lance.table.Transaction.UpdateBases", align 1, !guid !62
@2067 = private unnamed_addr constant [10 x i8] c"field_name", align 1, !guid !62
@2068 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsm_NtNtCs9KQ7US1M400_11lance_table2io6commitNtBJ_19RenameCommitHandlerNtBJ_13CommitHandler6commit0EBN_, [16 x i8] c"\D8\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsm_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB7_19RenameCommitHandlerNtB7_13CommitHandler6commit0Bb_ }>, align 8, !guid !62
@2069 = private unnamed_addr constant [26 x i8] c"/lance.table.RowIdSequence", align 1, !guid !62
@2070 = private unnamed_addr constant [25 x i8] c"lance.table.RowIdSequence", align 1, !guid !62
@2071 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsn_NtNtCs9KQ7US1M400_11lance_table2io6commitNtBJ_27ConditionalPutCommitHandlerNtBJ_13CommitHandler6commit0EBN_, [16 x i8] c"\98\08\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXsn_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB7_27ConditionalPutCommitHandlerNtB7_13CommitHandler6commit0Bb_ }>, align 8, !guid !62
@2072 = private unnamed_addr constant [23 x i8] c"/lance.table.U64Segment", align 1, !guid !62
@2073 = private unnamed_addr constant [22 x i8] c"lance.table.U64Segment", align 1, !guid !62
@2074 = private unnamed_addr constant [5 x i8] c"Group", align 1, !guid !62
@2075 = private unnamed_addr constant [17 x i8] c"changed_row_addrs", align 1, !guid !62
@2076 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details14FragmentDigestENtB6_5Debug3fmtB1b_ }>, align 8, !guid !62
@2077 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXso_NtNtCs9KQ7US1M400_11lance_table2io6commitNtBJ_23TencentCosCommitHandlerNtBJ_13CommitHandler6commit0EBN_, [16 x i8] c"\D8\01\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvXso_NtNtCs9KQ7US1M400_11lance_table2io6commitNtB7_23TencentCosCommitHandlerNtB7_13CommitHandler6commit0Bb_ }>, align 8, !guid !62
@2078 = private unnamed_addr constant [28 x i8] c"/lance.table.EncodedU64Array", align 1, !guid !62
@2079 = private unnamed_addr constant [27 x i8] c"lance.table.EncodedU64Array", align 1, !guid !62
@2080 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtB8_6option6OptionmENtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2081 = private unnamed_addr constant [38 x i8] c"/lance.table.RowDatasetVersionSequence", align 1, !guid !62
@2082 = private unnamed_addr constant [37 x i8] c"lance.table.RowDatasetVersionSequence", align 1, !guid !62
@2083 = private unnamed_addr constant [33 x i8] c"/lance.table.RowDatasetVersionRun", align 1, !guid !62
@2084 = private unnamed_addr constant [32 x i8] c"lance.table.RowDatasetVersionRun", align 1, !guid !62
@2085 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2086 = private unnamed_addr constant [18 x i8] c"FieldNotFoundError", align 1, !guid !62
@2087 = private unnamed_addr constant [10 x i8] c"candidates", align 1, !guid !62
@2088 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECs9KQ7US1M400_11lance_table, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs63DIHKhvmTb_10lance_core9datatypesNtB5_11LogicalTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt }>, align 8, !guid !62
@2089 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1w_EECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB13_ENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2090 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field8EncodingENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2091 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECs9KQ7US1M400_11lance_table, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2092 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs63DIHKhvmTb_10lance_core9datatypes10DictionaryEECs9KQ7US1M400_11lance_table, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionNtNtCs63DIHKhvmTb_10lance_core9datatypes10DictionaryENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2093 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCscI6d9CVNmLh_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2094 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @429, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @188, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @459, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @460, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @465, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @462, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @461, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @1638, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @463, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @467, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @469, [8 x i8] c"\22\00\00\00\00\00\00\00" }>, align 8, !guid !62
@2095 = private unnamed_addr constant [7 x i8] c"Version", align 1, !guid !62
@2096 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details5GroupENtB6_5Debug3fmtB1b_ }>, align 8, !guid !62
@2097 = private unnamed_addr constant [16 x i8] c"PeerClaimedEpoch", align 1, !guid !62
@2098 = private unnamed_addr constant [18 x i8] c"PersistenceFailure", align 1, !guid !62
@2099 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @133, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8, !guid !62
@2100 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U16ArrayNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2101 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U32ArrayNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb17encoded_u64_array8U64ArrayNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2103 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2105 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment5RangeNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2106 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment14RangeWithHolesNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb11u64_segment15RangeWithBitmapNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2108 = private unnamed_addr constant [11 x i8] c"SortedArray", align 1, !guid !62
@2109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXsy_NtNtNtCs9KQ7US1M400_11lance_table6format2pb11transactionNtB8_6DeleteNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtNtB2_13ScalarWrapperB1e_3fmt }>, align 8, !guid !62
@2110 = private unnamed_addr constant [20 x i8] c"deleted_fragment_ids", align 1, !guid !62
@2111 = private unnamed_addr constant [9 x i8] c"predicate", align 1, !guid !62
@2112 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtNtCs9KQ7US1M400_11lance_table6format2pb28fragment_reuse_index_details13InlineContentNtB6_5Debug3fmtBE_ }>, align 8, !guid !62
@2113 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvXCs3PfUT229lOd_12object_storeDNtB1y_11ObjectStoreEL_NtB1y_14ObjectStoreExt6delete00EECs9KQ7US1M400_11lance_table, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvXCs3PfUT229lOd_12object_storeDNtB14_11ObjectStoreEL_NtB14_14ObjectStoreExt6delete00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvXCs3PfUT229lOd_12object_storeDNtB14_11ObjectStoreEL_NtB14_14ObjectStoreExt6delete00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2114 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1y_11ObjectStoreEL_ENtB1y_14ObjectStoreExt6delete00EECs9KQ7US1M400_11lance_table, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_11ObjectStoreEL_ENtB14_14ObjectStoreExt6delete00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB14_11ObjectStoreEL_ENtB14_14ObjectStoreExt6delete00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2115 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1E_6traits6Reader10get_stream00EECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2116 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1E_6traits6Reader16get_range_stream00EECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2117 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1E_6traits6Reader10get_stream00EECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader10get_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2118 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4once4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1E_6traits6Reader16get_range_stream00EECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_nextCs9KQ7US1M400_11lance_table, ptr @_RNvXs_NtNtCs9p5Dg9WVwvP_12futures_util6stream4onceINtB4_4OnceNCNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtB1a_6traits6Reader16get_range_stream00ENtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9size_hintCs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2119 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNCINvMNtNtCskTBvlRM5ILY_4moka6future11housekeeperNtBJ_11Housekeeper20do_run_pending_tasksNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB26_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE00ECs9KQ7US1M400_11lance_table, [16 x i8] c"X\05\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCINvMNtNtCskTBvlRM5ILY_4moka6future11housekeeperNtB7_11Housekeeper20do_run_pending_tasksNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE00Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2120 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1, !guid !62
@2121 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4314464806581228695 to ptr), ptr inttoptr (i64 -5981927086036224491 to ptr) }>, align 8, !guid !62
@2122 = private unnamed_addr constant [20 x i8] c"\0Fmissing field `\C0\01`\00", align 1, !guid !62
@2123 = private unnamed_addr constant [31 x i8] c"\0Finvalid length \C0\0B, expected \C0\00", align 1, !guid !62
@2124 = private unnamed_addr constant [22 x i8] c"\11duplicate field `\C0\01`\00", align 1, !guid !62
@2125 = private unnamed_addr constant [34 x i8] c"\11unknown variant `\C0\0C`, expected \C0\00", align 1, !guid !62
@2126 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7499750967849496559 to ptr), ptr inttoptr (i64 8824107536822239571 to ptr) }>, align 8, !guid !62
@2127 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9103058179659529324 to ptr), ptr inttoptr (i64 -7260574501311290453 to ptr) }>, align 8, !guid !62
@2128 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2352565081682262595 to ptr), ptr inttoptr (i64 -1516304002362003528 to ptr) }>, align 8, !guid !62
@2129 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8215900501081918538 to ptr), ptr inttoptr (i64 2119089514617943008 to ptr) }>, align 8, !guid !62
@2130 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3580661996195343229 to ptr), ptr inttoptr (i64 -4107882099676692320 to ptr) }>, align 8, !guid !62
@2131 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2839843732862015465 to ptr), ptr inttoptr (i64 -9088656557240201114 to ptr) }>, align 8, !guid !62
@2132 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBM_6traits6Reader10get_stream0ECs9KQ7US1M400_11lance_table, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBa_6traits6Reader10get_stream0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2133 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBM_6traits6Reader16get_range_stream0ECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring14current_thread24UringCurrentThreadReaderNtNtBa_6traits6Reader16get_range_stream0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2134 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBM_6traits6Reader10get_stream0ECs9KQ7US1M400_11lance_table, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBa_6traits6Reader10get_stream0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2135 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBM_6traits6Reader16get_range_stream0ECs9KQ7US1M400_11lance_table, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNvYNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader11UringReaderNtNtBa_6traits6Reader16get_range_stream0Cs9KQ7US1M400_11lance_table }>, align 8, !guid !62
@2136 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1, !guid !62
@2137 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @2136, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8, !guid !62
@2138 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @149, [16 x i8] c"I\00\00\00\00\00\00\00H\07\00\00$\00\00\00" }>, align 8, !guid !62
@2139 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5395094624057330451 to ptr), ptr inttoptr (i64 -8304404071318327760 to ptr) }>, align 8, !guid !62
@switch.table._RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table = private unnamed_addr constant [4 x i8] c"\06\0E\0E\05", align 8
@switch.table._RNCNvMsd_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17remove_expired_ao0Cs9KQ7US1M400_11lance_table.5630 = private unnamed_addr constant [4 x ptr] [ptr @1035, ptr @1123, ptr @1124, ptr @1125], align 8
@switch.table._RNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB4_7builder11Transaction32build_manifest_with_read_version = private unnamed_addr constant [16 x ptr] [ptr @565, ptr @566, ptr @567, ptr @568, ptr @569, ptr @570, ptr @571, ptr @572, ptr @573, ptr @574, ptr @575, ptr @576, ptr @577, ptr @578, ptr @579, ptr @580], align 8
@switch.table._RNvMNtNtCs9KQ7US1M400_11lance_table11transaction14manifest_buildNtNtB4_7builder11Transaction32build_manifest_with_read_version.5631 = private unnamed_addr constant [16 x i8] c"\06\06\09\0B\07\0F\0B\05\07\10\06\07\0C\11\05\0B", align 8
@switch.table._RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence21mask_to_offset_ranges = private unnamed_addr constant [3 x i8] c"(( ", align 8
@switch.table._RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence21mask_to_offset_ranges.5632 = private unnamed_addr constant [3 x i64] [i64 4611686018427387904, i64 2305843009213693952, i64 1152921504606846976], align 8
@switch.table._RNvMs3_NtNtCsgczF5crJ4sT_3std2io5errorNtB5_5Error4kind = private unnamed_addr constant [122 x i8] c"\01\00)#))\22)))\0D&\01))\1C\0C\1F)\0E\0F\14)))\1D\1B\18\19\11 \0B))\1E!)$\10\12))))))))))))))))))))))))))))))))))))))))))))))))))))))$))\08\09\0A\05)\06\03))\07))\16\02)\04)'\13)))))\1A", align 1
@switch.table._RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate18validate_operation = private unnamed_addr constant [16 x ptr] [ptr @565, ptr @566, ptr poison, ptr @568, ptr @569, ptr @570, ptr @571, ptr @572, ptr @573, ptr @574, ptr @575, ptr @576, ptr @577, ptr @578, ptr poison, ptr @580], align 8
@switch.table._RNvNtNtCs9KQ7US1M400_11lance_table11transaction8validate18validate_operation.5633 = private unnamed_addr constant [16 x i8] [i8 6, i8 6, i8 poison, i8 11, i8 7, i8 15, i8 11, i8 5, i8 7, i8 16, i8 6, i8 7, i8 12, i8 17, i8 poison, i8 11], align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table.5636 = private unnamed_addr constant [6 x ptr] [ptr @2036, ptr @2037, ptr @2038, ptr @2039, ptr @2040, ptr @2041], align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field8EncodingNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table = private unnamed_addr constant [4 x i8] c"\05\09\0A\03", align 8
@switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field8EncodingNtB6_5Debug3fmtCs9KQ7US1M400_11lance_table.5637 = private unnamed_addr constant [4 x ptr] [ptr @2012, ptr @2013, ptr @454, ptr @2014], align 8
@switch.table._RNvXsb_NtNtCs9KQ7US1M400_11lance_table6format8manifestNtNtB7_2pb8ManifestINtNtCscI6d9CVNmLh_4core7convert4FromRNtB5_8ManifestE4from = private unnamed_addr constant [5 x ptr] [ptr @1986, ptr @1987, ptr @1988, ptr @1989, ptr @1990], align 8
@switch.table._RNvXsi_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_25RowDatasetVersionSequenceNtNtCs63DIHKhvmTb_10lance_core8deepsize10DeepSizeOf21deep_size_of_children.5648 = private unnamed_addr constant [3 x i8] c"\10\10\08", align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !251 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs1_NtNtCs3PfUT229lOd_12object_store4path5partsNtB5_8PathPartINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs40k4W9msRzi_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
          to label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE4intoCs9KQ7US1M400_11lance_table.exit unwind label %.thread

bb.b:                                             ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52
  br i1 %i.j, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit58

.thread:                                          ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE4intoCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !97 ; 2 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE4intoCs9KQ7US1M400_11lance_table.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !97 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 7 uses
  %.not.i = icmp slt i64 %i.n, 0
  br i1 %.not.i, label %bb.i, label %bb.d, !prof !98

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !252
  %i.p = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !252 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.k

bb.f:                                             ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertNtNtCs40k4W9msRzi_5alloc6string6StringINtB5_4IntoNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartE4intoCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @7, ptr %i.b, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.420.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.r, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsb_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCs9KQ7US1M400_11lance_table, ptr %.sroa.424.0..sroa_idx, align 8
  %i.s = invoke noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9, ptr noundef nonnull @8, ptr noundef nonnull %i.b)
          to label %bb.p unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52: ; preds = %bb.o, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ] ; 2 uses
  %.val45 = load i64, ptr %i.e, align 8, !range !99, !noundef !97 ; 2 uses
  %i.t = icmp sgt i64 %.val45, 0
  br i1 %i.t, label %bb.g, label %bb.b

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val46 = load ptr, ptr %i.u, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %.val45, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !253
  br label %bb.b

bb.h:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52

bb.i:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.ph = phi i64 [ 1, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.n) #80
          to label %bb.m unwind label %bb.h

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.thread69: ; preds = %bb.d, %bb.k
  %i.w = phi ptr [ %i.p, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %i.n, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %.val43 = load i64, ptr %i.e, align 8, !range !99, !noundef !97 ; 2 uses
  %i.x = icmp sgt i64 %.val43, 0
  br i1 %i.x, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit49

bb.j:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.thread69
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !254
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit49

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.thread69

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit49: ; preds = %bb.j, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9KQ7US1M400_11lance_table.exit.thread69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !255 ; 2 uses
  %i.y = icmp eq i64 %.val.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit49
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !255, !nonnull !97, !noundef !97
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !255
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit49, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit55
  ret void

bb.m:                                             ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.q, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %.val.i50 = load i64, ptr %i.c, align 8, !alias.scope !256 ; 2 uses
  %i.ab = icmp eq i64 %.val.i50, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i51 = load ptr, ptr %i.ac, align 8, !alias.scope !256, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i51, i64 noundef %.val.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !256
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit52

bb.p:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9KQ7US1M400_11lance_table.exit, !prof !100

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @922, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #80
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.q
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9KQ7US1M400_11lance_table.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.04.0.copyload5 = load i64, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.47.0.copyload9 = load ptr, ptr %.sroa.47.0..sroa_idx8, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.04.0.copyload5, ptr %0, align 8
  %.sroa.47.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.47.0.copyload9, ptr %.sroa.47.0..sroa_idx10, align 8
  %.sroa.512.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0.copyload14, ptr %.sroa.512.0..sroa_idx15, align 8
  %.val = load i64, ptr %i.e, align 8, !range !99, !noundef !97 ; 2 uses
  %i.ad = icmp sgt i64 %.val, 0
  br i1 %i.ad, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit55

bb.r:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9KQ7US1M400_11lance_table.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val42 = load ptr, ptr %i.ae, align 8, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !257
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit55

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs9KQ7US1M400_11lance_table.exit55: ; preds = %bb.r, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs9KQ7US1M400_11lance_table.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit58: ; preds = %bb.t, %bb.s, %bb.b
  %.pn.pn62 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn.pn63, %bb.s ], [ %.pn.pn63, %bb.t ]
  resume { ptr, i32 } %.pn.pn62

bb.s:                                             ; preds = %.thread, %bb.b
  %.pn.pn63 = phi { ptr, i32 } [ %i.f, %.thread ], [ %.pn, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %.val.i56 = load i64, ptr %1, align 8, !alias.scope !258 ; 2 uses
  %i.af = icmp eq i64 %.val.i56, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit58, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i57 = load ptr, ptr %i.ag, align 8, !alias.scope !258, !nonnull !97, !noundef !97
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i57, i64 noundef %.val.i56, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !258
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs9KQ7US1M400_11lance_table.exit58
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence21mask_to_offset_ranges:bb.a
  %.lcssa57.i = phi i64 [ %.lcssa54.i, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ %.lcssa58.i, %.noexc9.i ] ; 3 uses
  %i.ti = phi i64 [ %i.tc, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ %storemerge.i.i409, %.noexc9.i ] ; 4 uses
  %.sroa.0.0.copyload40.i = phi i64 [ %.sroa.0.0.copyload42.i, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ %.sroa.0.0.copyload41.i, %.noexc9.i ] ; 2 uses
  %i.tj = phi { i64, i64 } [ %i.te, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ %i.tw, %.noexc9.i ]
  %.promoted.i.i.i.i1517.i.i = phi i64 [ %i.td, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ %i.tu, %.noexc9.i ]
  %i.tk = phi i1 [ %i.th, %.lr.ph.i.i.i.i.lr.ph.i.i ], [ true, %.noexc9.i ]
  br label %bb.fa

bb.fa:                                            ; preds = %.noexc8.i, %.lr.ph.i.i.i.i.i.i
  %i.tl = phi { i64, i64 } [ %i.tj, %.lr.ph.i.i.i.i.i.i ], [ %i.tp, %.noexc8.i ]
  %i.tm = phi i64 [ %.promoted.i.i.i.i1517.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.tq, %.noexc8.i ] ; 3 uses
  %i.tn = extractvalue { i64, i64 } %i.tl, 1
  %i.to = invoke noundef zeroext i1 @_RNvMs_NtCsbjTsVCnQnhv_12lance_select4maskNtB4_11RowAddrMask8selected(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, i64 noundef %i.tn)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !51236

.noexc7.i:                                        ; preds = %bb.fa
  br i1 %i.to, label %bb.fb, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateyuINtNtNtBf_3ops12control_flow11ControlFlowyENCINvNvB1e_8find_map5checkTjyEyQNCNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB3s_13RowIdSequence21mask_to_offset_rangess0_0E0E0B3u_.exit.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateyuINtNtNtBf_3ops12control_flow11ControlFlowyENCINvNvB1e_8find_map5checkTjyEyQNCNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB3s_13RowIdSequence21mask_to_offset_rangess0_0E0E0B3u_.exit.i.i.i.i.i.i: ; preds = %.noexc7.i
  %i.tp = invoke { i64, i64 } %i.tb(ptr noundef nonnull %i.sy)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !51236, !inline_history !51064 ; 2 uses

.noexc8.i:                                        ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateyuINtNtNtBf_3ops12control_flow11ControlFlowyENCINvNvB1e_8find_map5checkTjyEyQNCNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB3s_13RowIdSequence21mask_to_offset_rangess0_0E0E0B3u_.exit.i.i.i.i.i.i
  %i.tq = add i64 %i.tm, 1                        ; 2 uses
  %i.tr = extractvalue { i64, i64 } %i.tp, 0
  %i.ts = trunc nuw i64 %i.tr to i1
  br i1 %i.ts, label %bb.fa, label %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i

bb.fb:                                            ; preds = %.noexc7.i
  %i.tt = add i64 %i.tm, %.sroa.0.0483730         ; 5 uses
  %i.tu = add i64 %i.tm, 1                        ; 3 uses
  br i1 %i.tk, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.tv = icmp eq i64 %i.ti, %i.tt
  br i1 %i.tv, label %bb.fd, label %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.lcssa58.i = phi i64 [ %.lcssa57.i, %bb.fc ], [ %i.tt, %bb.fb ] ; 2 uses
  %.sroa.0.0.copyload41.i = phi i64 [ %.sroa.0.0.copyload40.i, %bb.fc ], [ 1, %bb.fb ] ; 2 uses
  %storemerge.in.i.i = phi i64 [ %i.ti, %bb.fc ], [ %i.tt, %bb.fb ]
  %i.tw = invoke { i64, i64 } %i.tb(ptr noundef nonnull %i.sy)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !51236, !inline_history !51064 ; 2 uses

.noexc9.i:                                        ; preds = %bb.fd
  %storemerge.i.i409 = add i64 %storemerge.in.i.i, 1 ; 2 uses
  %i.tx = extractvalue { i64, i64 } %i.tw, 0
  %i.ty = trunc nuw i64 %i.tx to i1
  br i1 %i.ty, label %.lr.ph.i.i.i.i.i.i, label %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i

_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i: ; preds = %bb.fc
  %i.tz = add i64 %i.tt, 1
  br label %bb.fe

_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i: ; preds = %.noexc9.i, %.noexc8.i, %.noexc.i406
  %.lcssa56.i = phi i64 [ %.lcssa57.i, %.noexc8.i ], [ %.lcssa54.i, %.noexc.i406 ], [ %.lcssa58.i, %.noexc9.i ] ; 2 uses
  %i.ua = phi i64 [ %i.ti, %.noexc8.i ], [ %i.tc, %.noexc.i406 ], [ %storemerge.i.i409, %.noexc9.i ] ; 2 uses
  %.sroa.0.0.copyload44.i = phi i64 [ %.sroa.0.0.copyload40.i, %.noexc8.i ], [ %.sroa.0.0.copyload42.i, %.noexc.i406 ], [ %.sroa.0.0.copyload41.i, %.noexc9.i ]
  %i.ub = phi i64 [ %i.tq, %.noexc8.i ], [ %i.td, %.noexc.i406 ], [ %i.tu, %.noexc9.i ]
  %i.uc = trunc nuw i64 %.sroa.0.0.copyload44.i to i1
  br i1 %i.uc, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i
  %.lcssa55.i = phi i64 [ %i.tt, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ %.lcssa56.i, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %i.ud = phi i64 [ %i.tz, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ %i.ua, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %.sroa.0.0.copyload43.i = phi i64 [ 1, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ 0, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %i.ue = phi i64 [ %i.tu, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ %i.ub, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %.sroa.6.016.i = phi i64 [ %.lcssa57.i, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ %.lcssa56.i, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %.sroa.8.015.i = phi i64 [ %i.ti, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.thread.i ], [ %i.ua, %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i ]
  %i.uf = load i64, ptr %i.ac, align 8, !alias.scope !51234, !noundef !97 ; 8 uses
  %i.ug = icmp ult i64 %i.uf, 576460752303423488
  call void @llvm.assume(i1 %i.ug)
  %i.uh = load i64, ptr %i.v, align 8, !range !101, !alias.scope !51234, !noundef !97
  %i.ui = icmp eq i64 %i.uf, %i.uh
  %.pre = load ptr, ptr %i.ab, align 8            ; 3 uses
  br i1 %i.ui, label %bb.fj, label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408_crit_edge

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408_crit_edge: ; preds = %bb.fe
  %.pre866 = add nuw nsw i64 %i.uf, 1
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408

bb.ff:                                            ; preds = %_RNvXs3_NtCs9KQ7US1M400_11lance_table6rowidsINtB5_16GroupingIteratorINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtB18_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1a_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B5_NtB5_13RowIdSequence21mask_to_offset_rangess0_0EENtNtB3c_8iterator8Iterator4nextB7_.exit.i
  %i.uj = load ptr, ptr %i.sz, align 8, !invariant.load !97, !noalias !51237 ; 2 uses
  %.not.i.i.i.i.i407 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i.i.i407, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  invoke void %i.uj(ptr noundef nonnull %i.sy)
          to label %bb.fh unwind label %bb.fi, !noalias !51237

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.ul = load i64, ptr %i.uk, align 8, !range !101, !invariant.load !97, !noalias !51237 ; 2 uses
  %i.um = icmp eq i64 %i.ul, 0
  br i1 %i.um, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table6rowids16GroupingIteratorINtNtNtNtBN_4iter8adapters10filter_map9FilterMapINtNtB2H_9enumerate9EnumerateINtNtB8_5boxed3BoxDNtNtNtB2J_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B1K_NtB1K_13RowIdSequence21mask_to_offset_rangess0_0EEEB1M_.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.fh
  %i.un = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.uo = load i64, ptr %i.un, align 8, !range !123, !invariant.load !97, !noalias !51237
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sy, i64 noundef %i.ul, i64 noundef range(i64 1, -9223372036854775807) %i.uo) #76, !noalias !51237
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table6rowids16GroupingIteratorINtNtNtNtBN_4iter8adapters10filter_map9FilterMapINtNtB2H_9enumerate9EnumerateINtNtB8_5boxed3BoxDNtNtNtB2J_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B1K_NtB1K_13RowIdSequence21mask_to_offset_rangess0_0EEEB1M_.exit

bb.fi:                                            ; preds = %bb.fg
  %i.up = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.ur = load i64, ptr %i.uq, align 8, !range !101, !invariant.load !97, !noalias !51237 ; 2 uses
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %.body410, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.fi
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.uu = load i64, ptr %i.ut, align 8, !range !123, !invariant.load !97, !noalias !51237
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sy, i64 noundef %i.ur, i64 noundef range(i64 1, -9223372036854775807) %i.uu) #76, !noalias !51237
  br label %.body410

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408_crit_edge, %_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit436
  %.pre-phi867 = phi i64 [ %.pre866, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408_crit_edge ], [ %i.uy, %_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit436 ]
  %i.uv = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408_crit_edge ], [ %.pn8.i442, %_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit436 ]
  %i.uw = getelementptr inbounds nuw [16 x i8], ptr %i.uv, i64 %i.uf ; 2 uses
  store i64 %.sroa.6.016.i, ptr %i.uw, align 8, !noalias !51236
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store i64 %.sroa.8.015.i, ptr %i.ux, align 8, !noalias !51236
  store i64 %.pre-phi867, ptr %i.ac, align 8, !alias.scope !51234
  br label %bb.ez

.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fd, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateyuINtNtNtBf_3ops12control_flow11ControlFlowyENCINvNvB1e_8find_map5checkTjyEyQNCNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB3s_13RowIdSequence21mask_to_offset_rangess0_0E0E0B3u_.exit.i.i.i.i.i.i, %bb.fa, %bb.ez, %.loopexit586
  %lpad.loopexit.split-lp1209 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs9KQ7US1M400_11lance_table6rowids16GroupingIteratorINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtB1B_9enumerate9EnumerateINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB1D_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_BE_NtBE_13RowIdSequence21mask_to_offset_rangess0_0EEEBG_(ptr nonnull %i.sy, ptr nonnull %i.sz) #81
          to label %.body410 unwind label %bb.fn, !noalias !51236

bb.fj:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !51238)
  call void @llvm.experimental.noalias.scope.decl(metadata !51239), !noalias !51240
  %i.uy = add nuw nsw i64 %i.uf, 1                ; 2 uses
  %i.uz = shl nuw nsw i64 %i.uf, 1
  %.sroa.0.0.i.i.i430 = call noundef i64 @llvm.umax.i64(i64 %i.uy, i64 %i.uz) ; 2 uses
  %.sroa.0.0.i14.i.i431 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i430, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5468)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10470)
  call void @llvm.experimental.noalias.scope.decl(metadata !51241)
  %i.va = shl nuw i64 %.sroa.0.0.i14.i.i431, 4    ; 4 uses
  %.not.i438 = icmp samesign ugt i64 %.sroa.0.0.i.i.i430, 576460752303423487
  br i1 %.not.i438, label %.loopexit586, label %bb.fk, !prof !98

bb.fk:                                            ; preds = %bb.fj
  %i.vb = icmp eq i64 %i.uf, 0
  br i1 %i.vb, label %bb.fl, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit.i440

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit.i440: ; preds = %bb.fk
  %i.vc = shl nuw nsw i64 %i.uf, 4                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre) ], !noalias !51242
  %i.vd = icmp samesign uge i64 %i.va, %i.vc
  call void @llvm.assume(i1 %i.vd), !noalias !51242
  %i.ve = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.pre, i64 noundef %i.vc, i64 noundef range(i64 1, 9) 8, i64 noundef range(i64 0, -9223372036854775808) %i.va) #76, !noalias !51243
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i441

bb.fl:                                            ; preds = %bb.fk
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !51243
  %i.vf = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !51243
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i441

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i441: ; preds = %bb.fl, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit.i440
  %.pn8.i442 = phi ptr [ %i.ve, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit.i440 ], [ %i.vf, %bb.fl ] ; 3 uses
  %i.vg = icmp eq ptr %.pn8.i442, null
  br i1 %i.vg, label %bb.fm, label %_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit436

bb.fm:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i441
  store i64 8, ptr %.sroa.5468, align 8, !alias.scope !51241, !noalias !51242
  br label %.loopexit586

.loopexit586:                                     ; preds = %bb.fj, %bb.fm
  %.sink12.i444.sroa.phi.ph = phi ptr [ %.sroa.10470, %bb.fm ], [ %.sroa.5468, %bb.fj ]
  %.sink.i445.ph = phi i64 [ %i.va, %bb.fm ], [ 0, %bb.fj ]
  store i64 %.sink.i445.ph, ptr %.sink12.i444.sroa.phi.ph, align 8, !alias.scope !51241, !noalias !51242
  %.sroa.5468.0..sroa.5468.0..sroa.5468.0..sroa.5468.8.469 = load i64, ptr %.sroa.5468, align 8, !range !146, !noalias !51242, !noundef !97
  %.sroa.10470.0..sroa.10470.0..sroa.10470.0..sroa.10470.16. = load i64, ptr %.sroa.10470, align 8, !noalias !51242
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10470)
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.5468.0..sroa.5468.0..sroa.5468.0..sroa.5468.8.469, i64 %.sroa.10470.0..sroa.10470.0..sroa.10470.0..sroa.10470.16.) #80
          to label %.noexc435 unwind label %.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc435:                                        ; preds = %.loopexit586
  unreachable

_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9KQ7US1M400_11lance_table.exit436: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5468)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10470)
  store ptr %.pn8.i442, ptr %i.ab, align 8, !alias.scope !51244, !noalias !51240
  store i64 %.sroa.0.0.i14.i.i431, ptr %i.v, align 8, !alias.scope !51244, !noalias !51240
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE7reserveCs9KQ7US1M400_11lance_table.exit.i408

bb.fn:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i405.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.vh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !51236
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtNtCscI6d9CVNmLh_4core3ops5range5RangeyEE16extend_desugaredINtNtCs9KQ7US1M400_11lance_table6rowids16GroupingIteratorINtNtNtNtBN_4iter8adapters10filter_map9FilterMapINtNtB2H_9enumerate9EnumerateINtNtB8_5boxed3BoxDNtNtNtB2J_6traits12double_ended19DoubleEndedIteratorp4ItemyEL_EENCNvMs1_B1K_NtB1K_13RowIdSequence21mask_to_offset_rangess0_0EEEB1M_.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.fh
  %i.vi = load i64, ptr %.sroa.034.0, align 8, !range !103, !noundef !97 ; 2 uses
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence21mask_to_offset_ranges, i64 %i.vi
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1181 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence21mask_to_offset_ranges.5632, i64 %i.vi
  %switch.load1182 = load i64, ptr %switch.gep1181, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.012.0731, i64 %switch.ext
  %i.vk = load i64, ptr %i.vj, align 8, !noundef !97 ; 2 uses
  %3 = icmp ult i64 %i.vk, %switch.load1182
  call void @llvm.assume(i1 %3)
  %i.vl = add i64 %i.vk, %.sroa.0.0483730
  br label %bb.bz

bb.fo:                                            ; preds = %._crit_edge
  %i.vm = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vm)
          to label %.thread530 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.l, %bb.fo
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %.thread532

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table.exit: ; preds = %bb.fu, %bb.ft, %bb.fs, %.thread530, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

.thread530:                                       ; preds = %bb.fo
  %.pr = load i64, ptr %i.y, align 8, !alias.scope !51245 ; 2 uses
  %.not.i.i414 = icmp eq i64 %.pr, -1
  br i1 %.not.i.i414, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table.exit, label %bb.fq

bb.fq:                                            ; preds = %.thread530
  %i.vo = load i64, ptr %i.vm, align 8, !range !113, !alias.scope !51246, !noundef !97
  %i.vp = invoke noundef zeroext i1 @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y, i64 noundef %i.vo)
          to label %bb.fs unwind label %bb.fr     ; 0 uses

bb.fr:                                            ; preds = %bb.fq
  %i.vq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECs9KQ7US1M400_11lance_table(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y) #81
          to label %common.resume unwind label %bb.fv

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.experimental.noalias.scope.decl(metadata !51247)
  call void @llvm.experimental.noalias.scope.decl(metadata !51248)
  call void @llvm.experimental.noalias.scope.decl(metadata !51249)
  call void @llvm.experimental.noalias.scope.decl(metadata !51250)
  %i.vr = icmp eq i64 %.pr, 0
  br i1 %i.vr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51251)
  call void @llvm.experimental.noalias.scope.decl(metadata !51252)
  %i.vt = load ptr, ptr %i.vs, align 8, !alias.scope !51253, !nonnull !97, !noundef !97
  %i.vu = atomicrmw add ptr %i.vt, i64 -1 release, align 8, !noalias !51254
  %i.vv = icmp eq i64 %i.vu, 1
  br i1 %i.vv, label %bb.fu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table.exit

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vs)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table.exit

bb.fv:                                            ; preds = %bb.fr
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82
  unreachable

common.resume:                                    ; preds = %.thread532, %bb.b, %bb.fr
  %common.resume.op = phi { ptr, i32 } [ %i.vq, %bb.fr ], [ %.pn354536, %.thread532 ], [ %.pn350.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.fw:                                            ; preds = %bb.b
  %i.vx = load i64, ptr %i.y, align 8, !range !126, !noalias !51255, !noundef !97
  %.not.i.i415 = icmp eq i64 %i.vx, -1
  br i1 %.not.i.i415, label %.thread532, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vy)
          to label %.thread532 unwind label %bb.ce

.thread532:                                       ; preds = %bb.fw, %bb.fx, %bb.fp
  %.pn354536 = phi { ptr, i32 } [ %.pn350.pn, %bb.fw ], [ %i.vn, %bb.fp ], [ %.pn350.pn, %bb.fx ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 dereferenceable(40) %i.y) #81
          to label %common.resume unwind label %bb.ce
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3get(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !guid !51256 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !97, !noundef !97 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !97 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.011 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.010 = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.010)
  %i.h = add i64 %i.g, %.sroa.01.011              ; 2 uses
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = sub i64 %1, %.sroa.01.011
  %i.m = tail call { i64, i64 } @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.010, i64 noundef %i.l) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi i64 [ %i.o, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !51257 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !97, !noundef !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !97 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1V_8adapters3map8map_foldRBQ_yyNCNvMs1_BU_NtBU_13RowIdSequence3len0NCINvXsC_NtB1T_5accumyNtB3Y_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EBW_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.i, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.h, %.preheader ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.g = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f)
  %i.h = add i64 %i.g, %.sroa.02.0.i              ; 2 uses
  %i.i = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1V_8adapters3map8map_foldRBQ_yyNCNvMs1_BU_NtBU_13RowIdSequence3len0NCINvXsC_NtB1T_5accumyNtB3Y_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EBW_.exit, label %.preheader

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB1V_8adapters3map8map_foldRBQ_yyNCNvMs1_BU_NtBU_13RowIdSequence3len0NCINvXsC_NtB1T_5accumyNtB3Y_3Sum3sumINtB2F_3MapBF_B3f_EE0E0EBW_.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.h, %.preheader ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence5slice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !guid !51261 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !97, !noundef !97 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !97 ; 10 uses
  %.idx = mul nuw nsw i64 %i.f, 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 2 uses
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = add i64 %i.f, 2305843009213693951
  %i.j = and i64 %i.i, 2305843009213693951
  %i.k = add nuw nsw i64 %i.j, 1
  br label %.lr.ph

bb.d:                                             ; preds = %_RNvXs8_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE5indexB1F_.exit, %bb.b
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.0.023 = phi i64 [ %i.o, %bb.e ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.04.022 = phi i64 [ %i.p, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.021 = phi ptr [ %i.n, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.l = tail call noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.08.021) ; 2 uses
  %i.m = icmp ult i64 %.sroa.0.023, %i.l
  br i1 %i.m, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.021, i64 56 ; 2 uses
  %i.o = sub nuw i64 %.sroa.0.023, %i.l           ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.04.022, 1
  %i.q = icmp eq ptr %i.n, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.lcssa = phi i64 [ %.sroa.04.022, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.023, %.lr.ph ], [ %i.o, %bb.e ]
  %i.r = icmp ugt i64 %.sroa.04.0.lcssa, %i.f
  br i1 %i.r, label %bb.f, label %._crit_edge.thread, !prof !104

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.sroa.0.0.lcssa48 = phi i64 [ %.sroa.0.0.lcssa, %._crit_edge ], [ %2, %bb.c ] ; 2 uses
end_hunk_1
