inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::number::impl::DecimalQuantity" = type <{ %"class.icu_78::IFixedDecimal", i8, [3 x i8], i32, i32, i8, i8, [2 x i8], double, i32, i32, i32, i32, %union.anon, i8, i8, [6 x i8] }>
%"class.icu_78::IFixedDecimal" = type { ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%"class.icu_78::number::impl::DecNum" = type { %"class.icu_78::MaybeStackHeaderAndArray", %struct.decContext, [4 x i8] }
%"class.icu_78::MaybeStackHeaderAndArray" = type <{ ptr, i32, i8, [3 x i8], %struct.decNumber, [34 x i8], [2 x i8] }>
%struct.decNumber = type { i32, i32, i8, [1 x i8] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%"class.icu_78::MaybeStackArray.2" = type <{ ptr, i32, i8, [20 x i8], [7 x i8] }>
%"class.icu_78::double_conversion::StringToDoubleConverter" = type <{ i32, [4 x i8], double, double, ptr, ptr, i16, [6 x i8] }>
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.1, [32 x i8] }
%struct.anon.1 = type { i16, i32, i32, ptr }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.icu_78::MaybeStackArray.4" = type <{ ptr, i32, i8, [30 x i8], [5 x i8] }>

$__clang_call_terminate = comdat any

$_ZN6icu_786number4impl6DecNumD2Ev = comdat any

$_ZN6icu_7810CharStringD2Ev = comdat any

$_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev = comdat any

$_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev = comdat any

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

@_ZTVN6icu_786number4impl15DecimalQuantityE = constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6icu_786number4impl15DecimalQuantityE, ptr @_ZN6icu_786number4impl15DecimalQuantityD1Ev, ptr @_ZN6icu_786number4impl15DecimalQuantityD0Ev, ptr @_ZNK6icu_786number4impl15DecimalQuantity16getPluralOperandENS_13PluralOperandE, ptr @_ZNK6icu_786number4impl15DecimalQuantity5isNaNEv, ptr @_ZNK6icu_786number4impl15DecimalQuantity10isInfiniteEv, ptr @_ZNK6icu_786number4impl15DecimalQuantity15hasIntegerValueEv] }, align 8
@.str = private unnamed_addr constant [25 x i8] c"9.223372036854775808E+18\00", align 1
@_ZN12_GLOBAL__N_118DOUBLE_MULTIPLIERSE = internal unnamed_addr constant [22 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15, double 1.000000e+16, double 1.000000e+17, double 1.000000e+18, double 1.000000e+19, double 1.000000e+20, double 1.000000e+21], align 16
@_ZZNK6icu_786number4impl15DecimalQuantity10fitsInLongEbE9INT64_BCD = internal unnamed_addr constant [19 x i8] c"\09\02\02\03\03\07\02\00\03\06\08\05\04\07\07\05\08\00\08", align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i16] [i16 48, i16 69, i16 43, i16 48, i16 0], align 2
@.str.4 = private unnamed_addr constant [12 x i16] [i16 45, i16 50, i16 49, i16 52, i16 55, i16 52, i16 56, i16 51, i16 54, i16 52, i16 56, i16 0], align 2
@.str.5 = private unnamed_addr constant [39 x i16] [i16 90, i16 101, i16 114, i16 111, i16 32, i16 112, i16 114, i16 101, i16 99, i16 105, i16 115, i16 105, i16 111, i16 110, i16 32, i16 98, i16 117, i16 116, i16 32, i16 119, i16 101, i16 32, i16 97, i16 114, i16 101, i16 32, i16 105, i16 110, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 109, i16 111, i16 100, i16 101, i16 0], align 2
@.str.6 = private unnamed_addr constant [39 x i16] [i16 80, i16 114, i16 101, i16 99, i16 105, i16 115, i16 105, i16 111, i16 110, i16 32, i16 101, i16 120, i16 99, i16 101, i16 101, i16 100, i16 115, i16 32, i16 108, i16 101, i16 110, i16 103, i16 116, i16 104, i16 32, i16 111, i16 102, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 97, i16 114, i16 114, i16 97, i16 121, i16 0], align 2
@.str.7 = private unnamed_addr constant [44 x i16] [i16 77, i16 111, i16 115, i16 116, i16 32, i16 115, i16 105, i16 103, i16 110, i16 105, i16 102, i16 105, i16 99, i16 97, i16 110, i16 116, i16 32, i16 100, i16 105, i16 103, i16 105, i16 116, i16 32, i16 105, i16 115, i16 32, i16 122, i16 101, i16 114, i16 111, i16 32, i16 105, i16 110, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 109, i16 111, i16 100, i16 101, i16 0], align 2
@.str.8 = private unnamed_addr constant [45 x i16] [i16 76, i16 101, i16 97, i16 115, i16 116, i16 32, i16 115, i16 105, i16 103, i16 110, i16 105, i16 102, i16 105, i16 99, i16 97, i16 110, i16 116, i16 32, i16 100, i16 105, i16 103, i16 105, i16 116, i16 32, i16 105, i16 115, i16 32, i16 122, i16 101, i16 114, i16 111, i16 32, i16 105, i16 110, i16 32, i16 108, i16 111, i16 110, i16 103, i16 32, i16 109, i16 111, i16 100, i16 101, i16 0], align 2
@.str.9 = private unnamed_addr constant [33 x i16] [i16 68, i16 105, i16 103, i16 105, i16 116, i16 32, i16 101, i16 120, i16 99, i16 101, i16 101, i16 100, i16 105, i16 110, i16 103, i16 32, i16 49, i16 48, i16 32, i16 105, i16 110, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 97, i16 114, i16 114, i16 97, i16 121, i16 0], align 2
@.str.10 = private unnamed_addr constant [28 x i16] [i16 68, i16 105, i16 103, i16 105, i16 116, i16 32, i16 98, i16 101, i16 108, i16 111, i16 119, i16 32, i16 48, i16 32, i16 105, i16 110, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 97, i16 114, i16 114, i16 97, i16 121, i16 0], align 2
@.str.11 = private unnamed_addr constant [46 x i16] [i16 78, i16 111, i16 110, i16 122, i16 101, i16 114, i16 111, i16 32, i16 100, i16 105, i16 103, i16 105, i16 116, i16 115, i16 32, i16 111, i16 117, i16 116, i16 115, i16 105, i16 100, i16 101, i16 32, i16 111, i16 102, i16 32, i16 114, i16 97, i16 110, i16 103, i16 101, i16 32, i16 105, i16 110, i16 32, i16 98, i16 121, i16 116, i16 101, i16 32, i16 97, i16 114, i16 114, i16 97, i16 121, i16 0], align 2
@.str.12 = private unnamed_addr constant [47 x i16] [i16 86, i16 97, i16 108, i16 117, i16 101, i16 32, i16 105, i16 110, i16 32, i16 98, i16 99, i16 100, i16 76, i16 111, i16 110, i16 103, i16 32, i16 101, i16 118, i16 101, i16 110, i16 32, i16 116, i16 104, i16 111, i16 117, i16 103, i16 104, i16 32, i16 112, i16 114, i16 101, i16 99, i16 105, i16 115, i16 105, i16 111, i16 110, i16 32, i16 105, i16 115, i16 32, i16 122, i16 101, i16 114, i16 111, i16 0], align 2
@.str.13 = private unnamed_addr constant [33 x i16] [i16 80, i16 114, i16 101, i16 99, i16 105, i16 115, i16 105, i16 111, i16 110, i16 32, i16 101, i16 120, i16 99, i16 101, i16 101, i16 100, i16 115, i16 32, i16 108, i16 101, i16 110, i16 103, i16 116, i16 104, i16 32, i16 111, i16 102, i16 32, i16 108, i16 111, i16 110, i16 103, i16 0], align 2
@.str.14 = private unnamed_addr constant [44 x i16] [i16 77, i16 111, i16 115, i16 116, i16 32, i16 115, i16 105, i16 103, i16 110, i16 105, i16 102, i16 105, i16 99, i16 97, i16 110, i16 116, i16 32, i16 100, i16 105, i16 103, i16 105, i16 116, i16 32, i16 105, i16 115, i16 32, i16 122, i16 101, i16 114, i16 111, i16 32, i16 105, i16 110, i16 32, i16 108, i16 111, i16 110, i16 103, i16 32, i16 109, i16 111, i16 100, i16 101, i16 0], align 2
@.str.15 = private unnamed_addr constant [27 x i16] [i16 68, i16 105, i16 103, i16 105, i16 116, i16 32, i16 101, i16 120, i16 99, i16 101, i16 101, i16 100, i16 105, i16 110, i16 103, i16 32, i16 49, i16 48, i16 32, i16 105, i16 110, i16 32, i16 108, i16 111, i16 110, i16 103, i16 0], align 2
@.str.17 = private unnamed_addr constant [40 x i16] [i16 78, i16 111, i16 110, i16 122, i16 101, i16 114, i16 111, i16 32, i16 100, i16 105, i16 103, i16 105, i16 116, i16 115, i16 32, i16 111, i16 117, i16 116, i16 115, i16 105, i16 100, i16 101, i16 32, i16 111, i16 102, i16 32, i16 114, i16 97, i16 110, i16 103, i16 101, i16 32, i16 105, i16 110, i16 32, i16 108, i16 111, i16 110, i16 103, i16 0], align 2
@.str.18 = private unnamed_addr constant [36 x i8] c"<DecimalQuantity %d:%d %s %s%s%s%d>\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@_ZTVN6icu_7813IFixedDecimalE = local_unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6icu_7813IFixedDecimalE, ptr @_ZN6icu_7813IFixedDecimalD1Ev, ptr @_ZN6icu_7813IFixedDecimalD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7813IFixedDecimalE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_7813IFixedDecimalE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7813IFixedDecimalE = constant [25 x i8] c"N6icu_7813IFixedDecimalE\00", align 1
@_ZTIN6icu_786number4impl15DecimalQuantityE = constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN6icu_786number4impl15DecimalQuantityE, i32 0, i32 2, ptr @_ZTIN6icu_7813IFixedDecimalE, i64 2, ptr @_ZTIN6icu_787UMemoryE, i64 2 }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_786number4impl15DecimalQuantityE = constant [39 x i8] c"N6icu_786number4impl15DecimalQuantityE\00", align 1
@_ZTIN6icu_787UMemoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTSN6icu_787UMemoryE = linkonce_odr constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_7813IFixedDecimalD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7813IFixedDecimalD2Ev
@_ZN6icu_786number4impl15DecimalQuantityC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_786number4impl15DecimalQuantityC2Ev
@_ZN6icu_786number4impl15DecimalQuantityD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_786number4impl15DecimalQuantityD2Ev
@_ZN6icu_786number4impl15DecimalQuantityC1ERKS2_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_786number4impl15DecimalQuantityC2ERKS2_
@_ZN6icu_786number4impl15DecimalQuantityC1EOS2_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_786number4impl15DecimalQuantityC2EOS2_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_7813IFixedDecimalD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7813IFixedDecimalD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_786number4impl15DecimalQuantityC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(66) initializes((0, 9), (12, 22), (24, 56), (64, 66)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number4impl15DecimalQuantityE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.c, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) initializes((12, 20), (21, 22), (24, 36), (44, 48)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @uprv_free_78(ptr noundef %i.e)
  store i8 0, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.i, align 1, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !25
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_786number4impl15DecimalQuantityD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(66) dereferenceable(66) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number4impl15DecimalQuantityE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  invoke void @uprv_free_78(ptr noundef %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #24
  unreachable
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_786number4impl15DecimalQuantityD0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantityC2ERKS2_(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(66) initializes((0, 9), (36, 48), (64, 66)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(66) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number4impl15DecimalQuantityE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.g = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantityaSERKS2_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(66) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantityaSERKS2_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(66) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(66) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void @uprv_free_78(ptr noundef %i.f)
  store i8 0, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  store i8 0, ptr %i.j, align 1, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_0
begin_hunk_1_@_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = sub nsw i32 %1, %i.f
  %i.s = zext nneg i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.o)
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  store i32 %i.k, ptr %i.e, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  store i8 1, ptr %i.b, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 6 uses
  br i1 %i.f, label %.lr.ph18, label %._crit_edge

.lr.ph18:                                         ; preds = %bb.b
  %i.i = zext nneg i32 %i.e to i64                ; 4 uses
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.j = icmp ult i32 %i.e, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph18.new

.lr.ph18.new:                                     ; preds = %.lr.ph18
  %unroll_iter = and i64 %i.i, 2147483644
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph18
  %indvars.iv20.epil.init = phi i64 [ %i.i, %.lr.ph18 ], [ %indvars.iv.next21.3, %._crit_edge.loopexit.unr-lcssa ]
  %.01316.epil.init = phi i64 [ 0, %.lr.ph18 ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv20.epil = phi i64 [ %indvars.iv20.epil.init, %.epil.preheader ], [ %indvars.iv.next21.epil, %bb.c ]
  %.01316.epil = phi i64 [ %.01316.epil.init, %.epil.preheader ], [ %i.o, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %indvars.iv.next21.epil = add nsw i64 %indvars.iv20.epil, -1 ; 2 uses
  %i.k = shl i64 %.01316.epil, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next21.epil
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = sext i8 %i.m to i64
  %i.o = or i64 %i.k, %i.n                        ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !97

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.b
  %.013.lcssa = phi i64 [ 0, %bb.b ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @uprv_free_78(ptr noundef %i.h)
  store i64 %.013.lcssa, ptr %i.p, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8, !tbaa !15
  br label %.loopexit

bb.d:                                             ; preds = %bb.d, %.lr.ph18.new
  %indvars.iv20 = phi i64 [ %i.i, %.lr.ph18.new ], [ %indvars.iv.next21.3, %bb.d ] ; 4 uses
  %.01316 = phi i64 [ 0, %.lr.ph18.new ], [ %i.am, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph18.new ], [ %niter.next.3, %bb.d ]
  %i.q = getelementptr i8, ptr %i.h, i64 %indvars.iv20
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = sext i8 %i.s to i64
  %i.u = shl i64 %.01316, 8
  %i.v = shl nsw i64 %i.t, 4
  %i.w = or i64 %i.u, %i.v
  %i.x = getelementptr i8, ptr %i.h, i64 %indvars.iv20
  %i.y = getelementptr i8, ptr %i.x, i64 -2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = sext i8 %i.z to i64
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = getelementptr i8, ptr %i.h, i64 %indvars.iv20
  %i.ad = getelementptr i8, ptr %i.ac, i64 -3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = sext i8 %i.ae to i64
  %indvars.iv.next21.3 = add nsw i64 %indvars.iv20, -4 ; 3 uses
  %i.ag = shl i64 %i.ab, 8
  %i.ah = shl nsw i64 %i.af, 4
  %i.ai = or i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next21.3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %i.al = sext i8 %i.ak to i64
  %i.am = or i64 %i.ai, %i.al                     ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !36

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit: ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #26 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !19
  store i32 40, ptr %i.ap, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !21
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit ] ; 2 uses
  %.01114 = phi i64 [ %i.ay, %.lr.ph ], [ %i.ao, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit ] ; 2 uses
  %i.au = trunc i64 %.01114 to i8
  %i.av = and i8 %i.au, 15
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !19
  %i.ay = lshr i64 %.01114, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.ar, align 8, !tbaa !21
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  store i32 40, ptr %i.d, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.e, 40
  br i1 %i.h, label %bb.d, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #26 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = sext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = sub nsw i32 40, %i.e
  %i.o = zext nneg i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.k)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !19
  store i32 80, ptr %i.d, align 8, !tbaa !19
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_786number4impl15DecimalQuantity11checkHealthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 16 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread91, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %i.i = icmp sgt i32 %i.e, %i.h
  br i1 %i.i, label %.thread91, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 4 uses
  %i.m = zext nneg i32 %i.e to i64                ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %i.r = load i8, ptr %i.l, align 1, !tbaa !19
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50

bb.e:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %i.m
  br i1 %exitcond137.not, label %.preheader, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50, !llvm.loop !98

.preheader:                                       ; preds = %bb.e
  %.not40120 = icmp slt i32 %i.e, %i.h
  br i1 %.not40120, label %.lr.ph122, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45, %bb.e
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.e ], [ 0, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv133
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19    ; 2 uses
  %i.v = icmp sgt i8 %i.u, 9
  br i1 %i.v, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %.thread91, label %bb.e

.lr.ph122:                                        ; preds = %.preheader, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread ], [ %i.m, %.preheader ] ; 3 uses
  %1 = trunc nuw i64 %indvars.iv138 to i32
  %.not.i58 = icmp sgt i32 %i.e, %1
  br i1 %.not.i58, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60: ; preds = %.lr.ph122
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv138
  %3 = load i8, ptr %2, align 1, !tbaa !19
  %.not39 = icmp eq i8 %3, 0
  br i1 %.not39, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread: ; preds = %.lr.ph122, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next139 to i32
  %.not40 = icmp sgt i32 %i.h, %4
  br i1 %.not40, label %.lr.ph122, label %.thread91, !llvm.loop !99

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ne i32 %i.e, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8              ; 6 uses
  %.not = icmp eq i64 %i.z, 0
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.g, label %.thread91

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i32 %i.e, 16
  br i1 %i.aa, label %.thread91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not35 = icmp eq i32 %i.e, 0
  br i1 %.not35, label %.lr.ph.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.e, -1                    ; 2 uses
  %or.cond.i61 = icmp ugt i32 %i.ab, 15
  br i1 %or.cond.i61, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65: ; preds = %bb.i
  %i.ac = shl nuw nsw i32 %i.ab, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 15, %i.ad
  %i.af = and i64 %i.ae, %i.z
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65
  %i.ah = and i64 %i.z, 15
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74.preheader

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74.preheader: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74

bb.j:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader111, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74, !llvm.loop !100

.preheader111:                                    ; preds = %bb.j
  %.not125 = icmp eq i32 %i.e, 16
  br i1 %.not125, label %.thread91, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %.preheader111
  %i.aj = sub i32 16, %i.e                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.aj, 16
  br i1 %min.iters.check, label %.lr.ph.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.aj, -16                     ; 3 uses
  %i.ak = add i32 %i.e, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat158 = shufflevector <16 x i32> %broadcast.splatinsert157, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat158, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.al = icmp ult <16 x i32> %vec.ind, splat (i32 16)
  %i.am = shl nuw nsw <16 x i32> %vec.ind, splat (i32 2)
  %i.an = zext nneg <16 x i32> %i.am to <16 x i64>
  %i.ao = shl nuw <16 x i64> splat (i64 15), %i.an
  %i.ap = and <16 x i64> %i.ao, %broadcast.splat
  %i.aq = icmp ne <16 x i64> %i.ap, zeroinitializer
  %i.ar = select <16 x i1> %i.al, <16 x i1> %i.aq, <16 x i1> zeroinitializer
  %i.as = freeze <16 x i1> %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not159 = icmp eq i16 %i.at, 0
  br i1 %.not159, label %vector.body.interim, label %.thread91

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.au = icmp eq i32 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.aj, %n.vec
  br i1 %cmp.n, label %.thread91, label %.lr.ph.preheader162

.lr.ph.preheader162:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0116.ph = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.av = shl nuw nsw i64 %indvars.iv, 2
  %i.aw = lshr i64 %i.z, %i.av
  %i.ax = and i64 %i.aw, 14
  %i.ay = icmp samesign ugt i64 %i.ax, 9
  br i1 %i.ay, label %.thread91, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader162, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread
  %.0116 = phi i32 [ %i.bd, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread ], [ %.0116.ph, %.lr.ph.preheader162 ] ; 3 uses
  %or.cond.i80 = icmp ugt i32 %.0116, 15
  br i1 %or.cond.i80, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84: ; preds = %.lr.ph
  %i.az = shl nuw nsw i32 %.0116, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 15, %i.ba
  %i.bc = and i64 %i.bb, %i.z
  %.not37 = icmp eq i64 %i.bc, 0
  br i1 %.not37, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread: ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84
  %i.bd = add nsw i32 %.0116, 1                   ; 2 uses
  %exitcond132.not = icmp eq i32 %i.bd, 16
  br i1 %exitcond132.not, label %.thread91, label %.lr.ph, !llvm.loop !104

.thread91:                                        ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74, %vector.body, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60, %middle.block, %.preheader111, %.preheader, %bb.i, %bb.d, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %bb.c, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65, %bb.g, %bb.f, %bb.b
  %.5 = phi ptr [ @.str.7, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ], [ @.str.8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45 ], [ @.str.6, %bb.c ], [ @.str.5, %bb.b ], [ @.str.12, %bb.f ], [ @.str.13, %bb.g ], [ @.str.14, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65 ], [ null, %middle.block ], [ @.str.8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69 ], [ @.str.14, %bb.i ], [ @.str.7, %bb.d ], [ null, %.preheader111 ], [ @.str.9, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50 ], [ @.str.11, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60 ], [ null, %.preheader ], [ @.str.17, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84 ], [ @.str.17, %vector.body ], [ null, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread ], [ @.str.10, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55 ], [ null, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread ], [ @.str.15, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74 ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantityeqERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i8, ptr %i.k, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !27
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !22
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.g, 0
  br i1 %i.ae, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !23
  %i.aj = fcmp oeq double %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !24
  %i.ao = icmp eq i32 %i.al, %i.an
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.g, %i.b
  %..i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.ap) ; 2 uses
  %..i20 = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.b) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not18.not.not33 = icmp sgt i32 %..i, %..i20
  br i1 %.not18.not.not33, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 8, !tbaa !15, !range !17, !noundef !18
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i64, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = load i8, ptr %i.as, align 8, !tbaa !15, !range !17, !noundef !18
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  br label %.lr.ph

bb.l:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  %.not18.not.not = icmp sgt i32 %.034, %..i20
  br i1 %.not18.not.not, label %.lr.ph, label %.critedge, !llvm.loop !105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.034.in = phi i32 [ %.034, %bb.l ], [ %..i, %.lr.ph.preheader ]
  %.034 = add nsw i32 %.034.in, -1                ; 3 uses
  %i.bc = sub nsw i32 %.034, %i.b                 ; 10 uses
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.bd = icmp sgt i32 %i.bc, -1
  %.not.i.i = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i = and i1 %i.bd, %.not.i.i
  br i1 %or.cond10.i.i, label %bb.n, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.o:                                             ; preds = %.lr.ph
  %or.cond.i.i = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.bc, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.aw, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i.i = phi i8 [ %i.bl, %bb.p ], [ %i.bg, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ]
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %i.bm = icmp sgt i32 %i.bc, -1
  %.not.i.i23 = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i24 = and i1 %i.bm, %.not.i.i23
  br i1 %or.cond10.i.i24, label %bb.r, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i32 %i.bc to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !19
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.s:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %or.cond.i.i21 = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i21, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i32 %i.bc, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.ba, %i.br
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = and i8 %i.bt, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i22 = phi i8 [ %i.bu, %bb.t ], [ %i.bp, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ]
  %.not19 = icmp eq i8 %.0.i.i, %.0.i.i22
  br i1 %.not19, label %bb.l, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, !llvm.loop !105

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  br label %.critedge, !llvm.loop !105

.critedge:                                        ; preds = %bb.l, %bb.k, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ %i.ao, %bb.j ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_786number4impl15DecimalQuantity8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::MaybeStackArray.4", align 8 ; 15 uses
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 13
  store ptr %i.e, ptr %2, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 30, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i8 0, ptr %i.g, align 4, !tbaa !109
  %i.h = icmp sgt i32 %i.c, 29
  br i1 %i.h, label %bb.b, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.d to i64
  %i.j = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.i) #26
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.k = load i8, ptr %i.g, align 4, !tbaa !109
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !106
  invoke void @uprv_free_78(ptr noundef %i.l)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i unwind label %bb.e

_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i: ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !106
  store i32 %i.d, ptr %i.f, align 8, !tbaa !108
  store i8 1, ptr %i.g, align 4, !tbaa !109
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.bi, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %2) #25
  br label %common.resume

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit: ; preds = %bb.a, %.noexc.i, %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i
  %i.n = load i32, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge: ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %.pre = sext i32 %i.n to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge ], [ %i.bg, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.r = load ptr, ptr %2, align 8, !tbaa !106
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi
  store i8 0, ptr %i.s, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i8, ptr %i.x, align 8, !tbaa !15, !range !17, !noundef !18
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, ptr @.str.19, ptr @.str.20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !28
  %i.ad = trunc i8 %i.ac to i1
  %i.ae = select i1 %i.ad, ptr @.str.21, ptr @.str.1
  %i.af = load i32, ptr %i.b, align 8, !tbaa !21
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = load ptr, ptr %2, align 8
  %spec.select = select i1 %i.ag, ptr @.str.2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !20
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.18, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, ptr noundef %spec.select, ptr noundef nonnull @.str.22, i32 noundef %i.aj) #25 ; 0 uses
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef 0)
          to label %bb.k unwind label %.body

bb.f:                                             ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 3 uses
  %i.al = phi i32 [ %i.n, %.lr.ph ], [ %i.bf, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.al, %i.an                    ; 5 uses
  %i.ap = load i8, ptr %i.p, align 8, !tbaa !15, !range !17, !noundef !18
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp sgt i32 %i.ao, -1
  %.not.i = icmp slt i32 %i.ao, %i.al
  %or.cond10.i = and i1 %i.ar, %.not.i
  br i1 %or.cond10.i, label %bb.h, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.i:                                             ; preds = %bb.f
  %or.cond.i = icmp ugt i32 %i.ao, 15
  br i1 %or.cond.i, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ax = shl nuw nsw i32 %i.ao, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.aw, %i.ay
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i8 [ %i.bb, %bb.j ], [ %i.av, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ]
  %i.bc = add i8 %.0.i, 48
  %i.bd = load ptr, ptr %2, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.f, label %._crit_edge, !llvm.loop !110

.body:                                            ; preds = %._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bj = load i8, ptr %i.g, align 4, !tbaa !109
  %.not.i.i12 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i12, label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %2, align 8, !tbaa !106
  invoke void @uprv_free_78(ptr noundef %i.bk)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #24
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit:     ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #21

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !109
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !106
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString13doLastIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTSN6icu_786number4impl15DecimalQuantityE", !12, i64 0, !13, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !14, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !13, i64 64, !13, i64 65}
!12 = !{!"_ZTSN6icu_7813IFixedDecimalE"}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!11, !13, i64 64}
!16 = !{!11, !13, i64 65}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!6, !6, i64 0}
!20 = !{!11, !5, i64 12}
!21 = !{!11, !5, i64 16}
!22 = !{!11, !6, i64 21}
!23 = !{!11, !14, i64 24}
!24 = !{!11, !5, i64 32}
!25 = !{!11, !5, i64 44}
!26 = !{!11, !5, i64 36}
!27 = !{!11, !5, i64 40}
!28 = !{!11, !6, i64 20}
!29 = !{!5, !5, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = !{!41, !41, i64 0}
!41 = !{!"_ZTS10UErrorCode", !6, i64 0}
!42 = !{!43, !6, i64 12}
!43 = !{!"_ZTSN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EEE", !44, i64 0, !5, i64 8, !6, i64 12, !45, i64 16, !6, i64 28}
!44 = !{!"any pointer", !6, i64 0}
!45 = !{!"_ZTS9decNumber", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9}
!46 = !{!43, !44, i64 0}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN6icu_7815MaybeStackArrayIhLi20EEE", !49, i64 0, !5, i64 8, !6, i64 12, !6, i64 13}
!49 = !{!"p1 omnipotent char", !44, i64 0}
!50 = !{!48, !5, i64 8}
!51 = !{!48, !6, i64 12}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31}
!55 = !{!56, !5, i64 0}
!56 = !{!"_ZTSN6icu_7817double_conversion23StringToDoubleConverterE", !5, i64 0, !14, i64 8, !14, i64 16, !49, i64 24, !49, i64 32, !57, i64 40}
!57 = !{!"short", !6, i64 0}
!58 = !{!56, !49, i64 24}
!59 = !{!56, !49, i64 32}
!60 = !{!56, !57, i64 40}
!61 = distinct !{!61, !31}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = !{!45, !5, i64 0}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !31}
!69 = !{!45, !5, i64 4}
!70 = distinct !{!70, !31}
!71 = !{!14, !14, i64 0}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = !{!76, !76, i64 0}
!76 = !{!"char16_t", !6, i64 0}
!77 = !{!78, !49, i64 0}
!78 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !49, i64 0, !5, i64 8, !6, i64 12, !6, i64 13}
!79 = !{!78, !5, i64 8}
!80 = !{!78, !6, i64 12}
!81 = !{!82, !5, i64 56}
!82 = !{!"_ZTSN6icu_7810CharStringE", !78, i64 0, !5, i64 56}
!83 = distinct !{!83, !31}
!84 = !{i64 2150325321}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !31}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !67}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !31, !103, !102}
!105 = distinct !{!105, !31}
!106 = !{!107, !49, i64 0}
!107 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi30EEE", !49, i64 0, !5, i64 8, !6, i64 12, !6, i64 13}
!108 = !{!107, !5, i64 8}
!109 = !{!107, !6, i64 12}
!110 = distinct !{!110, !31}
end_hunk_1
