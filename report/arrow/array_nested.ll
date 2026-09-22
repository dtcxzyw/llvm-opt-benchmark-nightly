Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_nested?download=true
inline.NumInlined: 5209
inline.NumDeleted: 1661
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 84
begin_hunk_0

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN5arrow9ListArrayE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow9ListArrayE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_8ListTypeEED2Ev, ptr @_ZN5arrow9ListArrayD0Ev, ptr @_ZNK5arrow13BaseListArrayINS_8ListTypeEE12value_lengthEl] }, comdat, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/arrow/arrow/cpp/src/arrow/array/array_nested.cc\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c" Check failed: (type->id()) == (Type::LIST) \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Expected list type, got \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Mismatching list value type\00", align 1
@_ZTVN5arrow14LargeListArrayE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow14LargeListArrayE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEED2Ev, ptr @_ZN5arrow14LargeListArrayD0Ev, ptr @_ZNK5arrow13BaseListArrayINS_13LargeListTypeEE12value_lengthEl] }, comdat, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c" Check failed: (type->id()) == (Type::LARGE_LIST) \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Expected large list type, got \00", align 1
@_ZTVN5arrow13ListViewArrayE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow13ListViewArrayE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEED2Ev, ptr @_ZN5arrow13ListViewArrayD0Ev, ptr @_ZNK5arrow17BaseListViewArrayINS_12ListViewTypeEE12value_lengthEl] }, comdat, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Expected list-view type, got \00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Mismatching list-view value type\00", align 1
@_ZTVN5arrow18LargeListViewArrayE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow18LargeListViewArrayE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEED2Ev, ptr @_ZN5arrow18LargeListViewArrayD0Ev, ptr @_ZNK5arrow17BaseListViewArrayINS_17LargeListViewTypeEE12value_lengthEl] }, comdat, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"Expected large list-view type, got \00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Mismatching large list-view value type\00", align 1
@_ZTVN5arrow8MapArrayE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow8MapArrayE, ptr @_ZN5arrow8MapArrayD2Ev, ptr @_ZN5arrow8MapArrayD0Ev, ptr @_ZNK5arrow13BaseListArrayINS_8ListTypeEE12value_lengthEl] }, comdat, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"Map offsets must have non-zero length\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Map offsets must be \00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Map cannot contain NULL valued keys\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Map key and item arrays must be equal length\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"Ambiguous to specify both validity map and offsets with nulls\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Null bitmap with offsets slice not supported.\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Expected map type, got \00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Mismatching map keys type\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Mismatching map items type\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Expected one child array for map array\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Map array child array should have struct type\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Map array child array should have no nulls\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Map array child array should have two fields\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Map array keys array should have no nulls\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c" Check failed: _s.ok() \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Operation failed: \00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"ValidateChildData(data->child_data)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Bad status\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN5arrow18FixedSizeListArrayE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow18FixedSizeListArrayE, ptr @_ZN5arrow18FixedSizeListArrayD2Ev, ptr @_ZN5arrow18FixedSizeListArrayD0Ev] }, comdat, align 8
@.str.31 = private unnamed_addr constant [62 x i8] c" Check failed: (data->type->id()) == (Type::FIXED_SIZE_LIST) \00", align 1
@.str.32 = private unnamed_addr constant [87 x i8] c" Check failed: (list_type()->value_type()->id()) == (data->child_data[0]->type->id()) \00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c" Check failed: (data_->child_data.size()) == (1) \00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"list_size needs to be a strict positive integer\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"The length of the values Array needs to be a multiple of the list_size\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Expected fixed size list type, got \00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"The length of the values Array needs to be a multiple of the list size\00", align 1
@_ZTVN5arrow11StructArrayE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow11StructArrayE, ptr @_ZN5arrow11StructArrayD1Ev, ptr @_ZN5arrow11StructArrayD0Ev] }, align 8
@.str.38 = private unnamed_addr constant [53 x i8] c" Check failed: (data->type->id()) == (Type::STRUCT) \00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c" Check failed: (type->id()) == (Type::STRUCT) \00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"Mismatching number of fields and child arrays\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"Can't infer struct array length with 0 child arrays\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"Mismatching child array lengths\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Offset greater than length of child arrays\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"null_count = \00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c" but no null bitmap given\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"Mismatching number of field names and child arrays\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Field named '\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"' not found or not unique in the struct.\00", align 1
@_ZTVN5arrow10UnionArrayE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow10UnionArrayE, ptr @_ZN5arrow10UnionArrayD1Ev, ptr @_ZN5arrow10UnionArrayD0Ev] }, align 8
@.str.49 = private unnamed_addr constant [47 x i8] c" Check failed: (data_->buffers.size()) >= (2) \00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c" Check failed: (data_->type->id()) == (Type::SPARSE_UNION) \00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c" Check failed: (data_->buffers.size()) == (2) \00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c" Check failed: (data_->buffers[0]) == (nullptr) \00", align 1
@.str.53 = private unnamed_addr constant [59 x i8] c" Check failed: (data_->type->id()) == (Type::DENSE_UNION) \00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c" Check failed: (data_->buffers.size()) == (3) \00", align 1
@_ZTVN5arrow16SparseUnionArrayE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow16SparseUnionArrayE, ptr @_ZN5arrow16SparseUnionArrayD1Ev, ptr @_ZN5arrow16SparseUnionArrayD0Ev] }, align 8
@.str.55 = private unnamed_addr constant [21 x i8] c"Index out of range: \00", align 1
@_ZTVN5arrow15DenseUnionArrayE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow15DenseUnionArrayE, ptr @_ZN5arrow15DenseUnionArrayD1Ev, ptr @_ZN5arrow15DenseUnionArrayD0Ev] }, align 8
@.str.56 = private unnamed_addr constant [40 x i8] c"UnionArray offsets must be signed int32\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"UnionArray type_ids must be signed int8\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"Union type ids may not have nulls\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Make does not allow nulls in value_offsets\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"field_names must have the same length as children\00", align 1
@.str.61 = private unnamed_addr constant [49 x i8] c"type_codes must have the same length as children\00", align 1
@.str.62 = private unnamed_addr constant [73 x i8] c"Sparse UnionArray must have len(child) == len(type_ids) for all children\00", align 1
@_ZTIN5arrow11StructArrayE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow11StructArrayE, ptr @_ZTIN5arrow5ArrayE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow11StructArrayE = constant [22 x i8] c"N5arrow11StructArrayE\00", align 1
@_ZTIN5arrow5ArrayE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5arrow5ArrayE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow5ArrayE = linkonce_odr constant [15 x i8] c"N5arrow5ArrayE\00", comdat, align 1
@_ZTIN5arrow10UnionArrayE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow10UnionArrayE, ptr @_ZTIN5arrow5ArrayE }, align 8
@_ZTSN5arrow10UnionArrayE = constant [21 x i8] c"N5arrow10UnionArrayE\00", align 1
@_ZTIN5arrow16SparseUnionArrayE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow16SparseUnionArrayE, ptr @_ZTIN5arrow10UnionArrayE }, align 8
@_ZTSN5arrow16SparseUnionArrayE = constant [27 x i8] c"N5arrow16SparseUnionArrayE\00", align 1
@_ZTIN5arrow15DenseUnionArrayE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow15DenseUnionArrayE, ptr @_ZTIN5arrow10UnionArrayE }, align 8
@_ZTSN5arrow15DenseUnionArrayE = constant [26 x i8] c"N5arrow15DenseUnionArrayE\00", align 1
@_ZTIN5arrow9ListArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow9ListArrayE, ptr @_ZTIN5arrow13BaseListArrayINS_8ListTypeEEE }, comdat, align 8
@_ZTSN5arrow9ListArrayE = linkonce_odr constant [19 x i8] c"N5arrow9ListArrayE\00", comdat, align 1
@_ZTIN5arrow13BaseListArrayINS_8ListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow13BaseListArrayINS_8ListTypeEEE, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE }, comdat, align 8
@_ZTSN5arrow13BaseListArrayINS_8ListTypeEEE = linkonce_odr constant [39 x i8] c"N5arrow13BaseListArrayINS_8ListTypeEEE\00", comdat, align 1
@_ZTIN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE, ptr @_ZTIN5arrow5ArrayE }, comdat, align 8
@_ZTSN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE = linkonce_odr constant [48 x i8] c"N5arrow22VarLengthListLikeArrayINS_8ListTypeEEE\00", comdat, align 1
@_ZTIN5arrow14LargeListArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow14LargeListArrayE, ptr @_ZTIN5arrow13BaseListArrayINS_13LargeListTypeEEE }, comdat, align 8
@_ZTSN5arrow14LargeListArrayE = linkonce_odr constant [25 x i8] c"N5arrow14LargeListArrayE\00", comdat, align 1
@_ZTIN5arrow13BaseListArrayINS_13LargeListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow13BaseListArrayINS_13LargeListTypeEEE, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE }, comdat, align 8
@_ZTSN5arrow13BaseListArrayINS_13LargeListTypeEEE = linkonce_odr constant [45 x i8] c"N5arrow13BaseListArrayINS_13LargeListTypeEEE\00", comdat, align 1
@_ZTIN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE, ptr @_ZTIN5arrow5ArrayE }, comdat, align 8
@_ZTSN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE = linkonce_odr constant [54 x i8] c"N5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE\00", comdat, align 1
@_ZTIN5arrow13ListViewArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow13ListViewArrayE, ptr @_ZTIN5arrow17BaseListViewArrayINS_12ListViewTypeEEE }, comdat, align 8
@_ZTSN5arrow13ListViewArrayE = linkonce_odr constant [24 x i8] c"N5arrow13ListViewArrayE\00", comdat, align 1
@_ZTIN5arrow17BaseListViewArrayINS_12ListViewTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow17BaseListViewArrayINS_12ListViewTypeEEE, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE }, comdat, align 8
@_ZTSN5arrow17BaseListViewArrayINS_12ListViewTypeEEE = linkonce_odr constant [48 x i8] c"N5arrow17BaseListViewArrayINS_12ListViewTypeEEE\00", comdat, align 1
@_ZTIN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE, ptr @_ZTIN5arrow5ArrayE }, comdat, align 8
@_ZTSN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE = linkonce_odr constant [53 x i8] c"N5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE\00", comdat, align 1
@_ZTIN5arrow18LargeListViewArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow18LargeListViewArrayE, ptr @_ZTIN5arrow17BaseListViewArrayINS_17LargeListViewTypeEEE }, comdat, align 8
@_ZTSN5arrow18LargeListViewArrayE = linkonce_odr constant [29 x i8] c"N5arrow18LargeListViewArrayE\00", comdat, align 1
@_ZTIN5arrow17BaseListViewArrayINS_17LargeListViewTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow17BaseListViewArrayINS_17LargeListViewTypeEEE, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE }, comdat, align 8
@_ZTSN5arrow17BaseListViewArrayINS_17LargeListViewTypeEEE = linkonce_odr constant [53 x i8] c"N5arrow17BaseListViewArrayINS_17LargeListViewTypeEEE\00", comdat, align 1
@_ZTIN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE, ptr @_ZTIN5arrow5ArrayE }, comdat, align 8
@_ZTSN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE = linkonce_odr constant [58 x i8] c"N5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE\00", comdat, align 1
@_ZTIN5arrow8MapArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow8MapArrayE, ptr @_ZTIN5arrow9ListArrayE }, comdat, align 8
@_ZTSN5arrow8MapArrayE = linkonce_odr constant [18 x i8] c"N5arrow8MapArrayE\00", comdat, align 1
@_ZTIN5arrow18FixedSizeListArrayE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow18FixedSizeListArrayE, ptr @_ZTIN5arrow5ArrayE }, comdat, align 8
@_ZTSN5arrow18FixedSizeListArrayE = linkonce_odr constant [29 x i8] c"N5arrow18FixedSizeListArrayE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_8ListTypeEEE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_8ListTypeEED2Ev, ptr @_ZN5arrow22VarLengthListLikeArrayINS_8ListTypeEED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.63 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [82 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEEE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEED2Ev, ptr @_ZN5arrow22VarLengthListLikeArrayINS_13LargeListTypeEED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEEE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEED2Ev, ptr @_ZN5arrow22VarLengthListLikeArrayINS_12ListViewTypeEED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEEE, ptr @_ZN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEED2Ev, ptr @_ZN5arrow22VarLengthListLikeArrayINS_17LargeListViewTypeEED0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.65 = private unnamed_addr constant [6 x i8] c"int32\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTVN5arrow5ArrayE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow5ArrayE, ptr @_ZN5arrow5ArrayD2Ev, ptr @_ZN5arrow5ArrayD0Ev] }, comdat, align 8
@.str.67 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.74 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.75 = private unnamed_addr constant [80 x i8] c" Check failed: (data->buffers.size()) == (is_list_view(TYPE::type_id) ? 3 : 2) \00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c" Check failed: (data->type->id()) == (expected_type_id) \00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c" Check failed: (data->child_data.size()) == (1) \00", align 1
@.str.78 = private unnamed_addr constant [92 x i8] c" Check failed: (self->list_type_->value_type()->id()) == (data->child_data[0]->type->id()) \00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [81 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [78 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow5FieldESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow5FieldE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN5arrow8ListTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@.str.80 = private unnamed_addr constant [39 x i8] c"List offsets must have non-zero length\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"List offsets must be \00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"Last list offset should be non-null\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow6BufferEE = linkonce_odr constant [36 x i8] c"St14default_deleteIN5arrow6BufferEE\00", comdat, align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [106 x i8] c"St19_Sp_counted_deleterIPN5arrow12ArrayBuilderESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow12ArrayBuilderEE = linkonce_odr constant [43 x i8] c"St14default_deleteIN5arrow12ArrayBuilderEE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [85 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow11ListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow11ListBuilderE = linkonce_odr unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN5arrow11ListBuilderE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED2Ev, ptr @_ZN5arrow11ListBuilderD0Ev, ptr @_ZNK5arrow12ArrayBuilder6lengthEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE6ResizeEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE5ResetEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE10AppendNullEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE11AppendNullsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE16AppendEmptyValueEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE16AppendArraySliceERKNS_9ArraySpanEll, ptr @_ZN5arrow15BaseListBuilderINS_8ListTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE, ptr @_ZNK5arrow24VarLengthListLikeBuilderINS_8ListTypeEE4typeEv, ptr @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKiS4_lPKh, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE27UnsafeAppendEmptyDimensionsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE22UnsafeAppendDimensionsEll] }, comdat, align 8
@_ZTIN5arrow11ListBuilderE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow11ListBuilderE, ptr @_ZTIN5arrow15BaseListBuilderINS_8ListTypeEEE }, comdat, align 8
@_ZTSN5arrow11ListBuilderE = linkonce_odr constant [22 x i8] c"N5arrow11ListBuilderE\00", comdat, align 1
@_ZTIN5arrow15BaseListBuilderINS_8ListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow15BaseListBuilderINS_8ListTypeEEE, ptr @_ZTIN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE }, comdat, align 8
@_ZTSN5arrow15BaseListBuilderINS_8ListTypeEEE = linkonce_odr constant [41 x i8] c"N5arrow15BaseListBuilderINS_8ListTypeEEE\00", comdat, align 1
@_ZTIN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE, ptr @_ZTIN5arrow12ArrayBuilderE }, comdat, align 8
@_ZTSN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE = linkonce_odr constant [50 x i8] c"N5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE\00", comdat, align 1
@_ZTIN5arrow12ArrayBuilderE = external constant ptr
@_ZTVN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE = linkonce_odr unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN5arrow24VarLengthListLikeBuilderINS_8ListTypeEEE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED2Ev, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEED0Ev, ptr @_ZNK5arrow12ArrayBuilder6lengthEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE6ResizeEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE5ResetEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE10AppendNullEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE11AppendNullsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE16AppendEmptyValueEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE16AppendArraySliceERKNS_9ArraySpanEll, ptr @__cxa_pure_virtual, ptr @_ZNK5arrow24VarLengthListLikeBuilderINS_8ListTypeEE4typeEv, ptr @__cxa_pure_virtual, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE27UnsafeAppendEmptyDimensionsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE22UnsafeAppendDimensionsEll] }, comdat, align 8
@_ZTVN5arrow12ArrayBuilderE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN5arrow4util8internalL14kNonNullFillerE = internal constant i8 0, align 1
@.str.83 = private unnamed_addr constant [43 x i8] c" array cannot reserve space for more than \00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c" got \00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"Resize capacity must be positive (requested: \00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"Resize cannot downsize (requested: \00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c", current length: \00", align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [109 x i8] c"St19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow15ResizableBufferEE = linkonce_odr constant [46 x i8] c"St14default_deleteIN5arrow15ResizableBufferEE\00", comdat, align 1
@_ZN5arrow8bit_utilL8kBitmaskE = internal unnamed_addr constant [8 x i8] c"\01\02\04\08\10 @\80", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c" array cannot contain more than \00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c" elements, have \00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [82 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow9ListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [87 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow13LargeListTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@.str.92 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [90 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow16LargeListBuilderESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow16LargeListBuilderE = linkonce_odr unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN5arrow16LargeListBuilderE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev, ptr @_ZN5arrow16LargeListBuilderD0Ev, ptr @_ZNK5arrow12ArrayBuilder6lengthEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE6ResizeEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE5ResetEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE10AppendNullEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE11AppendNullsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE16AppendEmptyValueEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE16AppendArraySliceERKNS_9ArraySpanEll, ptr @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEE14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE, ptr @_ZNK5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE4typeEv, ptr @_ZN5arrow15BaseListBuilderINS_13LargeListTypeEE12AppendValuesEPKlS4_lPKh, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE27UnsafeAppendEmptyDimensionsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE22UnsafeAppendDimensionsEll] }, comdat, align 8
@_ZTIN5arrow16LargeListBuilderE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow16LargeListBuilderE, ptr @_ZTIN5arrow15BaseListBuilderINS_13LargeListTypeEEE }, comdat, align 8
@_ZTSN5arrow16LargeListBuilderE = linkonce_odr constant [27 x i8] c"N5arrow16LargeListBuilderE\00", comdat, align 1
@_ZTIN5arrow15BaseListBuilderINS_13LargeListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow15BaseListBuilderINS_13LargeListTypeEEE, ptr @_ZTIN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE }, comdat, align 8
@_ZTSN5arrow15BaseListBuilderINS_13LargeListTypeEEE = linkonce_odr constant [47 x i8] c"N5arrow15BaseListBuilderINS_13LargeListTypeEEE\00", comdat, align 1
@_ZTIN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, ptr @_ZTIN5arrow12ArrayBuilderE }, comdat, align 8
@_ZTSN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE = linkonce_odr constant [56 x i8] c"N5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE\00", comdat, align 1
@_ZTVN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE = linkonce_odr unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEEE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED2Ev, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEED0Ev, ptr @_ZNK5arrow12ArrayBuilder6lengthEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE6ResizeEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE5ResetEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE10AppendNullEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE11AppendNullsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE16AppendEmptyValueEv, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE16AppendArraySliceERKNS_9ArraySpanEll, ptr @__cxa_pure_virtual, ptr @_ZNK5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE4typeEv, ptr @__cxa_pure_virtual, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE27UnsafeAppendEmptyDimensionsEl, ptr @_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE22UnsafeAppendDimensionsEll] }, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [88 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow14LargeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [86 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow12ListViewTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@.str.93 = private unnamed_addr constant [73 x i8] c"List sizes must have the same length as offsets or one less than offsets\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"List sizes must be \00", align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"List offsets and sizes must have the same offset\00", align 1
@.str.96 = private unnamed_addr constant [71 x i8] c"Ambiguous to specify both validity map and offsets or sizes with nulls\00", align 1
@.str.97 = private unnamed_addr constant [73 x i8] c"List offsets and sizes must not be slices if a validity map is specified\00", align 1
@.str.98 = private unnamed_addr constant [55 x i8] c"Ambiguous to specify both offsets and sizes with nulls\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [87 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow13ListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [92 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow18LargeListViewArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [91 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow17LargeListViewTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [81 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow8MapArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [80 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [91 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN5arrow17FixedSizeListTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [92 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow18FixedSizeListArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [85 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow11StructArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [89 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow15DenseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [90 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow16SparseUnionArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1

@_ZN5arrow18TypedChunkLocationIiEC1Eii = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIiEC2Eii
@_ZN5arrow18TypedChunkLocationIsEC1Ess = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationIsEC2Ess
@_ZN5arrow18TypedChunkLocationIaEC1Eaa = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIaEC2Eaa
@_ZN5arrow18TypedChunkLocationIhEC1Ehh = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIhEC2Ehh
@_ZN5arrow18TypedChunkLocationItEC1Ett = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationItEC2Ett
@_ZN5arrow18TypedChunkLocationIjEC1Ejj = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIjEC2Ejj
@_ZN5arrow18TypedChunkLocationIlEC1Ell = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationIlEC2Ell
@_ZN5arrow18TypedChunkLocationImEC1Emm = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationImEC2Emm
@_ZN5arrow9ListArrayC1ESt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow9ListArrayC2ESt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow9ListArrayC1ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES1_INS_5ArrayEES5_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow9ListArrayC2ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES1_INS_5ArrayEES5_ll
@_ZN5arrow14LargeListArrayC1ERKSt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow14LargeListArrayC2ERKSt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow14LargeListArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEES9_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow14LargeListArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEES9_ll
@_ZN5arrow13ListViewArrayC1ESt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow13ListViewArrayC2ESt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow13ListViewArrayC1ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES5_S1_INS_5ArrayEES5_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow13ListViewArrayC2ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES5_S1_INS_5ArrayEES5_ll
@_ZN5arrow18LargeListViewArrayC1ESt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow18LargeListViewArrayC2ESt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow18LargeListViewArrayC1ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES5_S1_INS_5ArrayEES5_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow18LargeListViewArrayC2ESt10shared_ptrINS_8DataTypeEElS1_INS_6BufferEES5_S1_INS_5ArrayEES5_ll
@_ZN5arrow8MapArrayC1ERKSt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow8MapArrayC2ERKSt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow8MapArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEES9_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow8MapArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEES9_ll
@_ZN5arrow8MapArrayC1ERKSt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS8_EERKS1_INS_5ArrayEESE_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow8MapArrayC2ERKSt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS8_EERKS1_INS_5ArrayEESE_ll
@_ZN5arrow8MapArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEESD_S9_ll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, i64), ptr @_ZN5arrow8MapArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_6BufferEERKS1_INS_5ArrayEESD_S9_ll
@_ZN5arrow18FixedSizeListArrayC1ERKSt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow18FixedSizeListArrayC2ERKSt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow18FixedSizeListArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_5ArrayEERKS1_INS_6BufferEEll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, i64, i64), ptr @_ZN5arrow18FixedSizeListArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKS1_INS_5ArrayEERKS1_INS_6BufferEEll
@_ZN5arrow11StructArrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow11StructArrayD2Ev
@_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow11StructArrayC2ERKSt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow11StructArrayC1ERKSt10shared_ptrINS_8DataTypeEElRKSt6vectorIS1_INS_5ArrayEESaIS8_EES1_INS_6BufferEEll = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, i64, i64), ptr @_ZN5arrow11StructArrayC2ERKSt10shared_ptrINS_8DataTypeEElRKSt6vectorIS1_INS_5ArrayEESaIS8_EES1_INS_6BufferEEll
@_ZN5arrow10UnionArrayC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10UnionArrayC2Ev
@_ZN5arrow10UnionArrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10UnionArrayD2Ev
@_ZN5arrow16SparseUnionArrayD2Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10UnionArrayD2Ev
@_ZN5arrow16SparseUnionArrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow16SparseUnionArrayD2Ev
@_ZN5arrow16SparseUnionArrayC1ESt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow16SparseUnionArrayC2ESt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow16SparseUnionArrayC1ESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6BufferEEl = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, i64), ptr @_ZN5arrow16SparseUnionArrayC2ESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6BufferEEl
@_ZN5arrow15DenseUnionArrayD2Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow10UnionArrayD2Ev
@_ZN5arrow15DenseUnionArrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow15DenseUnionArrayD2Ev
@_ZN5arrow15DenseUnionArrayC1ERKSt10shared_ptrINS_9ArrayDataEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5arrow15DenseUnionArrayC2ERKSt10shared_ptrINS_9ArrayDataEE
@_ZN5arrow15DenseUnionArrayC1ESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6BufferEESA_l = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr, i64), ptr @_ZN5arrow15DenseUnionArrayC2ESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_5ArrayEESaIS6_EES1_INS_6BufferEESA_l

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIiEC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIiEC5Eii) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !360
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !48
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !361
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !51
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !53
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !54
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !362
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !56
end_hunk_0
begin_hunk_1_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aw, align 8, !tbaa !120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !121
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !28
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !28
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.o ], [ %i.bj, %bb.p ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.q, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !125

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %.pr = load ptr, ptr %i.at, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bl, align 8, !tbaa !120
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !121
  %i.bq = load ptr, ptr %.pr, align 8, !tbaa !123
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !8
  %i.bt = load ptr, ptr %.pr, align 8, !tbaa !123
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !8
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.u ], [ %i.by, %bb.v ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pre = load ptr, ptr %6, align 16, !tbaa !71
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bx

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i
  %i.cb = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aj, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !160 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !117
  store <2 x ptr> %i.ch, ptr %8, align 16, !tbaa !117
  %.not.i.i.i24 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i.i25 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i25, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !46
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !46
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  %.pre82 = load ptr, ptr %6, align 16, !tbaa !71
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.y, %bb.aa, %bb.ab
  %i.cn = phi ptr [ %i.cb, %bb.y ], [ %i.cb, %bb.aa ], [ %.pre82, %bb.ab ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !146 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !92
  %i.cs = add nsw i64 %i.cr, %i.cp
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.144") align 8 %9, i64 noundef %i.cs, ptr noundef %3)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ct = load ptr, ptr %9, align 8, !tbaa !115
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.af, label %bb.ad, !prof !116

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  br label %bb.bb

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !117, !noalias !1017
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !163, !noalias !1017 ; 5 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !118, !noalias !1017
  store <2 x ptr> %i.cz, ptr %10, align 16, !tbaa !117, !alias.scope !1017
  store ptr null, ptr %i.cw, align 8, !tbaa !163, !noalias !1017
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1018
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i32, ptr %i.a, align 4, !tbaa !46
  %i.df = sext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !299
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !124 ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !297 ; 27 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !92 ; 5 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 9
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !170, !range !137, !noundef !138
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !range !137
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.dr, i1 %i.du, i1 false, !prof !116
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = select i1 %i.dv, ptr %i.dx, ptr null, !prof !116
  %i.dz = sdiv i64 %i.cp, 8
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz ; 4 uses
  %i.eb = srem i64 %i.cp, 8                       ; 3 uses
  %.not.i26 = icmp eq i64 %i.eb, 0
  br i1 %.not.i26, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !124
  %12 = trunc nsw i64 %i.eb to i8
  %notmask.i = shl nsw i8 -1, %12
  %13 = xor i8 %notmask.i, -1
  %i.ed = and i8 %i.ec, %13                       ; 2 uses
  %i.ee = icmp sgt i64 %i.dn, 0
  br i1 %i.ee, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.eb
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !124
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.eh = phi i64 [ 0, %.lr.ph.i ], [ %i.ei, %bb.ai ] ; 2 uses
  %.03549.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %i.ep, %bb.ai ] ; 2 uses
  %.03648.i = phi i8 [ %i.eg, %.lr.ph.i ], [ %i.eo, %bb.ai ] ; 2 uses
  %.04047.i = phi i8 [ %i.ed, %.lr.ph.i ], [ %i.en, %bb.ai ]
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eh
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !124
  %i.el = icmp eq i8 %i.ek, %i.di
  %i.em = select i1 %i.el, i8 %.03648.i, i8 0
  %i.en = or i8 %i.em, %.04047.i                  ; 2 uses
  %i.eo = shl i8 %.03648.i, 1                     ; 2 uses
  %i.ep = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.eq = icmp ne i8 %i.eo, 0
  %i.er = icmp samesign ugt i64 %.03549.i, 1
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %bb.ai, label %._crit_edge.i, !llvm.loop !1002

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0 = phi i64 [ 0, %bb.ah ], [ %i.ei, %bb.ai ]
  %.040.lcssa.i = phi i8 [ %i.ed, %bb.ah ], [ %i.en, %bb.ai ]
  %.035.lcssa.i = phi i64 [ %i.dn, %bb.ah ], [ %i.ep, %bb.ai ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %.040.lcssa.i, ptr %i.ea, align 1, !tbaa !124
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ag
  %.1 = phi i64 [ 0, %bb.ag ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.038.i = phi ptr [ %i.ea, %bb.ag ], [ %i.et, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.dn, %bb.ag ], [ %.035.lcssa.i, %._crit_edge.i ] ; 7 uses
  %i.eu = icmp sgt i64 %.1.i, 7
  br i1 %i.eu, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.aj
  %i.ev = lshr i64 %.1.i, 3                       ; 9 uses
  %min.iters.check = icmp ult i64 %.1.i, 32
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.038.i, i64 %i.ev
  %scevgep115 = getelementptr i8, ptr %i.dk, i64 %.1
  %i.ew = and i64 %.1.i, 9223372036854775800
  %i.ex = getelementptr i8, ptr %i.dk, i64 %.1
  %scevgep116 = getelementptr i8, ptr %i.ex, i64 %i.ew
  %bound0 = icmp ult ptr %.038.i, %scevgep116
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ev, 1152921504606846960     ; 5 uses
  %i.ey = shl nuw nsw i64 %n.vec, 3
  %i.ez = add i64 %.1, %i.ey                      ; 2 uses
  %i.fa = and i64 %i.ev, 15
  %i.fb = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fc = shl nuw i64 %index, 3
  %i.fd = add nuw i64 %.1, %i.fc                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index
  %i.fe = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.ff = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16
  %i.fj = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 24
  %i.fl = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 32
  %i.fn = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 40
  %i.fp = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 56
  %i.ft = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 64
  %i.fv = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 72
  %i.fx = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 80
  %i.fz = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 88
  %i.gb = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 96
  %i.gd = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 104
  %i.gf = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 112
  %i.gh = getelementptr i8, ptr %i.dk, i64 %i.fd  ; 8 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 120
  %i.gj = load i8, ptr %i.fe, align 1, !tbaa !124, !alias.scope !1019
  %i.gk = load i8, ptr %i.fg, align 1, !tbaa !124, !alias.scope !1019
  %i.gl = load i8, ptr %i.fi, align 1, !tbaa !124, !alias.scope !1019
  %i.gm = load i8, ptr %i.fk, align 1, !tbaa !124, !alias.scope !1019
  %i.gn = load i8, ptr %i.fm, align 1, !tbaa !124, !alias.scope !1019
  %i.go = load i8, ptr %i.fo, align 1, !tbaa !124, !alias.scope !1019
  %i.gp = load i8, ptr %i.fq, align 1, !tbaa !124, !alias.scope !1019
  %i.gq = load i8, ptr %i.fs, align 1, !tbaa !124, !alias.scope !1019
  %i.gr = load i8, ptr %i.fu, align 1, !tbaa !124, !alias.scope !1019
  %i.gs = load i8, ptr %i.fw, align 1, !tbaa !124, !alias.scope !1019
  %i.gt = load i8, ptr %i.fy, align 1, !tbaa !124, !alias.scope !1019
  %i.gu = load i8, ptr %i.ga, align 1, !tbaa !124, !alias.scope !1019
  %i.gv = load i8, ptr %i.gc, align 1, !tbaa !124, !alias.scope !1019
  %i.gw = load i8, ptr %i.ge, align 1, !tbaa !124, !alias.scope !1019
  %i.gx = load i8, ptr %i.gg, align 1, !tbaa !124, !alias.scope !1019
  %i.gy = load i8, ptr %i.gi, align 1, !tbaa !124, !alias.scope !1019
  %i.gz = insertelement <16 x i8> poison, i8 %i.gj, i64 0
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 1
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 2
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 3
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 4
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 5
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 6
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 7
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 8
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 9
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 10
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 11
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 12
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 13
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 14
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 15
  %i.hp = icmp eq <16 x i8> %i.ho, %broadcast.splat
  %i.hq = zext <16 x i1> %i.hp to <16 x i8>
  %i.hr = getelementptr i8, ptr %i.fe, i64 1
  %i.hs = getelementptr i8, ptr %i.ff, i64 9
  %i.ht = getelementptr i8, ptr %i.fh, i64 17
  %i.hu = getelementptr i8, ptr %i.fj, i64 25
  %i.hv = getelementptr i8, ptr %i.fl, i64 33
  %i.hw = getelementptr i8, ptr %i.fn, i64 41
  %i.hx = getelementptr i8, ptr %i.fp, i64 49
  %i.hy = getelementptr i8, ptr %i.fr, i64 57
  %i.hz = getelementptr i8, ptr %i.ft, i64 65
  %i.ia = getelementptr i8, ptr %i.fv, i64 73
  %i.ib = getelementptr i8, ptr %i.fx, i64 81
  %i.ic = getelementptr i8, ptr %i.fz, i64 89
  %i.id = getelementptr i8, ptr %i.gb, i64 97
  %i.ie = getelementptr i8, ptr %i.gd, i64 105
  %i.if = getelementptr i8, ptr %i.gf, i64 113
  %i.ig = getelementptr i8, ptr %i.gh, i64 121
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !124, !alias.scope !1019
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !124, !alias.scope !1019
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !124, !alias.scope !1019
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !124, !alias.scope !1019
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !124, !alias.scope !1019
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !124, !alias.scope !1019
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !124, !alias.scope !1019
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !124, !alias.scope !1019
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !124, !alias.scope !1019
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !124, !alias.scope !1019
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !124, !alias.scope !1019
  %i.is = load i8, ptr %i.ic, align 1, !tbaa !124, !alias.scope !1019
  %i.it = load i8, ptr %i.id, align 1, !tbaa !124, !alias.scope !1019
  %i.iu = load i8, ptr %i.ie, align 1, !tbaa !124, !alias.scope !1019
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !124, !alias.scope !1019
  %i.iw = load i8, ptr %i.ig, align 1, !tbaa !124, !alias.scope !1019
  %i.ix = insertelement <16 x i8> poison, i8 %i.ih, i64 0
  %i.iy = insertelement <16 x i8> %i.ix, i8 %i.ii, i64 1
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 2
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 3
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 4
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 5
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 6
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 7
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 8
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 9
  %i.jh = insertelement <16 x i8> %i.jg, i8 %i.ir, i64 10
  %i.ji = insertelement <16 x i8> %i.jh, i8 %i.is, i64 11
  %i.jj = insertelement <16 x i8> %i.ji, i8 %i.it, i64 12
  %i.jk = insertelement <16 x i8> %i.jj, i8 %i.iu, i64 13
  %i.jl = insertelement <16 x i8> %i.jk, i8 %i.iv, i64 14
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 15
  %i.jn = icmp eq <16 x i8> %i.jm, %broadcast.splat
  %i.jo = getelementptr i8, ptr %i.fe, i64 2
  %i.jp = getelementptr i8, ptr %i.ff, i64 10
  %i.jq = getelementptr i8, ptr %i.fh, i64 18
  %i.jr = getelementptr i8, ptr %i.fj, i64 26
  %i.js = getelementptr i8, ptr %i.fl, i64 34
  %i.jt = getelementptr i8, ptr %i.fn, i64 42
  %i.ju = getelementptr i8, ptr %i.fp, i64 50
  %i.jv = getelementptr i8, ptr %i.fr, i64 58
  %i.jw = getelementptr i8, ptr %i.ft, i64 66
  %i.jx = getelementptr i8, ptr %i.fv, i64 74
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5FieldEEEEES2_DpOT_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.88"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 25, ptr %i.b, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow8ListTypeE, i64 16), ptr %0, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !117
  store ptr null, ptr %i.d, align 8, !tbaa !118
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !117
  store ptr null, ptr %1, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !121
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !25
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !25
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !46
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !125

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.327, align 8            ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !226, !noalias !1237 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !123, !noalias !1237
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1237
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !1237, !inline_history !14
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !123, !noalias !1237
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1237
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !14
  %.pr = load ptr, ptr %6, align 8, !tbaa !115    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %4, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !185
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.a, ptr %5, align 8, !tbaa !355
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !356
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !359
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.x = load i64, ptr %i.t, align 8, !tbaa !229
  %i.y = add nsw i64 %i.x, %3
  store i64 %i.y, ptr %i.t, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !231
  %i.ab = add nsw i64 %i.aa, %3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !231
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !230
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !344
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %3, 2                           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !343
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !343
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !343
  store ptr null, ptr %0, align 8, !tbaa !115, !alias.scope !1238
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !124
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !359
  %i.l = load ptr, ptr %3, align 8, !tbaa !1242, !nonnull !138, !align !327
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1243, !nonnull !138, !align !327 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.y, %bb.d ]
  %i.q = load i64, ptr %i.o, align 8, !tbaa !159  ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.o, align 8, !tbaa !159
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !124
  %.not46 = icmp eq i8 %i.t, 0                    ; 2 uses
  %i.u = zext i1 %.not46 to i64
  %i.v = load i64, ptr %i.p, align 8, !tbaa !230
  %i.w = add nsw i64 %i.v, %i.u
  store i64 %i.w, ptr %i.p, align 8, !tbaa !230
  %i.x = select i1 %.not46, i8 0, i8 %.03650
  %i.y = or i8 %i.x, %.04049                      ; 2 uses
  %i.z = shl i8 %.03650, 1                        ; 2 uses
  %i.aa = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ab = icmp ne i8 %i.z, 0
  %i.ac = icmp samesign ugt i64 %.03551, 1
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.d, label %._crit_edge, !llvm.loop !1239

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.f, %bb.c ], [ %i.y, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.aa, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.ae, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.af = icmp sgt i64 %.1, 7
  br i1 %i.af, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ag = lshr i64 %.1, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ag, %.preheader48.lr.ph ], [ %i.cv, %.preheader48 ] ; 2 uses
  %.13954 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.dk, %.preheader48 ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !359
  %i.ak = load ptr, ptr %3, align 8, !tbaa !1242, !nonnull !138, !align !327
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !185 ; 8 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !1243, !nonnull !138, !align !327 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 16 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !159
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !124
  %i.as = icmp ne i8 %i.ar, 0                     ; 2 uses
  %i.at = xor i1 %i.as, true
  %i.au = zext i1 %i.at to i64
  %i.av = load i64, ptr %i.an, align 8, !tbaa !230
  %i.aw = add nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !230
  %i.ax = zext i1 %i.as to i8
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.am, align 8, !tbaa !159
  %i.ba = getelementptr inbounds i8, ptr %i.al, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !124
  %.not69 = icmp eq i8 %i.bb, 0                   ; 2 uses
  %i.bc = zext i1 %.not69 to i64
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !230
  %i.be = add nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.an, align 8, !tbaa !230
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.am, align 8, !tbaa !159
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !124
  %.not70 = icmp eq i8 %i.bi, 0                   ; 2 uses
  %i.bj = zext i1 %.not70 to i64
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !230
  %i.bl = add nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.an, align 8, !tbaa !230
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.am, align 8, !tbaa !159
  %i.bo = getelementptr inbounds i8, ptr %i.al, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !124
  %.not71 = icmp eq i8 %i.bp, 0                   ; 2 uses
  %i.bq = zext i1 %.not71 to i64
  %i.br = load i64, ptr %i.an, align 8, !tbaa !230
  %i.bs = add nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !230
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !159
  %i.bv = getelementptr inbounds i8, ptr %i.al, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !124
  %.not72 = icmp eq i8 %i.bw, 0                   ; 2 uses
  %i.bx = zext i1 %.not72 to i64
  %i.by = load i64, ptr %i.an, align 8, !tbaa !230
  %i.bz = add nsw i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !230
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.am, align 8, !tbaa !159
  %i.cc = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !124
  %.not73 = icmp eq i8 %i.cd, 0                   ; 2 uses
  %i.ce = zext i1 %.not73 to i64
  %i.cf = load i64, ptr %i.an, align 8, !tbaa !230
  %i.cg = add nsw i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.an, align 8, !tbaa !230
  %i.ch = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.am, align 8, !tbaa !159
  %i.cj = getelementptr inbounds i8, ptr %i.al, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !124
  %.not74 = icmp eq i8 %i.ck, 0                   ; 2 uses
  %i.cl = zext i1 %.not74 to i64
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !230
  %i.cn = add nsw i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.an, align 8, !tbaa !230
  %i.co = load i64, ptr %i.am, align 8, !tbaa !159 ; 2 uses
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.am, align 8, !tbaa !159
  %i.cq = getelementptr inbounds i8, ptr %i.al, i64 %i.co
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !124
  %.not75 = icmp eq i8 %i.cr, 0                   ; 2 uses
  %i.cs = zext i1 %.not75 to i64
  %i.ct = load i64, ptr %i.an, align 8, !tbaa !230
  %i.cu = add nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.an, align 8, !tbaa !230
  %i.cv = add nsw i64 %.in, -1
  %i.cw = select i1 %.not69, i8 0, i8 2
  %i.cx = or disjoint i8 %i.cw, %i.ax
  %i.cy = select i1 %.not70, i8 0, i8 4
  %i.cz = or disjoint i8 %i.cx, %i.cy
  %i.da = select i1 %.not71, i8 0, i8 8
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not72, i8 0, i8 16
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not73, i8 0, i8 32
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not74, i8 0, i8 64
  %i.dh = or i8 %i.df, %i.dg
  %i.di = select i1 %.not75, i8 0, i8 -128
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.13954, i64 1 ; 2 uses
  store i8 %i.dj, ptr %.13954, align 1, !tbaa !124
  %i.dl = icmp samesign ugt i64 %.in, 1
  br i1 %i.dl, label %.preheader48, label %._crit_edge55, !llvm.loop !1240

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.dk, %.preheader48 ]
  %i.dm = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.dm, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !359
  %i.dq = load ptr, ptr %3, align 8, !tbaa !1242, !nonnull !138, !align !327
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !185 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1243, !nonnull !138, !align !327 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 6 uses
  %xtraiter = and i64 %i.dm, 1
  %i.dv = icmp eq i64 %i.dm, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.dm, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.ep, %bb.f ] ; 3 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eo, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !159 ; 2 uses
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !159
end_hunk_2
