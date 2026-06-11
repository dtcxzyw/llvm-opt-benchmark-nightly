inline.NumInlined: 1121
inline.NumDeleted: 571
begin_hunk_0
%"struct.folly::Indestructible<folly::SharedMutexImpl<false>>::Storage" = type { %"union.std::aligned_storage<4, 4>::type" }
%"union.std::aligned_storage<4, 4>::type" = type { [4 x i8] }
%"class.folly::Indestructible.40" = type { %"struct.folly::Indestructible<std::unordered_map<unsigned long, std::pair<unsigned long, std::unordered_map<long, folly::settings::detail::BoxedValue>>>>::Storage" }
%"struct.folly::Indestructible<std::unordered_map<unsigned long, std::pair<unsigned long, std::unordered_map<long, folly::settings::detail::BoxedValue>>>>::Storage" = type { %"union.std::aligned_storage<56, 8>::type" }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.95", i8 }
%"struct.std::array.95" = type { [15 x i8] }
%"struct.folly::settings::FrozenSettingProjects" = type { %"class.folly::F14FastSet" }
%"class.folly::F14FastSet" = type { %"class.folly::f14::detail::F14VectorSetImpl" }
%"class.folly::f14::detail::F14VectorSetImpl" = type { %"class.folly::f14::detail::F14BasicSet" }
%"class.folly::f14::detail::F14BasicSet" = type { %"class.folly::f14::detail::F14Table" }
%"class.folly::f14::detail::F14Table" = type { %"class.folly::f14::detail::VectorContainerPolicy", ptr, %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin" }
%"class.folly::f14::detail::VectorContainerPolicy" = type { ptr }
%"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin" = type { %"struct.folly::f14::detail::PackedSizeAndChunkShift" }
%"struct.folly::f14::detail::PackedSizeAndChunkShift" = type { i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.folly::SharedMutexImpl<false>::WaitForever" = type { i8 }
%"class.folly::LockedPtr.22" = type { %"class.std::shared_lock" }
%"class.std::shared_lock" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"struct.folly::SharedMutexToken" = type { i16, i16 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.folly::Optional" = type { %"struct.folly::Optional<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>::StorageNonTriviallyDestructible" }
%"struct.folly::Optional<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>::StorageNonTriviallyDestructible" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"struct.std::pair" }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.folly::settings::detail::SnapshotBase::SettingVisitorInfo" = type { ptr, ptr, ptr }
%"struct.fmt::v11::detail::format_arg_store.11" = type { [2 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.10 }
%union.anon.10 = type { i128 }
%"struct.fmt::v11::detail::format_arg_store" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.folly::LockedPtr" = type { %"class.std::unique_lock" }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::allocator" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"class.folly::Optional.20" = type { %"struct.folly::Optional<folly::settings::SettingMetadata>::StorageTriviallyDestructible" }
%"struct.folly::Optional<folly::settings::SettingMetadata>::StorageTriviallyDestructible" = type <{ %union.anon.21, i8, [7 x i8] }>
%union.anon.21 = type { %"struct.folly::settings::SettingMetadata" }
%"struct.folly::settings::SettingMetadata" = type { %"class.std::basic_string_view", %"class.std::basic_string_view", %"class.std::basic_string_view", ptr, %"class.std::basic_string_view", i32, i32, %"class.std::basic_string_view" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<folly::settings::SettingMetadata, std::allocator<folly::settings::SettingMetadata>>::_Vector_impl" }
%"struct.std::_Vector_base<folly::settings::SettingMetadata, std::allocator<folly::settings::SettingMetadata>>::_Vector_impl" = type { %"struct.std::_Vector_base<folly::settings::SettingMetadata, std::allocator<folly::settings::SettingMetadata>>::_Vector_impl_data" }
%"struct.std::_Vector_base<folly::settings::SettingMetadata, std::allocator<folly::settings::SettingMetadata>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.folly::LockedPtr.30" = type { %"class.std::shared_lock" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, folly::settings::detail::SettingCoreBase *>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Hashtable<long, std::pair<const long, folly::settings::detail::BoxedValue>, std::allocator<std::pair<const long, folly::settings::detail::BoxedValue>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node" = type { ptr, ptr }
%"class.std::tuple.86" = type { %"struct.std::_Tuple_impl.87" }
%"struct.std::_Tuple_impl.87" = type { %"struct.std::_Head_base.88" }
%"struct.std::_Head_base.88" = type { ptr }
%"class.std::tuple.74" = type { i8 }
%"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::pair<unsigned long, std::unordered_map<long, folly::settings::detail::BoxedValue>>>, std::allocator<std::pair<const unsigned long, std::pair<unsigned long, std::unordered_map<long, folly::settings::detail::BoxedValue>>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node" = type { ptr, ptr }

$_ZN5folly8settings8SnapshotD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE7emplaceIJS5_SA_EEESD_ISt17_Rb_tree_iteratorISF_EbEDpOT_ = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE1ELNSP_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE22_M_emplace_hint_uniqueIJS5_SC_EEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$_ZN5folly9LockedPtrIKNS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSQ_22SynchronizedMutexLevelE2ELNSQ_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EEaSERKSJ_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE7_M_copyILb0ENSJ_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESO_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE20_Reuse_or_alloc_nodeclIRKSD_EEPSt13_Rb_tree_nodeISD_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE17_M_construct_nodeIJRKSD_EEEvPSt13_Rb_tree_nodeISD_EDpOT_ = comdat any

$_ZNSt10_HashtableIlSt4pairIKlN5folly8settings6detail10BoxedValueEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm = comdat any

$_ZNSt10_HashtableIlSt4pairIKlN5folly8settings6detail10BoxedValueEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableIlSt4pairIKlN5folly8settings6detail10BoxedValueEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ImSt13unordered_mapIlN5folly8settings6detail10BoxedValueESt4hashIlESt8equal_toIlESaIS0_IKlS6_EEEEESaISG_ENSt8__detail10_Select1stES9_ImES7_ImENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRmEESW_IJEEEEES0_INSI_14_Node_iteratorISG_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ImSt13unordered_mapIlN5folly8settings6detail10BoxedValueESt4hashIlESt8equal_toIlESaIS0_IKlS6_EEEEESaISG_ENSt8__detail10_Select1stES9_ImES7_ImENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSI_10_Hash_nodeISG_Lb0EEEm = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ImSt13unordered_mapIlN5folly8settings6detail10BoxedValueESt4hashIlESt8equal_toIlESaIS0_IKlS6_EEEEESaISG_ENSt8__detail10_Select1stES9_ImES7_ImENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ImSt13unordered_mapIlN5folly8settings6detail10BoxedValueESt4hashIlESt8equal_toIlESaIS0_IKlS6_EEEEESaISG_ENSt8__detail10_Select1stES9_ImES7_ImENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIlSt4pairIKlN5folly8settings6detail10BoxedValueEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev = comdat any

$_ZNSt10_HashtableImSt4pairIKmS0_ImSt13unordered_mapIlN5folly8settings6detail10BoxedValueESt4hashIlESt8equal_toIlESaIS0_IKlS6_EEEEESaISG_ENSt8__detail10_Select1stES9_ImES7_ImENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv = comdat any

$_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

@_ZTVN5folly8settings6detail12SnapshotBaseE = unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN5folly8settings6detail12SnapshotBaseE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5folly8settings6detail12SnapshotBaseD1Ev, ptr @_ZN5folly8settings6detail12SnapshotBaseD0Ev] }, align 8
@_ZTIN5folly8settings6detail12SnapshotBaseE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly8settings6detail12SnapshotBaseE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly8settings6detail12SnapshotBaseE = constant [39 x i8] c"N5folly8settings6detail12SnapshotBaseE\00", align 1
@_ZTVN5folly8settings8SnapshotE = unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN5folly8settings8SnapshotE, ptr @_ZN5folly8settings8Snapshot7publishEv, ptr @_ZN5folly8settings8Snapshot13setFromStringESt17basic_string_viewIcSt11char_traitsIcEES5_S5_, ptr @_ZN5folly8settings8Snapshot18forceSetFromStringESt17basic_string_viewIcSt11char_traitsIcEES5_S5_, ptr @_ZNK5folly8settings8Snapshot11getAsStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZN5folly8settings8Snapshot14resetToDefaultESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZN5folly8settings8Snapshot19forceResetToDefaultESt17basic_string_viewIcSt11char_traitsIcEE, ptr @_ZNK5folly8settings8Snapshot14forEachSettingENS_11FunctionRefIFvRKNS0_6detail12SnapshotBase18SettingVisitorInfoEEEE, ptr @_ZN5folly8settings6detail12SnapshotBaseD2Ev, ptr @_ZN5folly8settings8SnapshotD0Ev] }, align 8
@_ZTIN5folly8settings8SnapshotE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly8settings8SnapshotE, ptr @_ZTIN5folly8settings6detail12SnapshotBaseE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly8settings8SnapshotE = constant [27 x i8] c"N5folly8settings8SnapshotE\00", align 1
@_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 = internal global %"class.folly::Indestructible" zeroinitializer, align 8
@_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 = internal global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"Setting project must be nonempty and cannot contain underscores: {}\00", align 1
@_ZTISt11logic_error = external constant ptr
@.str.1 = private unnamed_addr constant [6 x i8] c"{}_{}\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FOLLY_SETTING already exists: \00", align 1
@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.12"], align 64
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.23" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN5folly8settings6detail15gGlobalVersion_E = global { i64 } zeroinitializer, align 8
@_ZZN5folly8settings6detail19getSavedValuesMutexEvE17gSavedValuesMutex = internal global %"class.folly::Indestructible.38" zeroinitializer, align 4
@_ZGVZN5folly8settings6detail19getSavedValuesMutexEvE17gSavedValuesMutex = internal global i64 0, align 8
@_ZZN5folly8settings6detail14getSavedValuesEvE12gSavedValues = internal global %"class.folly::Indestructible.40" zeroinitializer, align 8
@_ZGVZN5folly8settings6detail14getSavedValuesEvE12gSavedValues = internal global i64 0, align 8
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.95" zeroinitializer, i8 -1 }, comdat, align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly8settings6detail12SnapshotBaseD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly8settings6detail12SnapshotBaseD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5folly8settings6detail12SnapshotBaseD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(72) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings8Snapshot7publishEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::settings::FrozenSettingProjects", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN5folly8settings21frozenSettingProjectsEv(ptr dead_on_unwind nonnull writable sret(%"struct.folly::settings::FrozenSettingProjects") align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.05.08 = load ptr, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.b = icmp eq ptr %.sroa.05.08, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.f = load i8, ptr %i.e, align 1, !tbaa !23
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 3 uses
  %i.j = lshr i64 %i.i, 8                         ; 2 uses
  %i.k = and i64 %i.i, 255
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.l, align 1
  %i.m = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.n = xor i64 %notmask.i.i, -1
  %i.o = lshr i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.w, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %2 = load ptr, ptr %1, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.05.i.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !32
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #28
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.05.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !33

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !26
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.b
  %i.x = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.z = and i64 %i.x, 255                        ; 2 uses
  store i64 %i.z, ptr %i.h, align 8, !tbaa !26
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.c, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.aa = phi i64 [ %i.x, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ac, align 1
  %i.ad = zext i16 %.0.copyload.i.i to i64
  %i.ae = icmp eq i64 %i.aa, 0
  %i.af = shl nuw nsw i64 %i.ad, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.af
  %.neg18.i = shl i64 -64, %i.aa
  %.0.i.neg.i = select i1 %i.ae, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !15
  store i64 0, ptr %i.h, align 8, !tbaa !26
  %i.ag = and i64 %.0.i.neg.i, -8
  %i.ah = shl nuw nsw i64 %i.m, 5
  %i.ai = mul i64 %i.ah, %i.p
  %i.aj = sub i64 %i.ai, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #15
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %._crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit
  %.sroa.05.09 = phi ptr [ %.sroa.05.0, %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit ], [ %.sroa.05.08, %bb.a ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 16
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit unwind label %bb.e, !inline_history !42

_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit: ; preds = %.lr.ph, %bb.d
  %.sroa.05.0 = load ptr, ptr %.sroa.05.09, align 8, !tbaa !11 ; 2 uses
  %i.an = icmp eq ptr %.sroa.05.0, null
  br i1 %i.an, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN5folly8settings8Snapshot13setFromStringESt17basic_string_viewIcSt11char_traitsIcEES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %7 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #15
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %7, align 8, !tbaa !53, !alias.scope !50
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !50
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !50
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !50 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !50
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !50 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !50
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !50
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !50
  %i.q = load ptr, ptr %7, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #29
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #29
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %.noexc13 unwind label %bb.r   ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %8, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc13, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc13 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n
end_hunk_0
