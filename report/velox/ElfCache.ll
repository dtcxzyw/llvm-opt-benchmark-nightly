inline.NumInlined: 691
inline.NumDeleted: 427
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.folly::reentrant_allocator" = type { %"class.folly::detail::reentrant_allocator_base" }
%"class.folly::detail::reentrant_allocator_base" = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%"struct.std::pair" = type <{ %"class.boost::intrusive::tree_iterator", i8, [7 x i8] }>
%"class.boost::intrusive::tree_iterator" = type { %"struct.boost::intrusive::iiterator_members" }
%"struct.boost::intrusive::iiterator_members" = type { ptr }
%"class.folly::symbolizer::ElfFile::Options" = type { i8 }
%"class.folly::Range" = type { ptr, ptr }
%"class.std::shared_ptr.22" = type { %"class.std::__shared_ptr.23" }
%"class.std::__shared_ptr.23" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.28 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.28 = type { i64, [8 x i8] }
%"class.folly::reentrant_allocator.2" = type { %"class.folly::detail::reentrant_allocator_base" }
%"class.folly::reentrant_allocator_options" = type { i64, i64 }
%"class.folly::reentrant_allocator.5" = type { %"class.folly::detail::reentrant_allocator_base" }
%"class.folly::OptionalEmptyException" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.6 }
%union.anon.6 = type { ptr }
%"class.folly::reentrant_allocator.9" = type { %"class.folly::detail::reentrant_allocator_base" }
%"struct.std::_Hashtable<folly::Range<const char *>, std::pair<const folly::Range<const char *>, std::shared_ptr<folly::symbolizer::ElfCache::Entry>>, std::allocator<std::pair<const folly::Range<const char *>, std::shared_ptr<folly::symbolizer::ElfCache::Entry>>>, std::__detail::_Select1st, std::equal_to<folly::Range<const char *>>, folly::Hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }

$_ZN5folly10symbolizer18SignalSafeElfCacheD2Ev = comdat any

$_ZN5folly10symbolizer18SignalSafeElfCacheD0Ev = comdat any

$_ZN5folly10symbolizer8ElfCacheD2Ev = comdat any

$_ZN5folly10symbolizer8ElfCacheD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS3_EET_SB_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIcN5folly19reentrant_allocatorIcEEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS3_EEOc = comdat any

$_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE7emplaceIJEEERS3_DpOT_ = comdat any

$_ZNSt14_Fwd_list_baseIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19reentrant_allocatorIS3_EEE14_M_erase_afterEPSt19_Fwd_list_node_baseS8_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_22OptionalEmptyExceptionEEEvOT_ = comdat any

$_ZN5folly22OptionalEmptyExceptionC2EOS0_ = comdat any

$_ZN5folly22OptionalEmptyExceptionD0Ev = comdat any

$_ZN5folly10symbolizer18SignalSafeElfCache5EntryC2ENS_5RangeIPKcEENS_19reentrant_allocatorIcEE = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE13insert_uniqueERS6_ = comdat any

$_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_ = comdat any

$_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS6_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EEES5_INSE_14_Node_iteratorISC_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSE_10_Hash_nodeISC_Lb1EEEm = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$_ZTIN5folly10symbolizer12ElfCacheBaseE = comdat any

$_ZTSN5folly10symbolizer12ElfCacheBaseE = comdat any

$_ZTIN5folly22OptionalEmptyExceptionE = comdat any

$_ZTSN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVN5folly22OptionalEmptyExceptionE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZTVN5folly10symbolizer18SignalSafeElfCacheE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10symbolizer18SignalSafeElfCacheE, ptr @_ZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEE, ptr @_ZN5folly10symbolizer18SignalSafeElfCacheD2Ev, ptr @_ZN5folly10symbolizer18SignalSafeElfCacheD0Ev] }, align 8
@_ZTIN5folly10symbolizer18SignalSafeElfCacheE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10symbolizer18SignalSafeElfCacheE, ptr @_ZTIN5folly10symbolizer12ElfCacheBaseE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly10symbolizer18SignalSafeElfCacheE = constant [41 x i8] c"N5folly10symbolizer18SignalSafeElfCacheE\00", align 1
@_ZTIN5folly10symbolizer12ElfCacheBaseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly10symbolizer12ElfCacheBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly10symbolizer12ElfCacheBaseE = linkonce_odr constant [35 x i8] c"N5folly10symbolizer12ElfCacheBaseE\00", comdat, align 1
@_ZTVN5folly10symbolizer8ElfCacheE = unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10symbolizer8ElfCacheE, ptr @_ZN5folly10symbolizer8ElfCache7getFileENS_5RangeIPKcEE, ptr @_ZN5folly10symbolizer8ElfCacheD2Ev, ptr @_ZN5folly10symbolizer8ElfCacheD0Ev] }, align 8
@_ZTIN5folly10symbolizer8ElfCacheE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10symbolizer8ElfCacheE, ptr @_ZTIN5folly10symbolizer12ElfCacheBaseE }, align 8
@_ZTSN5folly10symbolizer8ElfCacheE = constant [30 x i8] c"N5folly10symbolizer8ElfCacheE\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTIN5folly22OptionalEmptyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22OptionalEmptyExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly22OptionalEmptyExceptionE = linkonce_odr constant [33 x i8] c"N5folly22OptionalEmptyExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly22OptionalEmptyExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22OptionalEmptyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly22OptionalEmptyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Empty Optional cannot be unwrapped\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [116 x i8] c"St23_Sp_counted_ptr_inplaceIN5folly10symbolizer7ElfFileENS0_19reentrant_allocatorIcEELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN5folly10symbolizer8ElfCache5EntryESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16 = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 0], align 4

@_ZN5folly10symbolizer18SignalSafeElfCache4PathC1EPKcmRKNS_19reentrant_allocatorIcEE = unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN5folly10symbolizer18SignalSafeElfCache4PathC2EPKcmRKNS_19reentrant_allocatorIcEE

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %2, ptr %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::reentrant_allocator", align 8 ; 5 uses
  %5 = alloca %struct.__sigset_t, align 8         ; 5 uses
  %6 = alloca %struct.__sigset_t, align 8         ; 7 uses
  %7 = alloca %"struct.std::pair", align 8        ; 5 uses
  %8 = alloca %"class.folly::symbolizer::ElfFile::Options", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = call i32 @sigfillset(ptr noundef nonnull %5) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %6) #21 ; 0 uses
  %i.c = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %6) #21 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !11, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEE7emplaceIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit29"

bb.d:                                             ; preds = %bb.b
  %.pre = load i8, ptr %i.e, align 8, !tbaa !11, !range !15
  %i.j = trunc nuw i8 %.pre to i1
  br i1 %i.j, label %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #11
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit: ; preds = %bb.a, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17, !noalias !22 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not5.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit
  %i.m = ptrtoint ptr %3 to i64
  %i.n = ptrtoint ptr %2 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.h ]
  %storemerge26.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %storemerge.i.i.i, %bb.h ] ; 4 uses
  %i.p = getelementptr i8, ptr %storemerge26.i.i.i, i64 40
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !25, !noalias !22 ; 2 uses
  %i.q = getelementptr i8, ptr %storemerge26.i.i.i, i64 48
  %.val3.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !28, !noalias !22
  %i.r = ptrtoint ptr %.val3.i.i.i to i64
  %i.s = ptrtoint ptr %.val.i.i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.v = call i32 @memcmp(ptr noundef %.val.i.i.i, ptr noundef %2, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21, !noalias !22 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.f
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.t, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
  %i.x = sub i64 %i.o, %i.t
  %sh.diff.i.i.i.i.i.i.i = lshr i64 %i.x, 62
  %tr.sh.diff.i.i.i.i.i.i.i = trunc nuw nsw i64 %sh.diff.i.i.i.i.i.i.i to i32
  %i.y = and i32 %tr.sh.diff.i.i.i.i.i.i.i, 2
  %i.z = add nsw i32 %i.y, -1
  br label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i

_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i: ; preds = %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %bb.h, label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i

_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i: ; preds = %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i
  %.sink.i.i.i = phi i64 [ 8, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i ], [ 16, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i ]
  %.1.i.i.i = phi ptr [ %storemerge26.i.i.i, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.thread.i.i.i ], [ %.07.i.i.i, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclERKNS1_5EntryES5_.exit.i.i.i ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge26.i.i.i, i64 %.sink.i.i.i
  %storemerge.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !29, !noalias !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16lower_bound_loopIN5folly5RangeIPKcEENS0_6detail16key_nodeptr_compIZNS7_10symbolizer18SignalSafeElfCache7getFileESB_E3cmpNS0_8bhtraitsINSF_5EntryES4_LNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEENS_11move_detail8identityISI_EEEEEEPNS0_12avltree_nodeIS3_EESS_SS_RKT_T0_.exit.i.i, label %bb.f, !llvm.loop !30

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16lower_bound_loopIN5folly5RangeIPKcEENS0_6detail16key_nodeptr_compIZNS7_10symbolizer18SignalSafeElfCache7getFileESB_E3cmpNS0_8bhtraitsINSF_5EntryES4_LNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEENS_11move_detail8identityISI_EEEEEEPNS0_12avltree_nodeIS3_EESS_SS_RKT_T0_.exit.i.i: ; preds = %bb.h
  %i.ac = icmp eq ptr %.1.i.i.i, %i.k
  br i1 %i.ac, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16lower_bound_loopIN5folly5RangeIPKcEENS0_6detail16key_nodeptr_compIZNS7_10symbolizer18SignalSafeElfCache7getFileESB_E3cmpNS0_8bhtraitsINSF_5EntryES4_LNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEENS_11move_detail8identityISI_EEEEEEPNS0_12avltree_nodeIS3_EESS_SS_RKT_T0_.exit.i.i
  %i.ad = getelementptr i8, ptr %.1.i.i.i, i64 40
  %.val9.i.i = load ptr, ptr %i.ad, align 8, !tbaa !25, !noalias !22 ; 2 uses
  %i.ae = getelementptr i8, ptr %.1.i.i.i, i64 48
  %.val10.i.i = load ptr, ptr %i.ae, align 8, !tbaa !28, !noalias !22
  %i.af = ptrtoint ptr %.val10.i.i to i64
  %i.ag = ptrtoint ptr %.val9.i.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.o) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.aj = call i32 @memcmp(ptr noundef %2, ptr noundef %.val9.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21, !noalias !22 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclES5_RKNS1_5EntryE.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %i.al = sub i64 %i.ah, %i.o
  %sh.diff.i.i.i.i.i.i = lshr i64 %i.al, 62
  %tr.sh.diff.i.i.i.i.i.i = trunc nuw nsw i64 %sh.diff.i.i.i.i.i.i to i32
  %i.am = and i32 %tr.sh.diff.i.i.i.i.i.i, 2
  %i.an = add nsw i32 %i.am, -1
  br label %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclES5_RKNS1_5EntryE.exit.i.i

_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclES5_RKNS1_5EntryE.exit.i.i: ; preds = %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.j ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.fr.i.i = freeze i32 %.0.i.i.i.i.i.i
  %i.ao = icmp slt i32 %.0.i.i.i.i.fr.i.i, 0
  %spec.select.i.i = select i1 %i.ao, ptr %i.k, ptr %.1.i.i.i
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclES5_RKNS1_5EntryE.exit.i.i
  %i.ap = phi ptr [ %.1.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %spec.select.i.i, %_ZZN5folly10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEENK3cmpclES5_RKNS1_5EntryE.exit.i.i ] ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %.thread, label %bb.o

.thread:                                          ; preds = %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit, %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16lower_bound_loopIN5folly5RangeIPKcEENS0_6detail16key_nodeptr_compIZNS7_10symbolizer18SignalSafeElfCache7getFileESB_E3cmpNS0_8bhtraitsINSF_5EntryES4_LNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEENS_11move_detail8identityISI_EEEEEEPNS0_12avltree_nodeIS3_EESS_SS_RKT_T0_.exit.i.i, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = call noundef ptr @_ZN5folly6detail24reentrant_allocator_base8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef 96, i64 noundef 8) #21 ; 4 uses
  store ptr null, ptr %i.at, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5folly6detail24reentrant_allocator_baseC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21
  call void @_ZN5folly10symbolizer18SignalSafeElfCache5EntryC2ENS_5RangeIPKcEENS_19reentrant_allocatorIcEE(ptr noundef nonnull align 8 dereferenceable(81) %i.au, ptr %2, ptr %3, ptr noundef nonnull %4) #21
  call void @_ZN5folly6detail24reentrant_allocator_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !32
  store ptr %i.av, ptr %i.at, align 8, !tbaa !32
  store ptr %i.at, ptr %i.as, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.aw = load i8, ptr %i.e, align 8, !tbaa !11, !range !15, !noundef !16
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit26, label %bb.l

bb.l:                                             ; preds = %.thread
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #11
          to label %.noexc23 unwind label %bb.n

.noexc23:                                         ; preds = %bb.l
  unreachable

_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit26: ; preds = %.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE13insert_uniqueERS6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(81) %i.au)
          to label %_ZN5boost9intrusive12avl_set_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1EvE6insertERS6_.exit unwind label %bb.n

_ZN5boost9intrusive12avl_set_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1EvE6insertERS6_.exit: ; preds = %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit26
  %i.az = load ptr, ptr %7, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit29"

bb.n:                                             ; preds = %_ZN5folly8OptionalINS_10symbolizer18SignalSafeElfCache5StateEEptEv.exit26, %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_10symbolizer18SignalSafeElfCache7getFileENS_5RangeIPKcEEE3$_0Lb1EED2Ev.exit29"

bb.o:                                             ; preds = %bb.k, %_ZN5boost9intrusive12avl_set_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1EvE6insertERS6_.exit
  %.sroa.032.0 = phi ptr [ %i.az, %_ZN5boost9intrusive12avl_set_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1EvE6insertERS6_.exit ], [ %i.ap, %bb.k ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 80 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !38, !range !15, !noundef !16
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.thread53, label %bb.p
end_hunk_0
begin_hunk_1_@_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE13insert_uniqueERS6_:bb.a
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  %scevgep.i.i.i.i.i20.i = getelementptr i8, ptr %i.c, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i19.i
  %.sroa.010.018.i.i.i.i.i22.i = phi ptr [ %i.am, %bb.g ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i.i23.i = phi ptr [ %i.an, %bb.g ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.ai = icmp eq ptr %.sroa.05.017.i.i.i.i.i23.i, %i.e
  br i1 %i.ai, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i21.i
  %i.aj = load i8, ptr %.sroa.010.018.i.i.i.i.i22.i, align 1, !tbaa !60 ; 2 uses
  %i.ak = load i8, ptr %.sroa.05.017.i.i.i.i.i23.i, align 1, !tbaa !60 ; 2 uses
  %i.al = icmp eq i8 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i22.i, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i.i.i23.i, i64 1
  %i.ao = icmp eq ptr %i.am, %i.ad
  br i1 %i.ao, label %._crit_edge.i.i.i.i.i26.i, label %.lr.ph.i.i.i.i.i21.i, !llvm.loop !331

._crit_edge.i.i.i.i.i26.i:                        ; preds = %bb.g, %bb.e
  %.sroa.05.0.lcssa.i.i.i.i.i27.i = phi ptr [ %i.c, %bb.e ], [ %scevgep.i.i.i.i.i20.i, %bb.g ]
  %.not47.i = icmp eq ptr %.sroa.05.0.lcssa.i.i.i.i.i27.i, %i.e
  br i1 %.not47.i, label %.loopexit, label %bb.h

_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i: ; preds = %bb.f
  %i.ap = icmp slt i8 %i.aj, %i.ak
  br i1 %i.ap, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i, %._crit_edge.i.i.i.i.i26.i, %._crit_edge.i
  %i.aq = icmp eq ptr %.013.lcssa.i, %i.a         ; 2 uses
  br i1 %.0.lcssa.i, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.i

_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.i: ; preds = %bb.h
  br i1 %i.aq, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i.thread, label %bb.j

_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i: ; preds = %bb.h
  br i1 %i.aq, label %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i.thread, label %.thread.i

_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i.thread: ; preds = %bb.a, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.i
  %.013.lcssa.i1432 = phi ptr [ %.013.lcssa.i, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i ], [ %.013.lcssa.i, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.i ], [ %i.a, %bb.a ]
  store ptr %2, ptr %i.a, align 8, !tbaa !17, !noalias !332
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %2, ptr %i.ar, align 8, !tbaa !65, !noalias !332
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.as, align 8, !tbaa !64, !noalias !332
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit

.thread.i:                                        ; preds = %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 8
  store ptr %2, ptr %i.at, align 8, !tbaa !64, !noalias !332
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64, !noalias !332
  %i.aw = icmp eq ptr %.013.lcssa.i, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit

bb.i:                                             ; preds = %.thread.i
  store ptr %2, ptr %i.au, align 8, !tbaa !64, !noalias !332
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit

bb.j:                                             ; preds = %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.lcssa.i, i64 16
  store ptr %2, ptr %i.ax, align 8, !tbaa !65, !noalias !332
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65, !noalias !332
  %i.ba = icmp eq ptr %.013.lcssa.i, %i.az
  br i1 %i.ba, label %bb.k, label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.ay, align 8, !tbaa !65, !noalias !332
  br label %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit

_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit: ; preds = %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i.thread, %.thread.i, %bb.i, %bb.j, %bb.k
  %.sroa.57.023 = phi ptr [ %.013.lcssa.i1432, %_ZN5boost9intrusive22bstree_algorithms_baseINS0_19avltree_node_traitsIPvLb0EEEE9next_nodeEPNS0_12avltree_nodeIS3_EE.exit.thread.i.thread ], [ %.013.lcssa.i, %.thread.i ], [ %.013.lcssa.i, %bb.i ], [ %.013.lcssa.i, %bb.j ], [ %.013.lcssa.i, %bb.k ]
  store ptr %.sroa.57.023, ptr %2, align 8, !tbaa !17, !noalias !332
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false), !noalias !332
  tail call void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(81) %2) #21, !noalias !332
  %i.bc = load i64, ptr %1, align 8, !tbaa !316, !noalias !332
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %1, align 8, !tbaa !316, !noalias !332
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i21.i, %._crit_edge.i.i.i.i.i26.i, %_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit
  %.1.i24 = phi i8 [ 1, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit ], [ 0, %_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i ], [ 0, %._crit_edge.i.i.i.i.i26.i ], [ 0, %.lr.ph.i.i.i.i.i21.i ]
  %.sroa.0.0 = phi ptr [ %2, %_ZN5boost9intrusive11bstree_implINS0_8bhtraitsIN5folly10symbolizer18SignalSafeElfCache5EntryENS0_19avltree_node_traitsIPvLb0EEELNS0_14link_mode_typeE1ENS0_7dft_tagELj5EEEvvmLb1ELNS0_10algo_typesE6EvE20insert_unique_commitERS6_RKNS0_20insert_commit_data_tIPNS0_12avltree_nodeIS8_EEEE.exit ], [ %.038.lcssa.i, %_ZNKSt4lessIN5folly10symbolizer18SignalSafeElfCache5EntryEEclERKS3_S6_.exit28.i ], [ %.038.lcssa.i, %._crit_edge.i.i.i.i.i26.i ], [ %.038.lcssa.i, %.lr.ph.i.i.i.i.i21.i ]
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !335
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.1.i24, ptr %i.be, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !315
  %i.b = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not60 = icmp eq ptr %1, %i.b
  br i1 %.not60, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.ai
  %.061 = phi ptr [ %.2, %bb.ai ], [ %1, %bb.a ]  ; 25 uses
  %i.c = load ptr, ptr %.061, align 8, !tbaa !17  ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 8 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !315
  %i.h = icmp eq ptr %.061, %i.e                  ; 3 uses
  switch i32 %i.g, label %bb.ai [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 0, label %bb.s
  ]

bb.b:                                             ; preds = %.lr.ph
  %spec.select = select i1 %i.h, i32 0, i32 2
  store i32 %spec.select, ptr %i.f, align 8, !tbaa !315
  br label %bb.ai

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !315
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.061, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !315  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.061, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65   ; 3 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !64
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.061, ptr %i.o, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i: ; preds = %bb.g, %bb.f
  store ptr %.061, ptr %i.n, align 8, !tbaa !65
  store ptr %i.m, ptr %.061, align 8, !tbaa !17
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !17   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = icmp eq ptr %i.r, %i.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i: ; preds = %bb.h, %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i
  store ptr %i.c, ptr %i.t, align 8, !tbaa !64
  store ptr %i.m, ptr %i.c, align 8, !tbaa !17
  store ptr %i.p, ptr %i.m, align 8, !tbaa !17
  %i.w = icmp eq ptr %i.p, %0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

bb.j:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.m, ptr %i.q, align 8, !tbaa !64
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.m, ptr %i.x, align 8, !tbaa !65
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !315  ; 3 uses
  store i32 1, ptr %i.y, align 8, !tbaa !315
  %i.aa = icmp ult i32 %i.z, 3
  br i1 %i.aa, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i
  %i.ab = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16, i64 %i.ab
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ac = zext nneg i32 %i.z to i64
  %switch.gep111 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17, i64 %i.ac
  %switch.load112 = load i32, ptr %switch.gep111, align 4
  store i32 %switch.load, ptr %i.i, align 8, !tbaa !315
  store i32 %switch.load112, ptr %i.f, align 8, !tbaa !315
  br label %.critedge

bb.m:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = icmp eq ptr %i.af, %i.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.061, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !65
  %.not.i.i.i37 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i37, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i38, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i38

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i38: ; preds = %bb.n, %bb.m
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !64
  store ptr %.061, ptr %i.c, align 8, !tbaa !17
  store ptr %i.ad, ptr %.061, align 8, !tbaa !17
  %i.ak = icmp eq ptr %i.ad, %0
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i38
  store ptr %.061, ptr %0, align 8, !tbaa !17
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE15avl_rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_.exit

bb.p:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i38
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.061, ptr %i.ae, align 8, !tbaa !64
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE15avl_rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_.exit

bb.r:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.061, ptr %i.al, align 8, !tbaa !65
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE15avl_rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_.exit

_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE15avl_rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_.exit: ; preds = %bb.o, %bb.q, %bb.r
  %i.am = icmp eq i32 %i.j, 2                     ; 2 uses
  %spec.select.i = select i1 %i.am, i32 1, i32 2
  %spec.select11.i = zext i1 %i.am to i32
  store i32 %spec.select.i, ptr %i.f, align 8, !tbaa !315
  store i32 %spec.select11.i, ptr %i.i, align 8, !tbaa !315
  br label %.critedge

bb.s:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.h, label %bb.t, label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %.061, i64 24 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !315 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %.061, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64 ; 3 uses
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !65
  %.not.i.i40 = icmp eq ptr %i.au, null
  br i1 %.not.i.i40, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %.061, ptr %i.au, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i: ; preds = %bb.v, %bb.u
  store ptr %.061, ptr %i.at, align 8, !tbaa !64
  store ptr %i.as, ptr %.061, align 8, !tbaa !17
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ay = icmp eq ptr %i.ax, %i.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65 ; 3 uses
  store ptr %i.ba, ptr %i.an, align 8, !tbaa !64
  %.not.i.i.i41 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i41, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i
  store ptr %i.c, ptr %i.ba, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i: ; preds = %bb.w, %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rotate_left_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i
  store ptr %i.c, ptr %i.az, align 8, !tbaa !65
  store ptr %i.as, ptr %i.c, align 8, !tbaa !17
  store ptr %i.av, ptr %i.as, align 8, !tbaa !17
  %i.bb = icmp eq ptr %i.av, %0
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i
  store ptr %i.as, ptr %0, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

bb.y:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !64
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.as, ptr %i.bc, align 8, !tbaa !65
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i: ; preds = %bb.aa, %bb.z, %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !315 ; 3 uses
  store i32 1, ptr %i.bd, align 8, !tbaa !315
  %i.bf = icmp ult i32 %i.be, 3
  br i1 %i.bf, label %switch.lookup113, label %.critedge

switch.lookup113:                                 ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep114 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.16, i64 %i.bg
  %switch.load115 = load i32, ptr %switch.gep114, align 4
  %i.bh = zext nneg i32 %i.be to i64
  %switch.gep116 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE25rebalance_after_insertionEPNS0_12avltree_nodeIS3_EES8_.17, i64 %i.bh
  %switch.load117 = load i32, ptr %switch.gep116, align 4
  store i32 %switch.load115, ptr %i.f, align 8, !tbaa !315
  store i32 %switch.load117, ptr %i.ao, align 8, !tbaa !315
  br label %.critedge

bb.ab:                                            ; preds = %bb.t
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !17  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bl = icmp eq ptr %i.bk, %i.c
  %i.bm = getelementptr inbounds nuw i8, ptr %.061, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !65 ; 3 uses
  store ptr %i.bn, ptr %i.an, align 8, !tbaa !64
  %.not.i.i.i45 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i45, label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i46, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.c, ptr %i.bn, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i46

_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i46: ; preds = %bb.ac, %bb.ab
  store ptr %i.c, ptr %i.bm, align 8, !tbaa !65
  store ptr %.061, ptr %i.c, align 8, !tbaa !17
  store ptr %i.bi, ptr %.061, align 8, !tbaa !17
  %i.bo = icmp eq ptr %i.bi, %0
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i46
  store ptr %.061, ptr %0, align 8, !tbaa !17
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16avl_rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_.exit

bb.ae:                                            ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE26rotate_right_no_parent_fixEPNS0_12avltree_nodeIS3_EES8_.exit.i.i46
  br i1 %i.bl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.061, ptr %i.bj, align 8, !tbaa !64
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16avl_rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %.061, ptr %i.bp, align 8, !tbaa !65
  br label %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16avl_rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_.exit

_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16avl_rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_.exit: ; preds = %bb.ad, %bb.af, %bb.ag
  %i.bq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %spec.select.i48 = zext i1 %i.bq to i32
  %spec.select11.i49 = select i1 %i.bq, i32 1, i32 2
  store i32 %spec.select.i48, ptr %i.f, align 8, !tbaa !315
  store i32 %spec.select11.i49, ptr %i.ao, align 8, !tbaa !315
  br label %.critedge

bb.ah:                                            ; preds = %bb.s
  store i32 1, ptr %i.f, align 8, !tbaa !315
  br label %.critedge

bb.ai:                                            ; preds = %.lr.ph, %bb.b
  %.2 = phi ptr [ %i.c, %bb.b ], [ %.061, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %.2, %i.b
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !338

.critedge:                                        ; preds = %bb.ai, %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE12rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i, %_ZN5boost9intrusive17bstree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE11rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_S8_.exit.i, %bb.a, %switch.lookup113, %switch.lookup, %bb.ah, %bb.d, %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE15avl_rotate_leftEPNS0_12avltree_nodeIS3_EES8_S8_.exit, %_ZN5boost9intrusive18avltree_algorithmsINS0_19avltree_node_traitsIPvLb0EEEE16avl_rotate_rightEPNS0_12avltree_nodeIS3_EES8_S8_.exit
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN5folly10symbolizer8ElfCache7filePtrERKSt10shared_ptrINS1_5EntryEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5folly10symbolizer7ElfFileEEC2INS1_8ElfCache5EntryEEERKS_IT_EPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !7
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !7
  br label %_ZNSt10shared_ptrIN5folly10symbolizer7ElfFileEEC2INS1_8ElfCache5EntryEEERKS_IT_EPS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5folly10symbolizer7ElfFileEEC2INS1_8ElfCache5EntryEEERKS_IT_EPS2_.exit

_ZNSt10shared_ptrIN5folly10symbolizer7ElfFileEEC2INS1_8ElfCache5EntryEEERKS_IT_EPS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly10symbolizer8ElfCache5EntryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !call_target !101, !inline_history !339
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !call_target !133, !inline_history !339
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !340
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.e, align 8, !tbaa !348 ; 3 uses
  %i.f = icmp eq ptr %.sroa.06.017, null
  br i1 %i.f, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq ptr %i.h, %i.i
  %.fr = freeze i1 %i.m
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !92
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %.not.i.i.i.us = icmp eq i64 %i.l, %i.t
  br i1 %.not.i.i.i.us, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us

_ZNKSt8__detail15_Hashtable_baseIN5folly5RangeIPKcEESt4pairIKS5_St10shared_ptrINS1_10symbolizer8ElfCache5EntryEEENS_10_Select1stESt8equal_toIS5_ENS1_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS7_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread11.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !348 ; 2 uses
  %i.u = icmp eq ptr %.sroa.06.0.us, null
  br i1 %i.u, label %_ZNKSt10_HashtableIN5folly5RangeIPKcEESt4pairIKS4_St10shared_ptrINS0_10symbolizer8ElfCache5EntryEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4HashENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS6_m.exit, label %.lr.ph.split.us, !llvm.loop !349

end_hunk_1
