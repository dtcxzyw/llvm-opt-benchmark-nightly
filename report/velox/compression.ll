inline.NumInlined: 395
inline.NumDeleted: 164
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.arrow::Status" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.arrow::Result" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage", [4 x i8] }>
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<4, 4>::type" }
%"union.std::aligned_storage<4, 4>::type" = type { [4 x i8] }
%"class.arrow::Result.2" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.5", [4 x i8] }>
%"class.arrow::internal::AlignedStorage.5" = type { %"union.std::aligned_storage<4, 4>::type" }
%"class.arrow::Result.7" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.10" }
%"class.arrow::internal::AlignedStorage.10" = type { %"union.std::aligned_storage<8, 8>::type" }
%"union.std::aligned_storage<8, 8>::type" = type { [8 x i8] }
%"class.arrow::util::CodecOptions" = type <{ ptr, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.13" }
%"struct.std::_Head_base.13" = type { ptr }
%"class.arrow::util::detail::StringStreamWrapper" = type { %"class.std::unique_ptr.14", ptr }
%"class.std::unique_ptr.14" = type { %"struct.std::__uniq_ptr_data.15" }
%"struct.std::__uniq_ptr_data.15" = type { %"class.std::__uniq_ptr_impl.16" }
%"class.std::__uniq_ptr_impl.16" = type { %"class.std::tuple.17" }
%"class.std::tuple.17" = type { %"struct.std::_Tuple_impl.18" }
%"struct.std::_Tuple_impl.18" = type { %"struct.std::_Head_base.21" }
%"struct.std::_Head_base.21" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN5arrow6Status7InvalidIJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_ = comdat any

$_ZN5arrow6ResultINS_11Compression4typeEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6ResultIiEC2ERKNS_6StatusE = comdat any

$_ZN5arrow4util12CodecOptionsD2Ev = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE = comdat any

$_ZN5arrow4util5CodecD2Ev = comdat any

$_ZN5arrow4util5CodecD0Ev = comdat any

$_ZNK5arrow4util5Codec17compression_levelEv = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status8FromArgsIJRA69_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow4util12CodecOptionsD0Ev = comdat any

$_ZN5arrow4util13StringBuilderIJRA32_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow4util13StringBuilderIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_EEESA_DpOT_ = comdat any

$_ZN5arrow4util13StringBuilderIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEESA_DpOT_ = comdat any

$_ZTIN5arrow4util12CodecOptionsE = comdat any

$_ZTSN5arrow4util12CodecOptionsE = comdat any

$_ZTIN5arrow4util16GZipCodecOptionsE = comdat any

$_ZTSN5arrow4util16GZipCodecOptionsE = comdat any

$_ZTVN5arrow4util12CodecOptionsE = comdat any

@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11 = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@__dso_handle = external hidden global i8
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11 = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11 = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11 = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11 = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"brotli\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11 = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"lz4_raw\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11 = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11 = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"lz4_hadoop\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11 = internal global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11 = internal global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11 = internal global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Unrecognized compression type: \00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"LZO codec not implemented\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Unrecognized codec\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Support for codec '\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"' not built\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Codec '\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"' doesn't support setting a compression level.\00", align 1
@_ZTIN5arrow4util12CodecOptionsE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5arrow4util12CodecOptionsE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow4util12CodecOptionsE = linkonce_odr constant [28 x i8] c"N5arrow4util12CodecOptionsE\00", comdat, align 1
@_ZTIN5arrow4util16GZipCodecOptionsE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow4util16GZipCodecOptionsE, ptr @_ZTIN5arrow4util12CodecOptionsE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow4util16GZipCodecOptionsE = linkonce_odr constant [32 x i8] c"N5arrow4util16GZipCodecOptionsE\00", comdat, align 1
@_ZTVN5arrow4util5CodecE = unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN5arrow4util5CodecE, ptr @_ZN5arrow4util5CodecD2Ev, ptr @_ZN5arrow4util5CodecD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK5arrow4util5Codec17compression_levelEv, ptr @_ZN5arrow4util5Codec4InitEv] }, align 8
@_ZTIN5arrow4util5CodecE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5arrow4util5CodecE }, align 8
@_ZTSN5arrow4util5CodecE = constant [20 x i8] c"N5arrow4util5CodecE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"The specified codec does not support the compression level parameter\00", align 1
@_ZTVN5arrow4util12CodecOptionsE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5arrow4util12CodecOptionsE, ptr @_ZN5arrow4util12CodecOptionsD2Ev, ptr @_ZN5arrow4util12CodecOptionsD0Ev] }, comdat, align 8
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE = private unnamed_addr constant [10 x ptr] [ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5arrow4util5Codec26UseDefaultCompressionLevelEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i32 -2147483648
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow4util5Codec4InitEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !7, !alias.scope !11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11) #22
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.at

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE12uncompressedB5cxx11) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11 acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.i, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11) #22
  %.not5 = icmp eq i32 %i.g, 0
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %bb.au

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6snappyB5cxx11) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11 acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.m, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11) #22
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.l unwind label %bb.av

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4gzipB5cxx11) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.m = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11 acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.n, label %bb.q, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11) #22
  %.not7 = icmp eq i32 %i.o, 0
  br i1 %.not7, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %bb.aw

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.p = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lzoB5cxx11) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %i.q = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11 acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.r, label %bb.u, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11) #22
  %.not8 = icmp eq i32 %i.s, 0
  br i1 %.not8, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.t unwind label %bb.ax

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE6brotliB5cxx11) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.u = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11 acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.v, label %bb.y, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11) #22
  %.not9 = icmp eq i32 %i.w, 0
  br i1 %.not9, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.x unwind label %bb.ay

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.x = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7lz4_rawB5cxx11) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.y = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11 acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.z, label %bb.ac, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11) #22
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ab unwind label %bb.az

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3lz4B5cxx11) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %i.ac = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11 acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.ad, label %bb.ag, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11) #22
  %.not11 = icmp eq i32 %i.ae, 0
  br i1 %.not11, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.af unwind label %bb.ba

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.af = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE10lz4_hadoopB5cxx11) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.ac
  %i.ag = load atomic i8, ptr @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11 acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.ah, label %bb.ak, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.ai = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11) #22
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.aj unwind label %bb.bb
end_hunk_0
begin_hunk_1_@_ZN5arrow4util5Codec23MaximumCompressionLevelENS_11Compression4typeE:bb.a
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #22, !inline_history !58
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !7
  %i.aa = icmp eq ptr %.pr.pre.i, null
  br i1 %i.aa, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !59

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i, %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit: ; preds = %bb.h, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13.thread, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #25
          to label %.noexc unwind label %bb.p     ; 9 uses

.noexc:                                           ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 8, !tbaa !30
  store i8 %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.k, ptr %i.a, align 8, !tbaa !18
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.h   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !20
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.n, ptr %i.h, align 8, !tbaa !22
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %.noexc
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %.noexc ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !22
  store i8 %i.p, ptr %i.o, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !39
  store <2 x ptr> %i.y, ptr %i.u, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 56) #24
  br label %.body

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i, %bb.a
  %i.af = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  store ptr %i.af, ptr %0, align 8, !tbaa !7
  %i.ag = load ptr, ptr %1, align 8, !tbaa !7
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.o, !prof !40

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !22
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.as = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !22
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.i
  ret void

bb.p:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.h, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.ae, %bb.h ]
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util5Codec6CreateENS_11Compression4typeERKNS0_12CodecOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.7") align 8 %0, i32 noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(12) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  switch i32 %1, label %bb.d [
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 2, label %bb.p
    i32 4, label %bb.p
    i32 9, label %bb.p
    i32 5, label %bb.p
    i32 6, label %bb.p
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5arrow6Status8FromArgsIJRA26_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(26) @.str.12)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #22
  %i.b = load ptr, ptr %5, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !20
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.d ] ; 2 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !22
  store i8 %i.l, ptr %i.k, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = load ptr, ptr %6, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.q = load i64, ptr %i.n, align 8, !tbaa !23
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load ptr, ptr %6, align 8, !tbaa !20     ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1852534389
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1853321070
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(19) @.str.13)
          to label %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit unwind label %bb.h

_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #22
  %i.ac = load ptr, ptr %7, align 8, !tbaa !7
  %.not.i32 = icmp eq ptr %i.ac, null
  br i1 %.not.i32, label %_ZN5arrow6StatusD2Ev.exit33, label %bb.g, !prof !26

bb.g:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN5arrow6StatusD2Ev.exit33

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6Status7InvalidIJRA19_KcEEES0_DpOT_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.n

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.o

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !60
  invoke void @_ZN5arrow4util13StringBuilderIJRA20_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 1 dereferenceable(12) @.str.15)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %4, align 8, !tbaa !20, !noalias !60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !22, !noalias !60
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.k:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !20, !noalias !60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.k
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !22, !noalias !60
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !60
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !60
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #22
  %i.aq = load ptr, ptr %8, align 8, !tbaa !7
  %.not.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i34, label %_ZN5arrow6StatusD2Ev.exit35, label %bb.l, !prof !26

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  br label %_ZN5arrow6StatusD2Ev.exit35

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.o

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35, %_ZN5arrow6StatusD2Ev.exit33
  %i.as = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.au = load i64, ptr %i.d, align 8, !tbaa !22
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

bb.o:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %eh.lpad-body, %.body ]
  %i.aw = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.o
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !22
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !48 ; 5 uses
  %.not = icmp eq i32 %i.bb, -2147483648
  br i1 %.not, label %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %1, label %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit [
    i32 2, label %bb.v
    i32 4, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74
    i32 5, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56
    i32 6, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62
    i32 3, label %bb.x
    i32 8, label %bb.x
  ]

_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !65
  call void @_ZN5arrow4util13StringBuilderIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(8) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 1 dereferenceable(47) @.str.17), !noalias !65
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit
  %i.bd = load ptr, ptr %3, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !22, !noalias !65
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit

bb.s:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !20, !noalias !65 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40: ; preds = %bb.s
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22, !noalias !65
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.cm, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i41: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !65
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !65
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #22
  %i.bo = load ptr, ptr %9, align 8, !tbaa !7
  %.not.i45 = icmp eq ptr %i.bo, null
  br i1 %.not.i45, label %_ZN5arrow6StatusD2Ev.exit46, label %bb.t, !prof !26

bb.t:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %_ZN5arrow6StatusD2Ev.exit46

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6Status7InvalidIJRA8_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA47_S2_EEES0_DpOT_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread: ; preds = %bb.p
  switch i32 %1, label %bb.x [
    i32 0, label %bb.u
    i32 1, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit
    i32 2, label %bb.v
    i32 4, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74
    i32 5, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56
    i32 6, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62
    i32 9, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68
  ]

bb.u:                                             ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN5arrow4util8internal15MakeSnappyCodecEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10)
  %i.bp = load ptr, ptr %10, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.x

bb.v:                                             ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  %i.bq = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN5arrow4util12CodecOptionsE, ptr nonnull @_ZTIN5arrow4util16GZipCodecOptionsE, i64 0) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.not28 = icmp eq ptr %i.bq, null
  br i1 %.not28, label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load i64, ptr %i.bt, align 8
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50: ; preds = %bb.v, %bb.w
  %i.bv = phi i32 [ %i.bs, %bb.w ], [ 2, %bb.v ]
  %.sroa.0.0.insert.insert = phi i64 [ %i.bu, %bb.w ], [ 0, %bb.v ]
  call void @_ZN5arrow4util8internal13MakeGZipCodecEiNS0_10GZipFormatESt8optionalIiE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, i32 noundef %i.bb, i32 noundef %i.bv, i64 %.sroa.0.0.insert.insert)
  %i.bw = load ptr, ptr %11, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN5arrow4util8internal15MakeLz4RawCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, i32 noundef %i.bb)
  %i.bx = load ptr, ptr %12, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN5arrow4util8internal17MakeLz4FrameCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, i32 noundef %i.bb)
  %i.by = load ptr, ptr %13, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68: ; preds = %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN5arrow4util8internal21MakeLz4HadoopRawCodecEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14)
  %i.bz = load ptr, ptr %14, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.x

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74: ; preds = %bb.q, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN5arrow4util8internal13MakeZSTDCodecEi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %15, i32 noundef %i.bb)
  %i.ca = load ptr, ptr %15, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %bb.q, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread
  %.sroa.090.0 = phi ptr [ null, %_ZN5arrow4util5Codec24SupportsCompressionLevelENS_11Compression4typeE.exit.thread ], [ %i.bp, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit ], [ %i.bw, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit50 ], [ %i.ca, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit74 ], [ %i.bx, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit56 ], [ %i.by, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit62 ], [ %i.bz, %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EEaSEOS5_.exit68 ], [ null, %bb.q ], [ null, %bb.q ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cb = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.090.0)
          to label %_ZN5arrow6StatusD2Ev.exit79 unwind label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88

_ZN5arrow6StatusD2Ev.exit79:                      ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.ce = load ptr, ptr %17, align 8, !tbaa !7, !noalias !78 ; 2 uses
  store ptr %i.ce, ptr %16, align 8, !tbaa !7, !alias.scope !78
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit83, label %bb.y, !prof !26

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit79
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.cg = load ptr, ptr %16, align 8, !tbaa !7
  %.not.i80 = icmp eq ptr %i.cg, null
  br i1 %.not.i80, label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85, label %bb.z, !prof !26

bb.z:                                             ; preds = %bb.y
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85

_ZN5arrow6StatusD2Ev.exit83:                      ; preds = %_ZN5arrow6StatusD2Ev.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = ptrtoint ptr %.sroa.090.0 to i64
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !50
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.cj = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.090.0) #22, !inline_history !57
  br label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86

_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i88: ; preds = %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.cn = load ptr, ptr %.sroa.090.0, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.090.0) #22, !inline_history !57
  br label %common.resume

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit86: ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit83, %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit.i85, %_ZN5arrow6StatusD2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util12CodecOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #22, !inline_history !81
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !7
  %i.h = icmp eq ptr %.pr.pre, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread, !prof !59

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util5Codec23MinimumCompressionLevelENS_11Compression4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.2") align 8 %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Result.7", align 8   ; 12 uses
  %5 = alloca %"class.arrow::util::CodecOptions", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  switch i32 %1, label %_ZN5arrow6StatusD2Ev.exit [
    i32 2, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 3, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 4, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 8, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 6, label %_ZN5arrow6StatusD2Ev.exit.thread
    i32 5, label %_ZN5arrow6StatusD2Ev.exit.thread
  ]

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA69_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(69) @.str.18)
  %.pr = load ptr, ptr %3, align 8, !tbaa !7, !noalias !82 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  store ptr %.pr, ptr %2, align 8, !tbaa !7, !alias.scope !82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.a = icmp eq ptr %.pr, null
  br i1 %i.a, label %bb.d, label %bb.b, !prof !44

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  %.pr20 = load ptr, ptr %2, align 8, !tbaa !7
  %.not.i12 = icmp eq ptr %.pr20, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit13.thread

_ZN5arrow6StatusD2Ev.exit13.thread:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow4util12CodecOptionsE, i64 16), ptr %5, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -2147483648, ptr %i.b, align 8, !tbaa !48
  call void @_ZN5arrow4util5Codec6CreateENS_11Compression4typeERKNS0_12CodecOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.7") align 8 %4, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.c = load ptr, ptr %4, align 8, !tbaa !7
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !85
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  store ptr null, ptr %i.e, align 8, !tbaa !50, !noalias !85
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 8, !tbaa !3
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !57
  br label %bb.g

_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #22, !inline_history !57
  call void @_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.p

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow4util5CodecESt14default_deleteIS2_EED2Ev.exit, %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !7
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_4util5CodecESt14default_deleteIS3_EEE7DestroyEv.exit.i: ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
end_hunk_1
