Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalUtil?download=true
inline.NumInlined: 403
inline.NumDeleted: 225
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [5 x i8], i64 }
%"class.folly::BasicFixedString.24" = type { [17 x i8], i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.fmt::v11::detail::format_arg_store.5" = type { [3 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.4 }
%union.anon.4 = type { i128 }
%"struct.fmt::v11::detail::format_arg_store" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.26" = type { [3 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.25" = type { [2 x %"class.fmt::v11::detail::value"] }
%"struct.fmt::v11::detail::format_arg_store.27" = type { [3 x %"class.fmt::v11::detail::value"] }
%"class.facebook::velox::Status" = type { ptr }
%"struct.fmt::v11::detail::format_arg_store.6" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.folly::Range" = type { ptr, ptr }
%"class.folly::Expected.17" = type { %"struct.folly::expected_detail::ExpectedStorage.base.20", [15 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base.20" = type <{ %union.anon.19, i8 }>
%union.anon.19 = type { i128 }
%"class.std::allocator" = type { i8 }
%"class.folly::Expected" = type { %"struct.folly::expected_detail::ExpectedStorage.base", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base" = type <{ %union.anon.7, i8 }>
%union.anon.7 = type { %"class.folly::Range" }
%class.anon = type { ptr }
%class.anon.11 = type { ptr }
%"class.folly::BadExpectedAccess" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr }
%"class.folly::ConversionError" = type <{ %"struct.folly::ConversionErrorBase", i8, [7 x i8] }>
%"struct.folly::ConversionErrorBase" = type { %"class.std::range_error" }
%"class.std::range_error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.15 }
%union.anon.15 = type { ptr }
%"class.folly::BadExpectedAccess.16" = type <{ %"class.folly::BadExpectedAccess", i8, [7 x i8] }>

$_ZN8facebook5velox11DecimalUtil17divideWithRoundUpInnlEET_RS3_T0_T1_bhh = comdat any

$_ZN8facebook5velox11DecimalUtil17divideWithRoundUpIoolEET_RS3_T0_T1_bhh = comdat any

$_ZN8facebook5velox6Status9UserErrorIJRA17_KcEEES1_DpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN8facebook5velox6Status9UserErrorIJRA38_KcEEES1_DpOT_ = comdat any

$_ZN8facebook5velox6Status9UserErrorIJRA57_KcEEES1_DpOT_ = comdat any

$_ZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessIvED0Ev = comdat any

$_ZNK5folly17BadExpectedAccessIvE4whatEv = comdat any

$_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_ = comdat any

$_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_ = comdat any

$_ZN5folly15ConversionErrorC2EOS0_ = comdat any

$_ZN5folly15ConversionErrorD0Ev = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev = comdat any

$_ZZN5folly2toIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_ = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZN8facebook5velox6Status11deleteStateEv = comdat any

$_ZN8facebook5velox11DecimalUtil12kPowersOfTenE = comdat any

$_ZTIN5folly17BadExpectedAccessIvEE = comdat any

$_ZTSN5folly17BadExpectedAccessIvEE = comdat any

$_ZTVN5folly17BadExpectedAccessIvEE = comdat any

$_ZTIN5folly15ConversionErrorE = comdat any

$_ZTSN5folly15ConversionErrorE = comdat any

$_ZTIN5folly19ConversionErrorBaseE = comdat any

$_ZTSN5folly19ConversionErrorBaseE = comdat any

$_ZTVN5folly15ConversionErrorE = comdat any

$_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZZN8facebook5velox11DecimalUtil17divideWithRoundUpInnlEET_RS3_T0_T1_bhhE18veloxCheckFailArgs = comdat any

$_ZN8facebook5velox12error_source16kErrorSourceUserE = comdat any

$_ZN8facebook5velox10error_code16kInvalidArgumentE = comdat any

$_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs = comdat any

$_ZN8facebook5velox10error_code16kArithmeticErrorE = comdat any

$_ZZN8facebook5velox11DecimalUtil17divideWithRoundUpIoolEET_RS3_T0_T1_bhhE18veloxCheckFailArgs = comdat any

$_ZZN8facebook5velox15checkedMultiplyIoEET_S2_S2_PKcE18veloxCheckFailArgs = comdat any

@.str = private unnamed_addr constant [24 x i8] c"Value is not a number. \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Value too large.\00", align 1
@_ZN8facebook5velox11DecimalUtil12kPowersOfTenE = linkonce_odr local_unnamed_addr constant [39 x i128] [i128 1, i128 10, i128 100, i128 1000, i128 10000, i128 100000, i128 1000000, i128 10000000, i128 100000000, i128 1000000000, i128 10000000000, i128 100000000000, i128 1000000000000, i128 10000000000000, i128 100000000000000, i128 1000000000000000, i128 10000000000000000, i128 100000000000000000, i128 1000000000000000000, i128 10000000000000000000, i128 100000000000000000000, i128 1000000000000000000000, i128 10000000000000000000000, i128 100000000000000000000000, i128 1000000000000000000000000, i128 10000000000000000000000000, i128 100000000000000000000000000, i128 1000000000000000000000000000, i128 10000000000000000000000000000, i128 100000000000000000000000000000, i128 1000000000000000000000000000000, i128 10000000000000000000000000000000, i128 100000000000000000000000000000000, i128 1000000000000000000000000000000000, i128 10000000000000000000000000000000000, i128 100000000000000000000000000000000000, i128 1000000000000000000000000000000000000, i128 10000000000000000000000000000000000000, i128 100000000000000000000000000000000000000], comdat, align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"{:.{}f}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"{}{}{}\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Input is empty.\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Extracted digits are empty.\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"The exponent part is empty.\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"The exponent part only contains sign.\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"Non-digit character is not allowed in the exponent part.\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Chars are invalid.\00", align 1
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@_ZTIN5folly15ConversionErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly15ConversionErrorE, ptr @_ZTIN5folly19ConversionErrorBaseE }, comdat, align 8
@_ZTSN5folly15ConversionErrorE = linkonce_odr constant [26 x i8] c"N5folly15ConversionErrorE\00", comdat, align 1
@_ZTIN5folly19ConversionErrorBaseE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly19ConversionErrorBaseE, ptr @_ZTISt11range_error }, comdat, align 8
@_ZTSN5folly19ConversionErrorBaseE = linkonce_odr constant [30 x i8] c"N5folly19ConversionErrorBaseE\00", comdat, align 1
@_ZTISt11range_error = external constant ptr
@_ZTVN5folly15ConversionErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly15ConversionErrorE, ptr @_ZNSt11range_errorD2Ev, ptr @_ZN5folly15ConversionErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant [50 x i8] c"N5folly17BadExpectedAccessINS_14ConversionCodeEEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@_ZZN8facebook5velox11DecimalUtil17divideWithRoundUpInnlEET_RS3_T0_T1_bhhE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.19, i64 301, ptr @.str.20, ptr @.str.21, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.19 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/velox/velox/./velox/type/DecimalUtil.h\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"divideWithRoundUp\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"b != 0\00", align 1
@_ZN8facebook5velox12error_source16kErrorSourceUserE = linkonce_odr constant %"class.folly::BasicFixedString" { [5 x i8] c"USER\00", i64 4 }, comdat, align 8
@_ZN8facebook5velox10error_code16kInvalidArgumentE = linkonce_odr constant %"class.folly::BasicFixedString.24" { [17 x i8] c"INVALID_ARGUMENT\00", i64 16 }, comdat, align 8
@.str.22 = private unnamed_addr constant [29 x i8] c"({} vs. {}) Division by zero\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Decimal\00", align 1
@_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.24, i64 51, ptr @.str.25, ptr @.str.1, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kArithmeticErrorE, i8 0 }, comdat, align 8
@.str.24 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/velox/velox/./velox/common/base/CheckedArithmetic.h\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"checkedMultiply\00", align 1
@_ZN8facebook5velox10error_code16kArithmeticErrorE = linkonce_odr constant %"class.folly::BasicFixedString.24" { [17 x i8] c"ARITHMETIC_ERROR\00", i64 16 }, comdat, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"{} overflow: {} * {}\00", align 1
@_ZZN8facebook5velox11DecimalUtil17divideWithRoundUpIoolEET_RS3_T0_T1_bhhE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.19, i64 301, ptr @.str.20, ptr @.str.21, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox15checkedMultiplyIoEET_S2_S2_PKcE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.24, i64 51, ptr @.str.25, ptr @.str.1, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kArithmeticErrorE, i8 0 }, comdat, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox11DecimalUtil8toStringB5cxx11EnRKNS0_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i128 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.5", align 16 ; 7 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %2)
  %.sroa.3.0.extract.shift = lshr i16 %i.a, 8     ; 3 uses
  %.sroa.3.0.extract.trunc = zext nneg i16 %.sroa.3.0.extract.shift to i32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.not.i = icmp eq i16 %.sroa.3.0.extract.shift, 0 ; 2 uses
  %i.b = icmp eq i128 %1, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !44
  store double 0.000000e+00, ptr %4, align 16, !tbaa !8, !noalias !44
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.3.0.extract.trunc, ptr %i.c, align 16, !tbaa !8, !noalias !44
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.3, i64 7, i64 42, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !44
  br label %_ZN8facebook5velox12_GLOBAL__N_113formatDecimalB5cxx11Ehn.exit

._crit_edge.i.i.i:                                ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !12, !alias.scope !43
  store i8 48, ptr %i.d, align 8, !tbaa !8, !alias.scope !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !15, !alias.scope !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !8, !alias.scope !43
  br label %_ZN8facebook5velox12_GLOBAL__N_113formatDecimalB5cxx11Ehn.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i128 %1, 0
  %spec.select.i = tail call i128 @llvm.abs.i128(i128 %1, i1 true) ; 2 uses
  %i.h = zext nneg i16 %.sroa.3.0.extract.shift to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.h
  %i.j = load i128, ptr %i.i, align 16, !tbaa !17, !noalias !43
  %.frozen = freeze i128 %i.j                     ; 2 uses
  %i.k = sdiv i128 %spec.select.i, %.frozen       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !43
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !12, !noalias !43
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i64 0, ptr %i.m, align 8, !tbaa !15, !noalias !43
  store i8 0, ptr %i.l, align 8, !tbaa !8, !noalias !43
  br i1 %.not.i, label %.noexc.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !43
  %i.n = mul i128 %i.k, %.frozen
  %.decomposed = sub i128 %spec.select.i, %i.n
  invoke void @_ZSt9to_stringB5cxx11n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i128 noundef %.decomposed)
          to label %bb.f unwind label %bb.aa, !noalias !43

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !43 ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.p, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.q = add nsw i64 %i.o, 1                      ; 3 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.t = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.t)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.l, align 8, !tbaa !8, !noalias !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.v = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.q, %i.v
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 46, ptr %i.w, align 1, !tbaa !8, !noalias !43
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %bb.i unwind label %bb.ab, !noalias !43

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 %i.q, ptr %i.m, align 8, !tbaa !15, !noalias !43
  %i.x = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  store i8 0, ptr %i.y, align 1, !tbaa !8, !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !43
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15, !noalias !43
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nsw i32 %.sroa.3.0.extract.trunc, %i.ab ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 2 uses
  %i.ad = zext nneg i32 %.sroa.speculated.i to i64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !12, !noalias !43
  %i.af = icmp sgt i32 %i.ac, 15
  br i1 %i.af, label %.thread7.i.i.i, label %bb.j

.thread7.i.i.i:                                   ; preds = %bb.i
  %i.ag = add nuw nsw i64 %i.ad, 1
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #22
          to label %.noexc36.i unwind label %bb.ac, !noalias !43 ; 2 uses

.noexc36.i:                                       ; preds = %.thread7.i.i.i
  store ptr %i.ah, ptr %7, align 8, !tbaa !18, !noalias !43
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !8, !noalias !43
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  switch i32 %.sroa.speculated.i, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  store i8 48, ptr %i.ae, align 8, !tbaa !8, !noalias !43
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %.noexc36.i
  %i.ai = phi ptr [ %i.ah, %.noexc36.i ], [ %i.ae, %bb.j ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 48, i64 %i.ad, i1 false), !noalias !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.aj = phi ptr [ %i.ae, %bb.j ], [ %i.ai, %bb.l ], [ %i.ae, %bb.k ]
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !15, !noalias !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ad
  store i8 0, ptr %i.al, align 1, !tbaa !8, !noalias !43
  %i.am = load ptr, ptr %7, align 8, !tbaa !18, !noalias !43 ; 3 uses
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !15, !noalias !43 ; 6 uses
  %i.ao = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !43 ; 5 uses
  %i.ap = sub i64 9223372036854775807, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
          to label %.noexc37.i unwind label %bb.ad, !noalias !43

.noexc37.i:                                       ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.ar = add i64 %i.ao, %i.an                    ; 3 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.l
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.au = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.av = load i64, ptr %i.l, align 8, !tbaa !8, !noalias !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aw = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.ar, %i.aw
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not8.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.an, 1
  br i1 %cond.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load i8, ptr %i.am, align 1, !tbaa !8, !noalias !43
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !8, !noalias !43
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.am, i64 %i.an, i1 false), !noalias !43
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ao, i64 noundef 0, ptr noundef %i.am, i64 noundef %i.an)
          to label %bb.t unwind label %bb.ad, !noalias !43

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !15, !noalias !43
  %i.az = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 0, ptr %i.ba, align 1, !tbaa !8, !noalias !43
  %i.bb = load ptr, ptr %7, align 8, !tbaa !18, !noalias !43 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ae
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.bd = load i64, ptr %i.ae, align 8, !tbaa !8, !noalias !43
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24, !noalias !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !43
  %i.bf = load ptr, ptr %6, align 8, !tbaa !18, !noalias !43 ; 3 uses
  %i.bg = load i64, ptr %i.z, align 8, !tbaa !15, !noalias !43 ; 6 uses
  %i.bh = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !43 ; 5 uses
  %i.bi = sub i64 9223372036854775807, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bg
  br i1 %i.bj, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i39.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
          to label %.cont.i unwind label %bb.ab, !noalias !43

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i39.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bk = add i64 %i.bh, %i.bg                    ; 3 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.l
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i45.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i39.i
  %i.bn = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i39.i
  %i.bo = load i64, ptr %i.l, align 8, !tbaa !8, !noalias !43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i41.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i45.i
  %i.bp = phi i64 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i40.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i45.i ]
  %.not.i.i.i.i42.i = icmp ugt i64 %i.bk, %i.bp
  br i1 %.not.i.i.i.i42.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i41.i
  %.not8.i.i.i.i43.i = icmp eq i64 %i.bg, 0
  br i1 %.not8.i.i.i.i43.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh ; 2 uses
  %cond.i.i.i.i44.i = icmp eq i64 %i.bg, 1
  br i1 %cond.i.i.i.i44.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !8, !noalias !43
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !8, !noalias !43
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bf, i64 %i.bg, i1 false), !noalias !43
  br label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i41.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bh, i64 noundef 0, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %bb.z unwind label %bb.ab, !noalias !43

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  store i64 %i.bk, ptr %i.m, align 8, !tbaa !15, !noalias !43
  %i.bs = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store i8 0, ptr %i.bt, align 1, !tbaa !8, !noalias !43
  %i.bu = load ptr, ptr %6, align 8, !tbaa !18, !noalias !43 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.z
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !8, !noalias !43
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #24, !noalias !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !43
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !18, !noalias !43
  %.pre78.i = load i64, ptr %i.m, align 8, !tbaa !15, !noalias !43
  br label %.noexc.i

bb.aa:                                            ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

bb.ab:                                            ; preds = %bb.y, %.invoke.i, %bb.h
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %.thread7.i.i.i
end_hunk_0
