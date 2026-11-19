Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/JsonTestUtil?download=true
inline.NumInlined: 640
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.4", i8 }
%"struct.std::array.4" = type { [15 x i8] }
%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.14" = type { [100 x i16] }
%"struct.folly::c_array.15" = type { [7 x i8] }
%"struct.folly::c_array.19" = type { [5 x i8] }
%"struct.folly::dynamic" = type { i32, %"union.folly::dynamic::Data" }
%"union.folly::dynamic::Data" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.folly::TypeError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.3 }
%union.anon.3 = type { ptr }
%"class.std::allocator.0" = type { i8 }
%"class.folly::ConversionError" = type <{ %"struct.folly::ConversionErrorBase", i8, [7 x i8] }>
%"struct.folly::ConversionErrorBase" = type { %"class.std::range_error" }
%"class.std::range_error" = type { %"class.std::runtime_error" }
%class.anon.13 = type { ptr }
%"class.folly::BadExpectedAccess" = type { %"class.std::exception" }
%class.anon.18 = type { ptr }
%"class.folly::Range" = type { ptr, ptr }
%"class.folly::Expected.21" = type { %"struct.folly::expected_detail::ExpectedStorage.base", [7 x i8] }
%"struct.folly::expected_detail::ExpectedStorage.base" = type <{ %union.anon.23, i8 }>
%union.anon.23 = type { %"class.folly::Range" }
%class.anon.26 = type { ptr }
%class.anon.28 = type { ptr }
%"class.folly::BadExpectedAccess.30" = type <{ %"class.folly::BadExpectedAccess", i8, [7 x i8] }>
%class.anon.32 = type { ptr }
%class.anon.35 = type { ptr }

$_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5folly9TypeErrorC2EOS0_ = comdat any

$_ZN5folly9TypeErrorD0Ev = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessIvED0Ev = comdat any

$_ZNK5folly17BadExpectedAccessIvE4whatEv = comdat any

$_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_ = comdat any

$_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_ = comdat any

$_ZN5folly15ConversionErrorC2EOS0_ = comdat any

$_ZN5folly15ConversionErrorD0Ev = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_clPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZNK5folly7dynamic6asImplIlEET_v = comdat any

$_ZN5folly2toIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_ = comdat any

$_ZZN5folly2toIldEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEE4callIJA2_cPKcA3_cdPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEENSt9enable_ifIXaasr3std17is_floating_pointIT0_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeES8_PS9_ = comdat any

$_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_ = comdat any

$_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessINS_14ConversionCodeEEEJS3_EEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_17BadExpectedAccessINS_14ConversionCodeEEEEEvOT_ = comdat any

$_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev = comdat any

$_ZZN5folly2toIlEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_ = comdat any

$_ZNK5folly7dynamic6asImplIdEET_v = comdat any

$_ZN5folly2toIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_ = comdat any

$_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE_clES9_ = comdat any

$_ZZN5folly2toIdEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueES6_E4typeES5_ENKUlNS_14ConversionCodeEE0_clES9_ = comdat any

$_ZTIN5folly9TypeErrorE = comdat any

$_ZTSN5folly9TypeErrorE = comdat any

$_ZTVN5folly9TypeErrorE = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

$_ZTIN5folly17BadExpectedAccessIvEE = comdat any

$_ZTSN5folly17BadExpectedAccessIvEE = comdat any

$_ZTVN5folly17BadExpectedAccessIvEE = comdat any

$_ZTIN5folly15ConversionErrorE = comdat any

$_ZTSN5folly15ConversionErrorE = comdat any

$_ZTIN5folly19ConversionErrorBaseE = comdat any

$_ZTSN5folly19ConversionErrorBaseE = comdat any

$_ZTVN5folly15ConversionErrorE = comdat any

$_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE = comdat any

$_ZN5folly6detail18pretty_name_zarrayIlNS0_14pretty_tag_gccEE6zarrayE = comdat any

$_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

$_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = comdat any

@_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZTIN5folly9TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly9TypeErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly9TypeErrorE = linkonce_odr constant [19 x i8] c"N5folly9TypeErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly9TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly9TypeErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly9TypeErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.4" zeroinitializer, i8 -1 }, comdat, align 16
@_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE = external local_unnamed_addr constant ptr, align 8
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@_ZTIN5folly15ConversionErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly15ConversionErrorE, ptr @_ZTIN5folly19ConversionErrorBaseE }, comdat, align 8
@_ZTSN5folly15ConversionErrorE = linkonce_odr constant [26 x i8] c"N5folly15ConversionErrorE\00", comdat, align 1
@_ZTIN5folly19ConversionErrorBaseE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly19ConversionErrorBaseE, ptr @_ZTISt11range_error }, comdat, align 8
@_ZTSN5folly19ConversionErrorBaseE = linkonce_odr constant [30 x i8] c"N5folly19ConversionErrorBaseE\00", comdat, align 1
@_ZTISt11range_error = external constant ptr
@_ZTVN5folly15ConversionErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly15ConversionErrorE, ptr @_ZNSt11range_errorD2Ev, ptr @_ZN5folly15ConversionErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c") \00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.14", align 2
@_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE = linkonce_odr constant %"struct.folly::c_array.15" { [7 x i8] c"double\00" }, comdat, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"int/double/bool/string\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@_ZN5folly6detail18pretty_name_zarrayIlNS0_14pretty_tag_gccEE6zarrayE = linkonce_odr constant %"struct.folly::c_array.19" { [5 x i8] c"long\00" }, comdat, align 1
@_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant [50 x i8] c"N5folly17BadExpectedAccessINS_14ConversionCodeEEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly11compareJsonENS_5RangeIPKcEES3_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %5 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %4, ptr %0, ptr %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %5, ptr %2, ptr %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %i.a

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.b, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly25compareJsonWithNestedJsonENS_5RangeIPKcEES3_j(ptr %0, ptr %1, ptr %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %6 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %5, ptr %0, ptr %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %6, ptr %2, ptr %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN5folly28compareDynamicWithNestedJsonERKNS_7dynamicES2_j(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %i.a

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.b, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly28compareDynamicWithNestedJsonERKNS_7dynamicES2_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %4 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %i.c, %i.d
  br i1 %.not, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

bb.d:                                             ; preds = %bb.c
  switch i32 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread [
    i32 1, label %bb.e
    i32 5, label %bb.k
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.f = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not31 = icmp eq i64 %i.e, %i.f
  br i1 %.not31, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.not.i.i.i, label %_ZNK5folly7dynamic5beginEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.h, i32 noundef %i.g) #7
  unreachable

_ZNK5folly7dynamic5beginEv.exit:                  ; preds = %bb.f
  %i.i = load i32, ptr %1, align 8, !tbaa !16     ; 2 uses
  %.not.i.not.i.i.i32 = icmp eq i32 %i.i, 1
  br i1 %.not.i.not.i.i.i32, label %_ZNK5folly7dynamic3endEv.exit.lr.ph, label %bb.h

bb.h:                                             ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.j = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.j, i32 noundef %i.i) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit.lr.ph:              ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK5folly7dynamic3endEv.exit

._crit_edge:                                      ; preds = %bb.j
  %i.p = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.p, i32 noundef %i.v) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit:                    ; preds = %_ZNK5folly7dynamic3endEv.exit.lr.ph, %bb.j
  %.sroa.058.073 = phi ptr [ %i.n, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.t, %bb.j ] ; 3 uses
  %.sroa.056.072 = phi ptr [ %i.l, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.u, %bb.j ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.r = icmp eq ptr %.sroa.058.073, %i.q         ; 3 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly7dynamic3endEv.exit
end_hunk_0
begin_hunk_1_@_ZN5folly28compareDynamicWithNestedJsonERKNS_7dynamicES2_j:bb.a
bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.058.073, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.056.072, i64 40
  %i.v = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not.i.not.i.i.i34 = icmp eq i32 %i.v, 1
  br i1 %.not.i.not.i.i.i34, label %_ZNK5folly7dynamic3endEv.exit, label %._crit_edge, !llvm.loop !66

bb.k:                                             ; preds = %bb.d
  %i.w = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.x = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not30 = icmp eq i64 %i.w, %i.x
  br i1 %.not30, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not.i.not.i.i.i35 = icmp eq i32 %i.y, 5
  br i1 %.not.i.not.i.i.i35, label %_ZNK5folly7dynamic5itemsEv.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.z, i32 noundef %i.y) #7
  unreachable

_ZNK5folly7dynamic5itemsEv.exit37:                ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25 ; 3 uses
  %i.ac = and i64 %i.ab, -8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = shl i64 %i.ab, 1
  %i.af = and i64 %i.ae, 14
  %i.ag = lshr i64 %i.ab, 3
  %i.ah = and i64 %i.ag, 1
  %i.ai = or disjoint i64 %i.af, %i.ah
  %i.aj = tail call fastcc noundef zeroext i1 @"_ZSt6all_ofIN5folly7dynamic19const_item_iteratorEZNS0_28compareDynamicWithNestedJsonERKS1_S4_jE3$_0EbT_S6_T0_"(ptr %i.ad, i64 %i.ai, ptr null, ptr %1, i32 %2)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit:      ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28 ; 3 uses
  %.not67 = icmp eq i64 %i.al, 0
  br i1 %.not67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29 ; 4 uses
  %i.ao = tail call ptr @memchr(ptr noundef %i.an, i32 noundef 123, i64 noundef %i.al) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.not28 = icmp eq i64 %i.ar, -1
  %or.cond = or i1 %.not.i, %.not28
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit40

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit40:    ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %.not68 = icmp eq i64 %i.au, 0
  br i1 %.not68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i42

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i42:     ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit40
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.aw = tail call ptr @memchr(ptr noundef %i.av, i32 noundef 123, i64 noundef %i.au) #22 ; 2 uses
  %.not.i43 = icmp eq ptr %i.aw, null
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not29 = icmp eq i64 %i.az, -1
  %or.cond66 = or i1 %.not.i43, %.not29
  br i1 %or.cond66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  invoke void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %3, ptr %i.an, ptr nonnull %i.ba)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bb = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i48 = icmp eq i32 %i.bb, 6
  br i1 %.not.i.not.i.i.i48, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4nameE, align 8, !tbaa !19
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.bc, i32 noundef %i.bb) #7
          to label %.noexc49 unwind label %bb.t

.noexc49:                                         ; preds = %bb.p
  unreachable

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit50:    ; preds = %bb.o
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.be = load i64, ptr %i.at, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  invoke void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %4, ptr %i.bd, ptr %i.bf)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit50
  %i.bg = add i32 %2, -1
  %i.bh = invoke noundef zeroext i1 @_ZN5folly28compareDynamicWithNestedJsonERKNS_7dynamicES2_j(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %i.bg)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

bb.s:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.t:                                             ; preds = %bb.p, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit50
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %i.bj, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.bi, %bb.s ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bl = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread: ; preds = %_ZNK5folly7dynamic3endEv.exit, %bb.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i42, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit40, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit, %bb.d, %bb.w, %bb.k, %bb.e, %bb.c, %bb.b, %bb.a, %bb.r, %_ZNK5folly7dynamic5itemsEv.exit37
  %.126 = phi i1 [ false, %bb.k ], [ true, %bb.a ], [ false, %bb.b ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i42 ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit ], [ %i.aj, %_ZNK5folly7dynamic5itemsEv.exit37 ], [ %i.bh, %bb.r ], [ false, %bb.w ], [ false, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit40 ], [ false, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %i.r, %bb.i ], [ %i.r, %_ZNK5folly7dynamic3endEv.exit ]
  ret i1 %.126
}

declare noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZSt6all_ofIN5folly7dynamic19const_item_iteratorEZNS0_28compareDynamicWithNestedJsonERKS1_S4_jE3$_0EbT_S6_T0_"(ptr nofree readonly captures(address) %0, i64 %1, ptr nofree readnone captures(address) %2, ptr nonnull %3, i32 %.0.val) unnamed_addr #4 {
bb.a:
  %.not27 = icmp eq ptr %0, %2
  br i1 %.not27, label %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit
  %.sroa.015.029 = phi ptr [ %.sroa.015.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %0, %bb.a ] ; 5 uses
  %.sroa.9.028 = phi i64 [ %.sroa.9.3, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.sroa.015.029, align 8, !tbaa !31 ; 2 uses
  %i.b = tail call noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.a), !inline_history !67 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5folly28compareDynamicWithNestedJsonERKNS2_7dynamicES5_jE3$_0EclINS3_19const_item_iteratorEEEbT_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5folly28compareDynamicWithNestedJsonERKNS2_7dynamicES5_jE3$_0EclINS3_19const_item_iteratorEEEbT_.exit": ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = tail call noundef zeroext i1 @_ZN5folly28compareDynamicWithNestedJsonERKNS_7dynamicES2_j(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %.0.val), !inline_history !68
  br i1 %i.d, label %bb.b, label %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit"

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5folly28compareDynamicWithNestedJsonERKNS2_7dynamicES5_jE3$_0EclINS3_19const_item_iteratorEEEbT_.exit"
  %i.e = getelementptr inbounds i8, ptr %.sroa.015.029, i64 -16
  %.neg.i.i.i.i.i = mul i64 %.sroa.9.028, -8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.neg.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i = icmp eq i64 %.sroa.9.028, 0
  br i1 %.not19.i5.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

.critedge.i.i.i.i.preheader:                      ; preds = %bb.c, %bb.b
  br label %.critedge.i.i.i.i

bb.c:                                             ; preds = %thread-pre-split.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not19.i.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.i, %bb.c ], [ %.sroa.9.028, %bb.b ]
  %i.h = phi ptr [ %i.j, %bb.c ], [ %.sroa.015.029, %bb.b ]
  %i.i = add i64 %i.g, -1                         ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !33, !llvm.loop !0

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %bb.d
  %.017.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.f, %.critedge.i.i.i.i.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 14
  %i.n = load i8, ptr %i.m, align 1, !tbaa !32
  %i.o = and i8 %i.n, 15
  %.not2.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not2.i.i.i, label %bb.d, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !34

bb.d:                                             ; preds = %.critedge.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -128 ; 4 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !tbaa !32
  %i.r = icmp eq <16 x i8> %i.q, zeroinitializer
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383                      ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %.not3.i.i.i = icmp eq i16 %i.t, 16383
  br i1 %.not3.i.i.i, label %.critedge.i.i.i.i, label %bb.e, !prof !33, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  %i.v = xor i16 %i.t, 16383
  %i.w = zext nneg i16 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %4 = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %4)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit: ; preds = %thread-pre-split.i.i.i, %.critedge.i.i.i.i, %bb.e
  %.sroa.9.3 = phi i64 [ 0, %.critedge.i.i.i.i ], [ %i.z, %bb.e ], [ %i.i, %thread-pre-split.i.i.i ]
  %.sroa.015.1 = phi ptr [ null, %.critedge.i.i.i.i ], [ %i.ac, %bb.e ], [ %i.j, %thread-pre-split.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.015.1, %2
  br i1 %.not, label %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit", label %.lr.ph, !llvm.loop !69

"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit": ; preds = %.lr.ph, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5folly28compareDynamicWithNestedJsonERKNS2_7dynamicES5_jE3$_0EclINS3_19const_item_iteratorEEEbT_.exit"
  %.sroa.015.0.lcssa.ph = phi ptr [ %.sroa.015.029, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN5folly28compareDynamicWithNestedJsonERKNS2_7dynamicES5_jE3$_0EclINS3_19const_item_iteratorEEEbT_.exit" ], [ %2, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %.sroa.015.029, %.lr.ph ]
  %i.ad = icmp eq ptr %2, %.sroa.015.0.lcssa.ph
  br label %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit"

"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit": ; preds = %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit", %bb.a
  %.sroa.015.0.lcssa = phi i1 [ true, %bb.a ], [ %i.ad, %"_ZSt13__find_if_notIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_28compareDynamicWithNestedJsonERKS1_S7_jE3$_0EEET_SA_SA_T0_.exit.loopexit" ]
  ret i1 %.sroa.015.0.lcssa
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::TypeError", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN5folly9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7dynamic4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %2) #7
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.a, %bb.d ]
  %i.c = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !32
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 2 uses
  tail call void @_ZN5folly9TypeErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !33

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29
  store i64 %i.c, ptr %i.a, align 8, !tbaa !32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !32
  store i8 %i.j, ptr %i.i, align 1, !tbaa !32
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !32
  ret void
}

declare void @_ZN5folly9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7dynamic4TypeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9TypeErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly9TypeErrorE, i64 16), ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9TypeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2
end_hunk_1
begin_hunk_2_@_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d:bb.a

_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.e
  %i.s = fptosi double %i.j to i64
  %.not.i.i.i41 = icmp eq i64 %i.i, %i.s
  br i1 %.not.i.i.i41, label %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit, label %bb.i, !prof !34

bb.i:                                             ; preds = %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i, %bb.h, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.a, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_(ptr dead_on_unwind nonnull writable sret(%"class.folly::ConversionError") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef zeroext 13)
  invoke void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %3) #7
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.t

_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit: ; preds = %_ZN5folly6detail15checkConversionIldEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i.i
  %i.u = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
  %i.v = fsub double %i.j, %i.u
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ole double %i.w, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.l:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.ae [
    i32 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
    i32 1, label %bb.m
    i32 2, label %_ZNK5folly7dynamic6asBoolEv.exit46
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.y = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.z = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not38 = icmp eq i64 %i.y, %i.z
  br i1 %.not38, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.n:                                             ; preds = %bb.m
  %i.aa = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not.i.not.i.i.i, label %_ZNK5folly7dynamic5beginEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.ab, i32 noundef %i.aa) #7
  unreachable

_ZNK5folly7dynamic5beginEv.exit:                  ; preds = %bb.n
  %i.ac = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i42 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.not.i.i.i42, label %_ZNK5folly7dynamic3endEv.exit.lr.ph, label %bb.p

bb.p:                                             ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.ad = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.ad, i32 noundef %i.ac) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit.lr.ph:              ; preds = %_ZNK5folly7dynamic5beginEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK5folly7dynamic3endEv.exit

._crit_edge:                                      ; preds = %bb.r
  %i.aj = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aj, i32 noundef %i.ap) #7
  unreachable

_ZNK5folly7dynamic3endEv.exit:                    ; preds = %_ZNK5folly7dynamic3endEv.exit.lr.ph, %bb.r
  %.sroa.058.095 = phi ptr [ %i.af, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.ao, %bb.r ] ; 2 uses
  %.sroa.060.094 = phi ptr [ %i.ah, %_ZNK5folly7dynamic3endEv.exit.lr.ph ], [ %i.an, %bb.r ] ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.al = icmp eq ptr %.sroa.060.094, %i.ak       ; 3 uses
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK5folly7dynamic3endEv.exit
  %i.am = tail call noundef zeroext i1 @_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.060.094, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.058.095, double noundef %2)
  br i1 %i.am, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.058.095, i64 40
  %i.ap = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i44 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.not.i.i.i44, label %_ZNK5folly7dynamic3endEv.exit, label %._crit_edge, !llvm.loop !70

_ZNK5folly7dynamic6asBoolEv.exit46:               ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !43, !range !44, !noundef !45
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !43, !range !44, !noundef !45
  %.not119 = icmp eq i8 %i.at, %i.ar
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.s:                                             ; preds = %bb.l
  %i.au = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.av = tail call noundef double @_ZNK5folly7dynamic6asImplIdEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.aw = fsub double %i.au, %i.av
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, %2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.t:                                             ; preds = %bb.l
  %i.az = tail call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ba = tail call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.bb = icmp eq i64 %i.az, %i.ba
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.u:                                             ; preds = %bb.l
  %i.bc = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bd = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %.not37 = icmp eq i64 %i.bc, %i.bd
  br i1 %.not37, label %bb.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.v:                                             ; preds = %bb.u
  %i.be = load i32, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not.i.not.i.i.i47 = icmp eq i32 %i.be, 5
  br i1 %.not.i.not.i.i.i47, label %_ZNK5folly7dynamic5itemsEv.exit49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !19
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.bf, i32 noundef %i.be) #7
  unreachable

_ZNK5folly7dynamic5itemsEv.exit49:                ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !25 ; 3 uses
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %.not7787 = icmp eq i64 %i.bi, 0
  br i1 %.not7787, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic5itemsEv.exit49
  %i.bk = shl i64 %i.bh, 1
  %i.bl = and i64 %i.bk, 14
  %i.bm = lshr i64 %i.bh, 3
  %i.bn = and i64 %i.bm, 1
  %i.bo = or disjoint i64 %i.bl, %i.bn
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %.sroa.071.089 = phi ptr [ %i.bj, %.lr.ph ], [ %.sroa.071.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 5 uses
  %.sroa.9.088 = phi i64 [ %i.bo, %.lr.ph ], [ %.sroa.9.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ] ; 3 uses
  %i.bp = load ptr, ptr %.sroa.071.089, align 8, !tbaa !31 ; 2 uses
  %i.bq = tail call noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.bp), !inline_history !71 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i"

"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i": ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bs = tail call noundef zeroext i1 @_ZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_d(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, double noundef %2), !inline_history !71
  br i1 %i.bs, label %bb.y, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit"

bb.y:                                             ; preds = %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i"
  %i.bt = getelementptr inbounds i8, ptr %.sroa.071.089, i64 -16
  %.neg.i.i.i.i.i.i = mul nsw i64 %.sroa.9.088, -8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.neg.i.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i.i = icmp eq i64 %.sroa.9.088, 0
  br i1 %.not19.i5.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

.critedge.i.i.i.i.i.preheader:                    ; preds = %bb.z, %bb.y
  br label %.critedge.i.i.i.i.i

bb.z:                                             ; preds = %thread-pre-split.i.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not19.i.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.y, %bb.z
  %i.bv = phi i64 [ %i.bx, %bb.z ], [ %.sroa.9.088, %bb.y ]
  %i.bw = phi ptr [ %i.by, %bb.z ], [ %.sroa.071.089, %bb.y ]
  %i.bx = add nsw i64 %i.bv, -1                   ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !32
  %.not.i.i.i.i53 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i53, label %bb.z, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, !prof !33, !llvm.loop !0

.critedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i.preheader, %bb.aa
  %.017.i.i.i.i.i = phi ptr [ %i.ce, %bb.aa ], [ %i.bu, %.critedge.i.i.i.i.i.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 14
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !32
  %i.cd = and i8 %i.cc, 15
  %.not2.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not2.i.i.i.i, label %bb.aa, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", !prof !34

bb.aa:                                            ; preds = %.critedge.i.i.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -128 ; 4 uses
  %i.cf = load <16 x i8>, ptr %i.ce, align 16, !tbaa !32
  %i.cg = icmp eq <16 x i8> %i.cf, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 16383                    ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cj, i32 0, i32 3, i32 1)
  %.not3.i.i.i.i = icmp eq i16 %i.ci, 16383
  br i1 %.not3.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.ab, !prof !33, !llvm.loop !1

bb.ab:                                            ; preds = %bb.aa
  %i.ck = xor i16 %i.ci, 16383
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cl, i1 true)
  %i.cn = xor i32 %i.cm, 31
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %5 = icmp ne ptr %i.ce, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %5)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i: ; preds = %thread-pre-split.i.i.i.i, %bb.ab
  %.sroa.9.1 = phi i64 [ %i.co, %bb.ab ], [ %i.bx, %thread-pre-split.i.i.i.i ]
  %.sroa.071.1 = phi ptr [ %i.cr, %bb.ab ], [ %i.by, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.not77 = icmp eq ptr %.sroa.071.1, null
  br i1 %.not77, label %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", label %bb.x, !llvm.loop !72

"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit": ; preds = %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i", %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i, %bb.x, %.critedge.i.i.i.i.i, %_ZNK5folly7dynamic5itemsEv.exit49
  %.sroa.071.0.lcssa = phi ptr [ %i.bj, %_ZNK5folly7dynamic5itemsEv.exit49 ], [ null, %.critedge.i.i.i.i.i ], [ %.sroa.071.089, %bb.x ], [ null, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i ], [ %.sroa.071.089, %"_ZZN5folly27compareDynamicWithToleranceERKNS_7dynamicES2_dENK3$_0clISt4pairIS1_S0_EEEDaRKT_.exit.i" ]
  %i.cs = icmp eq ptr %.sroa.071.0.lcssa, null
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit:      ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !28
  %i.cz = icmp eq i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.ac:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  %i.da = icmp eq i64 %i.cw, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !29
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !29
  %bcmp.i = tail call i32 @bcmp(ptr %i.dc, ptr %i.db, i64 %i.cw)
  %i.dd = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.ae:                                            ; preds = %bb.l
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNK5folly7dynamic3endEv.exit, %bb.q, %bb.ad, %bb.ac, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit, %bb.u, %bb.m, %bb.l, %bb.b, %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit", %bb.t, %bb.s, %_ZNK5folly7dynamic6asBoolEv.exit46, %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit
  %.1 = phi i1 [ %i.x, %_ZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_.exit ], [ true, %bb.ac ], [ false, %bb.b ], [ true, %bb.l ], [ false, %bb.m ], [ false, %bb.u ], [ %.not119, %_ZNK5folly7dynamic6asBoolEv.exit46 ], [ %i.ay, %bb.s ], [ %i.bb, %bb.t ], [ %i.dd, %bb.ad ], [ %i.cs, %"_ZSt9__find_ifIN5folly7dynamic19const_item_iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNS0_27compareDynamicWithToleranceERKS1_S7_dE3$_0EEET_SA_SA_T0_St18input_iterator_tag.exit" ], [ false, %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit ], [ %i.al, %bb.q ], [ %i.al, %_ZNK5folly7dynamic3endEv.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #16

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::BadExpectedAccess", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %0, align 8, !tbaa !37
  invoke void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly17BadExpectedAccessIvED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_15ConversionErrorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 2 uses
  tail call void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(17) %0) #22
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly15ConversionErrorE, ptr nonnull @_ZNSt11range_errorD2Ev) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly2toIdlEENSt9enable_ifIXsr6detail14IsArithToArithIT_T0_EE5valueES2_E4typeERKS3_ENKUlNS_14ConversionCodeEE_clES8_(ptr dead_on_unwind noalias writable sret(%"class.folly::ConversionError") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = load ptr, ptr %1, align 8, !tbaa !76, !nonnull !45, !align !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !77
  store ptr @_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE, ptr %i.a, align 8, !tbaa !19, !noalias !77
  call void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !77
  %i.c = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  invoke void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8 %0, i8 noundef zeroext %2, ptr %i.c, ptr %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !32
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !83
  store i8 %i.c, ptr %i.a, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

declare void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.folly::ConversionError") align 8, i8 noundef zeroext, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA2_cPKcA3_clETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISC_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSF_EEEE5valueEiE4typeELi0EEESC_DpRKSE_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !28
  store i8 0, ptr %i.b, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %0, ptr %i.a, align 8, !tbaa !50
  %i.d = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5folly19estimateSpaceNeededIPKcEENSt9enable_ifIXsr3std14is_convertibleIT_S2_EE5valueEmE4typeES4_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.f = add i64 %i.e, 5
  br label %_ZN5folly19estimateSpaceNeededIPKcEENSt9enable_ifIXsr3std14is_convertibleIT_S2_EE5valueEmE4typeES4_.exit.i.i.i

_ZN5folly19estimateSpaceNeededIPKcEENSt9enable_ifIXsr3std14is_convertibleIT_S2_EE5valueEmE4typeES4_.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %i.f, %bb.b ], [ 5, %bb.a ]
end_hunk_2
