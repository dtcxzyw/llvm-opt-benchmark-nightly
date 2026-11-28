Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/option_change_migration?download=true
inline.NumInlined: 1368
inline.NumDeleted: 735
begin_hunk_0
%"struct.std::_Vector_base<std::shared_ptr<rocksdb::EventListener>, std::allocator<std::shared_ptr<rocksdb::EventListener>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<rocksdb::EventListener>, std::allocator<std::shared_ptr<rocksdb::EventListener>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<rocksdb::EventListener>, std::allocator<std::shared_ptr<rocksdb::EventListener>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.27" = type { %"class.std::__shared_ptr.28" }
%"class.std::__shared_ptr.28" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.30" = type { %"class.std::__shared_ptr.31" }
%"class.std::__shared_ptr.31" = type { ptr, %"class.std::__shared_count" }
%"class.rocksdb::SmallEnumSet" = type { %"struct.std::array" }
%"struct.std::array" = type { [1 x i64] }
%"class.std::shared_ptr.33" = type { %"class.std::__shared_ptr.34" }
%"class.std::__shared_ptr.34" = type { ptr, %"class.std::__shared_count" }
%"class.rocksdb::SmallEnumSet.36" = type { %"struct.std::array" }
%"struct.rocksdb::ColumnFamilyOptions" = type { %"struct.rocksdb::AdvancedColumnFamilyOptions.base", ptr, %"class.std::shared_ptr.79", ptr, %"class.std::shared_ptr.82", i64, i8, i8, [6 x i8], %"struct.rocksdb::CompressionOptions", %"struct.rocksdb::CompressionOptions", %"class.std::shared_ptr.85", i32, %"class.std::shared_ptr.50", i64, i8, %"class.std::shared_ptr.88", %"class.std::vector.11", %"class.std::shared_ptr.91", %"class.std::shared_ptr.94", i32, i32 }
%"struct.rocksdb::AdvancedColumnFamilyOptions.base" = type <{ i32, i32, i64, i8, [7 x i8], i64, double, ptr, double, i8, [7 x i8], i64, %"class.std::shared_ptr.50", i32, [4 x i8], i64, %"class.std::vector.53", i32, i32, i32, [4 x i8], i64, i32, i8, i8, [2 x i8], double, %"class.std::vector.58", i64, i64, i64, i8, i8, [2 x i8], %"class.rocksdb::CompactionOptionsUniversal", [4 x i8], %"struct.rocksdb::CompactionOptionsFIFO", i64, %"class.std::shared_ptr.68", %"class.std::vector.71", i64, i8, i8, i8, i8, i32, i8, i8, i8, [5 x i8], i64, i64, double, i64, i8, i8, i8, [5 x i8], i64, i64, i8, [7 x i8], i64, i64, i8, [7 x i8], %"struct.rocksdb::CompressionOptions", i8, [7 x i8], double, double, i64, i32, [4 x i8], %"class.std::shared_ptr.27", i8, i8, [2 x i8], i32, %"class.std::shared_ptr.76", i32, i8, i8, [2 x i8], i32, i8, i8, [2 x i8], i32, i32, i32, i8, i8 }>
%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<rocksdb::CompressionType, std::allocator<rocksdb::CompressionType>>::_Vector_impl" }
%"struct.std::_Vector_base<rocksdb::CompressionType, std::allocator<rocksdb::CompressionType>>::_Vector_impl" = type { %"struct.std::_Vector_base<rocksdb::CompressionType, std::allocator<rocksdb::CompressionType>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rocksdb::CompressionType, std::allocator<rocksdb::CompressionType>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.58" = type { %"struct.std::_Vector_base.59" }
%"struct.std::_Vector_base.59" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.rocksdb::CompactionOptionsUniversal" = type <{ i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }>
%"struct.rocksdb::CompactionOptionsFIFO" = type <{ i64, i8, [7 x i8], i64, %"class.std::vector.63", i8, [7 x i8], i64, i64, i8, [7 x i8] }>
%"class.std::vector.63" = type { %"struct.std::_Vector_base.64" }
%"struct.std::_Vector_base.64" = type { %"struct.std::_Vector_base<rocksdb::FileTemperatureAge, std::allocator<rocksdb::FileTemperatureAge>>::_Vector_impl" }
%"struct.std::_Vector_base<rocksdb::FileTemperatureAge, std::allocator<rocksdb::FileTemperatureAge>>::_Vector_impl" = type { %"struct.std::_Vector_base<rocksdb::FileTemperatureAge, std::allocator<rocksdb::FileTemperatureAge>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rocksdb::FileTemperatureAge, std::allocator<rocksdb::FileTemperatureAge>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.68" = type { %"class.std::__shared_ptr.69" }
%"class.std::__shared_ptr.69" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.71" = type { %"struct.std::_Vector_base.72" }
%"struct.std::_Vector_base.72" = type { %"struct.std::_Vector_base<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>, std::allocator<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>, std::allocator<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>, std::allocator<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>, std::allocator<std::shared_ptr<rocksdb::TablePropertiesCollectorFactory>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.76" = type { %"class.std::__shared_ptr.77" }
%"class.std::__shared_ptr.77" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.79" = type { %"class.std::__shared_ptr.80" }
%"class.std::__shared_ptr.80" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.82" = type { %"class.std::__shared_ptr.83" }
%"class.std::__shared_ptr.83" = type { ptr, %"class.std::__shared_count" }
%"struct.rocksdb::CompressionOptions" = type <{ i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i8, [3 x i8], i32, i8, [7 x i8] }>
%"class.std::shared_ptr.85" = type { %"class.std::__shared_ptr.86" }
%"class.std::__shared_ptr.86" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.50" = type { %"class.std::__shared_ptr.51" }
%"class.std::__shared_ptr.51" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.88" = type { %"class.std::__shared_ptr.89" }
%"class.std::__shared_ptr.89" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.91" = type { %"class.std::__shared_ptr.92" }
%"class.std::__shared_ptr.92" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.94" = type { %"class.std::__shared_ptr.95" }
%"class.std::__shared_ptr.95" = type { ptr, %"class.std::__shared_count" }
%"struct.rocksdb::(anonymous namespace)::BaseOptionsResult" = type <{ %"struct.rocksdb::ColumnFamilyOptions", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<rocksdb::ColumnFamilyDescriptor, std::allocator<rocksdb::ColumnFamilyDescriptor>>::_Vector_impl" }
%"struct.std::_Vector_base<rocksdb::ColumnFamilyDescriptor, std::allocator<rocksdb::ColumnFamilyDescriptor>>::_Vector_impl" = type { %"struct.std::_Vector_base<rocksdb::ColumnFamilyDescriptor, std::allocator<rocksdb::ColumnFamilyDescriptor>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rocksdb::ColumnFamilyDescriptor, std::allocator<rocksdb::ColumnFamilyDescriptor>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.37" = type { %"struct.std::__uniq_ptr_data.38" }
%"struct.std::__uniq_ptr_data.38" = type { %"class.std::__uniq_ptr_impl.39" }
%"class.std::__uniq_ptr_impl.39" = type { %"class.std::tuple.40" }
%"class.std::tuple.40" = type { %"struct.std::_Tuple_impl.41" }
%"struct.std::_Tuple_impl.41" = type { %"struct.std::_Head_base.44" }
%"struct.std::_Head_base.44" = type { ptr }
%"class.std::vector.45" = type { %"struct.std::_Vector_base.46" }
%"struct.std::_Vector_base.46" = type { %"struct.std::_Vector_base<rocksdb::ColumnFamilyHandle *, std::allocator<rocksdb::ColumnFamilyHandle *>>::_Vector_impl" }
%"struct.std::_Vector_base<rocksdb::ColumnFamilyHandle *, std::allocator<rocksdb::ColumnFamilyHandle *>>::_Vector_impl" = type { %"struct.std::_Vector_base<rocksdb::ColumnFamilyHandle *, std::allocator<rocksdb::ColumnFamilyHandle *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<rocksdb::ColumnFamilyHandle *, std::allocator<rocksdb::ColumnFamilyHandle *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.rocksdb::DBOptions" = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8], ptr, %"class.std::shared_ptr", %"class.std::shared_ptr.2", %"class.std::shared_ptr.5", i8, [3 x i8], i32, i32, i32, i8, [7 x i8], i64, %"class.std::shared_ptr.8", i8, [7 x i8], %"class.std::vector.11", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i64, i32, i32, i32, i32, i64, i64, i64, i64, i8, [7 x i8], i64, i8, i8, i8, i8, i32, i32, [4 x i8], i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, [7 x i8], i64, i8, [7 x i8], i64, %"class.std::shared_ptr.19", i64, i64, i8, [7 x i8], i64, i64, i8, [7 x i8], %"class.std::vector.22", i8, [7 x i8], i64, i8, i8, i8, i8, [4 x i8], i64, i64, i64, i8, i8, i8, [5 x i8], %"class.std::shared_ptr.27", ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i64, %"class.std::shared_ptr.30", i8, [3 x i8], i32, i64, i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.rocksdb::SmallEnumSet", %"class.std::shared_ptr.33", i8, i8, [6 x i8], %"class.std::__cxx11::basic_string", i64, i64, i64, i64, i8, i8, [6 x i8], %"class.rocksdb::SmallEnumSet.36", i8, [7 x i8] }>
%"struct.rocksdb::ColumnFamilyDescriptor" = type { %"class.std::__cxx11::basic_string", %"struct.rocksdb::ColumnFamilyOptions" }

$_ZN7rocksdb6StatusaSERKS0_ = comdat any

$_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EED2Ev = comdat any

$_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE = comdat any

$_ZN7rocksdb22ColumnFamilyDescriptorD2Ev = comdat any

$_ZN7rocksdb19ColumnFamilyOptionsD2Ev = comdat any

$_ZN7rocksdb9DBOptionsD2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_ = comdat any

$_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_ = comdat any

$_ZN7rocksdb27AdvancedColumnFamilyOptionsaSERKS0_ = comdat any

$_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIN7rocksdb15CompressionTypeESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIN7rocksdb18FileTemperatureAgeESaIS1_EEaSERKS3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN7rocksdb6DbPathESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZSt8_DestroyIPN7rocksdb6DbPathEEvT_S3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZSt16__do_uninit_copyIPN7rocksdb6DbPathES2_ET0_T_S4_S3_ = comdat any

$_ZN7rocksdb27AdvancedColumnFamilyOptionsC2ERKS0_ = comdat any

$_ZNSt12__shared_ptrIN7rocksdb12TableFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN7rocksdb14SliceTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN7rocksdb27AdvancedColumnFamilyOptionsD2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb18MemTableRepFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN7rocksdb9DBOptionsC2ERKS0_ = comdat any

$_ZNSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb18WriteBufferManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorIN7rocksdb6DbPathESaIS1_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb10StatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb14SstFileManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN7rocksdb19ColumnFamilyOptionsC2EOS0_ = comdat any

$_ZSt8_DestroyIPN7rocksdb22ColumnFamilyDescriptorEEvT_S3_ = comdat any

$_ZN7rocksdb20ColumnFamilyMetaDataD2Ev = comdat any

$_ZNSt6vectorIN7rocksdb12BlobMetaDataESaIS1_EED2Ev = comdat any

$_ZN7rocksdb15SstFileMetaDataD2Ev = comdat any

$_ZSt16__do_uninit_copyIPKN7rocksdb22ColumnFamilyDescriptorEPS1_ET0_T_S6_S5_ = comdat any

@_ZN7rocksdb24kDefaultColumnFamilyNameB5cxx11E = external global %"class.std::__cxx11::basic_string", align 8
@.str = private unnamed_addr constant [81 x i8] c"old_cf_descs and new_cf_descs must have the same number of column families. Got \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" old CFs and \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c" new CFs. Adding or dropping CFs is not supported.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Column family mismatch at index \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"old has '\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"', \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"new has '\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"'. CF names and order must match exactly.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Do not know how to migrate to this compaction style\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb21OptionChangeMigrationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaISC_EESA_SG_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(753) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %8 = alloca %"struct.rocksdb::CompactRangeOptions", align 8 ; 12 uses
  %9 = alloca %"struct.rocksdb::CompactRangeOptions", align 8 ; 12 uses
  %10 = alloca %"struct.rocksdb::CompactRangeOptions", align 8 ; 12 uses
  %11 = alloca %"struct.rocksdb::CompactRangeOptions", align 8 ; 12 uses
  %12 = alloca %"struct.rocksdb::ColumnFamilyMetaData", align 8 ; 13 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"struct.rocksdb::Options", align 8 ; 12 uses
  %16 = alloca %"struct.rocksdb::Options", align 8 ; 13 uses
  %17 = alloca %"struct.rocksdb::(anonymous namespace)::BaseOptionsResult", align 8 ; 14 uses
  %18 = alloca %"struct.rocksdb::ColumnFamilyOptions", align 8 ; 9 uses
  %19 = alloca %"struct.rocksdb::Options", align 8 ; 9 uses
  %20 = alloca %"struct.rocksdb::Options", align 8 ; 13 uses
  %21 = alloca %"struct.rocksdb::ColumnFamilyOptions", align 8 ; 8 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %29 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %40 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %41 = alloca %"class.rocksdb::Status", align 8  ; 39 uses
  %42 = alloca %"class.std::vector", align 8      ; 14 uses
  %43 = alloca %"class.std::unique_ptr.37", align 8 ; 17 uses
  %44 = alloca %"class.std::vector.45", align 8   ; 21 uses
  %45 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %46 = alloca %"class.rocksdb::Status", align 8  ; 22 uses
  %47 = alloca %"class.rocksdb::Status", align 8  ; 17 uses
  %48 = alloca %"class.rocksdb::Status", align 8  ; 15 uses
  %49 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %50 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %51 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !273 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !24, !noalias !273 ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 1008                ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23, !noalias !273
  %i.j = load ptr, ptr %5, align 8, !tbaa !24, !noalias !273 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %.not.i = icmp eq i64 %i.f, %i.m
  br i1 %.not.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not294.i = icmp eq ptr %i.b, %i.c
  br i1 %.not294.i, label %.thread218, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18, !noalias !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.n = icmp ult i64 %i.g, 10
  br i1 %i.n, label %.thread.i.i, label %.lr.ph.i.i.i

.thread.i.i:                                      ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.o, ptr %27, align 8, !tbaa !27, !alias.scope !274, !noalias !273
  br label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.h
  %.029.i.i.i = phi i32 [ %i.w, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.v, %bb.h ], [ %i.g, %bb.b ] ; 5 uses
  %i.p = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.q = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.r = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = udiv i64 %.02328.i.i.i, 10000
  %i.w = add i32 %.029.i.i.i, 4                   ; 2 uses
  %i.x = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.x, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !196

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.022.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.q, %bb.c ], [ %i.s, %bb.e ], [ %i.w, %bb.h ] ; 3 uses
  %i.y = zext i32 %.022.i.i.i to i64              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  store ptr %i.z, ptr %27, align 8, !tbaa !27, !alias.scope !274, !noalias !273
  %i.aa = icmp ugt i32 %.022.i.i.i, 15
  br i1 %i.aa, label %.noexc.i.i, label %bb.i

.noexc.i.i:                                       ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.ab = add nuw nsw i64 %i.y, 1
  %i.ac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #19 ; 2 uses
  store ptr %i.ac, ptr %27, align 8, !tbaa !31, !alias.scope !274, !noalias !273
  store i64 %i.y, ptr %i.z, align 8, !tbaa !32, !alias.scope !274, !noalias !273
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  switch i32 %.022.i.i.i, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.thread.i.i
  %i.ad = phi ptr [ %i.o, %.thread.i.i ], [ %i.z, %bb.i ] ; 2 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.noexc.i.i
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.y, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.af = phi i64 [ 0, %bb.i ], [ %i.y, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.z, %bb.i ], [ %i.ae, %bb.k ], [ %i.ad, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 9 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !33, !alias.scope !274, !noalias !273
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !32
  %i.aj = load ptr, ptr %27, align 8, !tbaa !31, !alias.scope !274, !noalias !273 ; 4 uses
  %i.ak = icmp ugt i64 %i.g, 99
  br i1 %i.ak, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !33, !alias.scope !274, !noalias !273
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.am, -1
  br label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.lr.ph.i4.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.aq, %.lr.ph.i4.i.i ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.ba, %.lr.ph.i4.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ao = urem i64 %.020.i.i.i, 100
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32, !noalias !275
  %i.au = zext i32 %.01819.i.i.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.au
  store i8 %i.at, ptr %i.av, align 1, !tbaa !32
  %i.aw = load i8, ptr %i.ar, align 2, !tbaa !32, !noalias !275
  %i.ax = add i32 %.01819.i.i.i, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ay
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !32
  %i.ba = add i32 %.01819.i.i.i, -2
  %i.bb = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.bb, label %.lr.ph.i4.i.i, label %._crit_edge.i.i.i, !llvm.loop !197

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i4.i.i, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ %i.g, %bb.l ], [ %i.aq, %.lr.ph.i4.i.i ] ; 3 uses
  %i.bc = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32, !noalias !275
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !32
  %i.bi = load i8, ptr %i.be, align 2, !tbaa !32, !noalias !275
  br label %_ZNSt7__cxx119to_stringEm.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.bk = or disjoint i8 %i.bj, 48
  br label %_ZNSt7__cxx119to_stringEm.exit.i

_ZNSt7__cxx119to_stringEm.exit.i:                 ; preds = %bb.n, %bb.m
  %storemerge.i.i.i = phi i8 [ %i.bk, %bb.n ], [ %i.bi, %bb.m ]
  store i8 %storemerge.i.i.i, ptr %i.aj, align 1, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.bl = load i64, ptr %i.ah, align 8, !tbaa !33, !noalias !276 ; 12 uses
  %i.bm = icmp sgt i64 %i.bl, 9223372036854775727
  br i1 %i.bm, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i179: ; preds = %_ZNSt7__cxx119to_stringEm.exit.i
  %i.bn = add nsw i64 %i.bl, 80                   ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN7rocksdb21OptionChangeMigrationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaISC_EESA_SG_:bb.a
  %i.wn = icmp eq ptr %i.wm, %i.pq
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i
  %i.wo = load i64, ptr %i.pq, align 8, !tbaa !32, !noalias !273
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i, %bb.dy
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vq, %bb.dy ], [ %.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.i ], [ %.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.i ] ; 2 uses
  %i.wq = load ptr, ptr %36, align 8, !tbaa !31, !noalias !273 ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.oq
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i
  %i.ws = load i64, ptr %i.oq, align 8, !tbaa !32, !noalias !273
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.i, %bb.dx
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vp, %bb.dx ], [ %.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.i ], [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.i ] ; 2 uses
  %i.wu = load ptr, ptr %37, align 8, !tbaa !31, !noalias !273 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.nq
  br i1 %i.wv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i
  %i.ww = load i64, ptr %i.nq, align 8, !tbaa !32, !noalias !273
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i, %bb.dw
  %.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vo, %bb.dw ], [ %.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i ], [ %.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i ] ; 2 uses
  %i.wy = load ptr, ptr %38, align 8, !tbaa !31, !noalias !273 ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.mw
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i
  %i.xa = load i64, ptr %i.mw, align 8, !tbaa !32, !noalias !273
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i, %bb.dv
  %.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vn, %bb.dv ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i ]
  %i.xc = load ptr, ptr %39, align 8, !tbaa !31, !noalias !273 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !32, !noalias !273
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !273
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.bh
  %i.xh = add nuw i64 %.018293.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.xh, %i.g
  br i1 %exitcond.not.i, label %.thread218, label %.lr.ph.i, !llvm.loop !224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !273
  br label %bb.ee

.thread218:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.preheader.i
  %i.xi = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr null, ptr %i.xi, align 8, !tbaa !37, !alias.scope !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 6, i1 false), !alias.scope !303
  br label %bb.eh

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i, %_ZN7rocksdb6StatusD2Ev.exit174
  %common.resume.op = phi { ptr, i32 } [ %.pn27.pn.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit174 ], [ %.pn42.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i ]
  resume { ptr, i32 } %common.resume.op

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i246.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i
  %.pr = load i8, ptr %41, align 8, !tbaa !48     ; 2 uses
  %i.xj = icmp eq i8 %.pr, 0
  br i1 %i.xj, label %._crit_edge, label %bb.ef

._crit_edge:                                      ; preds = %bb.ee
  %.pre273 = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !304
  %.pre274 = load ptr, ptr %3, align 8, !tbaa !24, !noalias !304
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.xk, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %41
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i8 %.pr, ptr %0, align 8, !tbaa !48
  %i.xl = getelementptr inbounds nuw i8, ptr %41, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.xn = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.xo = load <4 x i8>, ptr %i.xl, align 1, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %41, align 8, !tbaa !32
  store <4 x i8> %i.xo, ptr %i.xm, align 1, !tbaa !32
  store i8 0, ptr %i.xn, align 4, !tbaa !49
  %i.xp = getelementptr inbounds nuw i8, ptr %41, i64 5 ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !32
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !50
  store i8 0, ptr %i.xp, align 1, !tbaa !50
  %i.xs = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !51
  store ptr null, ptr %i.xs, align 8, !tbaa !51
  store ptr %i.xt, ptr %i.xk, align 8, !tbaa !51
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.eh:                                            ; preds = %._crit_edge, %.thread218
  %i.xu = phi ptr [ %.pre274, %._crit_edge ], [ %i.c, %.thread218 ] ; 2 uses
  %i.xv = phi ptr [ %.pre273, %._crit_edge ], [ %i.b, %.thread218 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false), !alias.scope !304
  %.not.i34 = icmp eq ptr %i.xv, %i.xu
  br i1 %.not.i34, label %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.eh
  %i.xw = getelementptr inbounds nuw i8, ptr %17, i64 976 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.xz = getelementptr inbounds nuw i8, ptr %18, i64 192
  %i.ya = getelementptr inbounds nuw i8, ptr %19, i64 760 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %20, i64 760 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %20, i64 1648
  %i.yd = getelementptr inbounds nuw i8, ptr %20, i64 892
  %i.ye = getelementptr inbounds nuw i8, ptr %20, i64 896
  %i.yf = getelementptr inbounds nuw i8, ptr %20, i64 960
  %i.yg = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i, %.lr.ph.i35
  %.0 = phi i1 [ false, %.lr.ph.i35 ], [ %spec.select, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ]
  %i.yi = phi ptr [ %i.xu, %.lr.ph.i35 ], [ %i.zw, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ]
  %.02345.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.zu, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [1008 x i8], ptr %i.yi, i64 %.02345.i ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32 ; 3 uses
  %i.yl = load ptr, ptr %5, align 8, !tbaa !24, !noalias !304
  %i.ym = getelementptr inbounds nuw [1008 x i8], ptr %i.yl, i64 %.02345.i ; 7 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !304
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(977) %17)
          to label %.noexc.i37 unwind label %bb.eu

.noexc.i37:                                       ; preds = %bb.ei
  store i8 1, ptr %i.xw, align 8, !tbaa !307, !alias.scope !305, !noalias !304
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 248 ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !308, !noalias !305
  %i.yq = icmp eq i8 %i.yp, 0
  br i1 %i.yq, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %.noexc.i37
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 189
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !309, !range !123, !noalias !305, !noundef !124
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yu = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %bb.el unwind label %bb.em     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ym, i64 176
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !310, !noalias !305
  store i64 %i.yw, ptr %i.xx, align 8, !tbaa !310, !alias.scope !305, !noalias !304
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.em:                                            ; preds = %bb.es, %bb.eq, %bb.eo, %bb.ek
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  br label %.body.i

bb.en:                                            ; preds = %bb.ej
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ym, i64 160
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !311, !noalias !305
  %i.za = getelementptr inbounds nuw i8, ptr %i.yj, i64 160
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !311, !noalias !305
  %i.zc = icmp sgt i32 %i.yz, %i.zb
  br i1 %i.zc, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.zd = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yn)
          to label %bb.ep unwind label %bb.em     ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  store i8 0, ptr %i.xw, align 8, !tbaa !307, !alias.scope !305, !noalias !304
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.eq:                                            ; preds = %bb.en
  %i.ze = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %bb.er unwind label %bb.em     ; 0 uses

bb.er:                                            ; preds = %bb.eq
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ym, i64 176
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !310, !noalias !305
  store i64 %i.zg, ptr %i.xx, align 8, !tbaa !310, !alias.scope !305, !noalias !304
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.es:                                            ; preds = %.noexc.i37
  %i.zh = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i unwind label %bb.em ; 0 uses

_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i: ; preds = %bb.es, %bb.er, %bb.ep, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !304
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %18, ptr noundef nonnull align 8 dereferenceable(976) %17)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i
  %i.zi = load i8, ptr %i.xw, align 8, !tbaa !307, !range !123, !noalias !304, !noundef !124
  %i.zj = trunc nuw i8 %i.zi to i1
  %spec.select = select i1 %i.zj, i1 true, i1 %.0 ; 2 uses
  %.val29.i = load i8, ptr %i.yo, align 8, !tbaa !308 ; 2 uses
  %switch.i.i = icmp ult i8 %.val29.i, 2
  br i1 %switch.i.i, label %bb.ew, label %bb.ex

bb.eu:                                            ; preds = %bb.ei
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ev:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ew:                                            ; preds = %bb.et
  %i.zm = getelementptr i8, ptr %i.ym, i64 160
  %.val.i = load i32, ptr %i.zm, align 8
  %i.zn = icmp eq i32 %.val.i, 1
  br i1 %i.zn, label %bb.ey, label %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i

bb.ex:                                            ; preds = %bb.et
  %.old6.i.i = icmp eq i8 %.val29.i, 2
  br i1 %.old6.i.i, label %bb.ey, label %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  store i64 999999999999999, ptr %i.xy, align 8, !tbaa !310, !noalias !304
  store i64 999999999999999, ptr %i.xz, align 8, !tbaa !312, !noalias !304
  br label %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i

_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i: ; preds = %bb.ey, %bb.ex, %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !304
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %19, ptr noundef nonnull align 8 dereferenceable(753) %2)
          to label %.noexc30.i unwind label %bb.ff

.noexc30.i:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.ya, ptr noundef nonnull align 8 dereferenceable(976) %18)
          to label %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i unwind label %bb.ez

bb.ez:                                            ; preds = %.noexc30.i
  %i.zo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  br label %.body31.i

_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i: ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !304
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %20, ptr noundef nonnull align 8 dereferenceable(1736) %19)
          to label %.noexc33.i unwind label %bb.fg

.noexc33.i:                                       ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.yb, ptr noundef nonnull align 8 dereferenceable(976) %i.ya)
          to label %bb.fb unwind label %bb.fa

bb.fa:                                            ; preds = %.noexc33.i
  %i.zp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  br label %.body34.i

bb.fb:                                            ; preds = %.noexc33.i
  store i8 1, ptr %i.yc, align 8, !tbaa !313, !alias.scope !314, !noalias !304
  store i32 999999, ptr %i.yd, align 4, !tbaa !315, !alias.scope !314, !noalias !304
  store i32 999999, ptr %i.ye, align 8, !tbaa !316, !alias.scope !314, !noalias !304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false), !alias.scope !314, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18, !noalias !304
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC1ERKNS_7OptionsE(ptr noundef nonnull align 8 dereferenceable(976) %21, ptr noundef nonnull align 8 dereferenceable(1736) %20)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  %i.zq = load ptr, ptr %i.yg, align 8, !tbaa !23, !alias.scope !304 ; 3 uses
  %i.zr = load ptr, ptr %i.yh, align 8, !tbaa !125, !alias.scope !304
  %.not.i.i42 = icmp eq ptr %i.zq, %i.zr
  br i1 %.not.i.i42, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %i.zq, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(976) %21)
          to label %.noexc36.i unwind label %bb.fi

.noexc36.i:                                       ; preds = %bb.fd
  %i.zs = load ptr, ptr %i.yg, align 8, !tbaa !23, !alias.scope !304
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1008
  store ptr %i.zt, ptr %i.yg, align 8, !tbaa !23, !alias.scope !304
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i

bb.fe:                                            ; preds = %bb.fc
  invoke void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr %i.zq, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(976) %21)
          to label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i unwind label %bb.fi

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i: ; preds = %bb.fe, %.noexc36.i
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.yb) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ya) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !304
  %i.zu = add nuw i64 %.02345.i, 1                ; 2 uses
  %i.zv = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !304
  %i.zw = load ptr, ptr %3, align 8, !tbaa !24, !noalias !304 ; 2 uses
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = sub i64 %i.zx, %i.zy
  %i.aaa = sdiv exact i64 %i.zz, 1008
  %i.aab = icmp ult i64 %i.zu, %i.aaa
  br i1 %i.aab, label %bb.ei, label %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit, !llvm.loop !233

bb.ff:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

bb.fg:                                            ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.fh:                                            ; preds = %bb.fb
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe, %bb.fd
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %21) #18
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn.i41 = phi { ptr, i32 } [ %i.aaf, %bb.fi ], [ %i.aae, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.yb) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  br label %.body34.i

.body34.i:                                        ; preds = %bb.fj, %bb.fg, %bb.fa
  %.pn.pn.i40 = phi { ptr, i32 } [ %.pn.i41, %bb.fj ], [ %i.aad, %bb.fg ], [ %i.zp, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ya) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  br label %.body31.i

.body31.i:                                        ; preds = %.body34.i, %bb.ff, %bb.ez
  %.pn.pn.pn.i39 = phi { ptr, i32 } [ %.pn.pn.i40, %.body34.i ], [ %i.aac, %bb.ff ], [ %i.zo, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %18) #18
  br label %bb.fk

bb.fk:                                            ; preds = %.body31.i, %bb.ev
  %.pn.pn.pn.pn.i38.a = phi { ptr, i32 } [ %.pn.pn.pn.i39, %.body31.i ], [ %i.zl, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !304
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.fk, %bb.eu, %bb.em
  %.pn.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i38.a, %bb.fk ], [ %i.zk, %bb.eu ], [ %i.yx, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !304
  br label %.body

_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit: ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i, %bb.eh
  %.2 = phi i1 [ false, %bb.eh ], [ %spec.select, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  store ptr null, ptr %43, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.aag = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 10 uses
  invoke void @_ZN7rocksdb2DB4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %45, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull %44, ptr noundef nonnull %43)
          to label %.noexc unwind label %bb.fq

.noexc:                                           ; preds = %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit
  %i.aah = load i8, ptr %45, align 8, !tbaa !48, !alias.scope !320
  %i.aai = icmp eq i8 %i.aah, 0
  br i1 %i.aai, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %bb.fl

bb.fl:                                            ; preds = %.noexc
  %i.aaj = load ptr, ptr %44, align 8, !tbaa !128, !noalias !320 ; 2 uses
  %i.aak = load ptr, ptr %i.aag, align 8, !tbaa !128, !noalias !320 ; 2 uses
  %i.aal = icmp eq ptr %i.aaj, %i.aak
  br i1 %i.aal, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %.lr.ph.i44

._crit_edge.i45:                                  ; preds = %bb.fn
  %.pre.i46 = load ptr, ptr %44, align 8, !tbaa !130, !noalias !320 ; 2 uses
  %.pre21.i = load ptr, ptr %i.aag, align 8, !tbaa !131, !noalias !320
  %i.aam = icmp eq ptr %.pre21.i, %.pre.i46
  br i1 %i.aam, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i

_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i: ; preds = %._crit_edge.i45
  store ptr %.pre.i46, ptr %i.aag, align 8, !tbaa !131, !noalias !320
  br label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit

.lr.ph.i44:                                       ; preds = %bb.fl, %bb.fn
  %.sroa.017.020.i = phi ptr [ %i.aas, %bb.fn ], [ %i.aaj, %bb.fl ] ; 2 uses
  %i.aan = load ptr, ptr %.sroa.017.020.i, align 8, !tbaa !133 ; 3 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph.i44
  %i.aap = load ptr, ptr %i.aan, align 8, !tbaa !135
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  call void %i.aar(ptr noundef nonnull align 8 dereferenceable(8) %i.aan) #18, !inline_history !236
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph.i44
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 8 ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.aak
  br i1 %i.aat, label %._crit_edge.i45, label %.lr.ph.i44

_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit: ; preds = %_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i, %._crit_edge.i45, %bb.fl, %.noexc
  %i.aau = getelementptr inbounds nuw i8, ptr %41, i64 1 ; 2 uses
  %i.aav = load <4 x i8>, ptr %45, align 8, !tbaa !32
  store <4 x i8> %i.aav, ptr %41, align 8, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %45, align 8, !tbaa !32
  %i.aaw = getelementptr inbounds nuw i8, ptr %45, i64 4 ; 2 uses
  %i.aax = load i8, ptr %i.aaw, align 4, !tbaa !321, !range !123, !noundef !124
  %i.aay = getelementptr inbounds nuw i8, ptr %41, i64 4 ; 9 uses
  store i8 %i.aax, ptr %i.aay, align 4, !tbaa !49
  store i8 0, ptr %i.aaw, align 4, !tbaa !49
  %i.aaz = getelementptr inbounds nuw i8, ptr %45, i64 5 ; 2 uses
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !32
  %i.abb = getelementptr inbounds nuw i8, ptr %41, i64 5 ; 11 uses
  store i8 %i.aba, ptr %i.abb, align 1, !tbaa !50
  store i8 0, ptr %i.aaz, align 1, !tbaa !50
  %i.abc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 16 uses
  %i.abe = load ptr, ptr %i.abc, align 8, !tbaa !51
  store ptr null, ptr %i.abc, align 8, !tbaa !51
  %i.abf = load ptr, ptr %i.abd, align 8, !tbaa !51 ; 2 uses
  store ptr %i.abe, ptr %i.abd, align 8, !tbaa !51
  %.not.i.i.i.i.i48 = icmp eq ptr %i.abf, null
  br i1 %.not.i.i.i.i.i48, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit
  call void @_ZdaPv(ptr noundef nonnull %i.abf) #22
  %.pr219 = load ptr, ptr %i.abc, align 8, !tbaa !51 ; 2 uses
  %.not.i.i49 = icmp eq ptr %.pr219, null
  br i1 %.not.i.i49, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr219) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  %i.abg = load i8, ptr %41, align 8, !tbaa !48   ; 2 uses
  %i.abh = icmp eq i8 %i.abg, 0
  br i1 %i.abh, label %bb.fr, label %bb.fo

bb.fo:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.abi, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i50 = icmp eq ptr %0, %41
  br i1 %.not.i.i50, label %_ZN7rocksdb6StatusC2EOS0_.exit53, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store i8 %i.abg, ptr %0, align 8, !tbaa !48
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.abk = load <4 x i8>, ptr %i.aau, align 1, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %41, align 8, !tbaa !32
  store <4 x i8> %i.abk, ptr %i.abj, align 1, !tbaa !32
  store i8 0, ptr %i.aay, align 4, !tbaa !49
  %i.abl = load i8, ptr %i.abb, align 1, !tbaa !32
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.abl, ptr %i.abm, align 1, !tbaa !50
  store i8 0, ptr %i.abb, align 1, !tbaa !50
  %i.abn = load ptr, ptr %i.abd, align 8, !tbaa !51
  store ptr null, ptr %i.abd, align 8, !tbaa !51
  store ptr %i.abn, ptr %i.abi, align 8, !tbaa !51
  br label %_ZN7rocksdb6StatusC2EOS0_.exit53

bb.fq:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.io

bb.fr:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  %i.abp = load ptr, ptr %43, align 8, !tbaa !322 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.abq = load ptr, ptr %i.aag, align 8, !tbaa !131, !noalias !323
  %i.abr = load ptr, ptr %44, align 8, !tbaa !130, !noalias !323
  %.not.i54 = icmp eq ptr %i.abq, %i.abr
  br i1 %.not.i54, label %_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.fr
  %i.abs = getelementptr inbounds nuw i8, ptr %15, i64 760 ; 4 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %16, i64 760 ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %15, i64 888
  %i.abv = getelementptr inbounds nuw i8, ptr %15, i64 976
  %i.abw = getelementptr inbounds nuw i8, ptr %16, i64 976
  %i.abx = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.aby = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.abz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aca = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.acb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.acd = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ace = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.acf = getelementptr inbounds nuw i8, ptr %16, i64 888 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %16, i64 917
  %i.ach = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.aci = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.acj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.acl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.acn = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aco = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.acp = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 7 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.acr = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.acs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.act = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.acv = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.acw = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.acx = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.acy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.adb = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 4 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ade = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.adf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.adi = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.adj = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.adk = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.adl = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.adm = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.adn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ado = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit37.i, %.lr.ph.i55
  %.02349.i = phi i64 [ 0, %.lr.ph.i55 ], [ %i.agg, %_ZN7rocksdb6StatusD2Ev.exit37.i ] ; 4 uses
  %i.adp = load ptr, ptr %3, align 8, !tbaa !24, !noalias !323
  %i.adq = load ptr, ptr %5, align 8, !tbaa !24, !noalias !323
  %i.adr = getelementptr inbounds nuw [1008 x i8], ptr %i.adq, i64 %.02349.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !323
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %15, ptr noundef nonnull align 8 dereferenceable(753) %2)
          to label %.noexc69 unwind label %bb.hd

.noexc69:                                         ; preds = %bb.fs
  %i.adt = getelementptr inbounds nuw [1008 x i8], ptr %i.adp, i64 %.02349.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.abs, ptr noundef nonnull align 8 dereferenceable(976) %i.adu)
          to label %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i56 unwind label %bb.ft

bb.ft:                                            ; preds = %.noexc69
  %i.adv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %15) #18
  br label %.body70

_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i56: ; preds = %.noexc69
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !323
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %16, ptr noundef nonnull align 8 dereferenceable(753) %4)
          to label %.noexc.i59 unwind label %bb.gu

.noexc.i59:                                       ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i56
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.abt, ptr noundef nonnull align 8 dereferenceable(976) %i.ads)
          to label %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit27.i unwind label %bb.fu

bb.fu:                                            ; preds = %.noexc.i59
  %i.adw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %16) #18
  br label %.body.i57

_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit27.i: ; preds = %.noexc.i59
  %i.adx = load ptr, ptr %44, align 8, !tbaa !130, !noalias !323
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %.02349.i
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !133 ; 5 uses
  %.val.i60 = load i32, ptr %i.abu, align 8, !noalias !323 ; 2 uses
  %.val26.i = load i8, ptr %i.abv, align 8, !tbaa !308, !noalias !323
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.aea = icmp eq i8 %.val26.i, 2
  br i1 %i.aea, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit27.i
  store ptr null, ptr %i.acp, align 8, !tbaa !37, !alias.scope !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 6, i1 false), !alias.scope !325
  br label %_ZN7rocksdb6StatusD2Ev.exit37.i

bb.fw:                                            ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit27.i
  %i.aeb = load i8, ptr %i.abw, align 8, !tbaa !308, !noalias !326
  switch i8 %i.aeb, label %bb.gt [
    i8 1, label %bb.fx
    i8 0, label %bb.gk
    i8 2, label %bb.gs
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.aec = load i32, ptr %i.acf, align 8, !tbaa !311, !noalias !326 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %.not.i.i.i65 = icmp sgt i32 %.val.i60, %i.aec
  br i1 %.not.i.i.i65, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  store ptr null, ptr %i.acp, align 8, !tbaa !37, !alias.scope !328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 6, i1 false), !alias.scope !328
  br label %_ZN7rocksdb6StatusD2Ev.exit37.i

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %12, i8 0, i64 16, i1 false), !noalias !329
  store ptr %i.acz, ptr %i.acy, align 8, !tbaa !27, !noalias !329
  store i64 0, ptr %i.ada, align 8, !tbaa !33, !noalias !329
  store i8 0, ptr %i.acz, align 8, !tbaa !32, !noalias !329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.adb, i8 0, i64 64, i1 false), !noalias !329
  %i.aed = load ptr, ptr %i.abp, align 8, !tbaa !135, !noalias !329
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 1088
  %i.aef = load ptr, ptr %i.aee, align 8, !noalias !330
  invoke void %i.aef(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef %i.adz, ptr noundef nonnull %12)
          to label %bb.ga unwind label %bb.gf, !noalias !330

bb.ga:                                            ; preds = %bb.fz
  %i.aeg = load ptr, ptr %i.adb, align 8, !tbaa !331, !noalias !329
  %i.aeh = load ptr, ptr %i.adc, align 8, !tbaa !331, !noalias !329 ; 2 uses
  %i.aei = icmp eq ptr %i.aeg, %i.aeh
  br i1 %i.aei, label %bb.gg, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aej = getelementptr inbounds i8, ptr %i.aeh, i64 -40
  %i.aek = load i32, ptr %i.aej, align 8, !tbaa !336, !noalias !330
  %.not9.i.i.i = icmp slt i32 %i.aek, %i.aec
  br i1 %.not9.i.i.i, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ael = add nsw i32 %i.aec, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !337
  store i8 0, ptr %11, align 8, !tbaa !343, !noalias !337
  store i32 0, ptr %i.adf, align 8, !tbaa !344, !noalias !337
  store i32 1, ptr %i.adg, align 4, !tbaa !345, !noalias !337
  store i8 0, ptr %i.adh, align 8, !tbaa !346, !noalias !337
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.adi, i8 0, i64 20, i1 false), !noalias !337
  store i32 2, ptr %i.adj, align 8, !tbaa !347, !noalias !337
  store double -1.000000e+00, ptr %i.adk, align 8, !tbaa !348, !noalias !337
  store i8 1, ptr %i.add, align 1, !tbaa !349, !noalias !337
  store i32 %i.ael, ptr %i.ade, align 4, !tbaa !350, !noalias !337
  %i.aem = icmp eq i32 %i.ael, 0
  br i1 %i.aem, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i32 2, ptr %i.adg, align 4, !tbaa !345, !noalias !337
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.aen = load ptr, ptr %i.abp, align 8, !tbaa !135, !noalias !337
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 712
  %i.aep = load ptr, ptr %i.aeo, align 8, !noalias !351
  invoke void %i.aep(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef %i.adz, ptr noundef null, ptr noundef null)
          to label %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i.i.i unwind label %bb.gf, !inline_history !249

_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i.i.i: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !337
  br label %bb.gh

bb.gf:                                            ; preds = %bb.ge, %bb.fz
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb20ColumnFamilyMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !329
  br label %.body28.i.a

bb.gg:                                            ; preds = %bb.gb, %bb.ga
  store ptr null, ptr %i.acp, align 8, !tbaa !37, !alias.scope !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 6, i1 false), !alias.scope !352
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i.i.i
  call void @_ZNSt6vectorIN7rocksdb12BlobMetaDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.adl) #18
  %i.aer = load ptr, ptr %i.adb, align 8, !tbaa !140, !noalias !329 ; 3 uses
  %i.aes = load ptr, ptr %i.adc, align 8, !tbaa !141, !noalias !329 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.aer, %i.aes
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.gh, %_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.afe, %_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.aer, %bb.gh ] ; 4 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !142 ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !143 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aeu, %i.aew
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  call void @_ZN7rocksdb15SstFileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.05.i.i.i.i.i.i.i.i.i.i.i.i.i) #18
  %i.aex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aex, %i.aew
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aet, align 8, !tbaa !142
  br label %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.aey = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aey, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.aez = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !144
  %i.afb = ptrtoint ptr %i.afa to i64
  %i.afc = ptrtoint ptr %i.aey to i64
  %i.afd = sub i64 %i.afb, %i.afc
  call void @_ZdlPvm(ptr noundef nonnull %i.aey, i64 noundef %i.afd) #22
  br label %_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.gi, %_ZSt8_DestroyIPN7rocksdb15SstFileMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.afe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.afe, %i.aes
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb13LevelMetaDataEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.adb, align 8, !tbaa !140, !noalias !329
  br label %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.gh
  %i.aff = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.aer, %bb.gh ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.aff, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb13LevelMetaDataESaIS1_EED2Ev.exit.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.afg = load ptr, ptr %i.adm, align 8, !tbaa !145, !noalias !329
  %i.afh = ptrtoint ptr %i.afg to i64
  %i.afi = ptrtoint ptr %i.aff to i64
  %i.afj = sub i64 %i.afh, %i.afi
  call void @_ZdlPvm(ptr noundef nonnull %i.aff, i64 noundef %i.afj) #22
  br label %_ZNSt6vectorIN7rocksdb13LevelMetaDataESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN7rocksdb13LevelMetaDataESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.gj, %_ZSt8_DestroyIPN7rocksdb13LevelMetaDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.afk = load ptr, ptr %i.acy, align 8, !tbaa !31, !noalias !329 ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.acz
  br i1 %i.afl, label %_ZN7rocksdb20ColumnFamilyMetaDataD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66: ; preds = %_ZNSt6vectorIN7rocksdb13LevelMetaDataESaIS1_EED2Ev.exit.i.i.i.i
  %i.afm = load i64, ptr %i.acz, align 8, !tbaa !32, !noalias !329
  %i.afn = add i64 %i.afm, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afn) #22
  br label %_ZN7rocksdb20ColumnFamilyMetaDataD2Ev.exit.i.i.i

_ZN7rocksdb20ColumnFamilyMetaDataD2Ev.exit.i.i.i: ; preds = %_ZNSt6vectorIN7rocksdb13LevelMetaDataESaIS1_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !329
  br label %bb.gw

bb.gk:                                            ; preds = %bb.fw
  %i.afo = load i32, ptr %i.acf, align 8, !tbaa !311, !noalias !326
  %i.afp = load i8, ptr %i.acg, align 1, !tbaa !309, !range !123, !noalias !326, !noundef !124
  %i.afq = trunc nuw i8 %i.afp to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.afr = icmp eq i32 %.val.i60, 1               ; 2 uses
  br i1 %i.afq, label %bb.go, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.afr, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store ptr null, ptr %i.acp, align 8, !tbaa !37, !alias.scope !354
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 6, i1 false), !alias.scope !354
  br label %_ZN7rocksdb6StatusD2Ev.exit37.i

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !355
  store i8 0, ptr %10, align 8, !tbaa !343, !noalias !355
  store i32 0, ptr %i.acj, align 8, !tbaa !344, !noalias !355
  store i32 1, ptr %i.ack, align 4, !tbaa !345, !noalias !355
  store i8 0, ptr %i.acl, align 8, !tbaa !346, !noalias !355
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.acm, i8 0, i64 20, i1 false), !noalias !355
  store i32 2, ptr %i.acn, align 8, !tbaa !347, !noalias !355
  store double -1.000000e+00, ptr %i.aco, align 8, !tbaa !348, !noalias !355
  store i8 1, ptr %i.ach, align 1, !tbaa !349, !noalias !355
  store i32 1, ptr %i.aci, align 4, !tbaa !350, !noalias !355
  %i.afs = load ptr, ptr %i.abp, align 8, !tbaa !135, !noalias !355
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 712
  %i.afu = load ptr, ptr %i.aft, align 8, !noalias !356
  invoke void %i.afu(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %i.adz, ptr noundef null, ptr noundef null)
          to label %.noexc30.i64 unwind label %bb.gv, !inline_history !258

.noexc30.i64:                                     ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !355
  br label %bb.gw

bb.go:                                            ; preds = %bb.gk
  br i1 %i.afr, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  store ptr null, ptr %i.acp, align 8, !tbaa !37, !alias.scope !357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 6, i1 false), !alias.scope !357
  br label %_ZN7rocksdb6StatusD2Ev.exit37.i

bb.gq:                                            ; preds = %bb.go
  %i.afv = add nsw i32 %i.afo, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !358
  store i8 0, ptr %9, align 8, !tbaa !343, !noalias !358
  store i32 0, ptr %i.acs, align 8, !tbaa !344, !noalias !358
  store i32 1, ptr %i.act, align 4, !tbaa !345, !noalias !358
  store i8 0, ptr %i.acu, align 8, !tbaa !346, !noalias !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.acv, i8 0, i64 20, i1 false), !noalias !358
  store i32 2, ptr %i.acw, align 8, !tbaa !347, !noalias !358
  store double -1.000000e+00, ptr %i.acx, align 8, !tbaa !348, !noalias !358
  store i8 1, ptr %i.acq, align 1, !tbaa !349, !noalias !358
  store i32 %i.afv, ptr %i.acr, align 4, !tbaa !350, !noalias !358
  %i.afw = icmp eq i32 %i.afv, 0
  br i1 %i.afw, label %bb.gr, label %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i15.i.i

bb.gr:                                            ; preds = %bb.gq
  store i32 2, ptr %i.act, align 4, !tbaa !345, !noalias !358
  br label %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i15.i.i

_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i15.i.i: ; preds = %bb.gr, %bb.gq
  %i.afx = load ptr, ptr %i.abp, align 8, !tbaa !135, !noalias !358
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 712
  %i.afz = load ptr, ptr %i.afy, align 8, !noalias !359
  invoke void %i.afz(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %i.adz, ptr noundef null, ptr noundef null)
          to label %.noexc31.i unwind label %bb.gv, !inline_history !258

.noexc31.i:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !358
  br label %bb.gw

bb.gs:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !360
  store i8 0, ptr %8, align 8, !tbaa !343, !noalias !360
  store i32 0, ptr %i.abz, align 8, !tbaa !344, !noalias !360
  store i8 0, ptr %i.acb, align 8, !tbaa !346, !noalias !360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.acc, i8 0, i64 20, i1 false), !noalias !360
  store i32 2, ptr %i.acd, align 8, !tbaa !347, !noalias !360
  store double -1.000000e+00, ptr %i.ace, align 8, !tbaa !348, !noalias !360
  store i8 1, ptr %i.abx, align 1, !tbaa !349, !noalias !360
  store i32 0, ptr %i.aby, align 4, !tbaa !350, !noalias !360
  store i32 2, ptr %i.aca, align 4, !tbaa !345, !noalias !360
  %i.aga = load ptr, ptr %i.abp, align 8, !tbaa !135, !noalias !360
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 712
  %i.agc = load ptr, ptr %i.agb, align 8, !noalias !361
  invoke void %i.agc(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %46, ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef %i.adz, ptr noundef null, ptr noundef null)
          to label %.noexc32.i unwind label %bb.gv, !inline_history !267

.noexc32.i:                                       ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !360
  br label %bb.gw

bb.gt:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !326
  store ptr @.str.16, ptr %13, align 8, !tbaa !284, !noalias !326
  store i64 51, ptr %i.adn, align 8, !tbaa !285, !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !326
  store ptr @.str.14, ptr %14, align 8, !tbaa !284, !noalias !326
  store i64 0, ptr %i.ado, align 8, !tbaa !285, !noalias !326
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
          to label %.noexc33.i68 unwind label %bb.gv

.noexc33.i68:                                     ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !326
  br label %bb.gw

bb.gu:                                            ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i56
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57

bb.gv:                                            ; preds = %bb.gt, %bb.gs, %_ZN7rocksdb12_GLOBAL__N_114CompactToLevelEPNS_2DBEPNS_18ColumnFamilyHandleEi.exit.i15.i.i, %bb.gn
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.a

bb.gw:                                            ; preds = %.noexc33.i68, %.noexc32.i, %.noexc31.i, %.noexc30.i64, %_ZN7rocksdb20ColumnFamilyMetaDataD2Ev.exit.i.i.i
  %.pr.i = load i8, ptr %46, align 8, !tbaa !48, !alias.scope !323
  %i.agf = icmp eq i8 %.pr.i, 0
  br i1 %i.agf, label %.thread.i, label %bb.gx

.thread.i:                                        ; preds = %bb.gw
  %.pre.i62 = load ptr, ptr %i.acp, align 8, !tbaa !51, !alias.scope !323 ; 2 uses
  %.not.i.i35.i = icmp eq ptr %.pre.i62, null
  br i1 %.not.i.i35.i, label %_ZN7rocksdb6StatusD2Ev.exit37.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36.i: ; preds = %.thread.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i62) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit37.i

_ZN7rocksdb6StatusD2Ev.exit37.i:                  ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36.i, %.thread.i, %bb.gp, %bb.gm, %bb.fy, %bb.fv
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abt) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !323
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abs) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !323
  %i.agg = add nuw i64 %.02349.i, 1               ; 2 uses
  %i.agh = load ptr, ptr %i.aag, align 8, !tbaa !131, !noalias !323
  %i.agi = load ptr, ptr %44, align 8, !tbaa !130, !noalias !323
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = ptrtoint ptr %i.agi to i64
  %i.agl = sub i64 %i.agj, %i.agk
  %i.agm = ashr exact i64 %i.agl, 3
  %i.agn = icmp ult i64 %i.agg, %i.agm
  br i1 %i.agn, label %bb.fs, label %_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit, !llvm.loop !268

.body28.i.a:                                      ; preds = %bb.gv, %bb.gf
  %.pn.i61 = phi { ptr, i32 } [ %i.aeq, %bb.gf ], [ %i.age, %bb.gv ]
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abt) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %16) #18
  br label %.body.i57

.body.i57:                                        ; preds = %.body28.i.a, %bb.gu, %bb.fu
  %.pn.pn.i58 = phi { ptr, i32 } [ %.pn.i61, %.body28.i.a ], [ %i.agd, %bb.gu ], [ %i.adw, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !323
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abs) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !323
  br label %.body70

bb.gx:                                            ; preds = %bb.gw
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abt) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !323
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.abs) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !323
  %i.ago = load <4 x i8>, ptr %46, align 8, !tbaa !32
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %.pre282 = load i8, ptr %.phi.trans.insert281, align 4, !tbaa !321, !range !123
  %.phi.trans.insert283 = getelementptr inbounds nuw i8, ptr %46, i64 5
  %.pre284 = load i8, ptr %.phi.trans.insert283, align 1, !tbaa !32
  %.pre286 = load ptr, ptr %i.acp, align 8, !tbaa !51
  br label %_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit

_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit37.i, %bb.fr, %bb.gx
  %i.agp = phi ptr [ %.pre286, %bb.gx ], [ null, %bb.fr ], [ null, %_ZN7rocksdb6StatusD2Ev.exit37.i ]
  %i.agq = phi i8 [ %.pre284, %bb.gx ], [ 0, %bb.fr ], [ 0, %_ZN7rocksdb6StatusD2Ev.exit37.i ]
  %i.agr = phi i8 [ %.pre282, %bb.gx ], [ 0, %bb.fr ], [ 0, %_ZN7rocksdb6StatusD2Ev.exit37.i ]
  %i.ags = phi <4 x i8> [ %i.ago, %bb.gx ], [ zeroinitializer, %bb.fr ], [ zeroinitializer, %_ZN7rocksdb6StatusD2Ev.exit37.i ]
  store <4 x i8> %i.ags, ptr %41, align 8, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %46, align 8, !tbaa !32
  %i.agt = getelementptr inbounds nuw i8, ptr %46, i64 4
  store i8 %i.agr, ptr %i.aay, align 4, !tbaa !49
  store i8 0, ptr %i.agt, align 4, !tbaa !49
  %i.agu = getelementptr inbounds nuw i8, ptr %46, i64 5
  store i8 %i.agq, ptr %i.abb, align 1, !tbaa !50
  store i8 0, ptr %i.agu, align 1, !tbaa !50
  %i.agv = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  store ptr null, ptr %i.agv, align 8, !tbaa !51
  %i.agw = load ptr, ptr %i.abd, align 8, !tbaa !51 ; 2 uses
  store ptr %i.agp, ptr %i.abd, align 8, !tbaa !51
  %.not.i.i.i.i.i73 = icmp eq ptr %i.agw, null
  br i1 %.not.i.i.i.i.i73, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZN7rocksdb6StatusaSEOS0_.exit75

_ZN7rocksdb6StatusaSEOS0_.exit75:                 ; preds = %_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.agw) #22
  %.pr221 = load ptr, ptr %i.agv, align 8, !tbaa !51 ; 2 uses
  %.not.i.i76 = icmp eq ptr %.pr221, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit75
  call void @_ZdaPv(ptr noundef nonnull %.pr221) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit78

_ZN7rocksdb6StatusD2Ev.exit78:                    ; preds = %_ZN7rocksdb12_GLOBAL__N_113MigrateAllCFsEPNS_2DBERKSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EERKNS_9DBOptionsESC_RKS3_INS_22ColumnFamilyDescriptorESaISD_EESH_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit75, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  %i.agx = load ptr, ptr %43, align 8, !tbaa !322
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_116CleanupCFHandlesEPNS_2DBEPSt6vectorIPNS_18ColumnFamilyHandleESaIS5_EE(ptr dead_on_unwind noalias writable align 8 %47, ptr noundef %i.agx, ptr noundef %44)
          to label %bb.gy unwind label %bb.he

bb.gy:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit78
  %i.agy = load i8, ptr %41, align 8, !tbaa !48
  %i.agz = icmp eq i8 %i.agy, 0
  br i1 %i.agz, label %bb.gz, label %.thread

bb.gz:                                            ; preds = %bb.gy
  %i.aha = load i8, ptr %47, align 8, !tbaa !48
  %i.ahb = icmp eq i8 %i.aha, 0
  br i1 %i.ahb, label %bb.hg, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ahc = load <4 x i8>, ptr %47, align 8, !tbaa !32
  store <4 x i8> %i.ahc, ptr %41, align 8, !tbaa !32
  %i.ahd = getelementptr inbounds nuw i8, ptr %47, i64 4
  %i.ahe = load i8, ptr %i.ahd, align 4, !tbaa !49, !range !123, !noundef !124
  store i8 %i.ahe, ptr %i.aay, align 4, !tbaa !49
  %i.ahf = getelementptr inbounds nuw i8, ptr %47, i64 5
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !50
  store i8 %i.ahg, ptr %i.abb, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ahh = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !51 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i80, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull %i.ahi)
          to label %.noexc85 unwind label %bb.hf

.noexc85:                                         ; preds = %bb.hb
  %.pre.i81 = load ptr, ptr %7, align 8, !tbaa !51
  br label %bb.hc

bb.hc:                                            ; preds = %.noexc85, %bb.ha
  %i.ahj = phi ptr [ %.pre.i81, %.noexc85 ], [ null, %bb.ha ]
  store ptr null, ptr %7, align 8, !tbaa !51
  %i.ahk = load ptr, ptr %i.abd, align 8, !tbaa !51 ; 2 uses
  store ptr %i.ahj, ptr %i.abd, align 8, !tbaa !51
  %.not.i.i.i.i.i82 = icmp eq ptr %i.ahk, null
  br i1 %.not.i.i.i.i.i82, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.hc
  call void @_ZdaPv(ptr noundef nonnull %i.ahk) #22
  %.pr.i83 = load ptr, ptr %7, align 8, !tbaa !51 ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i83, null
  br i1 %.not.i12.i, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i84

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i84: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i83) #22
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %bb.hc, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pre287 = load i8, ptr %41, align 8, !tbaa !48
  %i.ahl = icmp eq i8 %.pre287, 0
  %i.ahm = select i1 %i.ahl, i1 %.2, i1 false
  br i1 %i.ahm, label %bb.hh, label %.thread

bb.hd:                                            ; preds = %bb.fs
  %i.ahn = landingpad { ptr, i32 }
          cleanup
  br label %.body70

.body70:                                          ; preds = %bb.ft, %.body.i57, %bb.hd
  %eh.lpad-body71 = phi { ptr, i32 } [ %i.ahn, %bb.hd ], [ %i.adv, %bb.ft ], [ %.pn.pn.i58, %.body.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  br label %bb.io

bb.he:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit78
  %i.aho = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit158

bb.hf:                                            ; preds = %bb.hb
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.hg:                                            ; preds = %bb.gz
  br i1 %.2, label %bb.hh, label %.thread

bb.hh:                                            ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  %i.ahq = load ptr, ptr %43, align 8, !tbaa !322 ; 2 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !135
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8
  invoke void %i.aht(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8) %i.ahq)
          to label %bb.hi unwind label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  %i.ahu = load i8, ptr %48, align 8, !tbaa !48   ; 2 uses
  %i.ahv = icmp eq i8 %i.ahu, 0
  br i1 %i.ahv, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.ahw, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i86 = icmp eq ptr %0, %48
  br i1 %.not.i.i86, label %.critedge, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  store i8 %i.ahu, ptr %0, align 8, !tbaa !48
  %i.ahx = getelementptr inbounds nuw i8, ptr %48, i64 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ahz = getelementptr inbounds nuw i8, ptr %48, i64 4
  %i.aia = load <4 x i8>, ptr %i.ahx, align 1, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %48, align 8, !tbaa !32
  store <4 x i8> %i.aia, ptr %i.ahy, align 1, !tbaa !32
  store i8 0, ptr %i.ahz, align 4, !tbaa !49
  %i.aib = getelementptr inbounds nuw i8, ptr %48, i64 5 ; 2 uses
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !32
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aic, ptr %i.aid, align 1, !tbaa !50
  store i8 0, ptr %i.aib, align 1, !tbaa !50
  %i.aie = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !51
  store ptr null, ptr %i.aie, align 8, !tbaa !51
  store ptr %i.aif, ptr %i.ahw, align 8, !tbaa !51
  br label %.critedge

bb.hl:                                            ; preds = %bb.hh
  %i.aig = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit126

bb.hm:                                            ; preds = %bb.hy
  %i.aih = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hn:                                            ; preds = %bb.hi
  %i.aii = load ptr, ptr %43, align 8, !tbaa !322 ; 3 uses
  store ptr null, ptr %43, align 8, !tbaa !322
  %.not.i.i90 = icmp eq ptr %i.aii, null
  br i1 %.not.i.i90, label %_ZNSt10unique_ptrIN7rocksdb2DBESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb2DBEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb2DBEEclEPS1_.exit.i.i: ; preds = %bb.hn
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !135
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 24
  %i.ail = load ptr, ptr %i.aik, align 8
end_hunk_1
