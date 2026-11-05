Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_decimfmtprops?download=true
inline.NumInlined: 58
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK6icu_7813UnicodeStringeqERKS0_ = comdat any

@_ZN12_GLOBAL__N_121kRawDefaultPropertiesE = internal global [760 x i8] zeroinitializer, align 8
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8
@_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE = internal global { { i32 }, i32 } zeroinitializer, align 4

@_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_786number4impl23DecimalFormatPropertiesC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl23DecimalFormatPropertiesC2Ev(ptr noundef nonnull align 8 dereferenceable(757) initializes((0, 1), (8, 9)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN6icu_7812CurrencyUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 2, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i16 2, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i16 2, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i16 2, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 1, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i16 2, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i8 1, ptr %i.p, align 4, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i16 2, ptr %i.r, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i16 2, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i16 2, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i16 2, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i8 1, ptr %i.y, align 8, !tbaa !37
  invoke void @_ZN6icu_786number4impl23DecimalFormatProperties5clearEv(ptr noundef nonnull align 8 dereferenceable(757) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.w) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.q) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.k) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #5
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.e) #5
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !22  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(36) %i.aa) #5, !inline_history !64
  br label %_ZN6icu_786number4impl25CurrencyPluralInfoWrapperD2Ev.exit

_ZN6icu_786number4impl25CurrencyPluralInfoWrapperD2Ev.exit: ; preds = %bb.d, %bb.c
  tail call void @_ZN6icu_7812CurrencyUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.b) #5
  resume { ptr, i32 } %i.z
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl23DecimalFormatProperties5clearEv(ptr noundef nonnull align 8 dereferenceable(757) initializes((0, 1), (8, 9), (56, 57), (64, 69), (72, 81), (84, 128)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(36) %i.c) #5, !inline_history !65
  br label %_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_18CurrencyPluralInfoEE12adoptInsteadEPS1_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  store i32 -1, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.k, align 4, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.m, align 4, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 -1, i64 32, i1 false)
  store i32 1, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.p, align 4, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 1, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i8 0, ptr %i.w, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 0, ptr %i.x, align 1, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i8 1, ptr %i.y, align 4, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i8 0, ptr %i.z, align 4, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 469
  store i8 0, ptr %i.aa, align 1, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 2, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 736
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i8 1, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 -1, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 756
  store i8 0, ptr %i.aj, align 4, !tbaa !58
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_786number4impl23DecimalFormatProperties7_equalsERKS2_b(ptr noundef nonnull align 8 dereferenceable(757) %0, ptr noundef nonnull align 8 dereferenceable(757) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
  %4 = load i8, ptr %0, align 8, !tbaa !11, !range !66, !noundef !67 ; 2 uses
  %5 = load i8, ptr %1, align 8, !tbaa !11, !range !66, !noundef !67 ; 2 uses
  %6 = or i8 %5, %4
  %brmerge.not.i = icmp eq i8 %6, 0
  br i1 %brmerge.not.i, label %bb.a, label %_ZNK6icu_786number4impl13NullableValueI19UNumberCompactStyleEeqERKS4_.exit

bb.a:                                             ; preds = %3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !68
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge129

_ZNK6icu_786number4impl13NullableValueI19UNumberCompactStyleEeqERKS4_.exit: ; preds = %3
  %7 = and i8 %5, %4
  %.mux.i.not = icmp eq i8 %7, 0
  br i1 %.mux.i.not, label %.critedge129, label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK6icu_786number4impl13NullableValueI19UNumberCompactStyleEeqERKS4_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.f, align 8, !tbaa !19, !range !66, !noundef !67 ; 2 uses
  %i.i = load i8, ptr %i.g, align 8, !tbaa !19, !range !66, !noundef !67 ; 2 uses
  %i.j = or i8 %i.i, %i.h
  %brmerge.not.i130 = icmp eq i8 %i.j, 0
  br i1 %brmerge.not.i130, label %.split, label %_ZNK6icu_786number4impl13NullableValueINS_12CurrencyUnitEEeqERKS4_.exit

.split:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call noundef zeroext i1 @_ZNK6icu_7811MeasureUniteqERKNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(19) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br i1 %i.m, label %.critedge, label %.critedge129

_ZNK6icu_786number4impl13NullableValueINS_12CurrencyUnitEEeqERKS4_.exit: ; preds = %bb.b
  %i.n = and i8 %i.i, %i.h
  %.mux.i131.not = icmp eq i8 %i.n, 0
  br i1 %.mux.i131.not, label %.critedge129, label %.critedge

.critedge:                                        ; preds = %.split, %_ZNK6icu_786number4impl13NullableValueINS_12CurrencyUnitEEeqERKS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %.critedge90, label %.critedge129

.critedge90:                                      ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i8, ptr %i.t, align 8, !tbaa !25, !range !66, !noundef !67 ; 2 uses
  %i.w = load i8, ptr %i.u, align 8, !tbaa !25, !range !66, !noundef !67 ; 2 uses
  %i.x = or i8 %i.w, %i.v
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.split141, label %_ZNK6icu_786number4impl13NullableValueI14UCurrencyUsageEeqERKS4_.exit

.split141:                                        ; preds = %.critedge90
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %.critedge91, label %.critedge129

_ZNK6icu_786number4impl13NullableValueI14UCurrencyUsageEeqERKS4_.exit: ; preds = %.critedge90
  %13 = and i8 %i.w, %i.v
  %.mux.i133.not = icmp eq i8 %13, 0
  br i1 %.mux.i133.not, label %.critedge129, label %.critedge91

.critedge91:                                      ; preds = %.split141, %_ZNK6icu_786number4impl13NullableValueI14UCurrencyUsageEeqERKS4_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !70, !range !66, !noundef !67
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !70, !range !66, !noundef !67
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %.critedge92, label %.critedge129

.critedge92:                                      ; preds = %.critedge91
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !71, !range !66, !noundef !67
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !71, !range !66, !noundef !67
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %.critedge93, label %.critedge129

.critedge93:                                      ; preds = %.critedge92
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !72, !range !66, !noundef !67
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !72, !range !66, !noundef !67
  %i.an = icmp eq i8 %i.ak, %i.am
  br i1 %i.an, label %.critedge94, label %.critedge129

.critedge94:                                      ; preds = %.critedge93
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !73, !range !66, !noundef !67
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !73, !range !66, !noundef !67
  %i.as = icmp eq i8 %i.ap, %i.ar
  br i1 %i.as, label %.critedge95, label %.critedge129

.critedge95:                                      ; preds = %.critedge94
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load i32, ptr %i.at, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !45
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %.critedge96, label %.critedge129

.critedge96:                                      ; preds = %.critedge95
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !48
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %.critedge97, label %.critedge129

.critedge97:                                      ; preds = %.critedge96
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !74
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %.critedge98, label %.critedge129

.critedge98:                                      ; preds = %.critedge97
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !75
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %.critedge99, label %.critedge129

.critedge99:                                      ; preds = %.critedge98
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !76
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %.critedge100, label %.critedge129

.critedge100:                                     ; preds = %.critedge99
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !77
  %i.bw = icmp eq i32 %i.bt, %i.bv
  br i1 %i.bw, label %.critedge101, label %.critedge129

.critedge101:                                     ; preds = %.critedge100
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !49
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %.critedge102, label %.critedge129

.critedge102:                                     ; preds = %.critedge101
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !50
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %.critedge103, label %.critedge129

.critedge103:                                     ; preds = %.critedge102
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cj = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.ci)
  br i1 %i.cj, label %.critedge104, label %.critedge129

.critedge104:                                     ; preds = %.critedge103
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.cm = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(64) %i.cl)
  br i1 %i.cm, label %.critedge105, label %.critedge129

.critedge105:                                     ; preds = %.critedge104
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cp = load i8, ptr %i.cn, align 8, !tbaa !31, !range !66, !noundef !67 ; 2 uses
  %i.cq = load i8, ptr %i.co, align 8, !tbaa !31, !range !66, !noundef !67 ; 2 uses
  %i.cr = or i8 %i.cq, %i.cp
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %.split142, label %_ZNK6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEeqERKS4_.exit

.split142:                                        ; preds = %.critedge105
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 388
  %15 = load i32, ptr %14, align 4, !tbaa !78
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 388
  %17 = load i32, ptr %16, align 4, !tbaa !78
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %.critedge106, label %.critedge129

_ZNK6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEeqERKS4_.exit: ; preds = %.critedge105
  %19 = and i8 %i.cq, %i.cp
  %.mux.i135.not = icmp eq i8 %19, 0
  br i1 %.mux.i135.not, label %.critedge129, label %.critedge106

.critedge106:                                     ; preds = %.split142, %_ZNK6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEeqERKS4_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.cv = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %i.cu)
  br i1 %i.cv, label %.critedge107, label %.critedge129

.critedge107:                                     ; preds = %.critedge106
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.cy = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cx)
  br i1 %i.cy, label %.critedge108, label %.critedge129

.critedge108:                                     ; preds = %.critedge107
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.db = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull align 8 dereferenceable(64) %i.da)
  br i1 %i.db, label %.critedge109, label %.critedge129

.critedge109:                                     ; preds = %.critedge108
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.df = load double, ptr %i.de, align 8, !tbaa !56
  %i.dg = fcmp oeq double %i.dd, %i.df
  br i1 %i.dg, label %.critedge110, label %.critedge129

.critedge110:                                     ; preds = %.critedge109
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.dj = load i8, ptr %i.dh, align 8, !tbaa !37, !range !66, !noundef !67 ; 2 uses
  %i.dk = load i8, ptr %i.di, align 8, !tbaa !37, !range !66, !noundef !67 ; 2 uses
  %i.dl = or i8 %i.dk, %i.dj
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %.split143, label %_ZNK6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEeqERKS4_.exit

.split143:                                        ; preds = %.critedge110
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 748
  %21 = load i32, ptr %20, align 4, !tbaa !79
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 748
  %23 = load i32, ptr %22, align 4, !tbaa !79
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %.critedge111, label %.critedge129

_ZNK6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEeqERKS4_.exit: ; preds = %.critedge110
  %25 = and i8 %i.dk, %i.dj
  %.mux.i137.not = icmp eq i8 %25, 0
  br i1 %.mux.i137.not, label %.critedge129, label %.critedge111

.critedge111:                                     ; preds = %.split143, %_ZNK6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEeqERKS4_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !57
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !57
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %.critedge112, label %.critedge129

.critedge112:                                     ; preds = %.critedge111
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !58, !range !66, !noundef !67
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 756
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !58, !range !66, !noundef !67
  %i.dw = icmp eq i8 %i.dt, %i.dv                 ; 2 uses
  %.not = xor i1 %i.dw, true
  %brmerge = or i1 %2, %.not
  %.mux = and i1 %2, %i.dw
  br i1 %brmerge, label %.critedge129, label %bb.c

bb.c:                                             ; preds = %.critedge112
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !46
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !46
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %.critedge114, label %.critedge129

.critedge114:                                     ; preds = %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !47, !range !66, !noundef !67
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !47, !range !66, !noundef !67
  %i.eg = icmp eq i8 %i.ed, %i.ef
  br i1 %i.eg, label %.critedge115, label %.critedge129

.critedge115:                                     ; preds = %.critedge114
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !80
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !80
  %i.el = icmp eq i32 %i.ei, %i.ek
  br i1 %i.el, label %.critedge116, label %.critedge129

.critedge116:                                     ; preds = %.critedge115
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.en = load i32, ptr %i.em, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !81
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %.critedge117, label %.critedge129

.critedge117:                                     ; preds = %.critedge116
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.es = load i32, ptr %i.er, align 4, !tbaa !82
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !82
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %.critedge118, label %.critedge129

.critedge118:                                     ; preds = %.critedge117
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !83
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !83
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %.critedge119, label %.critedge129

.critedge119:                                     ; preds = %.critedge118
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fd = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fb, ptr noundef nonnull align 8 dereferenceable(64) %i.fc)
  br i1 %i.fd, label %.critedge120, label %.critedge129

.critedge120:                                     ; preds = %.critedge119
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fg = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, ptr noundef nonnull align 8 dereferenceable(64) %i.ff)
  br i1 %i.fg, label %.critedge121, label %.critedge129

.critedge121:                                     ; preds = %.critedge120
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.fj = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fh, ptr noundef nonnull align 8 dereferenceable(64) %i.fi)
  br i1 %i.fj, label %.critedge122, label %.critedge129

.critedge122:                                     ; preds = %.critedge121
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.fm = tail call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fk, ptr noundef nonnull align 8 dereferenceable(64) %i.fl)
  br i1 %i.fm, label %.critedge123, label %.critedge129

.critedge123:                                     ; preds = %.critedge122
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !84, !range !66, !noundef !67
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !84, !range !66, !noundef !67
  %i.fr = icmp eq i8 %i.fo, %i.fq
  br i1 %i.fr, label %.critedge124, label %.critedge129

.critedge124:                                     ; preds = %.critedge123
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !51, !range !66, !noundef !67
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !51, !range !66, !noundef !67
  %i.fw = icmp eq i8 %i.ft, %i.fv
  br i1 %i.fw, label %.critedge125, label %.critedge129

.critedge125:                                     ; preds = %.critedge124
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 457
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !52, !range !66, !noundef !67
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 457
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !52, !range !66, !noundef !67
  %i.gb = icmp eq i8 %i.fy, %i.ga
  br i1 %i.gb, label %.critedge126, label %.critedge129

.critedge126:                                     ; preds = %.critedge125
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 460
  %i.ge = load i8, ptr %i.gc, align 4, !tbaa !34, !range !66, !noundef !67 ; 2 uses
  %i.gf = load i8, ptr %i.gd, align 4, !tbaa !34, !range !66, !noundef !67 ; 2 uses
  %i.gg = or i8 %i.gf, %i.ge
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %.split147, label %_ZNK6icu_786number4impl13NullableValueINS1_9ParseModeEEeqERKS4_.exit

.split147:                                        ; preds = %.critedge126
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 464
  %29 = load i32, ptr %28, align 8, !tbaa !85
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %.critedge127, label %.critedge129

_ZNK6icu_786number4impl13NullableValueINS1_9ParseModeEEeqERKS4_.exit: ; preds = %.critedge126
  %31 = and i8 %i.gf, %i.ge
  %.mux.i139.not = icmp eq i8 %31, 0
  br i1 %.mux.i139.not, label %.critedge129, label %.critedge127

.critedge127:                                     ; preds = %.split147, %_ZNK6icu_786number4impl13NullableValueINS1_9ParseModeEEeqERKS4_.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !53, !range !66, !noundef !67
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.gl = load i8, ptr %i.gk, align 4, !tbaa !53, !range !66, !noundef !67
  %i.gm = icmp eq i8 %i.gj, %i.gl
  br i1 %i.gm, label %.critedge128, label %.critedge129

.critedge128:                                     ; preds = %.critedge127
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 469
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !54, !range !66, !noundef !67
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 469
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !54, !range !66, !noundef !67
  %i.gr = icmp eq i8 %i.go, %i.gq
  br i1 %i.gr, label %bb.d, label %.critedge129

bb.d:                                             ; preds = %.critedge128
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !55
  %i.gw = icmp eq i32 %i.gt, %i.gv
  br label %.critedge129

.critedge129:                                     ; preds = %.split143, %.split142, %.split141, %.split, %bb.a, %_ZNK6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEeqERKS4_.exit, %.critedge108, %.critedge106, %.critedge104, %.critedge102, %.critedge100, %.critedge98, %.critedge96, %.critedge94, %.critedge92, %_ZNK6icu_786number4impl13NullableValueI14UCurrencyUsageEeqERKS4_.exit, %_ZNK6icu_786number4impl13NullableValueINS_12CurrencyUnitEEeqERKS4_.exit, %_ZNK6icu_786number4impl13NullableValueI19UNumberCompactStyleEeqERKS4_.exit, %.critedge, %.critedge91, %.critedge93, %.critedge95, %.critedge97, %.critedge99, %.critedge101, %.critedge103, %_ZNK6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEeqERKS4_.exit, %.critedge107, %.critedge109, %.critedge111, %.split147, %.critedge112, %.critedge128, %bb.d, %_ZNK6icu_786number4impl13NullableValueINS1_9ParseModeEEeqERKS4_.exit, %.critedge124, %.critedge122, %.critedge120, %.critedge118, %.critedge116, %.critedge114, %bb.c, %.critedge115, %.critedge117, %.critedge119, %.critedge121, %.critedge123, %.critedge125, %.critedge127
  %.0 = phi i1 [ %.mux, %.critedge112 ], [ false, %.critedge128 ], [ %i.gw, %bb.d ], [ false, %_ZNK6icu_786number4impl13NullableValueINS1_9ParseModeEEeqERKS4_.exit ], [ false, %.critedge124 ], [ false, %.critedge122 ], [ false, %.critedge120 ], [ false, %.critedge118 ], [ false, %.critedge116 ], [ false, %.critedge114 ], [ false, %.critedge127 ], [ false, %bb.c ], [ false, %.critedge115 ], [ false, %.critedge117 ], [ false, %.critedge119 ], [ false, %.critedge121 ], [ false, %.critedge123 ], [ false, %.critedge125 ], [ false, %.split147 ], [ false, %.critedge111 ], [ false, %.critedge109 ], [ false, %.critedge107 ], [ false, %_ZNK6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEeqERKS4_.exit ], [ false, %.critedge103 ], [ false, %.critedge101 ], [ false, %.critedge99 ], [ false, %.critedge97 ], [ false, %.critedge95 ], [ false, %.critedge93 ], [ false, %.critedge91 ], [ false, %.critedge ], [ false, %_ZNK6icu_786number4impl13NullableValueI19UNumberCompactStyleEeqERKS4_.exit ], [ false, %_ZNK6icu_786number4impl13NullableValueINS_12CurrencyUnitEEeqERKS4_.exit ], [ false, %_ZNK6icu_786number4impl13NullableValueI14UCurrencyUsageEeqERKS4_.exit ], [ false, %.critedge92 ], [ false, %.critedge94 ], [ false, %.critedge96 ], [ false, %.critedge98 ], [ false, %.critedge100 ], [ false, %.critedge102 ], [ false, %.critedge104 ], [ false, %.critedge106 ], [ false, %.critedge108 ], [ false, %_ZNK6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEeqERKS4_.exit ], [ false, %bb.a ], [ false, %.split ], [ false, %.split141 ], [ false, %.split142 ], [ false, %.split143 ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !28
  %i.f = trunc i16 %i.e to i1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !28   ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = and i16 %i.n, 1
  %.not9 = icmp eq i16 %i.u, 0
  %i.v = icmp eq i32 %i.l, %i.t
  %or.cond = and i1 %.not9, %i.v
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %i.n, 2
  %.not.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i, ptr %i.z, ptr %i.x
  %i.ab = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l)
  %i.ac = icmp ne i8 %i.ab, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ %i.ac, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_786number4impl23DecimalFormatProperties29equalsDefaultExceptFastFormatEv(ptr noundef nonnull align 8 dereferenceable(757) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.a, 2
  br i1 %.not11.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE)
  %.not12.i = icmp eq i8 %i.b, 0
  br i1 %.not12.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(757) @_ZN12_GLOBAL__N_121kRawDefaultPropertiesE)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE, i64 4), align 4, !tbaa !63
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_786number4impl23DecimalFormatProperties7_equalsERKS2_b(ptr noundef nonnull align 8 dereferenceable(757) %0, ptr noundef nonnull align 8 dereferenceable(757) @_ZN12_GLOBAL__N_121kRawDefaultPropertiesE, i1 noundef zeroext true)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(757) ptr @_ZN6icu_786number4impl23DecimalFormatProperties10getDefaultEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE acquire, align 4
  %.not11.i = icmp eq i32 %i.a, 2
  br i1 %.not11.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE)
  %.not12.i = icmp eq i8 %i.b, 0
  br i1 %.not12.i, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_786number4impl23DecimalFormatPropertiesC1Ev(ptr noundef nonnull align 8 dereferenceable(757) @_ZN12_GLOBAL__N_121kRawDefaultPropertiesE)
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE, i64 4), align 4, !tbaa !63
  tail call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZN12_GLOBAL__N_126gDefaultPropertiesInitOnceE)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr @_ZN12_GLOBAL__N_121kRawDefaultPropertiesE
}

; Function Attrs: nounwind
declare void @_ZN6icu_7812CurrencyUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7812CurrencyUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7811MeasureUniteqERKNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"_ZTS19UNumberCompactStyle", !4, i64 0}
!10 = !{!"_ZTSN6icu_786number4impl13NullableValueI19UNumberCompactStyleEE", !8, i64 0, !9, i64 4}
!11 = !{!10, !8, i64 0}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTSN6icu_7815MeasureUnitImplE", !13, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"_ZTSN6icu_7811MeasureUnitE", !12, i64 0, !14, i64 8, !15, i64 16, !4, i64 18}
!17 = !{!"_ZTSN6icu_7812CurrencyUnitE", !16, i64 0, !4, i64 20}
!18 = !{!"_ZTSN6icu_786number4impl13NullableValueINS_12CurrencyUnitEEE", !8, i64 0, !17, i64 8}
!19 = !{!18, !8, i64 0}
!20 = !{!"p1 _ZTSN6icu_7818CurrencyPluralInfoE", !13, i64 0}
!21 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_18CurrencyPluralInfoEEE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"_ZTS14UCurrencyUsage", !4, i64 0}
!24 = !{!"_ZTSN6icu_786number4impl13NullableValueI14UCurrencyUsageEE", !8, i64 0, !23, i64 4}
!25 = !{!24, !8, i64 0}
!26 = !{!"vtable pointer", !3, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!"_ZTS24UNumberFormatPadPosition", !4, i64 0}
!30 = !{!"_ZTSN6icu_786number4impl13NullableValueI24UNumberFormatPadPositionEE", !8, i64 0, !29, i64 4}
!31 = !{!30, !8, i64 0}
!32 = !{!"_ZTSN6icu_786number4impl9ParseModeE", !4, i64 0}
!33 = !{!"_ZTSN6icu_786number4impl13NullableValueINS1_9ParseModeEEE", !8, i64 0, !32, i64 4}
!34 = !{!33, !8, i64 0}
!35 = !{!"_ZTS25UNumberFormatRoundingMode", !4, i64 0}
!36 = !{!"_ZTSN6icu_786number4impl13NullableValueI25UNumberFormatRoundingModeEE", !8, i64 0, !35, i64 4}
!37 = !{!36, !8, i64 0}
!38 = !{!"_ZTSN6icu_7812LocalPointerINS_18CurrencyPluralInfoEEE", !21, i64 0}
!39 = !{!"_ZTSN6icu_786number4impl25CurrencyPluralInfoWrapperE", !38, i64 0}
!40 = !{!"_ZTSN6icu_7811ReplaceableE", !12, i64 0}
!41 = !{!"_ZTSN6icu_7813UnicodeStringE", !40, i64 0, !4, i64 8}
!42 = !{!"_ZTS27UNumberFormatAttributeValue", !4, i64 0}
!43 = !{!"double", !4, i64 0}
!44 = !{!"_ZTSN6icu_786number4impl23DecimalFormatPropertiesE", !10, i64 0, !18, i64 8, !39, i64 48, !24, i64 56, !8, i64 64, !8, i64 65, !8, i64 66, !8, i64 67, !8, i64 68, !5, i64 72, !5, i64 76, !8, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !41, i64 128, !41, i64 192, !41, i64 256, !41, i64 320, !30, i64 384, !41, i64 392, !8, i64 456, !8, i64 457, !33, i64 460, !8, i64 468, !8, i64 469, !42, i64 472, !41, i64 480, !41, i64 544, !41, i64 608, !41, i64 672, !43, i64 736, !36, i64 744, !5, i64 752, !8, i64 756}
!45 = !{!44, !5, i64 72}
!46 = !{!44, !5, i64 76}
!47 = !{!44, !8, i64 80}
!48 = !{!44, !5, i64 84}
!49 = !{!44, !5, i64 120}
!50 = !{!44, !5, i64 124}
!51 = !{!44, !8, i64 456}
!52 = !{!44, !8, i64 457}
!53 = !{!44, !8, i64 468}
!54 = !{!44, !8, i64 469}
!55 = !{!44, !42, i64 472}
!56 = !{!44, !43, i64 736}
!57 = !{!44, !5, i64 752}
!58 = !{!44, !8, i64 756}
!59 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!60 = !{!"_ZTSSt6atomicIiE", !59, i64 0}
!61 = !{!"_ZTS10UErrorCode", !4, i64 0}
!62 = !{!"_ZTSN6icu_789UInitOnceE", !60, i64 0, !61, i64 4}
!63 = !{!62, !61, i64 4}
!64 = distinct !{null, null}
!65 = distinct !{null}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!10, !9, i64 4}
!69 = !{!24, !23, i64 4}
!70 = !{!44, !8, i64 65}
!71 = !{!44, !8, i64 66}
!72 = !{!44, !8, i64 67}
!73 = !{!44, !8, i64 68}
!74 = !{!44, !5, i64 96}
!75 = !{!44, !5, i64 100}
!76 = !{!44, !5, i64 108}
!77 = !{!44, !5, i64 116}
!78 = !{!30, !29, i64 4}
!79 = !{!36, !35, i64 4}
!80 = !{!44, !5, i64 104}
!81 = !{!44, !5, i64 88}
!82 = !{!44, !5, i64 92}
!83 = !{!44, !5, i64 112}
!84 = !{!44, !8, i64 64}
!85 = !{!33, !32, i64 4}
end_hunk_0
