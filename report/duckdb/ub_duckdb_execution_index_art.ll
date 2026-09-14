Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution_index_art?download=true
inline.NumInlined: 6663
inline.NumDeleted: 2963
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0
@.str.31 = private unnamed_addr constant [21 x i8] c"[deprecated leaves]\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Leaf [count: \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c", row IDs: \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Invalid node type for New: %d.\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Invalid node type for GetAllocatorIdx: %d.\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"Invalid node type for ReplaceChild: %d.\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Invalid node type for InsertChild: %d.\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Invalid node type for DeleteChild: %d.\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Invalid node type for GetNextByte: %d.\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Invalid node type for GetCapacity: %d.\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"invalid node type for TransformToDeprecated: %d\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Inlined Leaf [row ID: \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Gate\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Node\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Leaf |\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c", [not printed]\0A\00", align 1
@_ZTIN6duckdb3ARTE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb3ARTE, ptr @_ZTIN6duckdb10BoundIndexE }, align 8
@_ZTSN6duckdb3ARTE = constant [14 x i8] c"N6duckdb3ARTE\00", align 1
@_ZTIN6duckdb10BoundIndexE = external constant ptr
@.str.52 = private unnamed_addr constant [43 x i8] c"Invalid node type for ARTOperator::Insert.\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"node without metadata in ARTOperator::Insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"optional_idx cannot be initialized with an invalid index\00", align 1
@_ZTVN6duckdb10BoundIndexE = external unnamed_addr constant { [30 x ptr] }, align 8
@_ZTVN6duckdb5IndexE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN6duckdb5IndexE, ptr @_ZN6duckdb5IndexD2Ev, ptr @_ZN6duckdb5IndexD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTIN6duckdb5IndexE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb5IndexE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb5IndexE = linkonce_odr constant [16 x i8] c"N6duckdb5IndexE\00", comdat, align 1
@_ZTVN6duckdb27ComparisonExpressionMatcherE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb17ExpressionMatcherE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.55 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.57 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.59 = private unnamed_addr constant [63 x i8] c"Attempting to get the index of an optional_idx that is not set\00", align 1
@_ZTVN6duckdb12_GLOBAL__N_116ARTBuildBindDataE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb12_GLOBAL__N_116ARTBuildBindDataE, ptr @_ZN6duckdb18IndexBuildBindDataD2Ev, ptr @_ZN6duckdb12_GLOBAL__N_116ARTBuildBindDataD0Ev] }, align 8
@_ZTIN6duckdb12_GLOBAL__N_116ARTBuildBindDataE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12_GLOBAL__N_116ARTBuildBindDataE, ptr @_ZTIN6duckdb18IndexBuildBindDataE }, align 8
@_ZTSN6duckdb12_GLOBAL__N_116ARTBuildBindDataE = internal constant [42 x i8] c"N6duckdb12_GLOBAL__N_116ARTBuildBindDataE\00", align 1
@_ZTIN6duckdb18IndexBuildBindDataE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb18IndexBuildBindDataE }, comdat, align 8
@_ZTSN6duckdb18IndexBuildBindDataE = linkonce_odr constant [30 x i8] c"N6duckdb18IndexBuildBindDataE\00", comdat, align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@.str.61 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@_ZTVN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE, ptr @_ZN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateD2Ev, ptr @_ZN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateD0Ev] }, align 8
@_ZTIN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE, ptr @_ZTIN6duckdb21IndexBuildGlobalStateE }, align 8
@_ZTSN6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE = internal constant [45 x i8] c"N6duckdb12_GLOBAL__N_119ARTBuildGlobalStateE\00", align 1
@_ZTIN6duckdb21IndexBuildGlobalStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb21IndexBuildGlobalStateE }, comdat, align 8
@_ZTSN6duckdb21IndexBuildGlobalStateE = linkonce_odr constant [33 x i8] c"N6duckdb21IndexBuildGlobalStateE\00", comdat, align 1
@_ZTVN6duckdb12_GLOBAL__N_118ARTBuildLocalStateE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb12_GLOBAL__N_118ARTBuildLocalStateE, ptr @_ZN6duckdb12_GLOBAL__N_118ARTBuildLocalStateD2Ev, ptr @_ZN6duckdb12_GLOBAL__N_118ARTBuildLocalStateD0Ev] }, align 8
@_ZTIN6duckdb12_GLOBAL__N_118ARTBuildLocalStateE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb12_GLOBAL__N_118ARTBuildLocalStateE, ptr @_ZTIN6duckdb20IndexBuildLocalStateE }, align 8
@_ZTSN6duckdb12_GLOBAL__N_118ARTBuildLocalStateE = internal constant [44 x i8] c"N6duckdb12_GLOBAL__N_118ARTBuildLocalStateE\00", align 1
@_ZTIN6duckdb20IndexBuildLocalStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb20IndexBuildLocalStateE }, comdat, align 8
@_ZTSN6duckdb20IndexBuildLocalStateE = linkonce_odr constant [32 x i8] c"N6duckdb20IndexBuildLocalStateE\00", comdat, align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"Data contains duplicates on indexed column(s)\00", align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"Attempted to construct an array_ptr from a NULL pointer\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.67 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.69 = private unnamed_addr constant [59 x i8] c"Attempted to access index %ld within array_ptr of size %ld\00", align 1
@.str.70 = private unnamed_addr constant [76 x i8] c"Information loss on integer cast: value %d outside of target range [%d, %d]\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [153 x i8] c"St23_Sp_counted_ptr_inplaceISt5arrayIN6duckdb10unique_ptrINS1_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVN6duckdb17ARTIndexScanStateE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN6duckdb17ARTIndexScanStateE, ptr @_ZN6duckdb17ARTIndexScanStateD2Ev, ptr @_ZN6duckdb17ARTIndexScanStateD0Ev] }, comdat, align 8
@_ZTIN6duckdb17ARTIndexScanStateE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17ARTIndexScanStateE, ptr @_ZTIN6duckdb14IndexScanStateE }, comdat, align 8
@_ZTSN6duckdb17ARTIndexScanStateE = linkonce_odr constant [29 x i8] c"N6duckdb17ARTIndexScanStateE\00", comdat, align 1
@_ZTIN6duckdb14IndexScanStateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb14IndexScanStateE }, comdat, align 8
@_ZTSN6duckdb14IndexScanStateE = linkonce_odr constant [26 x i8] c"N6duckdb14IndexScanStateE\00", comdat, align 1
@_ZTVN6duckdb31ComparisonExpressionTypeMatcherE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb31ComparisonExpressionTypeMatcherE, ptr @_ZN6duckdb21ExpressionTypeMatcherD2Ev, ptr @_ZN6duckdb31ComparisonExpressionTypeMatcherD0Ev, ptr @_ZN6duckdb31ComparisonExpressionTypeMatcher5MatchENS_14ExpressionTypeE] }, comdat, align 8
@_ZTIN6duckdb31ComparisonExpressionTypeMatcherE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb31ComparisonExpressionTypeMatcherE, ptr @_ZTIN6duckdb21ExpressionTypeMatcherE }, comdat, align 8
@_ZTSN6duckdb31ComparisonExpressionTypeMatcherE = linkonce_odr constant [43 x i8] c"N6duckdb31ComparisonExpressionTypeMatcherE\00", comdat, align 1
@_ZTIN6duckdb21ExpressionTypeMatcherE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6duckdb21ExpressionTypeMatcherE }, comdat, align 8
@_ZTSN6duckdb21ExpressionTypeMatcherE = linkonce_odr constant [33 x i8] c"N6duckdb21ExpressionTypeMatcherE\00", comdat, align 1
@_ZTVN6duckdb25ExpressionEqualityMatcherE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb25ConstantExpressionMatcherE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb25ConstantExpressionMatcherE, ptr @_ZN6duckdb17ExpressionMatcherD2Ev, ptr @_ZN6duckdb25ConstantExpressionMatcherD0Ev, ptr @_ZN6duckdb17ExpressionMatcher5MatchERNS_10ExpressionERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEE] }, comdat, align 8
@_ZTIN6duckdb25ConstantExpressionMatcherE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb25ConstantExpressionMatcherE, ptr @_ZTIN6duckdb17ExpressionMatcherE }, comdat, align 8
@_ZTSN6duckdb25ConstantExpressionMatcherE = linkonce_odr constant [37 x i8] c"N6duckdb25ConstantExpressionMatcherE\00", comdat, align 1
@_ZTIN6duckdb17ExpressionMatcherE = external constant ptr
@.str.71 = private unnamed_addr constant [61 x i8] c"Failed to cast expression to type - expression type mismatch\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"Invalid type for index\00", align 1
@.str.73 = private unnamed_addr constant [61 x i8] c"Expected unified vector format of type %s, but found type %s\00", align 1
@.str.74 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"invalid node type for Vacuum: %d\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"invalid node type for ART ARTScanner: %d\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"deprecated ART storage in InitializeMerge\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"invalid node type for Free: %d\00", align 1
@.str.79 = private unnamed_addr constant [44 x i8] c"Invalid node type for GetChildInternal: %d.\00", align 1
@.str.80 = private unnamed_addr constant [53 x i8] c"empty child i = %d for byte %d in BaseNode::GetChild\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"empty child for byte %d in Node48::GetChild\00", align 1
@.str.82 = private unnamed_addr constant [48 x i8] c"Invalid node type for GetNextChildInternal: %d.\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"'back' called on an empty vector!\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"invalid node type for VerifyAllocations: %d\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Prefix: |\00", align 1
@switch.table._ZN6duckdb4Node15GetAllocatorIdxENS_5NTypeE = private unnamed_addr constant [10 x i8] [i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 poison, i8 6, i8 7, i8 8], align 1
@switch.table._ZN6duckdb11GetCapacityENS_5NTypeE = private unnamed_addr constant [8 x i16] [i16 4, i16 16, i16 48, i16 256, i16 poison, i16 7, i16 15, i16 256], align 8

@_ZN6duckdb3ARTC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERKNSA_INS_10unique_ptrINS_10ExpressionESt14default_deleteISI_ELb1EEELb1ESaISL_EEERNS_16AttachedDatabaseERKNS_10shared_ptrISt5arrayINSH_INS_18FixedSizeAllocatorESJ_ISU_ELb0EEELm9EELb1EEERKNS_16IndexStorageInfoE = unnamed_addr alias void (ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN6duckdb3ARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_19IndexConstraintTypeERKNS_6vectorImLb1ESaImEEERNS_14TableIOManagerERKNSA_INS_10unique_ptrINS_10ExpressionESt14default_deleteISI_ELb1EEELb1ESaISL_EEERNS_16AttachedDatabaseERKNS_10shared_ptrISt5arrayINSH_INS_18FixedSizeAllocatorESJ_ISU_ELb0EEELm9EELb1EEERKNS_16IndexStorageInfoE
@_ZN6duckdb6ARTKeyC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6duckdb6ARTKeyC2Ev
@_ZN6duckdb6ARTKeyC1EPhm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN6duckdb6ARTKeyC2EPhm
@_ZN6duckdb6ARTKeyC1ERNS_14ArenaAllocatorEm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN6duckdb6ARTKeyC2ERNS_14ArenaAllocatorEm
@_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb = unnamed_addr alias void (ptr, ptr, i64, i1, i1), ptr @_ZN6duckdb6PrefixC2ERKNS_3ARTENS_4NodeEbb
@_ZN6duckdb6PrefixC1ERNS_18FixedSizeAllocatorENS_4NodeEm = unnamed_addr alias void (ptr, ptr, i64, i64), ptr @_ZN6duckdb6PrefixC2ERNS_18FixedSizeAllocatorENS_4NodeEm
@_ZN6duckdb12PrefixHandleC1ERKNS_3ARTENS_4NodeE = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN6duckdb12PrefixHandleC2ERKNS_3ARTENS_4NodeE
@_ZN6duckdb12PrefixHandleC1ERNS_18FixedSizeAllocatorENS_4NodeEh = unnamed_addr alias void (ptr, ptr, i64, i8), ptr @_ZN6duckdb12PrefixHandleC2ERNS_18FixedSizeAllocatorENS_4NodeEh
@_ZN6duckdb12PrefixHandleC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6duckdb12PrefixHandleC2EOS0_
@_ZN6duckdb17ConstPrefixHandleC1ERKNS_3ARTENS_4NodeE = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN6duckdb17ConstPrefixHandleC2ERKNS_3ARTENS_4NodeE

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZN6duckdb10ARTBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::Prefix", align 8    ; 6 uses
  %5 = alloca %"class.duckdb::Prefix", align 8    ; 6 uses
  %6 = alloca %"class.duckdb::vector.3", align 8  ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.thread, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph199, %bb.aw
  %i.y = phi ptr [ %i.i, %.lr.ph199 ], [ %i.ka, %bb.aw ] ; 5 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !54, !noalias !733 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -32 ; 2 uses
  %.sroa.0127.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.y, i64 -24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !58
  %.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %i.y, i64 -16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !58
  %.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %i.y, i64 -8
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !58
  br label %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !59, !noalias !733
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %.sroa.0127.0.copyload151 = load ptr, ptr %i.af, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ae, i64 488
  %.sroa.6.0.copyload153 = load i64, ptr %.sroa.6.0..sroa_idx152, align 8, !tbaa !58
  %.sroa.14.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.ae, i64 496
  %.sroa.14.0.copyload155 = load i64, ptr %.sroa.14.0..sroa_idx154, align 8, !tbaa !58
  %.sroa.18.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.ae, i64 504
  %.sroa.18.0.copyload157 = load i64, ptr %.sroa.18.0..sroa_idx156, align 8, !tbaa !58
  call void @_ZdlPv(ptr noundef %i.z) #29
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 2 uses
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !59
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 3 uses
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 512
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  br label %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.18.0.copyload164 = phi i64 [ %.sroa.18.0.copyload, %bb.c ], [ %.sroa.18.0.copyload157, %bb.d ] ; 6 uses
  %.sroa.14.0.copyload162 = phi i64 [ %.sroa.14.0.copyload, %bb.c ], [ %.sroa.14.0.copyload155, %bb.d ] ; 9 uses
  %.sroa.6.0.copyload160 = phi i64 [ %.sroa.6.0.copyload, %bb.c ], [ %.sroa.6.0.copyload153, %bb.d ] ; 8 uses
  %.sroa.0127.0.copyload158 = phi ptr [ %.sroa.0127.0.copyload, %bb.c ], [ %.sroa.0127.0.copyload151, %bb.d ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.ak, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.g, align 8, !tbaa !64
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !739, !nonnull !68, !align !69
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.6.0.copyload160 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %.not181 = icmp eq i64 %i.ao, %.sroa.18.0.copyload164
  br i1 %.not181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %.sroa.14.0.copyload162
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.18.0182 = phi i64 [ %.sroa.18.0.copyload164, %.lr.ph ], [ %i.az, %bb.f ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.18.0182
  %i.av = load i8, ptr %i.au, align 1, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.18.0182
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !77
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.az = add i64 %.sroa.18.0182, 1               ; 2 uses
  %.not = icmp eq i64 %i.ao, %i.az
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !724

._crit_edge:                                      ; preds = %bb.f, %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef zeroext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(104) %i.ba), !inline_history !0
  %i.bf = add i8 %i.be, -1
  %i.bg = icmp ult i8 %i.bf, 2
  %i.bh = icmp ne i64 %.sroa.14.0.copyload162, %.sroa.6.0.copyload160
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !75
  %i.bj = sub i64 %i.bi, %.sroa.18.0.copyload164
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69 ; 3 uses
  %i.bl = and i64 %i.bj, 255                      ; 2 uses
  %.not15.i = icmp eq i64 %i.bl, 0
  br i1 %.not15.i, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 432 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 400
  br label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, %.lr.ph.i
  %i.bp = phi ptr [ %.sroa.0127.0.copyload158, %.lr.ph.i ], [ %i.cr, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ]
  %.017.i = phi i64 [ %i.bl, %.lr.ph.i ], [ %i.ct, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ] ; 2 uses
  %.01416.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cs, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ] ; 2 uses
  %i.bq = load i8, ptr %i.bm, align 8, !tbaa !149
  %i.br = zext i8 %i.bq to i64
  %i.bs = call noundef i64 @llvm.umin.i64(i64 %i.br, i64 %.017.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !150, !noalias !741 ; 2 uses
  %.not.i87 = icmp eq ptr %i.bu, null
  br i1 %.not.i87, label %.noexc.i101, label %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit, !prof !151

.noexc.i101:                                      ; preds = %bb.h
  %i.bv = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !741 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !741
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.bw, ptr %2, align 8, !tbaa !152, !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !741
  store i64 49, ptr %i.b, align 8, !tbaa !58, !noalias !741
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc102 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc102:                                        ; preds = %.noexc.i101
  store ptr %i.bx, ptr %2, align 8, !tbaa !153, !noalias !741
  %i.by = load i64, ptr %i.b, align 8, !tbaa !58, !noalias !741 ; 3 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !77, !noalias !741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bx, ptr noundef nonnull align 1 dereferenceable(49) @.str.74, i64 49, i1 false), !noalias !741
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !154, !noalias !741
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !77, !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !741
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.j, !noalias !741

bb.i:                                             ; preds = %.noexc102
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.l unwind label %bb.j, !noalias !741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i101
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !741
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.noexc102
  %.0.i.i = phi i1 [ false, %bb.i ], [ true, %.noexc102 ] ; 2 uses
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !153, !noalias !741 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bw
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.cd) #29, !noalias !741
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !741
  br i1 %.0.i.i, label %bb.k, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !741
  br i1 %.0.i.i, label %bb.k, label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bv) #30, !noalias !741
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.k, %_ZNSt6vectorImSaImEED2Ev.exit86
  %common.resume.op = phi { ptr, i32 } [ %.pn56, %_ZNSt6vectorImSaImEED2Ev.exit86 ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.k ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94 ], [ %.pn9.i.i90, %bb.r ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.i
  unreachable

_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit: ; preds = %bb.h
  %i.cf = trunc nuw i64 %i.bs to i8
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !156, !noalias !741
  %i.ch = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cg), !noalias !741
  %i.ci = and i64 %i.ch, 72057594037927935
  %i.cj = or disjoint i64 %i.ci, 72057594037927936 ; 2 uses
  store i64 %i.cj, ptr %i.bp, align 8, !tbaa !157, !noalias !741
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(433) %i.bk, i64 %i.cj, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.ck = load ptr, ptr %5, align 8, !tbaa !159, !alias.scope !741
  %i.cl = load i8, ptr %i.bm, align 8, !tbaa !149, !noalias !741
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  store i8 %i.cf, ptr %i.cn, align 1, !tbaa !77
  %.not.i.i58 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i58, label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit
  %i.co = load ptr, ptr %5, align 8, !tbaa !159, !alias.scope !741
  %i.cp = getelementptr i8, ptr %i.bt, i64 %.01416.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.sroa.18.0.copyload164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull readonly align 1 %i.cq, i64 %i.bs, i1 false)
  br label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i

_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i: ; preds = %bb.m, %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !160, !alias.scope !741 ; 3 uses
  store i64 0, ptr %i.cr, align 8, !tbaa !157
  %i.cs = add i64 %i.bs, %.01416.i
  %i.ct = sub nuw nsw i64 %.017.i, %i.bs          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit, label %bb.h, !llvm.loop !1

_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit: ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i, %bb.g
  %.sroa.0124.0 = phi ptr [ %.sroa.0127.0.copyload158, %bb.g ], [ %i.cr, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i ] ; 4 uses
  %i.cu = icmp eq i64 %.sroa.14.0.copyload162, %.sroa.6.0.copyload160
  br i1 %i.cu, label %bb.n, label %.preheader

.preheader:                                       ; preds = %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit
  %i.cv = add i64 %.sroa.14.0.copyload162, 1
  %i.cw = icmp ult i64 %.sroa.6.0.copyload160, %i.cv
  br i1 %i.cw, label %.lr.ph196, label %._crit_edge197

bb.n:                                             ; preds = %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !742, !nonnull !68, !align !69
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %.sroa.14.0.copyload162
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !76
  %.0.copyload.i.i.i.i = load i64, ptr %i.db, align 1
  %i.dc = and i64 %.0.copyload.i.i.i.i, -8
  %i.dd = xor i64 %i.dc, 135
  %i.de = call i64 @llvm.bswap.i64(i64 %i.dd)
  store i64 %i.de, ptr %.sroa.0124.0, align 8, !tbaa !157
  br label %bb.aw, !llvm.loop !727

._crit_edge197:                                   ; preds = %.lr.ph196, %.preheader
  %i.df = load i64, ptr %.sroa.0124.0, align 8, !tbaa !157
  %i.dg = or i64 %i.df, -9223372036854775808
  store i64 %i.dg, ptr %.sroa.0124.0, align 8, !tbaa !157
  br label %bb.aw, !llvm.loop !727

.lr.ph196:                                        ; preds = %.preheader, %.lr.ph196
  %.037195 = phi i64 [ %i.dn, %.lr.ph196 ], [ %.sroa.6.0.copyload160, %.preheader ] ; 3 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !743, !nonnull !68, !align !69
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !742, !nonnull !68, !align !69
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !72
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %.037195 ; 2 uses
  %i.dm = call noundef zeroext i8 @_ZN6duckdb11ARTOperator6InsertERNS_14ArenaAllocatorERNS_3ARTERNS_4NodeERKNS_6ARTKeyEmS9_NS_10GateStatusENS_15DeleteIndexInfoENS_15IndexAppendModeE(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef nonnull align 8 dereferenceable(433) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0124.0, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 noundef zeroext 1, i64 0, i8 noundef zeroext 0) ; 0 uses
  %i.dn = add i64 %.037195, 1
  %exitcond.not = icmp eq i64 %.037195, %.sroa.14.0.copyload162
  br i1 %exitcond.not, label %._crit_edge197, label %.lr.ph196, !llvm.loop !728

.critedge:                                        ; preds = %bb.e
  %i.do = sub i64 %.sroa.18.0182, %.sroa.18.0.copyload164 ; 2 uses
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69 ; 3 uses
  %.not15.i59 = icmp eq i64 %i.do, 0
  br i1 %.not15.i59, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit67, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.critedge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 432 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 400
  br label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65, %.lr.ph.i60
  %i.ds = phi ptr [ %.sroa.0127.0.copyload158, %.lr.ph.i60 ], [ %i.eu, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65 ]
  %.017.i62 = phi i64 [ %i.do, %.lr.ph.i60 ], [ %i.ew, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65 ] ; 2 uses
  %.01416.i63 = phi i64 [ 0, %.lr.ph.i60 ], [ %i.ev, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65 ] ; 2 uses
  %i.dt = load i8, ptr %i.dq, align 8, !tbaa !149
  %i.du = zext i8 %i.dt to i64
  %i.dv = call noundef i64 @llvm.umin.i64(i64 %i.du, i64 %.017.i62) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dw = load ptr, ptr %i.aq, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !150, !noalias !744 ; 2 uses
  %.not.i88 = icmp eq ptr %i.dx, null
  br i1 %.not.i88, label %.noexc.i105, label %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit95, !prof !151

.noexc.i105:                                      ; preds = %bb.o
  %i.dy = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !744 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !744
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.dz, ptr %1, align 8, !tbaa !152, !noalias !744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !744
  store i64 49, ptr %i.a, align 8, !tbaa !58, !noalias !744
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc106 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89 ; 3 uses

.noexc106:                                        ; preds = %.noexc.i105
  store ptr %i.ea, ptr %1, align 8, !tbaa !153, !noalias !744
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !58, !noalias !744 ; 3 uses
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !77, !noalias !744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ea, ptr noundef nonnull align 1 dereferenceable(49) @.str.74, i64 49, i1 false), !noalias !744
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !154, !noalias !744
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i8 0, ptr %i.ed, align 1, !tbaa !77, !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !744
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.q, !noalias !744

bb.p:                                             ; preds = %.noexc106
  invoke void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.s unwind label %bb.q, !noalias !744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89: ; preds = %.noexc.i105
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !744
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %.noexc106
  %.0.i.i92 = phi i1 [ false, %bb.p ], [ true, %.noexc106 ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eg = load ptr, ptr %1, align 8, !tbaa !153, !noalias !744 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dz
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.eg) #29, !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !744
  br i1 %.0.i.i92, label %bb.r, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !744
  br i1 %.0.i.i92, label %bb.r, label %common.resume

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89
  %.pn9.i.i90 = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i89 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i94 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ]
  call void @__cxa_free_exception(ptr %i.dy) #30, !noalias !744
  br label %common.resume

bb.s:                                             ; preds = %bb.p
  unreachable

_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit95: ; preds = %bb.o
  %i.ei = trunc nuw i64 %i.dv to i8
  %i.ej = load ptr, ptr %i.dx, align 8, !tbaa !156, !noalias !744
  %i.ek = call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ej), !noalias !744
  %i.el = and i64 %i.ek, 72057594037927935
  %i.em = or disjoint i64 %i.el, 72057594037927936 ; 2 uses
  store i64 %i.em, ptr %i.ds, align 8, !tbaa !157, !noalias !744
  call void @_ZN6duckdb6PrefixC1ERKNS_3ARTENS_4NodeEbb(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(433) %i.dp, i64 %i.em, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.en = load ptr, ptr %4, align 8, !tbaa !159, !alias.scope !744
  %i.eo = load i8, ptr %i.dq, align 8, !tbaa !149, !noalias !744
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ep
  store i8 %i.ei, ptr %i.eq, align 1, !tbaa !77
  %.not.i.i64 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i64, label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit95
  %i.er = load ptr, ptr %4, align 8, !tbaa !159, !alias.scope !744
  %i.es = getelementptr i8, ptr %i.dw, i64 %.01416.i63
  %i.et = getelementptr i8, ptr %i.es, i64 %.sroa.18.0.copyload164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr nonnull readonly align 1 %i.et, i64 %i.dv, i1 false)
  br label %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65

_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65: ; preds = %bb.t, %_ZNK6duckdb10shared_ptrISt5arrayINS_10unique_ptrINS_18FixedSizeAllocatorESt14default_deleteIS3_ELb0EEELm9EELb1EEdeEv.exit95
  %i.eu = load ptr, ptr %i.q, align 8, !tbaa !160, !alias.scope !744 ; 3 uses
  store i64 0, ptr %i.eu, align 8, !tbaa !157
  %i.ev = add i64 %i.dv, %.01416.i63
  %i.ew = sub nuw i64 %.017.i62, %i.dv            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not.i66 = icmp eq i64 %i.ew, 0
  br i1 %.not.i66, label %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit67, label %bb.o, !llvm.loop !1

_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit67: ; preds = %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65, %.critedge
  %.sroa.0120.0 = phi ptr [ %.sroa.0127.0.copyload158, %.critedge ], [ %i.eu, %_ZN6duckdb6Prefix11NewInternalERNS_3ARTERNS_4NodeEPhhm.exit.i65 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ex = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %.noexc69 unwind label %bb.w   ; 5 uses

.noexc69:                                         ; preds = %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit67
  store i64 %.sroa.6.0.copyload160, ptr %i.ex, align 8, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 5 uses
  store ptr %i.ex, ptr %6, align 8, !tbaa !161
  store ptr %i.ey, ptr %i.r, align 8, !tbaa !162
  store ptr %i.ey, ptr %i.s, align 8, !tbaa !163
  %storemerge183 = add i64 %.sroa.6.0.copyload160, 1 ; 2 uses
  %.not48184 = icmp ugt i64 %storemerge183, %.sroa.14.0.copyload162
  br i1 %.not48184, label %._crit_edge188, label %.lr.ph187

._crit_edge188:                                   ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79, %.noexc69
  %i.ez = phi ptr [ %i.ex, %.noexc69 ], [ %i.gp, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ]
  %i.fa = phi ptr [ %i.ey, %.noexc69 ], [ %i.gr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ]
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3                 ; 3 uses
  %i.fg = icmp ult i64 %i.ff, 5
  br i1 %i.fg, label %_ZN6duckdb4Node11GetNodeTypeEm.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge188
  %i.fh = icmp ult i64 %i.ff, 17
  br i1 %i.fh, label %_ZN6duckdb4Node11GetNodeTypeEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fi = icmp ult i64 %i.ff, 49
  %..i = select i1 %i.fi, i8 5, i8 6
  br label %_ZN6duckdb4Node11GetNodeTypeEm.exit

_ZN6duckdb4Node11GetNodeTypeEm.exit:              ; preds = %._crit_edge188, %bb.u, %bb.v
  %.0.i = phi i8 [ 4, %bb.u ], [ 3, %._crit_edge188 ], [ %..i, %bb.v ]
  invoke void @_ZN6duckdb4Node3NewERNS_3ARTERS0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.0, i8 noundef zeroext %.0.i)
          to label %bb.ac unwind label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb6Prefix3NewERNS_3ARTERSt17reference_wrapperINS_4NodeEERKNS_6ARTKeyEmm.exit67, %_ZN6duckdb4Node11GetNodeTypeEm.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph187:                                        ; preds = %.noexc69, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79
  %i.fk = phi ptr [ %i.gp, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ], [ %i.ex, %.noexc69 ] ; 5 uses
  %i.fl = phi ptr [ %i.gq, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ], [ %i.ey, %.noexc69 ] ; 4 uses
  %i.fm = phi ptr [ %i.gr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ], [ %i.ey, %.noexc69 ] ; 4 uses
  %storemerge186 = phi i64 [ %storemerge, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ], [ %storemerge183, %.noexc69 ] ; 5 uses
  %storemerge.in185 = phi i64 [ %storemerge186, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79 ], [ %.sroa.6.0.copyload160, %.noexc69 ]
  %i.fn = load ptr, ptr %i.o, align 8, !tbaa !739, !nonnull !68, !align !69
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !72 ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %storemerge.in185
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !76
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.18.0182
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !77
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %storemerge186
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sroa.18.0182
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !77
  %.not55 = icmp eq i8 %i.ft, %i.fy
  br i1 %.not55, label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79, label %bb.x

bb.x:                                             ; preds = %.lr.ph187
  %.not.i70 = icmp eq ptr %i.fm, %i.fl
  br i1 %.not.i70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 %storemerge186, ptr %i.fm, align 8, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  store ptr %i.fz, ptr %i.r, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79

bb.z:                                             ; preds = %bb.x
  %i.ga = ptrtoint ptr %i.fl to i64
  %i.gb = ptrtoint ptr %i.fk to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 5 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.aa, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i71

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.noexc77 unwind label %.loopexit.split-lp169

.noexc77:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i71: ; preds = %bb.z
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i.i72, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i.i73 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i.i73)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #32
          to label %.noexc78 unwind label %.loopexit168 ; 5 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i71
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  store i64 %storemerge186, ptr %i.gl, align 8, !tbaa !58
  %i.gm = icmp sgt i64 %i.gc, 0
  br i1 %i.gm, label %bb.ab, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76

bb.ab:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr align 8 %i.fk, i64 %i.gc, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76: ; preds = %bb.ab, %.noexc78
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %i.fk) #29
  store ptr %i.gk, ptr %6, align 8, !tbaa !161
  store ptr %i.gn, ptr %i.r, align 8, !tbaa !162
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi ; 2 uses
  store ptr %i.go, ptr %i.s, align 8, !tbaa !163
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79

.loopexit168:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i71
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp169:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorImSaImEE12emplace_backIJRmEEEvDpOT_.exit79: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76, %bb.y, %.lr.ph187
  %i.gp = phi ptr [ %i.gk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76 ], [ %i.fk, %bb.y ], [ %i.fk, %.lr.ph187 ] ; 2 uses
  %i.gq = phi ptr [ %i.go, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76 ], [ %i.fl, %bb.y ], [ %i.fl, %.lr.ph187 ]
  %i.gr = phi ptr [ %i.gn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i76 ], [ %i.fz, %bb.y ], [ %i.fm, %.lr.ph187 ] ; 2 uses
  %storemerge = add i64 %storemerge186, 1         ; 2 uses
  %.not48 = icmp ugt i64 %storemerge, %.sroa.14.0.copyload162
  br i1 %.not48, label %._crit_edge188, label %.lr.ph187, !llvm.loop !731

bb.ac:                                            ; preds = %_ZN6duckdb4Node11GetNodeTypeEm.exit
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 0)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gt = load ptr, ptr %i.r, align 8, !tbaa !162
  %i.gu = load ptr, ptr %6, align 8, !tbaa !161   ; 2 uses
  %.not49189 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not49189, label %._crit_edge194, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.ad
  %i.gv = load i64, ptr %i.gs, align 8, !tbaa !58
  %i.gw = add i64 %.sroa.18.0182, 1               ; 2 uses
  br label %bb.ag

._crit_edge194:                                   ; preds = %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit, %bb.ad
  %.lcssa174 = phi ptr [ %i.gu, %bb.ad ], [ %i.jv, %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit ] ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %.lcssa174, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge194
  call void @_ZdlPv(ptr noundef nonnull %.lcssa174) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge194, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.aw

bb.af:                                            ; preds = %bb.ac
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %.lr.ph193, %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit
  %.0191 = phi i64 [ 1, %.lr.ph193 ], [ %i.jx, %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit ] ; 5 uses
  %.0150190 = phi i64 [ %i.gv, %.lr.ph193 ], [ %i.jw, %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit ] ; 3 uses
  %i.gy = load ptr, ptr %i.o, align 8, !tbaa !739, !nonnull !68, !align !69
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !72
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %.0150190
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !76
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.sroa.18.0182
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !77  ; 2 uses
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69
  invoke void @_ZN6duckdb4Node11InsertChildERNS_3ARTERS0_hS0_(ptr noundef nonnull align 8 dereferenceable(433) %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.0, i8 noundef zeroext %i.he, i64 0)
          to label %bb.ah unwind label %bb.au

bb.ah:                                            ; preds = %bb.ag
  %i.hg = load ptr, ptr %i.p, align 8, !tbaa !740, !nonnull !68, !align !69
  %.val.i = load i64, ptr %.sroa.0120.0, align 8, !tbaa !157
  %i.hh = invoke fastcc ptr @_ZN6duckdbL16GetChildInternalIKNS_4NodeEEENS_12optional_ptrIS1_Lb0EEERNS_3ARTERT_hb(ptr noundef nonnull align 8 dereferenceable(433) %i.hg, i64 %.val.i, i8 noundef zeroext %i.he, i1 noundef zeroext true)
          to label %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit unwind label %bb.av ; 2 uses

_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit: ; preds = %bb.ah
  %i.hi = load ptr, ptr %i.r, align 8, !tbaa !162
  %i.hj = load ptr, ptr %6, align 8, !tbaa !161   ; 3 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3                 ; 4 uses
  %.not50 = icmp eq i64 %.0191, %i.hn
  br i1 %.not50, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.0191, ptr %i.d, align 8, !tbaa !58
  store i64 %i.hn, ptr %i.e, align 8, !tbaa !58
  %.not.i.i.i82 = icmp ult i64 %.0191, %i.hn
  br i1 %.not.i.i.i82, label %bb.an, label %.noexc.i, !prof !164

.noexc.i:                                         ; preds = %bb.ai
  %i.ho = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.hp, ptr %3, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 55, ptr %i.c, align 8, !tbaa !58
  %i.hq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc96 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc96:                                         ; preds = %.noexc.i
  store ptr %i.hq, ptr %3, align 8, !tbaa !153
  %i.hr = load i64, ptr %i.c, align 8, !tbaa !58  ; 3 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.hq, ptr noundef nonnull align 1 dereferenceable(55) @.str.60, i64 55, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !154
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc96
  invoke void @__cxa_throw(ptr nonnull %i.ho, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.am unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.noexc96
  %.0.i.i.i = phi i1 [ false, %bb.aj ], [ true, %.noexc96 ] ; 2 uses
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hw = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.hp
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.hw) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.al, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.0.i.i.i, label %bb.al, label %.body

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ho) #30
  br label %.body

bb.am:                                            ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.0191
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !58
  %i.ia = add i64 %i.hz, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit
  %i.ib = phi i64 [ %i.ia, %bb.an ], [ %.sroa.14.0.copyload162, %_ZNK6duckdb4Node15GetChildMutableERNS_3ARTEhb.exit ] ; 3 uses
  %i.ic = load ptr, ptr %i.g, align 8, !tbaa !64  ; 7 uses
  %i.id = load ptr, ptr %i.n, align 8, !tbaa !165
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -32
  %.not.i.i83 = icmp eq ptr %i.ic, %i.ie
  br i1 %.not.i.i83, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.hh, ptr %i.ic, align 8, !tbaa !56
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 %.0150190, ptr %i.if, align 8, !tbaa !167
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store i64 %i.ib, ptr %i.ig, align 8, !tbaa !168
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i64 %i.gw, ptr %i.ih, align 8, !tbaa !169
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  br label %_ZNSt5stackIN6duckdb10ARTBuilder9NodeEntryESt5dequeIS2_SaIS2_EEE7emplaceIJRNS0_4NodeERmSA_mEEEvDpOT_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ij = load ptr, ptr %i.m, align 8, !tbaa !59  ; 2 uses
  %i.ik = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.il = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = ashr exact i64 %i.in, 3
  %i.ip = icmp ne ptr %i.ij, null
  %.neg.i.i.i = sext i1 %i.ip to i64
  %i.iq = add nsw i64 %i.io, %.neg.i.i.i
  %i.ir = shl nsw i64 %i.iq, 4
  %i.is = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.it = ptrtoint ptr %i.ic to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = ashr exact i64 %i.iv, 5
  %i.ix = add nsw i64 %i.ir, %i.iw
  %i.iy = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.iz = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 5
  %i.je = add nsw i64 %i.ix, %i.jd
  %i.jf = icmp eq i64 %i.je, 288230376151711743
  br i1 %i.jf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #31
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.jg = load i64, ptr %i.v, align 8, !tbaa !170
  %i.jh = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = sub i64 %i.il, %i.ji
  %i.jk = ashr exact i64 %i.jj, 3
  %i.jl = sub i64 %i.jg, %i.jk
end_hunk_0
