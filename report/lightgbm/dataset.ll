Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset?download=true
inline.NumInlined: 6241
inline.NumDeleted: 2000
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0
$_ZN8LightGBM10PushOffsetIiEEvPSt6vectorIT_SaIS2_EERKS4_RKS2_ = comdat any

$_ZN8LightGBM12FeatureGroup15AddFeaturesFromEPKS0_i = comdat any

$_ZN8LightGBM10PushVectorISt6vectorIdSaIdEEEEvPS1_IT_SaIS4_EERKS6_ = comdat any

$_ZN8LightGBM16PushClearIfEmptyIiEEvPSt6vectorIT_SaIS2_EEmRKS4_mRKS2_ = comdat any

$_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRKS5_EEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_ = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRS5_EEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRS7_EEEPS8_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

$_ZZN8LightGBM3Log8GetLevelEvE5level = comdat any

$_ZZN8LightGBM3Log14GetLogCallBackEvE8callback = comdat any

@.str = private unnamed_addr constant [34 x i8] c"Dataset::TestMultiThreadingMethod\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Cannot set both of `force_col_wise` and `force_row_wise` to `true` at the same time\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"init for col-wise cost %f seconds, init for row-wise cost %f seconds\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"Auto-choosing col-wise multi-threading, the overhead of testing was %f seconds.\0AYou can set `force_col_wise=true` to remove the overhead.\00", align 1
@.str.4 = private unnamed_addr constant [202 x i8] c"Auto-choosing row-wise multi-threading, the overhead of testing was %f seconds.\0AYou can set `force_row_wise=true` to remove the overhead.\0AAnd if memory is not enough, you can set `force_col_wise=true`.\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Using Sparse Multi-Val Bin\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Using Dense Multi-Val Bin\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"[LightGBM] [Fatal] %s\0A\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.9 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"[LightGBM] [%s] \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@_ZZN8LightGBM3Log8GetLevelEvE5level = linkonce_odr thread_local local_unnamed_addr global i32 1, comdat, align 4
@_ZZN8LightGBM3Log14GetLogCallBackEvE8callback = linkonce_odr thread_local local_unnamed_addr global ptr null, comdat, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Dataset::dense_bin_histogram\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@_ZTISt9exception = external constant ptr
@.str.16 = private unnamed_addr constant [37 x i8] c"Dataset::ConstructHistogramsMultiVal\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Dataset::sparse_bin_histogram\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Dataset::sparse_bin_histogram_merge\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Dataset::sparse_bin_histogram_move\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@_ZN8LightGBM7Dataset33kSerializedReferenceVersionLengthE = local_unnamed_addr constant i32 2, align 4
@_ZN8LightGBM7Dataset28serialized_reference_versionE = local_unnamed_addr global ptr @.str.28, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@_ZN8LightGBM7Dataset17binary_file_tokenE = local_unnamed_addr global ptr @.str.29, align 8
@.str.29 = private unnamed_addr constant [40 x i8] c"______LightGBM_Binary_File_Token______\0A\00", align 1
@_ZN8LightGBM7Dataset33binary_serialized_reference_tokenE = local_unnamed_addr global ptr @.str.30, align 8
@.str.30 = private unnamed_addr constant [46 x i8] c"______LightGBM_Binary_Serialized_Token______\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"Check failed: (num_data) > (0) at %s, line %d .\0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/lightgbm/LightGBM/src/io/dataset.cpp\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"unordered_map::at\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Dataset::FastFeatureBundling\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.38 = private unnamed_addr constant [97 x i8] c"Check failed: (num_total_features_) == (static_cast<int>(bin_mappers->size())) at %s, line %d .\0A\00", align 1
@.str.39 = private unnamed_addr constant [197 x i8] c"There are no meaningful features which satisfy the provided configuration. Decreasing Dataset parameters min_data_in_bin or min_data_in_leaf and re-constructing Dataset might resolve this warning.\00", align 1
@_ZN8LightGBM12LGBM_config_14current_deviceE = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [60 x i8] c"Using sparse features with CUDA is currently not supported.\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.43 = private unnamed_addr constant [116 x i8] c"Check failed: (static_cast<size_t>(num_total_features_)) == (io_config.max_bin_by_feature.size()) at %s, line %d .\0A\00", align 1
@.str.44 = private unnamed_addr constant [134 x i8] c"Check failed: (*(std::min_element(io_config.max_bin_by_feature.begin(), io_config.max_bin_by_feature.end()))) > (1) at %s, line %d .\0A\00", align 1
@.str.45 = private unnamed_addr constant [89 x i8] c"Check failed: (static_cast<int>(bin_mappers->size())) == (num_feature) at %s, line %d .\0A\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"/opt-bench/work/lightgbm/LightGBM/include/LightGBM/feature_group.h\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Dataset::PushDataToMultiValBin\00", align 1
@"_ZTIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_0" = internal constant [161 x i8] c"ZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_0\00", align 1
@"_ZTIZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_1" }, align 8
@"_ZTSZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_1" = internal constant [161 x i8] c"ZN8LightGBM21PushDataToMultiValBinEiSt6vectorIjSaIjEES2_PS0_IS0_ISt10unique_ptrINS_11BinIteratorESt14default_deleteIS4_EESaIS7_EESaIS9_EEPNS_11MultiValBinEE3$_1\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Dataset::GetMultiBinFromSparseFeatures\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"Bug. There should be only one multi-val group.\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"Dataset::GetMultiBinFromSparseFeatures: sparse rate %f\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"Dataset::GetMultiBinFromAllFeatures\00", align 1
@.str.52 = private unnamed_addr constant [80 x i8] c"Check failed: static_cast<int>(most_freq_bins.size()) == ncol at %s, line %d .\0A\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"Dataset::GetMultiBinFromAllFeatures: sparse rate %f\00", align 1
@.str.54 = private unnamed_addr constant [79 x i8] c"Check failed: (static_cast<int>(bin_mappers->size())) == (1) at %s, line %d .\0A\00", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"Check failed: (num_used_indices) == (num_data_) at %s, line %d .\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"weights\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"init_score\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.67 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"Binary file %s already exists\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"File %s exists, cannot save binary to it\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"Cannot write binary data to %s \00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"Saving data to binary file %s\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"Saving data reference to binary buffer\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"num_features: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"num_total_features: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"num_groups: %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"num_data: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"feature_names: \00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"\0Amax_bin_by_feature: \00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"\0Aforced_bins: \00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"\0Afeature %d: \00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%lf, \00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"NA, \00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"Dataset::InitTrain\00", align 1
@.str.89 = private unnamed_addr constant [71 x i8] c"Cannot add features from other Dataset with a different number of rows\00", align 1
@.str.90 = private unnamed_addr constant [75 x i8] c"Can only add features from other Dataset if both or neither have raw data.\00", align 1
@.str.91 = private unnamed_addr constant [90 x i8] c"Check failed: num_groups_ == static_cast<int>(features_in_group.size()) at %s, line %d .\0A\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.94 = private unnamed_addr constant [85 x i8] c"Find the same feature name (%s) in Dataset::AddFeaturesFrom, change its name to (%s)\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"Check failed: is_multi_val_ at %s, line %d .\0A\00", align 1
@.str.96 = private unnamed_addr constant [53 x i8] c"Check failed: other->is_multi_val_ at %s, line %d .\0A\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.98 = private unnamed_addr constant [47 x i8] c"Check failed: !is_multi_val_ at %s, line %d .\0A\00", align 1
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN8LightGBM7DatasetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN8LightGBM7DatasetC2Ev
@_ZN8LightGBM7DatasetC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN8LightGBM7DatasetC2Ei
@_ZN8LightGBM7DatasetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN8LightGBM7DatasetD2Ev

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK8LightGBM7Dataset14GetShareStatesILb0ELi0EEEPNS_19TrainingShareStatesEPfS4_RKSt6vectorIaSaIaEEbbbi(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %12 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %13 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %14 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %15 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %16 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %i.e = zext i1 %4 to i8                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 33, ptr %i.d, align 8, !tbaa !45
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !47
  %i.h = load i64, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.g, ptr noundef nonnull align 1 dereferenceable(33) @.str, i64 33, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.k = load ptr, ptr %10, align 8, !tbaa !47    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.m = load i64, ptr %i.f, align 8, !tbaa !48
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 7 uses
  store i32 0, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  store i8 1, ptr %i.s, align 4, !tbaa !115
  store i8 %i.e, ptr %i.t, align 1, !tbaa !116
  br label %bb.bm

bb.d:                                             ; preds = %bb.b
  br i1 %5, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i8 1, ptr %i.y, align 4, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 5 ; 2 uses
  store i8 1, ptr %i.z, align 1, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull %11, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.y, align 4, !tbaa !115
  store i8 %i.e, ptr %i.z, align 1, !tbaa !116
  %i.ah = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bm

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIjSaIjEED2Ev.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit75

_ZNSt6vectorIjSaIjEED2Ev.exit75:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bn

bb.l:                                             ; preds = %bb.d
  br i1 %6, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.au = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.au, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i8 1, ptr %i.av, align 4, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 5 ; 2 uses
  store i8 1, ptr %i.aw, align 1, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ay, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull %12, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bb = invoke noundef ptr @_ZNK8LightGBM7Dataset26GetMultiBinFromAllFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.av, align 4, !tbaa !115
  store i8 %i.e, ptr %i.aw, align 1, !tbaa !116
  %i.be = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIjSaIjEED2Ev.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit77

_ZNSt6vectorIjSaIjEED2Ev.exit77:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bm

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIjSaIjEED2Ev.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit79

_ZNSt6vectorIjSaIjEED2Ev.exit79:                  ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bn

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr null, ptr %14, align 8, !tbaa !122
  %i.br = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i8 1, ptr %i.bs, align 4, !tbaa !115
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 5 ; 3 uses
  store i8 1, ptr %i.bt, align 1, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bu, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, i8 0, i64 36, i1 false)
  store ptr %i.br, ptr %13, align 8, !tbaa !123
  %i.bx = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87 unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87: ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit
  store i32 0, ptr %i.bx, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  store i8 1, ptr %i.by, align 4, !tbaa !115
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 5 ; 3 uses
  store i8 1, ptr %i.bz, align 1, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cb, i8 0, i64 36, i1 false)
  store ptr %i.bx, ptr %14, align 8, !tbaa !123
  %i.cd = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull %15, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87
  %i.cf = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef %i.cf, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.ci = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.cj = sub nsw i64 %i.ci, %i.cd
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fdiv double %i.ck, 1.000000e+06         ; 2 uses
  %i.cm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb0ELi0EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.eq, ptr %11, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 36, ptr %i.b, align 8, !tbaa !45
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc55 unwind label %bb.z   ; 3 uses

.noexc55:                                         ; preds = %bb.w
  store ptr %i.er, ptr %11, align 8, !tbaa !47
  %i.es = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.er, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ev = load ptr, ptr %11, align 8, !tbaa !47   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.eq
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %.noexc55
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !48
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52: ; preds = %.noexc55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !126 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i53, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fa, ptr noundef %i.ef, i32 noundef %i.eg, ptr noundef %i.eh, ptr noundef %i.ei, ptr noundef nonnull %i.fb, ptr noundef %i.ep)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

bb.y:                                             ; preds = %.noexc.i45
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ad

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.ff = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fh = zext nneg i32 %.030.lcssa to i64
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !210
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !45
  %.idx = shl i64 %i.fk, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fm, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 36, ptr %i.a, align 8, !tbaa !45
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %bb.z   ; 3 uses

.noexc61:                                         ; preds = %bb.aa
  store ptr %i.fn, ptr %10, align 8, !tbaa !47
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fn, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  store i8 0, ptr %i.fq, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fr = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fm
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %.noexc61
  %i.ft = load i64, ptr %i.fm, align 8, !tbaa !48
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %.noexc61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !126 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i59, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb0ELb0ELi0EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fw, ptr noundef %i.ef, i32 noundef %i.eg, ptr noundef %4, ptr noundef %i.fe, ptr noundef nonnull %i.fx, ptr noundef %i.fl)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.fy = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit
  %i.fz = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gc) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb0ELi0EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.y, %.body
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.z ], [ %i.fc, %bb.y ], [ %i.dp, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.dr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn36 = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %lpad.loopexit.split-lp112, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gd = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIiSaIiEED2Ev.exit66, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !201
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit66

_ZNSt6vectorIiSaIiEED2Ev.exit66:                  ; preds = %.loopexit.split-lp, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK8LightGBM7Dataset14GetShareStatesILb1ELi16EEEPNS_19TrainingShareStatesEPfS4_RKSt6vectorIaSaIaEEbbbi(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %12 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %13 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %14 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %15 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %16 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %i.e = zext i1 %4 to i8                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 33, ptr %i.d, align 8, !tbaa !45
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !47
  %i.h = load i64, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.g, ptr noundef nonnull align 1 dereferenceable(33) @.str, i64 33, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.k = load ptr, ptr %10, align 8, !tbaa !47    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.m = load i64, ptr %i.f, align 8, !tbaa !48
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 7 uses
  store i32 0, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  store i8 1, ptr %i.s, align 4, !tbaa !115
  store i8 %i.e, ptr %i.t, align 1, !tbaa !116
  br label %bb.bm

bb.d:                                             ; preds = %bb.b
  br i1 %5, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i8 1, ptr %i.y, align 4, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 5 ; 2 uses
  store i8 1, ptr %i.z, align 1, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull %11, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.y, align 4, !tbaa !115
  store i8 %i.e, ptr %i.z, align 1, !tbaa !116
  %i.ah = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bm

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIjSaIjEED2Ev.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit75

_ZNSt6vectorIjSaIjEED2Ev.exit75:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bn

bb.l:                                             ; preds = %bb.d
  br i1 %6, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.au = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.au, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i8 1, ptr %i.av, align 4, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 5 ; 2 uses
  store i8 1, ptr %i.aw, align 1, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ay, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull %12, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bb = invoke noundef ptr @_ZNK8LightGBM7Dataset26GetMultiBinFromAllFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.av, align 4, !tbaa !115
  store i8 %i.e, ptr %i.aw, align 1, !tbaa !116
  %i.be = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIjSaIjEED2Ev.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit77

_ZNSt6vectorIjSaIjEED2Ev.exit77:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bm

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIjSaIjEED2Ev.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit79

_ZNSt6vectorIjSaIjEED2Ev.exit79:                  ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bn

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr null, ptr %14, align 8, !tbaa !122
  %i.br = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i8 1, ptr %i.bs, align 4, !tbaa !115
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 5 ; 3 uses
  store i8 1, ptr %i.bt, align 1, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bu, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, i8 0, i64 36, i1 false)
  store ptr %i.br, ptr %13, align 8, !tbaa !123
  %i.bx = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87 unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87: ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit
  store i32 0, ptr %i.bx, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  store i8 1, ptr %i.by, align 4, !tbaa !115
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 5 ; 3 uses
  store i8 1, ptr %i.bz, align 1, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cb, i8 0, i64 36, i1 false)
  store ptr %i.bx, ptr %14, align 8, !tbaa !123
  %i.cd = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull %15, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87
  %i.cf = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef %i.cf, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.ci = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.cj = sub nsw i64 %i.ci, %i.cd
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fdiv double %i.ck, 1.000000e+06         ; 2 uses
  %i.cm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM7Dataset24ConstructHistogramsInnerILb0ELb1ELb1ELi16EEEvRKSt6vectorIaSaIaEEPKiiPKfSA_PfSB_PNS_19TrainingShareStatesEPd:bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.eq, ptr %11, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 36, ptr %i.b, align 8, !tbaa !45
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc59 unwind label %bb.z   ; 3 uses

.noexc59:                                         ; preds = %bb.w
  store ptr %i.er, ptr %11, align 8, !tbaa !47
  %i.es = load i64, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.er, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ev = load ptr, ptr %11, align 8, !tbaa !47   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.eq
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %.noexc59
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !48
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56: ; preds = %.noexc59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !126 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i57, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fa, ptr noundef %i.eg, i32 noundef %i.eh, ptr noundef %i.ei, ptr noundef %i.ej, ptr noundef nonnull %i.fb, ptr noundef %i.ep)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

bb.y:                                             ; preds = %.noexc.i49
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ad

bb.z:                                             ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.v
  %i.fe = load ptr, ptr %i.h, align 8, !tbaa !203
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fg = zext nneg i32 %.0.lcssa to i64
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !210
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !45
  %.idx = shl i64 %i.fj, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.fl, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 36, ptr %i.a, align 8, !tbaa !45
  %i.fm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc65 unwind label %bb.z   ; 3 uses

.noexc65:                                         ; preds = %bb.aa
  store ptr %i.fm, ptr %10, align 8, !tbaa !47
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fm, ptr noundef nonnull align 1 dereferenceable(36) @.str.16, i64 36, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fq = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.fl
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %.noexc65
  %i.fs = load i64, ptr %i.fl, align 8, !tbaa !48
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62: ; preds = %.noexc65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !126 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i63, label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 64
  invoke void @_ZN8LightGBM18MultiValBinWrapper19ConstructHistogramsILb0ELb0ELb1ELi16EEEvPKiiPKfS5_PSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPd(ptr noundef nonnull align 8 dereferenceable(192) %i.fv, ptr noundef %i.eg, i32 noundef %i.eh, ptr noundef %4, ptr noundef %i.fe, ptr noundef nonnull %i.fw, ptr noundef %i.fk)
          to label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit unwind label %bb.z

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i56, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.fx = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit
  %i.fy = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb1ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit

_ZNK8LightGBM7Dataset27ConstructHistogramsMultiValILb0ELb0ELb1ELi16EEEvPKiiPKfS5_PNS_19TrainingShareStatesEPd.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.z, %bb.y, %.body
  %.pn = phi { ptr, i32 } [ %i.fd, %bb.z ], [ %i.fc, %bb.y ], [ %i.dp, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.dr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn40 = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.gc = load ptr, ptr %14, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIiSaIiEED2Ev.exit70, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !201
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

_ZNSt6vectorIiSaIiEED2Ev.exit70:                  ; preds = %.loopexit.split-lp, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  resume { ptr, i32 } %.pn40
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK8LightGBM7Dataset14GetShareStatesILb1ELi32EEEPNS_19TrainingShareStatesEPfS4_RKSt6vectorIaSaIaEEbbbi(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %12 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %13 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %14 = alloca %"class.std::unique_ptr.55", align 8 ; 6 uses
  %15 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %16 = alloca %"class.std::vector.38", align 8   ; 10 uses
  %i.e = zext i1 %4 to i8                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 33, ptr %i.d, align 8, !tbaa !45
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.g, ptr %10, align 8, !tbaa !47
  %i.h = load i64, ptr %i.d, align 8, !tbaa !45   ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.g, ptr noundef nonnull align 1 dereferenceable(33) @.str, i64 33, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.j, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.k = load ptr, ptr %10, align 8, !tbaa !47    ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.m = load i64, ptr %i.f, align 8, !tbaa !48
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = load i32, ptr %i.o, align 8, !tbaa !95
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 7 uses
  store i32 0, ptr %i.r, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.v, i8 0, i64 36, i1 false)
  store i8 1, ptr %i.s, align 4, !tbaa !115
  store i8 %i.e, ptr %i.t, align 1, !tbaa !116
  br label %bb.bm

bb.d:                                             ; preds = %bb.b
  br i1 %5, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.x = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.x, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store i8 1, ptr %i.y, align 4, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 5 ; 2 uses
  store i8 1, ptr %i.z, align 1, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull %11, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.y, align 4, !tbaa !115
  store i8 %i.e, ptr %i.z, align 1, !tbaa !116
  %i.ah = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !119
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bm

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIjSaIjEED2Ev.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !119
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit75

_ZNSt6vectorIjSaIjEED2Ev.exit75:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bn

bb.l:                                             ; preds = %bb.d
  br i1 %6, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.au = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37 ; 9 uses
  store i32 0, ptr %i.au, align 8, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i8 1, ptr %i.av, align 4, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 5 ; 2 uses
  store i8 1, ptr %i.aw, align 1, !tbaa !116
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store double 0.000000e+00, ptr %i.az, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ay, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull %12, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bb = invoke noundef ptr @_ZNK8LightGBM7Dataset26GetMultiBinFromAllFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.av, align 4, !tbaa !115
  store i8 %i.e, ptr %i.aw, align 1, !tbaa !116
  %i.be = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIjSaIjEED2Ev.exit77, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !119
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit77

_ZNSt6vectorIjSaIjEED2Ev.exit77:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bm

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %12, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIjSaIjEED2Ev.exit79, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #36
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit79

_ZNSt6vectorIjSaIjEED2Ev.exit79:                  ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.bn

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr null, ptr %14, align 8, !tbaa !122
  %i.br = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store i8 1, ptr %i.bs, align 4, !tbaa !115
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 5 ; 3 uses
  store i8 1, ptr %i.bt, align 1, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bu, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, i8 0, i64 36, i1 false)
  store ptr %i.br, ptr %13, align 8, !tbaa !123
  %i.bx = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37
          to label %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87 unwind label %bb.ao ; 16 uses

_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87: ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit
  store i32 0, ptr %i.bx, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  store i8 1, ptr %i.by, align 4, !tbaa !115
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 5 ; 3 uses
  store i8 1, ptr %i.bz, align 1, !tbaa !116
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ca, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cb, i8 0, i64 36, i1 false)
  store ptr %i.bx, ptr %14, align 8, !tbaa !123
  %i.cd = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  invoke void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull %15, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE5resetEPS1_.exit87
  %i.cf = invoke noundef ptr @_ZNK8LightGBM7Dataset29GetMultiBinFromSparseFeaturesERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !117
  invoke void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef %i.cf, i32 noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %7)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.ci = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
  %i.cj = sub nsw i64 %i.ci, %i.cd
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fdiv double %i.ck, 1.000000e+06         ; 2 uses
  %i.cm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
end_hunk_2
