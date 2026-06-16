inline.NumInlined: 4175
inline.NumDeleted: 1528
begin_hunk_0_@_ZN2v88internal16ICUTimezoneCache15LocalTimeOffsetEdb:bb.a

_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit.i: ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(72) %i.h, double noundef %1, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25, !inline_history !407
  br label %_ZN2v88internal16ICUTimezoneCache10GetOffsetsEdbPiS2_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit7.i

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef ptr @_ZN6icu_788TimeZone13createDefaultEv() #25 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8
  br label %_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit7.i

_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit7.i: ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(72) %i.m, double noundef %1, i32 noundef 4, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25, !inline_history !407
  br label %_ZN2v88internal16ICUTimezoneCache10GetOffsetsEdbPiS2_.exit

_ZN2v88internal16ICUTimezoneCache10GetOffsetsEdbPiS2_.exit: ; preds = %_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit.i, %_ZN2v88internal16ICUTimezoneCache11GetTimeZoneEv.exit7.i
  %i.q = load i32, ptr %i.a, align 4
  %i.r = icmp slt i32 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.s = load i32, ptr %i.b, align 4
  %i.t = load i32, ptr %i.c, align 4
  %i.u = add nsw i32 %i.t, %i.s
  %i.v = sitofp i32 %i.u to double
  %.0 = select i1 %i.r, double %i.v, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16ICUTimezoneCache5ClearENS_4base13TimezoneCache17TimeZoneDetectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((24, 32), (56, 64)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.g, align 8
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.j, align 8
  store i8 0, ptr %i.l, align 1
  %i.m = icmp eq i32 %1, 1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN6icu_788TimeZone18detectHostTimeZoneEv() #25
  tail call void @_ZN6icu_788TimeZone12adoptDefaultEPS0_(ptr noundef %i.n) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6icu_788TimeZone12adoptDefaultEPS0_(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_788TimeZone18detectHostTimeZoneEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal4Intl19CreateTimeZoneCacheEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 30), align 2, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal16ICUTimezoneCacheE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.d, align 8
  store i64 0, ptr %i.g, align 8
  store i8 0, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.j, i8 0, i64 9, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v84base2OS19CreateTimezoneCacheEv() #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %i.l
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN2v84base2OS19CreateTimezoneCacheEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 4294967298) i64 @_ZN2v88internal4Intl16GetLocaleMatcherEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [3 x %"class.v8::internal::DirectHandle"], align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::DirectHandle.442", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2712 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8
  %i.b = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr %1, ptr nonnull %i.a, ptr noundef %2, ptr noundef nonnull %4) #25 ; 2 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, label %_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit

_ZNKR2v85MaybeIbE8FromJustEv.exit.i:              ; preds = %bb.a
  %i.d = and i16 %i.b, 256
  %.not16.i = icmp eq i16 %i.d, 0
  br i1 %.not16.i, label %_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8
  %i.e = load i64, ptr %.sroa.0.0.copyload.i.i, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr nonnull @.str.60, i64 8, ptr noundef nonnull %0)
  br i1 %i.h, label %_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %.sroa.0.0.copyload.i.i.1 = load ptr, ptr %4, align 8
  %i.i = load i64, ptr %.sroa.0.0.copyload.i.i.1, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = call noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EcEEbNS_4base6VectorIKT0_EEPNS0_7IsolateE(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr nonnull @.str.61, i64 6, ptr noundef nonnull %0)
  br i1 %i.l, label %_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.1
  %i.m = load ptr, ptr %4, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.i
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.r = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.q, i8 noundef zeroext 0) #25 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i, !prof !35

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.138) #27
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i: ; preds = %bb.c
  %.sroa.03.0.copyload.i = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %.sroa.03.0.copyload.i, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.u, align 8
  %i.v = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 276, ptr nonnull %3, i64 3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.w = load i64, ptr %i.v, align 8
  %i.x = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.w, ptr noundef null) #25 ; 0 uses
  br label %_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit

_ZN2v88internalL15GetStringOptionINS0_4Intl13MatcherOptionEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS9_INS0_6StringEEEPKcSt4spanIKSt17basic_string_viewIcSt11char_traitsIcEELm18446744073709551615EESG_IKS5_Lm18446744073709551615EESt8optionalIS5_E.exit: ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i, %bb.a, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i
  %.sroa.025.1.i = phi i64 [ 0, %bb.a ], [ 0, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit.i ], [ 1, %_ZNKR2v85MaybeIbE8FromJustEv.exit.i ], [ 1, %.lr.ph.i.preheader ], [ 4294967297, %.lr.ph.i.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i64 %.sroa.025.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 258) i16 @_ZN2v88internal4Intl18GetNumberingSystemEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [2 x %"class.v8::internal::DirectHandle"], align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::DirectHandle.442", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr null, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2920 ; 2 uses
  %i.b = call i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef nonnull %0, ptr %1, ptr nonnull %i.a, ptr noundef %2, ptr noundef nonnull %5) #25 ; 2 uses
  %i.c = trunc i16 %i.b to i1
  br i1 %i.c, label %_ZNKR2v85MaybeIbE8FromJustEv.exit, label %bb.i

_ZNKR2v85MaybeIbE8FromJustEv.exit:                ; preds = %bb.a
  %i.d = and i16 %i.b, 256
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8
  %i.e = load i64, ptr %.sroa.0.0.copyload.i, align 8
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  call void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(16) %i.g) #25
  %i.h = load ptr, ptr %3, align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = load ptr, ptr %6, align 8                ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %.not21.i = icmp eq ptr %6, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %7, !prof !35

7:                                                ; preds = %bb.c
  switch i64 %i.o, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %7
  %i.q = load i8, ptr %i.k, align 1
  store i8 %i.q, ptr %i.h, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %7
  %i.r = load i64, ptr %i.n, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load <2 x i64>, ptr %i.w, align 8
  store <2 x i64> %i.x, ptr %i.v, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.i, align 8
  store ptr %i.k, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ab, ptr %i.aa, align 8
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %6, align 8
  store i64 %i.y, ptr %i.l, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %8 = phi ptr [ %i.h, %bb.f ], [ %i.l, %bb.g ], [ %i.k, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %8, align 1
  %i.ad = load ptr, ptr %6, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.val = load ptr, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val16 = load i64, ptr %i.ai, align 8
  %i.aj = call noundef zeroext i1 @_ZN2v88internal8JSLocale16Is38AlphaNumListESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.val16, ptr %.val) #25
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.01.0.copyload = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.a, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.01.0.copyload, ptr %i.ak, align 8
  %i.al = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 237, ptr nonnull %4, i64 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.am = load i64, ptr %i.al, align 8
  %i.an = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.am, ptr noundef null) #25 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKR2v85MaybeIbE8FromJustEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a, %bb.h
  %.sroa.529.0 = phi i16 [ 257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.a ], [ 0, %bb.h ], [ 1, %_ZNKR2v85MaybeIbE8FromJustEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i16 %.sroa.529.0
}

declare i16 @_ZN2v88internal15GetStringOptionEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS3_INS0_6StringEEEPKcPS7_(ptr noundef, ptr, ptr, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6String11ToStdStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN2v88internal4Intl19GetAvailableLocalesB5cxx11Ev() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.std::function.864", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.a = load atomic i8, ptr @_ZZN2v88internal4Intl19GetAvailableLocalesB5cxx11EvE17available_locales acquire, align 8
  %.not.i.i.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS3_17SkipResourceCheckEEENS0_32StaticallyAllocatedInstanceTraitIS6_EENS0_21DefaultConstructTraitIS6_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS6_EEE7PointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS3_17SkipResourceCheckEEENS0_32StaticallyAllocatedInstanceTraitIS6_EENS0_21DefaultConstructTraitIS6_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS6_EEE12InitInstanceEPv, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal4Intl19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.c, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.b, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN2v88internal4Intl19GetAvailableLocalesB5cxx11EvE17available_locales, ptr noundef nonnull %0) #25
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS3_17SkipResourceCheckEEENS0_32StaticallyAllocatedInstanceTraitIS6_EENS0_21DefaultConstructTraitIS6_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS6_EEE7PointerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3) #25, !inline_history !408 ; 0 uses
  br label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS3_17SkipResourceCheckEEENS0_32StaticallyAllocatedInstanceTraitIS6_EENS0_21DefaultConstructTraitIS6_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS6_EEE7PointerEv.exit

_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS3_17SkipResourceCheckEEENS0_32StaticallyAllocatedInstanceTraitIS6_EENS0_21DefaultConstructTraitIS6_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS6_EEE7PointerEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal4Intl19GetAvailableLocalesB5cxx11EvE17available_locales, i64 8)
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN2v88internal4Intl32GetAvailableLocalesForDateFormatB5cxx11Ev() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %"class.std::function.864", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.a = load atomic i8, ptr @_ZZN2v88internal4Intl32GetAvailableLocalesForDateFormatB5cxx11EvE17available_locales acquire, align 8
  %.not.i.i.i.i = icmp eq i8 %i.a, 2
  br i1 %.not.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE7PointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE12InitInstanceEPv, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal4Intl32GetAvailableLocalesForDateFormatB5cxx11EvE17available_locales, i64 8), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.c, align 8
  store ptr @_ZNSt17_Function_handlerIFvvEZN2v84base8CallOnceIJPvEEEvPSt6atomicIhENS2_16FunctionWithArgsIJDpT_EE4typeESA_Qsr3stdE13conjunction_vIDpSt9is_scalarIS9_EEEUlvE_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.b, align 8
  call void @_ZN2v84base12CallOnceImplEPSt6atomicIhESt8functionIFvvEE(ptr noundef nonnull @_ZZN2v88internal4Intl32GetAvailableLocalesForDateFormatB5cxx11EvE17available_locales, ptr noundef nonnull %0) #25
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE7PointerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3) #25, !inline_history !409 ; 0 uses
  br label %_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE7PointerEv.exit

_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE7PointerEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal4Intl32GetAvailableLocalesForDateFormatB5cxx11EvE17available_locales, i64 8)
}

; Function Attrs: mustprogress nounwind uwtable
define hidden nonnull ptr @_ZN2v88internal4Intl17NumberFieldToTypeEPNS0_7IsolateERKNS0_16NumberFormatSpanERKN6icu_7813UnicodeStringEb(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4
  switch i32 %i.a, label %bb.p [
    i32 0, label %bb.b
    i32 1, label %.thread.thread
    i32 2, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 10, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 9, label %bb.l
    i32 12, label %bb.m
    i32 11, label %bb.n
    i32 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i16, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = icmp ult i32 %i.c, %i.k
  br i1 %i.l, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.c
  %i.m = and i16 %i.e, 2
  %.not.i.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n
  %i.r = sext i32 %i.c to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = icmp eq i16 %i.t, 8734
  br i1 %i.u, label %.thread.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sub nsw i32 %i.w, %i.c
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %.critedge47, label %.thread

.critedge47:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.c, i32 noundef 3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull @.str.63) #25
  %i.z = call noundef zeroext i1 @_ZNK6icu_7813UnicodeStringeqERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %i.z, label %.thread.thread, label %.thread

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.critedge47
  br label %.thread.thread

bb.d:                                             ; preds = %bb.a
  br label %.thread.thread

bb.e:                                             ; preds = %bb.a
  br label %.thread.thread

bb.f:                                             ; preds = %bb.a
  br label %.thread.thread

bb.g:                                             ; preds = %bb.a
  br label %.thread.thread

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i16, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp slt i16 %i.ad, 0
  %i.af = ashr i16 %i.ad, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
end_hunk_0
