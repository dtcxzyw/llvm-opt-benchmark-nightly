Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/plurrule?download=true
inline.NumInlined: 565
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7824PluralKeywordEnumerationC2EPNS_9RuleChainER10UErrorCode:bb.a
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i32 noundef 0, i32 noundef %i.t, ptr noundef nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE, i32 noundef 0, i32 noundef 5) #21
  %i.v = icmp eq i8 %i.u, 0
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE) #21, !srcloc !19
  %spec.select = select i1 %i.v, i8 0, i8 %.01939 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01740, i64 72
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %i.y = icmp eq i8 %spec.select, 0
  br i1 %i.y, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit29, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.z = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #21 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 2, ptr %i.ab, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 5, ptr nonnull @_ZN6icu_78L20PLURAL_KEYWORD_OTHERE) #21 ; 0 uses
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit28

bb.d:                                             ; preds = %._crit_edge.thread
  %i.ad = load i32, ptr %2, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit28

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit28: ; preds = %bb.e, %bb.d, %.thread
  tail call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %2) #21
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit29

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit29: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit28, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #6

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @uprv_deleteUObject_78(ptr noundef) #6

declare noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7824PluralKeywordEnumeration5snextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = add nsw i32 %i.d, 1
  store i32 %i.i, ptr %i.c, align 4
  %i.j = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %i.d) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7824PluralKeywordEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_7824PluralKeywordEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824PluralKeywordEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7824PluralKeywordEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #21
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824PluralKeywordEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7824PluralKeywordEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #21, !inline_history !79
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(160) %0) #21, !inline_history !79
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Edilii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8
  %i.g = tail call signext i8 @uprv_isNaN_78(double noundef %i.e) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2
  %i.i = load double, ptr %i.f, align 8
  %i.j = tail call signext i8 @uprv_isInfinite_78(double noundef %i.i) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = icmp eq i32 %4, 0
  %spec.select.i = select i1 %i.m, i32 %5, i32 %4
  store i32 %spec.select.i, ptr %i.l, align 8
  %i.n = load i8, ptr %i.h, align 2
  %.not.i = icmp eq i8 %i.n, 0
  %.not14.i = icmp eq i8 %i.j, 0
  %or.cond17.i = select i1 %.not.i, i1 %.not14.i, i1 false
  br i1 %or.cond17.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.o = load double, ptr %i.f, align 8           ; 3 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %or.cond.i = fcmp ogt double %i.p, f0x43E0000000000000
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.t, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdilii.exit

bb.c:                                             ; preds = %bb.b
  %i.u = fptosi double %i.o to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.u, ptr %i.v, align 8
  %i.w = sitofp i64 %i.u to double
  %i.x = fcmp oeq double %i.o, %i.w
  %i.y = zext i1 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.ab, align 8
  %i.ac = icmp eq i64 %3, 0
  br i1 %i.ac, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ad = srem i64 %3, 10
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i64 [ %i.af, %.lr.ph.i ], [ %3, %.preheader.i ]
  %i.af = sdiv exact i64 %.018.i, 10              ; 3 uses
  %i.ag = srem i64 %i.af, 10
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdilii.exit:         ; preds = %.lr.ph.i, %.thread.i, %bb.c, %.preheader.i
  %.0.lcssa.sink.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %3, %.preheader.i ], [ %i.af, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimal4initEdilii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2
  %i.h = load double, ptr %i.e, align 8
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = icmp eq i32 %4, 0
  %spec.select = select i1 %i.l, i32 %5, i32 %4
  store i32 %spec.select, ptr %i.k, align 8
  %i.m = load i8, ptr %i.g, align 2
  %.not = icmp eq i8 %i.m, 0
  %.not14 = icmp eq i8 %i.i, 0
  %or.cond17 = select i1 %.not, i1 %.not14, i1 false
  br i1 %or.cond17, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load double, ptr %i.e, align 8           ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.018 = phi i64 [ %i.ae, %.lr.ph ], [ %3, %.preheader ]
  %i.ae = sdiv exact i64 %.018, 10                ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %bb.c, %.thread
  %.0.lcssa.sink = phi i64 [ 0, %bb.c ], [ 0, %.thread ], [ %3, %.preheader ], [ %i.ae, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Edili(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8
  %i.g = tail call signext i8 @uprv_isNaN_78(double noundef %i.e) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2
  %i.i = load double, ptr %i.f, align 8
  %i.j = tail call signext i8 @uprv_isInfinite_78(double noundef %i.i) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.l, align 8
  %i.m = load i8, ptr %i.h, align 2
  %.not.i.i = icmp eq i8 %i.m, 0
  %.not14.i.i = icmp eq i8 %i.j, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = load double, ptr %i.f, align 8           ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond.i.i = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %_ZN6icu_7812FixedDecimal4initEdili.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %3, %.preheader.i.i ]
  %i.ae = sdiv exact i64 %.018.i.i, 10            ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdili.exit:          ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.c, %.preheader.i.i
  %.0.lcssa.sink.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i ], [ %3, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimal4initEdili(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2
  %i.h = load double, ptr %i.e, align 8
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.k, align 8
  %i.l = load i8, ptr %i.g, align 2
  %.not.i = icmp eq i8 %i.l, 0
  %.not14.i = icmp eq i8 %i.i, 0
  %or.cond17.i = select i1 %.not.i, i1 %.not14.i, i1 false
  br i1 %or.cond17.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.m = load double, ptr %i.e, align 8           ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond.i = fcmp ogt double %i.n, f0x43E0000000000000
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdilii.exit

bb.c:                                             ; preds = %bb.b
  %i.s = fptosi double %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.t, align 8
  %i.u = sitofp i64 %i.s to double
  %i.v = fcmp oeq double %i.m, %i.u
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.z, align 8
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = srem i64 %3, 10
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %3, %.preheader.i ]
  %i.ad = sdiv exact i64 %.018.i, 10              ; 3 uses
  %i.ae = srem i64 %i.ad, 10
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdilii.exit:         ; preds = %.lr.ph.i, %.thread.i, %bb.c, %.preheader.i
  %.0.lcssa.sink.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %3, %.preheader.i ], [ %i.ad, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Edil(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8
  %i.g = tail call signext i8 @uprv_isNaN_78(double noundef %i.e) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2
  %i.i = load double, ptr %i.f, align 8
  %i.j = tail call signext i8 @uprv_isInfinite_78(double noundef %i.i) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.l, align 8
  %i.m = load i8, ptr %i.h, align 2
  %.not.i.i.i = icmp eq i8 %i.m, 0
  %.not14.i.i.i = icmp eq i8 %i.j, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = load double, ptr %i.f, align 8           ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond.i.i.i = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %3, %.preheader.i.i.i ]
  %i.ae = sdiv exact i64 %.018.i.i.i, 10          ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.c, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i.i ], [ %3, %.preheader.i.i.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.ah, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimal4initEdil(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2
  %i.h = load double, ptr %i.e, align 8
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) #21 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.k, align 8
  %i.l = load i8, ptr %i.g, align 2
  %.not.i.i = icmp eq i8 %i.l, 0
  %.not14.i.i = icmp eq i8 %i.i, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load double, ptr %i.e, align 8           ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond.i.i = fcmp ogt double %i.n, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit

bb.c:                                             ; preds = %bb.b
  %i.s = fptosi double %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.t, align 8
  %i.u = sitofp i64 %i.s to double
  %i.v = fcmp oeq double %i.m, %i.u
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.z, align 8
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %_ZN6icu_7812FixedDecimal4initEdili.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.ab = srem i64 %3, 10
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %3, %.preheader.i.i ]
  %i.ad = sdiv exact i64 %.018.i.i, 10            ; 3 uses
  %i.ae = srem i64 %i.ad, 10
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdili.exit:          ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.c, %.preheader.i.i
  %.0.lcssa.sink.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i ], [ %3, %.preheader.i.i ], [ %i.ad, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Edi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = icmp eq i32 %2, 0
  %i.c = tail call double @llvm.trunc.f64(double %1)
  %i.d = fcmp oeq double %i.c, %1
  %or.cond.i = or i1 %i.b, %i.d
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call signext i8 @uprv_isNaN_78(double noundef %1) #21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %1) #21
  %.not19.i = icmp eq i8 %i.f, 0
  br i1 %.not19.i, label %bb.d, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fsub double %i.g, %i.h                   ; 4 uses
  switch i32 %2, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 1.000000e+01, double 5.000000e-01)
  %i.k = fptosi double %i.j to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double 1.000000e+02, double 5.000000e-01)
  %i.m = fptosi double %i.l to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.d
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double 1.000000e+03, double 5.000000e-01)
  %i.o = fptosi double %i.n to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.d
  %i.p = sitofp i32 %2 to double
  %i.q = tail call double @pow(double noundef 1.000000e+01, double noundef %i.p) #21
  %i.r = tail call double @llvm.fmuladd.f64(double %i.i, double %i.q, double 5.000000e-01)
  %i.s = tail call double @llvm.floor.f64(double %i.r) ; 2 uses
  %i.t = fcmp ult double %i.s, f0x43E0000000000000
  %i.u = fptosi double %i.s to i64
  %.0.i = select i1 %i.t, i64 %i.u, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.2.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0.i, %bb.h ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.o, %bb.g ] ; 5 uses
  %i.v = fcmp olt double %1, 0.000000e+00
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.w, ptr %i.x, align 1
  %i.y = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.y, ptr %i.z, align 8
  %i.aa = tail call signext i8 @uprv_isNaN_78(double noundef %i.y) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 2
  %i.ac = load double, ptr %i.z, align 8
  %i.ad = tail call signext i8 @uprv_isInfinite_78(double noundef %i.ac) #21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.af, align 8
  %i.ag = load i8, ptr %i.ab, align 2
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %.not14.i.i.i = icmp eq i8 %i.ad, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.i, label %.thread.i.i.i

bb.i:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ah = load double, ptr %i.z, align 8          ; 3 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %or.cond.i.i.i = fcmp ogt double %i.ai, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.am, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.j:                                             ; preds = %bb.i
  %i.an = fptosi double %i.ah to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = sitofp i64 %i.an to double
  %i.aq = fcmp oeq double %i.ah, %i.ap
  %i.ar = zext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.au, align 8
  %i.av = icmp eq i64 %.2.i, 0
  br i1 %i.av, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j
  %i.aw = srem i64 %.2.i, 10
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.ay = sdiv exact i64 %.018.i.i.i, 10          ; 3 uses
  %i.az = srem i64 %i.ay, 10
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.j, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.j ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bb, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = tail call double @llvm.trunc.f64(double %0)
  %i.c = fcmp oeq double %i.b, %0
  %or.cond = or i1 %i.a, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef %0) #21
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %0) #21
  %.not19 = icmp eq i8 %i.e, 0
  br i1 %.not19, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fsub double %i.f, %i.g                   ; 4 uses
  switch i32 %1, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+01, double 5.000000e-01)
  %i.j = fptosi double %i.i to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+02, double 5.000000e-01)
  %i.l = fptosi double %i.k to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+03, double 5.000000e-01)
  %i.n = fptosi double %i.m to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.o = sitofp i32 %1 to double
  %i.p = tail call double @pow(double noundef 1.000000e+01, double noundef %i.o) #21
  %i.q = tail call double @llvm.fmuladd.f64(double %i.h, double %i.p, double 5.000000e-01)
  %i.r = tail call double @llvm.floor.f64(double %i.q) ; 2 uses
  %i.s = fcmp ult double %i.r, f0x43E0000000000000
  %i.t = fptosi double %i.r to i64
  %.0 = select i1 %i.s, i64 %i.t, i64 9223372036854775807
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.a, %bb.b, %bb.c
  %.2 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0, %bb.h ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  ret i64 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Ed(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 16)) %0, double noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  tail call void @_ZN6icu_7812FixedDecimal4initEd(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimal4initEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 10 uses
  %i.c = tail call double @llvm.trunc.f64(double %i.b)
  %i.d = fcmp une double %i.c, %i.b
  br i1 %i.d, label %bb.b, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = fmul double %i.b, 1.000000e+01           ; 2 uses
  %i.f = tail call double @llvm.trunc.f64(double %i.e)
  %i.g = fcmp une double %i.f, %i.e
  br i1 %i.g, label %bb.c, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.c:                                             ; preds = %bb.b
  %i.h = fmul double %i.b, 1.000000e+02           ; 2 uses
  %i.i = tail call double @llvm.trunc.f64(double %i.h)
  %i.j = fcmp une double %i.i, %i.h
  br i1 %i.j, label %bb.d, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.d:                                             ; preds = %bb.c
  %i.k = fmul double %i.b, 1.000000e+03           ; 2 uses
  %i.l = tail call double @llvm.trunc.f64(double %i.k)
  %i.m = fcmp une double %i.l, %i.k
  br i1 %i.m, label %bb.e, label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.a, i8 0, i64 30, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.17, double noundef %i.b) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #21, !inline_history !10
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i8, ptr %i.r, align 16
  %.not26.i = icmp eq i8 %i.s, 48
  br i1 %.not26.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.017.lcssa.i = phi i32 [ 15, %bb.e ], [ %i.u, %.lr.ph.i ]
  %i.t = sub nsw i32 %.017.lcssa.i, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 16, %bb.e ]
  %.01727.i = phi i32 [ %i.u, %.lr.ph.i ], [ 15, %bb.e ]
  %i.u = add nsw i32 %.01727.i, -1                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1
  %.not.i = icmp eq i8 %i.w, 48
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !11

_ZN6icu_7812FixedDecimal8decimalsEd.exit:         ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge.i
  %.3.i = phi i32 [ %i.t, %._crit_edge.i ], [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ] ; 7 uses
  %i.x = icmp eq i32 %.3.i, 0
  %i.y = call double @llvm.trunc.f64(double %1)
  %i.z = fcmp oeq double %i.y, %1
  %or.cond.i = or i1 %i.z, %i.x
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812FixedDecimal8decimalsEd.exit
  %i.aa = call signext i8 @uprv_isNaN_78(double noundef %1) #21
  %.not.i5 = icmp eq i8 %i.aa, 0
  br i1 %.not.i5, label %bb.g, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call signext i8 @uprv_isPositiveInfinity_78(double noundef %1) #21
  %.not19.i = icmp eq i8 %i.ab, 0
  br i1 %.not19.i, label %bb.h, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = call double @llvm.floor.f64(double %i.b)
  %i.ad = fsub double %i.b, %i.ac                 ; 4 uses
  switch i32 %.3.i, label %bb.l [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = call double @llvm.fmuladd.f64(double %i.ad, double 1.000000e+01, double 5.000000e-01)
  %i.af = fptosi double %i.ae to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = call double @llvm.fmuladd.f64(double %i.ad, double 1.000000e+02, double 5.000000e-01)
  %i.ah = fptosi double %i.ag to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.k:                                             ; preds = %bb.h
  %i.ai = call double @llvm.fmuladd.f64(double %i.ad, double 1.000000e+03, double 5.000000e-01)
  %i.aj = fptosi double %i.ai to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.l:                                             ; preds = %bb.h
  %i.ak = sitofp i32 %.3.i to double
  %i.al = call double @pow(double noundef 1.000000e+01, double noundef %i.ak) #21
  %i.am = call double @llvm.fmuladd.f64(double %i.ad, double %i.al, double 5.000000e-01)
  %i.an = call double @llvm.floor.f64(double %i.am) ; 2 uses
  %i.ao = fcmp ult double %i.an, f0x43E0000000000000
  %i.ap = fptosi double %i.an to i64
  %.0.i = select i1 %i.ao, i64 %i.ap, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.a, %_ZN6icu_7812FixedDecimal8decimalsEd.exit, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l
  %.3.i8 = phi i32 [ %.3.i, %_ZN6icu_7812FixedDecimal8decimalsEd.exit ], [ %.3.i, %bb.g ], [ %.3.i, %bb.f ], [ %.3.i, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ], [ 0, %bb.a ]
  %.2.i = phi i64 [ 0, %_ZN6icu_7812FixedDecimal8decimalsEd.exit ], [ 0, %bb.g ], [ 0, %bb.f ], [ %.0.i, %bb.l ], [ %i.af, %bb.i ], [ %i.ah, %bb.j ], [ %i.aj, %bb.k ], [ 0, %bb.a ] ; 5 uses
  %i.aq = fcmp olt double %1, 0.000000e+00
  %i.ar = zext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.b, ptr %i.at, align 8
  %i.au = call signext i8 @uprv_isNaN_78(double noundef %i.b) #21
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.au, ptr %i.av, align 2
  %i.aw = load double, ptr %i.at, align 8
  %i.ax = call signext i8 @uprv_isInfinite_78(double noundef %i.aw) #21 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.az, align 8
  %i.ba = load i8, ptr %i.av, align 2
  %.not.i.i.i = icmp eq i8 %i.ba, 0
  %.not14.i.i.i = icmp eq i8 %i.ax, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.bb = load double, ptr %i.at, align 8         ; 3 uses
  %i.bc = call double @llvm.fabs.f64(double %i.bb)
  %or.cond.i.i.i = fcmp ogt double %i.bc, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.bg, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = fptosi double %i.bb to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bh, ptr %i.bi, align 8
  %i.bj = sitofp i64 %i.bh to double
  %i.bk = fcmp oeq double %i.bb, %i.bj
  %i.bl = zext i1 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.3.i8, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.bo, align 8
  %i.bp = icmp eq i64 %.2.i, 0
  br i1 %i.bp, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.n
  %i.bq = srem i64 %.2.i, 10
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.bs = sdiv exact i64 %.018.i.i.i, 10          ; 3 uses
  %i.bt = srem i64 %i.bs, 10
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.n, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.n ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bv, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.c, align 8
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef 0.000000e+00) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.d, ptr %i.e, align 2
  %i.f = load double, ptr %i.c, align 8
  %i.g = tail call signext i8 @uprv_isInfinite_78(double noundef %i.f) #21 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.g, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8
  %i.j = load i8, ptr %i.e, align 2
  %.not.i.i.i = icmp eq i8 %i.j, 0
  %.not14.i.i.i = icmp eq i8 %i.g, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = load double, ptr %i.c, align 8           ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %or.cond.i.i.i = fcmp ogt double %i.l, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.m, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.c:                                             ; preds = %bb.b
  %i.n = fptosi double %i.k to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  %i.p = sitofp i64 %i.n to double
  %i.q = fcmp oeq double %i.k, %i.p
  %i.r = zext i1 %i.q to i8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.thread.i.i.i, %bb.c
  %.sink = phi i8 [ 0, %.thread.i.i.i ], [ %i.r, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2ERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 40), (48, 64)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i8 0, ptr %i.d, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i16, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 101, i32 noundef 0, i32 noundef %i.o) #21 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load i16, ptr %i.h, align 8              ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %i.m, align 4
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 69, i32 noundef 0, i32 noundef %i.w) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.039 = phi i32 [ %i.x, %bb.b ], [ %i.p, %bb.a ] ; 3 uses
  %i.y = load i16, ptr %i.h, align 8              ; 2 uses
  %i.z = icmp slt i16 %i.y, 0
  %i.aa = ashr i16 %i.y, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load i32, ptr %i.m, align 4
  %i.ad = select i1 %i.z, i32 %i.ac, i32 %i.ab
  %i.ae = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 99, i32 noundef 0, i32 noundef %i.ad) #21 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load i16, ptr %i.h, align 8             ; 2 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = load i32, ptr %i.m, align 4
  %i.al = select i1 %i.ah, i32 %i.ak, i32 %i.aj
  %i.am = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 67, i32 noundef 0, i32 noundef %i.al) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.040 = phi i32 [ %i.am, %bb.d ], [ %i.ae, %bb.c ] ; 3 uses
  %i.an = icmp sgt i32 %.039, -1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %.039) #21
  %i.ao = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) #21 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ap = add nuw nsw i32 %.039, 1
  store i32 %i.ap, ptr %i.a, align 4
  %i.aq = call noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ar = icmp sgt i32 %.040, -1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %.040) #21
  %i.as = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #21 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.at = add nuw nsw i32 %.040, 1
  store i32 %i.at, ptr %i.b, align 4
  %i.au = call noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.i ]
  %.0 = phi i32 [ %i.aq, %bb.f ], [ %i.au, %bb.h ], [ 0, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %6) #21
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = load i32, ptr %i.g, align 8
  %i.ay = call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr %i.aw, i32 %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %2) #21 ; 0 uses
  %i.az = load i32, ptr %2, align 4
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.bc, align 8
  %i.bd = call signext i8 @uprv_isNaN_78(double noundef 0.000000e+00) #21
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 2
  %i.bf = load double, ptr %i.bc, align 8
  %i.bg = call signext i8 @uprv_isInfinite_78(double noundef %i.bf) #21 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.bi, align 8
end_hunk_0
begin_hunk_1_@_ZN6icu_7812FixedDecimalC2ERKNS_13UnicodeStringER10UErrorCode:bb.a
  %i.bl = call double @llvm.fabs.f64(double %i.bk)
  %or.cond.i.i.i = fcmp ogt double %i.bl, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bm, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bn = fptosi double %i.bk to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = sitofp i64 %i.bn to double
  %i.bq = fcmp oeq double %i.bk, %i.bp
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split

bb.n:                                             ; preds = %bb.j
  %i.br = load i16, ptr %i.h, align 8             ; 2 uses
  %i.bs = icmp slt i16 %i.br, 0
  %i.bt = ashr i16 %i.br, 5
  %i.bu = sext i16 %i.bt to i32
  %i.bv = load i32, ptr %i.m, align 4
  %i.bw = select i1 %i.bs, i32 %i.bv, i32 %i.bu
  %i.bx = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 46, i32 noundef 0, i32 noundef %i.bw) #21 ; 2 uses
  %i.by = call noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %6) #21 ; 9 uses
  %i.bz = icmp eq i32 %i.bx, -1
  br i1 %i.bz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ca = fcmp olt double %i.by, 0.000000e+00
  %i.cb = zext i1 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = call double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.cd, ptr %i.ce, align 8
  %i.cf = call signext i8 @uprv_isNaN_78(double noundef %i.cd) #21
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.cf, ptr %i.cg, align 2
  %i.ch = load double, ptr %i.ce, align 8
  %i.ci = call signext i8 @uprv_isInfinite_78(double noundef %i.ch) #21 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0, ptr %i.ck, align 8
  %i.cl = load i8, ptr %i.cg, align 2
  %.not.i.i = icmp eq i8 %i.cl, 0
  %.not14.i.i = icmp eq i8 %i.ci, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.p, label %.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.cm = load double, ptr %i.ce, align 8         ; 3 uses
  %i.cn = call double @llvm.fabs.f64(double %i.cm)
  %or.cond.i.i = fcmp ogt double %i.cn, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.q

.thread.i.i:                                      ; preds = %bb.p, %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.co, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cp = fptosi double %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = sitofp i64 %i.cp to double
  %i.cs = fcmp oeq double %i.cm, %i.cr
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split

bb.r:                                             ; preds = %bb.n
  br i1 %.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = load i16, ptr %i.h, align 8             ; 2 uses
  %i.cu = icmp slt i16 %i.ct, 0
  %i.cv = ashr i16 %i.ct, 5
  %i.cw = sext i16 %i.cv to i32
  %i.cx = load i32, ptr %i.m, align 4
  %i.cy = select i1 %i.cu, i32 %i.cx, i32 %i.cw
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.g, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.da = phi i32 [ %i.cy, %bb.s ], [ %i.cz, %bb.t ]
  %i.db = xor i32 %i.bx, -1
  %i.dc = add i32 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = call double @llvm.trunc.f64(double %i.by)
  %i.df = fcmp oeq double %i.de, %i.by
  %or.cond.i = or i1 %i.df, %i.dd
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = call signext i8 @uprv_isNaN_78(double noundef %i.by) #21
  %.not.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i, label %bb.w, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.w:                                             ; preds = %bb.v
  %i.dh = call signext i8 @uprv_isPositiveInfinity_78(double noundef %i.by) #21
  %.not19.i = icmp eq i8 %i.dh, 0
  br i1 %.not19.i, label %bb.x, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.x:                                             ; preds = %bb.w
  %i.di = call double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.dj = call double @llvm.floor.f64(double %i.di)
  %i.dk = fsub double %i.di, %i.dj                ; 4 uses
  switch i32 %i.dc, label %bb.ab [
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.dl = call double @llvm.fmuladd.f64(double %i.dk, double 1.000000e+01, double 5.000000e-01)
  %i.dm = fptosi double %i.dl to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.z:                                             ; preds = %bb.x
  %i.dn = call double @llvm.fmuladd.f64(double %i.dk, double 1.000000e+02, double 5.000000e-01)
  %i.do = fptosi double %i.dn to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.aa:                                            ; preds = %bb.x
  %i.dp = call double @llvm.fmuladd.f64(double %i.dk, double 1.000000e+03, double 5.000000e-01)
  %i.dq = fptosi double %i.dp to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.ab:                                            ; preds = %bb.x
  %i.dr = sitofp i32 %i.dc to double
  %i.ds = call double @pow(double noundef 1.000000e+01, double noundef %i.dr) #21
  %i.dt = call double @llvm.fmuladd.f64(double %i.dk, double %i.ds, double 5.000000e-01)
  %i.du = call double @llvm.floor.f64(double %i.dt) ; 2 uses
  %i.dv = fcmp ult double %i.du, f0x43E0000000000000
  %i.dw = fptosi double %i.du to i64
  %.0.i = select i1 %i.dv, i64 %i.dw, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.u, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.2.i = phi i64 [ 0, %bb.u ], [ 0, %bb.w ], [ 0, %bb.v ], [ %.0.i, %bb.ab ], [ %i.dm, %bb.y ], [ %i.do, %bb.z ], [ %i.dq, %bb.aa ] ; 5 uses
  %i.dx = fcmp olt double %i.by, 0.000000e+00
  %i.dy = zext i1 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.dy, ptr %i.dz, align 1
  %i.ea = call double @llvm.fabs.f64(double %i.by) ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.ea, ptr %i.eb, align 8
  %i.ec = call signext i8 @uprv_isNaN_78(double noundef %i.ea) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.ec, ptr %i.ed, align 2
  %i.ee = load double, ptr %i.eb, align 8
  %i.ef = call signext i8 @uprv_isInfinite_78(double noundef %i.ee) #21 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ef, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.0, ptr %i.eh, align 8
  %i.ei = load i8, ptr %i.ed, align 2
  %.not.i.i44 = icmp eq i8 %i.ei, 0
  %.not14.i.i45 = icmp eq i8 %i.ef, 0
  %or.cond17.i.i46 = select i1 %.not.i.i44, i1 %.not14.i.i45, i1 false
  br i1 %or.cond17.i.i46, label %bb.ac, label %.thread.i.i47

bb.ac:                                            ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ej = load double, ptr %i.eb, align 8         ; 3 uses
  %i.ek = call double @llvm.fabs.f64(double %i.ej)
  %or.cond.i.i48 = fcmp ogt double %i.ek, f0x43E0000000000000
  br i1 %or.cond.i.i48, label %.thread.i.i47, label %bb.ad

.thread.i.i47:                                    ; preds = %bb.ac, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.el, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.em = fptosi double %i.ej to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.em, ptr %i.en, align 8
  %i.eo = sitofp i64 %i.em to double
  %i.ep = fcmp oeq double %i.ej, %i.eo
  %i.eq = zext i1 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.eq, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dc, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.et, align 8
  %i.eu = icmp eq i64 %.2.i, 0
  br i1 %i.eu, label %_ZN6icu_7812FixedDecimal4initEdili.exit49, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ad
  %i.ev = srem i64 %.2.i, 10
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit49

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ex, %.lr.ph.i.i ], [ %.2.i, %.preheader.i.i ]
  %i.ex = sdiv exact i64 %.018.i.i, 10            ; 3 uses
  %i.ey = srem i64 %i.ex, 10
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit49, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split: ; preds = %bb.q, %.thread.i.i, %bb.m, %.thread.i.i.i, %.thread.i.i47
  %.sink65.shrunk = phi i1 [ false, %.thread.i.i47 ], [ %i.bq, %bb.m ], [ false, %.thread.i.i.i ], [ false, %.thread.i.i ], [ %i.cs, %bb.q ]
  %.sink65 = zext i1 %.sink65.shrunk to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink65, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.fc, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit49

_ZN6icu_7812FixedDecimal4initEdili.exit49:        ; preds = %.lr.ph.i.i, %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split, %.preheader.i.i, %bb.ad
  %.sink61 = phi i64 [ 0, %_ZN6icu_7812FixedDecimal4initEdili.exit49.sink.split ], [ %.2.i, %.preheader.i.i ], [ 0, %bb.ad ], [ %i.ex, %.lr.ph.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink61, ptr %i.fd, align 8
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fe = load i8, ptr %i.f, align 4
  %.not.i.i.i50 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i50, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_7812FixedDecimal4initEdili.exit49
  %i.ff = load ptr, ptr %3, align 8
  call void @uprv_free_78(ptr noundef %i.ff) #21
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZN6icu_7812FixedDecimal4initEdili.exit49, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7812FixedDecimalC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.u = load i8, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.x, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %i.aa, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ad, ptr %i.ae, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N6icu_7812FixedDecimalD1Ev(ptr noundef nonnull %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimalD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #21
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N6icu_7812FixedDecimalD0Ev(ptr noundef nonnull %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.a) #21
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FixedDecimal18createWithExponentEdii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::FixedDecimal") align 8 captures(none) initializes((0, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call double @llvm.trunc.f64(double %1)
  %i.c = fcmp oeq double %i.b, %1
  %or.cond.i = or i1 %i.a, %i.c
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef %1) #21
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %1) #21
  %.not19.i = icmp eq i8 %i.e, 0
  br i1 %.not19.i, label %bb.d, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.d:                                             ; preds = %bb.c
  %i.f = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.g = tail call double @llvm.floor.f64(double %i.f)
  %i.h = fsub double %i.f, %i.g                   ; 4 uses
  switch i32 %2, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+01, double 5.000000e-01)
  %i.j = fptosi double %i.i to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.f:                                             ; preds = %bb.d
  %i.k = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+02, double 5.000000e-01)
  %i.l = fptosi double %i.k to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.d
  %i.m = tail call double @llvm.fmuladd.f64(double %i.h, double 1.000000e+03, double 5.000000e-01)
  %i.n = fptosi double %i.m to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.d
  %i.o = sitofp i32 %2 to double
  %i.p = tail call double @pow(double noundef 1.000000e+01, double noundef %i.o) #21
  %i.q = tail call double @llvm.fmuladd.f64(double %i.h, double %i.p, double 5.000000e-01)
  %i.r = tail call double @llvm.floor.f64(double %i.q) ; 2 uses
  %i.s = fcmp ult double %i.r, f0x43E0000000000000
  %i.t = fptosi double %i.r to i64
  %.0.i = select i1 %i.s, i64 %i.t, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.2.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0.i, %bb.h ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.u, align 8
  %i.v = fcmp olt double %1, 0.000000e+00
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.w, ptr %i.x, align 1
  %i.y = tail call double @llvm.fabs.f64(double %1) ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %i.z, align 8
  %i.aa = tail call signext i8 @uprv_isNaN_78(double noundef %i.y) #21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %i.aa, ptr %i.ab, align 2
  %i.ac = tail call signext i8 @uprv_isInfinite_78(double noundef %i.y) #21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %i.ae, align 8
  %.not.i.i.i = icmp ne i8 %i.aa, 0
  %.not14.i.i.i = icmp ne i8 %i.ac, 0
  %or.cond17.i.i.i.not4 = select i1 %.not.i.i.i, i1 true, i1 %.not14.i.i.i
  %or.cond.i.i.i = fcmp ogt double %i.y, f0x43E0000000000000
  %or.cond = or i1 %or.cond.i.i.i, %or.cond17.i.i.i.not4
  br i1 %or.cond, label %.thread.i.i.i, label %bb.i

.thread.i.i.i:                                    ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ai, align 8
  br label %_ZN6icu_7812FixedDecimalC2Edili.exit

bb.i:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.aj = fptosi double %i.y to i64               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = sitofp i64 %i.aj to double
  %i.am = fcmp oeq double %i.y, %i.al
  %i.an = zext i1 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.aq, align 8
  %i.ar = icmp eq i64 %.2.i, 0
  br i1 %i.ar, label %_ZN6icu_7812FixedDecimalC2Edili.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i
  %i.as = srem i64 %.2.i, 10
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimalC2Edili.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.au = sdiv exact i64 %.018.i.i.i, 10          ; 3 uses
  %i.av = srem i64 %i.au, 10
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimalC2Edili.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimalC2Edili.exit:             ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.i, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.i ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.au, %.lr.ph.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.ax, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7812FixedDecimal8decimalsEd(double noundef %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 7 uses
  %i.b = tail call double @llvm.fabs.f64(double %0) ; 6 uses
  %i.c = tail call double @llvm.trunc.f64(double %i.b)
  %i.d = fcmp une double %i.c, %i.b
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = fmul double %i.b, 1.000000e+01           ; 2 uses
  %i.f = tail call double @llvm.trunc.f64(double %i.e)
  %i.g = fcmp une double %i.f, %i.e
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = fmul double %i.b, 1.000000e+02           ; 2 uses
  %i.i = tail call double @llvm.trunc.f64(double %i.h)
  %i.j = fcmp une double %i.i, %i.h
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = fmul double %i.b, 1.000000e+03           ; 2 uses
  %i.l = tail call double @llvm.trunc.f64(double %i.k)
  %i.m = fcmp une double %i.l, %i.k
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.a, i8 0, i64 30, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.17, double noundef %i.b) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #21, !inline_history !10
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i8, ptr %i.r, align 16
  %.not26 = icmp eq i8 %i.s, 48
  br i1 %.not26, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.017.lcssa = phi i32 [ 15, %bb.e ], [ %i.u, %.lr.ph ]
  %i.t = sub nsw i32 %.017.lcssa, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %bb.e ]
  %.01727 = phi i32 [ %i.u, %.lr.ph ], [ 15, %bb.e ]
  %i.u = add nsw i32 %.01727, -1                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 1
  %.not = icmp eq i8 %i.w, 48
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !11

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %._crit_edge
  %.3 = phi i32 [ %i.t, %._crit_edge ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

declare signext i8 @uprv_isNaN_78(double noundef) local_unnamed_addr #6

declare signext i8 @uprv_isInfinite_78(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FixedDecimal9quickInitEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1) ; 12 uses
  %i.b = tail call double @llvm.trunc.f64(double %i.a) ; 2 uses
  %i.c = fcmp oeq double %i.b, %i.a
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fmul double %i.a, 1.000000e+01           ; 2 uses
  %i.e = tail call double @llvm.trunc.f64(double %i.d)
  %i.f = fcmp une double %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = fmul double %i.a, 1.000000e+02           ; 2 uses
  %i.h = tail call double @llvm.trunc.f64(double %i.g)
  %i.i = fcmp une double %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul double %i.a, 1.000000e+03           ; 2 uses
  %i.k = tail call double @llvm.trunc.f64(double %i.j)
  %i.l = fcmp une double %i.k, %i.j
  br i1 %i.l, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.014.lcssa.ph = phi i32 [ 2, %bb.c ], [ 3, %bb.d ], [ 1, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = fcmp oeq double %i.b, %i.a
  br i1 %i.m, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call signext i8 @uprv_isNaN_78(double noundef %i.a) #21
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.f
  %i.o = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %i.a) #21
  %.not19.i = icmp eq i8 %i.o, 0
  br i1 %.not19.i, label %bb.h, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.h:                                             ; preds = %bb.g
  %i.p = tail call double @llvm.floor.f64(double %i.a)
  %i.q = fsub double %i.a, %i.p                   ; 4 uses
  switch i32 %.014.lcssa.ph, label %.unreachabledefault [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 0, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double 1.000000e+01, double 5.000000e-01)
  %i.s = fptosi double %i.r to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.j:                                             ; preds = %bb.h
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double 1.000000e+02, double 5.000000e-01)
  %i.u = fptosi double %i.t to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.k:                                             ; preds = %bb.h
  %i.v = tail call double @llvm.fmuladd.f64(double %i.q, double 1.000000e+03, double 5.000000e-01)
  %i.w = fptosi double %i.v to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

.unreachabledefault:                              ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.h
  %i.x = uitofp nneg i32 %.014.lcssa.ph to double
  %i.y = tail call double @pow(double noundef 1.000000e+01, double noundef %i.x) #21
  %i.z = tail call double @llvm.fmuladd.f64(double %i.q, double %i.y, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 2 uses
  %i.ab = fcmp ult double %i.aa, f0x43E0000000000000
  %i.ac = fptosi double %i.aa to i64
  %.0.i = select i1 %i.ab, i64 %i.ac, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l
  %.2.i = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ %.0.i, %bb.l ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.a, ptr %i.ae, align 8
  %i.af = tail call signext i8 @uprv_isNaN_78(double noundef %i.a) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 2
  %i.ah = load double, ptr %i.ae, align 8
  %i.ai = tail call signext i8 @uprv_isInfinite_78(double noundef %i.ah) #21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ak, align 8
  %i.al = load i8, ptr %i.ag, align 2
  %.not.i.i.i = icmp eq i8 %i.al, 0
  %.not14.i.i.i = icmp eq i8 %i.ai, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.am = load double, ptr %i.ae, align 8         ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %or.cond.i.i.i = fcmp ogt double %i.an, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ar, align 8
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.n:                                             ; preds = %bb.m
  %i.as = fptosi double %i.am to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.as, ptr %i.at, align 8
  %i.au = sitofp i64 %i.as to double
  %i.av = fcmp oeq double %i.am, %i.au
  %i.aw = zext i1 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.014.lcssa.ph, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.az, align 8
  %i.ba = icmp eq i64 %.2.i, 0
  br i1 %i.ba, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.n
  %i.bb = srem i64 %.2.i, 10
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.bd = sdiv exact i64 %.018.i.i.i, 10          ; 3 uses
  %i.be = srem i64 %i.bd, 10
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !9

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.n, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.n ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.bd, %.lr.ph.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bg, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN6icu_7812FixedDecimal4initEdil.exit
  %.225 = phi i8 [ 1, %_ZN6icu_7812FixedDecimal4initEdil.exit ], [ 0, %bb.d ]
  ret i8 %.225
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare signext i8 @uprv_isPositiveInfinity_78(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7812FixedDecimal26adjustForMinFractionDigitsEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub nsw i32 %1, %i.b                     ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i64, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.08 = phi i32 [ 0, %.preheader ], [ %i.i, %bb.c ]
  %i.f = phi i64 [ %.promoted, %.preheader ], [ %i.h, %bb.c ] ; 2 uses
  %i.g = icmp sgt i64 %i.f, 99999999999999999
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i64 %i.f, 10                     ; 2 uses
  store i64 %i.h, ptr %i.e, align 8
  %i.i = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %i.c
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !80

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 %1, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef double @_ZNK6icu_7812FixedDecimal16getPluralOperandENS_13PluralOperandE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  switch i32 %1, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sitofp i32 %i.b to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #21
  %i.h = fmul double %i.e, %i.g
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  br label %_ZNK6icu_7812FixedDecimal9longValueEv.exit

bb.f:                                             ; preds = %bb.d
  %i.n = sitofp i32 %i.j to double
  %i.o = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.n) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sitofp i64 %i.q to double
  %i.s = fmul double %i.o, %i.r
  %i.t = fptosi double %i.s to i64
  br label %_ZNK6icu_7812FixedDecimal9longValueEv.exit

_ZNK6icu_7812FixedDecimal9longValueEv.exit:       ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.m, %bb.e ], [ %i.t, %bb.f ]
  %i.u = sitofp i64 %.0.i to double
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8
  %i.x = sitofp i64 %i.w to double
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = sitofp i64 %i.z to double
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = sitofp i32 %i.ac to double
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = sitofp i32 %i.af to double
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sitofp i32 %i.ai to double
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @abort() #22
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNK6icu_7812FixedDecimal9longValueEv.exit
  %.0 = phi double [ %i.aj, %bb.k ], [ %i.u, %_ZNK6icu_7812FixedDecimal9longValueEv.exit ], [ %i.x, %bb.g ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ], [ %i.ag, %bb.j ], [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local noundef i64 @_ZNK6icu_7812FixedDecimal9longValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = sitofp i32 %i.b to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sitofp i64 %i.i to double
  %i.k = fmul double %i.g, %i.j
  %i.l = fptosi double %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7812FixedDecimal5isNaNEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i8, ptr %i.a, align 2
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7812FixedDecimal10isInfiniteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.b = load i8, ptr %i.a, align 1
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
end_hunk_1
