Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/plurrule?download=true
inline.NumInlined: 584
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7824PluralKeywordEnumerationC2EPNS_9RuleChainER10UErrorCode:bb.a

.body:                                            ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA6_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %i.ae) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ae) #25
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit46

_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit:    ; preds = %._crit_edge.thread
  %i.aj = load i32, ptr %2, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit48, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit
  store i32 7, ptr %2, align 4, !tbaa !50
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit48

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit48: ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA6_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i, %bb.m, %_ZN6icu_7813UnicodeStringC2IA6_DsvEERKT_.exit
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit51 unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit50

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit50: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit48
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit46

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit51: ; preds = %bb.h, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit48, %._crit_edge, %bb.b
  ret void

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit46: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit50, %.body, %bb.i, %bb.j, %bb.l, %bb.d
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.p, %bb.j ], [ %i.o, %bb.i ], [ %i.ac, %bb.l ], [ %i.al, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit50 ], [ %i.ai, %.body ]
  tail call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit46, %bb.c
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit46 ], [ %i.e, %bb.c ]
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #25
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn
}

declare void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #7

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

declare noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

declare void @uprv_deleteUObject_78(ptr noundef) #7

declare noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7824PluralKeywordEnumeration5snextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !50
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !120  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = add nsw i32 %i.d, 1
  store i32 %i.i, ptr %i.c, align 4, !tbaa !120
  %i.j = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7824PluralKeywordEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7824PluralKeywordEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7824PluralKeywordEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7824PluralKeywordEnumerationE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_787UVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #25
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7824PluralKeywordEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7824PluralKeywordEnumerationD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Edilii(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 24), (61, 62)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1, !tbaa !125
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = invoke signext i8 @uprv_isNaN_78(double noundef %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2, !tbaa !127
  %i.i = load double, ptr %i.f, align 8, !tbaa !126
  %i.j = invoke signext i8 @uprv_isInfinite_78(double noundef %i.i)
          to label %.noexc7 unwind label %bb.d    ; 2 uses

.noexc7:                                          ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = icmp eq i32 %4, 0
  %spec.select.i = select i1 %i.m, i32 %5, i32 %4
  store i32 %spec.select.i, ptr %i.l, align 8, !tbaa !129
  %i.n = load i8, ptr %i.h, align 2, !tbaa !127
  %.not.i = icmp eq i8 %i.n, 0
  %.not14.i = icmp eq i8 %i.j, 0
  %or.cond17.i = select i1 %.not.i, i1 %.not14.i, i1 false
  br i1 %or.cond17.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.noexc7
  %i.o = load double, ptr %i.f, align 8, !tbaa !126 ; 3 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %or.cond.i = fcmp ogt double %i.p, f0x43E0000000000000
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b, %.noexc7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.q, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.r, align 4, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.s, align 8, !tbaa !132
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.t, align 8, !tbaa !133
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = fptosi double %i.o to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.u, ptr %i.v, align 8, !tbaa !130
  %i.w = sitofp i64 %i.u to double
  %i.x = fcmp oeq double %i.o, %i.w
  %i.y = zext i1 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.y, ptr %i.z, align 4, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.aa, align 8, !tbaa !132
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.ab, align 8, !tbaa !133
  %i.ac = icmp eq i64 %3, 0
  br i1 %i.ac, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ad = srem i64 %3, 10
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i64 [ %i.af, %.lr.ph.i ], [ %3, %.preheader.i ]
  %i.af = sdiv i64 %.018.i, 10                    ; 3 uses
  %i.ag = srem i64 %i.af, 10
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i, %.preheader.i, %bb.c, %.thread.i
  %.0.lcssa.sink.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %3, %.preheader.i ], [ %i.af, %.lr.ph.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i, ptr %i.ai, align 8, !tbaa !134
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimal4initEdilii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1, !tbaa !125
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8, !tbaa !126
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2, !tbaa !127
  %i.h = load double, ptr %i.e, align 8, !tbaa !126
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = icmp eq i32 %4, 0
  %spec.select = select i1 %i.l, i32 %5, i32 %4
  store i32 %spec.select, ptr %i.k, align 8, !tbaa !129
  %i.m = load i8, ptr %i.g, align 2, !tbaa !127
  %.not = icmp eq i8 %i.m, 0
  %.not14 = icmp eq i8 %i.i, 0
  %or.cond17 = select i1 %.not, i1 %.not14, i1 false
  br i1 %or.cond17, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.n = load double, ptr %i.e, align 8, !tbaa !126 ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !133
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !130
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8, !tbaa !133
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.018 = phi i64 [ %i.ae, %.lr.ph ], [ %3, %.preheader ]
  %i.ae = sdiv i64 %.018, 10                      ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %bb.c, %.thread
  %.0.lcssa.sink = phi i64 [ 0, %bb.c ], [ 0, %.thread ], [ %3, %.preheader ], [ %i.ae, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink, ptr %i.ah, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Edili(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 24), (61, 62)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1, !tbaa !125
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = invoke signext i8 @uprv_isNaN_78(double noundef %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2, !tbaa !127
  %i.i = load double, ptr %i.f, align 8, !tbaa !126
  %i.j = invoke signext i8 @uprv_isInfinite_78(double noundef %i.i)
          to label %.noexc6 unwind label %bb.d    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.l, align 8, !tbaa !129
  %i.m = load i8, ptr %i.h, align 2, !tbaa !127
  %.not.i.i = icmp eq i8 %i.m, 0
  %.not14.i.i = icmp eq i8 %i.j, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %.noexc6
  %i.n = load double, ptr %i.f, align 8, !tbaa !126 ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond.i.i = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b, %.noexc6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !133
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !130
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8, !tbaa !133
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %3, %.preheader.i.i ]
  %i.ae = sdiv i64 %.018.i.i, 10                  ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.c, %.thread.i.i
  %.0.lcssa.sink.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i ], [ %3, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i, ptr %i.ah, align 8, !tbaa !134
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimal4initEdili(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1, !tbaa !125
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8, !tbaa !126
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2, !tbaa !127
  %i.h = load double, ptr %i.e, align 8, !tbaa !126
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %4, ptr %i.k, align 8, !tbaa !129
  %i.l = load i8, ptr %i.g, align 2, !tbaa !127
  %.not.i = icmp eq i8 %i.l, 0
  %.not14.i = icmp eq i8 %i.i, 0
  %or.cond17.i = select i1 %.not.i, i1 %.not14.i, i1 false
  br i1 %or.cond17.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.m = load double, ptr %i.e, align 8, !tbaa !126 ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond.i = fcmp ogt double %i.n, f0x43E0000000000000
  br i1 %or.cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.p, align 4, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !132
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8, !tbaa !133
  br label %_ZN6icu_7812FixedDecimal4initEdilii.exit

bb.c:                                             ; preds = %bb.b
  %i.s = fptosi double %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.t, align 8, !tbaa !130
  %i.u = sitofp i64 %i.s to double
  %i.v = fcmp oeq double %i.m, %i.u
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.w, ptr %i.x, align 4, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.y, align 8, !tbaa !132
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.z, align 8, !tbaa !133
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = srem i64 %3, 10
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.018.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %3, %.preheader.i ]
  %i.ad = sdiv i64 %.018.i, 10                    ; 3 uses
  %i.ae = srem i64 %i.ad, 10
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %_ZN6icu_7812FixedDecimal4initEdilii.exit, !llvm.loop !10

_ZN6icu_7812FixedDecimal4initEdilii.exit:         ; preds = %.lr.ph.i, %.thread.i, %bb.c, %.preheader.i
  %.0.lcssa.sink.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %3, %.preheader.i ], [ %i.ad, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i, ptr %i.ag, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Edil(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 24), (61, 62)) %0, double noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = fcmp olt double %1, 0.000000e+00
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.c, ptr %i.d, align 1, !tbaa !125
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = invoke signext i8 @uprv_isNaN_78(double noundef %i.e)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.g, ptr %i.h, align 2, !tbaa !127
  %i.i = load double, ptr %i.f, align 8, !tbaa !126
  %i.j = invoke signext i8 @uprv_isInfinite_78(double noundef %i.i)
          to label %.noexc5 unwind label %bb.d    ; 2 uses

.noexc5:                                          ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.j, ptr %i.k, align 1, !tbaa !128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.l, align 8, !tbaa !129
  %i.m = load i8, ptr %i.h, align 2, !tbaa !127
  %.not.i.i.i = icmp eq i8 %i.m, 0
  %.not14.i.i.i = icmp eq i8 %i.j, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.noexc5
  %i.n = load double, ptr %i.f, align 8, !tbaa !126 ; 3 uses
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %or.cond.i.i.i = fcmp ogt double %i.o, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b, %.noexc5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.p, align 8, !tbaa !130
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.q, align 4, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !133
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = fptosi double %i.n to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !130
  %i.v = sitofp i64 %i.t to double
  %i.w = fcmp oeq double %i.n, %i.v
  %i.x = zext i1 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.x, ptr %i.y, align 4, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.z, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.aa, align 8, !tbaa !133
  %i.ab = icmp eq i64 %3, 0
  br i1 %i.ab, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.ac = srem i64 %3, 10
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %3, %.preheader.i.i.i ]
  %i.ae = sdiv i64 %.018.i.i.i, 10                ; 3 uses
  %i.af = srem i64 %i.ae, 10
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.c, %.thread.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i.i ], [ %3, %.preheader.i.i.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.ah, align 8, !tbaa !134
  ret void

bb.d:                                             ; preds = %.noexc, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimal4initEdil(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 28), (32, 40), (48, 64)) %0, double noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.b, ptr %i.c, align 1, !tbaa !125
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.d, ptr %i.e, align 8, !tbaa !126
  %i.f = tail call signext i8 @uprv_isNaN_78(double noundef %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.f, ptr %i.g, align 2, !tbaa !127
  %i.h = load double, ptr %i.e, align 8, !tbaa !126
  %i.i = tail call signext i8 @uprv_isInfinite_78(double noundef %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.i, ptr %i.j, align 1, !tbaa !128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !129
  %i.l = load i8, ptr %i.g, align 2, !tbaa !127
  %.not.i.i = icmp eq i8 %i.l, 0
  %.not14.i.i = icmp eq i8 %i.i, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load double, ptr %i.e, align 8, !tbaa !126 ; 3 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %or.cond.i.i = fcmp ogt double %i.n, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.p, align 4, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.q, align 8, !tbaa !132
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.r, align 8, !tbaa !133
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit

bb.c:                                             ; preds = %bb.b
  %i.s = fptosi double %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.t, align 8, !tbaa !130
  %i.u = sitofp i64 %i.s to double
  %i.v = fcmp oeq double %i.m, %i.u
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.w, ptr %i.x, align 4, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.y, align 8, !tbaa !132
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %3, ptr %i.z, align 8, !tbaa !133
  %i.aa = icmp eq i64 %3, 0
  br i1 %i.aa, label %_ZN6icu_7812FixedDecimal4initEdili.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.ab = srem i64 %3, 10
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %3, %.preheader.i.i ]
  %i.ad = sdiv i64 %.018.i.i, 10                  ; 3 uses
  %i.ae = srem i64 %i.ad, 10
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit, !llvm.loop !10

_ZN6icu_7812FixedDecimal4initEdili.exit:          ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.c, %.preheader.i.i
  %.0.lcssa.sink.i.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i.i ], [ %3, %.preheader.i.i ], [ %i.ad, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i, ptr %i.ag, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Edi(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 16)) %0, double noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = icmp eq i32 %2, 0
  %i.c = tail call double @llvm.trunc.f64(double %1)
  %i.d = fcmp oeq double %i.c, %1
  %or.cond.i = or i1 %i.b, %i.d
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke signext i8 @uprv_isNaN_78(double noundef %1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.c:                                             ; preds = %.noexc
  %i.f = invoke signext i8 @uprv_isPositiveInfinity_78(double noundef %1)
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.c
  %.not19.i = icmp eq i8 %i.f, 0
  br i1 %.not19.i, label %bb.d, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.d:                                             ; preds = %.noexc6
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
  %i.q = tail call double @pow(double noundef 1.000000e+01, double noundef %i.p) #25
  %i.r = tail call double @llvm.fmuladd.f64(double %i.i, double %i.q, double 5.000000e-01)
  %i.s = tail call double @llvm.floor.f64(double %i.r) ; 2 uses
  %i.t = fcmp ult double %i.s, f0x43E0000000000000
  %i.u = fptosi double %i.s to i64
  %.0.i = select i1 %i.t, i64 %i.u, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.noexc6, %.noexc, %bb.a
  %.2.i = phi i64 [ 0, %bb.a ], [ 0, %.noexc6 ], [ 0, %.noexc ], [ %.0.i, %bb.h ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.o, %bb.g ] ; 5 uses
  %i.v = fcmp olt double %1, 0.000000e+00
  %i.w = zext i1 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.w, ptr %i.x, align 1, !tbaa !125
  %i.y = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.y, ptr %i.z, align 8, !tbaa !126
  %i.aa = invoke signext i8 @uprv_isNaN_78(double noundef %i.y)
          to label %.noexc7 unwind label %bb.k

.noexc7:                                          ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !127
  %i.ac = load double, ptr %i.z, align 8, !tbaa !126
  %i.ad = invoke signext i8 @uprv_isInfinite_78(double noundef %i.ac)
          to label %.noexc8 unwind label %bb.k    ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.af, align 8, !tbaa !129
  %i.ag = load i8, ptr %i.ab, align 2, !tbaa !127
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %.not14.i.i.i = icmp eq i8 %i.ad, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.i, label %.thread.i.i.i

bb.i:                                             ; preds = %.noexc8
  %i.ah = load double, ptr %i.z, align 8, !tbaa !126 ; 3 uses
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah)
  %or.cond.i.i.i = fcmp ogt double %i.ai, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i, %.noexc8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.aj, align 8, !tbaa !130
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.ak, align 4, !tbaa !131
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.al, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.am, align 8, !tbaa !133
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.an = fptosi double %i.ah to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !130
  %i.ap = sitofp i64 %i.an to double
  %i.aq = fcmp oeq double %i.ah, %i.ap
  %i.ar = zext i1 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.ar, ptr %i.as, align 4, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.at, align 8, !tbaa !132
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.au, align 8, !tbaa !133
  %i.av = icmp eq i64 %.2.i, 0
  br i1 %i.av, label %.loopexit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j
  %i.aw = srem i64 %.2.i, 10
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.ay = sdiv i64 %.018.i.i.i, 10                ; 3 uses
  %i.az = srem i64 %i.ay, 10
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %.thread.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.j ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bb, align 8, !tbaa !134
  ret void

bb.k:                                             ; preds = %.noexc7, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, %bb.c, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = tail call double @llvm.trunc.f64(double %0)
  %i.c = fcmp oeq double %i.b, %0
  %or.cond = or i1 %i.a, %i.c
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef %0)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %0)
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
  %i.p = tail call double @pow(double noundef 1.000000e+01, double noundef %i.o) #25
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

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Ed(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 16)) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  invoke void @_ZN6icu_7812FixedDecimal4initEd(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimal4initEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.a, i8 0, i64 30, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.17, double noundef %i.b) #25 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #25, !inline_history !11
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i8, ptr %i.r, align 16, !tbaa !59
  %.not26.i = icmp eq i8 %i.s, 48
  br i1 %.not26.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.e
  %.017.lcssa.i = phi i32 [ 15, %bb.e ], [ %i.u, %.lr.ph.i ]
  %i.t = sub nsw i32 %.017.lcssa.i, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6icu_7812FixedDecimal8decimalsEd.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 16, %bb.e ]
  %.01727.i = phi i32 [ %i.u, %.lr.ph.i ], [ 15, %bb.e ]
  %i.u = add nsw i32 %.01727.i, -1                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.w, 48
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

_ZN6icu_7812FixedDecimal8decimalsEd.exit:         ; preds = %bb.b, %bb.c, %bb.d, %._crit_edge.i
  %.3.i = phi i32 [ %i.t, %._crit_edge.i ], [ 3, %bb.d ], [ 1, %bb.b ], [ 2, %bb.c ] ; 7 uses
  %i.x = icmp eq i32 %.3.i, 0
  %i.y = call double @llvm.trunc.f64(double %1)
  %i.z = fcmp oeq double %i.y, %1
  %or.cond.i = or i1 %i.z, %i.x
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812FixedDecimal8decimalsEd.exit
  %i.aa = call signext i8 @uprv_isNaN_78(double noundef %1)
  %.not.i5 = icmp eq i8 %i.aa, 0
  br i1 %.not.i5, label %bb.g, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call signext i8 @uprv_isPositiveInfinity_78(double noundef %1)
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
  %i.al = call double @pow(double noundef 1.000000e+01, double noundef %i.ak) #25
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
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !125
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.b, ptr %i.at, align 8, !tbaa !126
  %i.au = call signext i8 @uprv_isNaN_78(double noundef %i.b)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.au, ptr %i.av, align 2, !tbaa !127
  %i.aw = load double, ptr %i.at, align 8, !tbaa !126
  %i.ax = call signext i8 @uprv_isInfinite_78(double noundef %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !128
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.az, align 8, !tbaa !129
  %i.ba = load i8, ptr %i.av, align 2, !tbaa !127
  %.not.i.i.i = icmp eq i8 %i.ba, 0
  %.not14.i.i.i = icmp eq i8 %i.ax, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.bb = load double, ptr %i.at, align 8, !tbaa !126 ; 3 uses
  %i.bc = call double @llvm.fabs.f64(double %i.bb)
  %or.cond.i.i.i = fcmp ogt double %i.bc, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !130
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.be, align 4, !tbaa !131
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !132
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.bg, align 8, !tbaa !133
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = fptosi double %i.bb to i64              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !130
  %i.bj = sitofp i64 %i.bh to double
  %i.bk = fcmp oeq double %i.bb, %i.bj
  %i.bl = zext i1 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.bl, ptr %i.bm, align 4, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.3.i8, ptr %i.bn, align 8, !tbaa !132
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.bo, align 8, !tbaa !133
  %i.bp = icmp eq i64 %.2.i, 0
  br i1 %i.bp, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.n
  %i.bq = srem i64 %.2.i, 10
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.bs = sdiv i64 %.018.i.i.i, 10                ; 3 uses
  %i.bt = srem i64 %i.bs, 10
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !10

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.n, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.n ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.bs, %.lr.ph.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bv, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 24), (61, 62)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.b, align 1, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !126
  %i.d = invoke signext i8 @uprv_isNaN_78(double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.d, ptr %i.e, align 2, !tbaa !127
  %i.f = load double, ptr %i.c, align 8, !tbaa !126
  %i.g = invoke signext i8 @uprv_isInfinite_78(double noundef %i.f)
          to label %.noexc2 unwind label %bb.e    ; 2 uses

.noexc2:                                          ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.g, ptr %i.h, align 1, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.i, align 8, !tbaa !129
  %i.j = load i8, ptr %i.e, align 2, !tbaa !127
  %.not.i.i.i = icmp eq i8 %i.j, 0
  %.not14.i.i.i = icmp eq i8 %i.g, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.b, label %.thread.i.i.i

bb.b:                                             ; preds = %.noexc2
  %i.k = load double, ptr %i.c, align 8, !tbaa !126 ; 3 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %or.cond.i.i.i = fcmp ogt double %i.l, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.c

.thread.i.i.i:                                    ; preds = %bb.b, %.noexc2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.m, align 8, !tbaa !130
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = fptosi double %i.k to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !130
  %i.p = sitofp i64 %i.n to double
  %i.q = fcmp oeq double %i.k, %i.p
  %i.r = zext i1 %i.q to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.i.i.i
  %.sink = phi i8 [ %i.r, %bb.c ], [ 0, %.thread.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink, ptr %i.s, align 4, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.u, align 8, !tbaa !133
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !134
  ret void

bb.e:                                             ; preds = %.noexc, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimalC2ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::number::impl::DecimalQuantity", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 13 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 40, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i8 0, ptr %i.f, align 4, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !104
  store i8 0, ptr %i.d, align 1, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 101, i32 noundef 0, i32 noundef %i.o)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit unwind label %bb.c ; 2 uses

_ZNK6icu_7813UnicodeString7indexOfEDs.exit:       ; preds = %bb.a
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit72

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit
  %i.r = load i16, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %i.m, align 4
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 69, i32 noundef 0, i32 noundef %i.w)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit72 unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNK6icu_7813UnicodeString7indexOfEDs.exit72:     ; preds = %bb.b, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit
  %.053 = phi i32 [ %i.p, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit ], [ %i.x, %bb.b ] ; 3 uses
  %i.z = load i16, ptr %i.h, align 8, !tbaa !59   ; 2 uses
  %i.aa = icmp slt i16 %i.z, 0
  %i.ab = ashr i16 %i.z, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = load i32, ptr %i.m, align 4
  %i.ae = select i1 %i.aa, i32 %i.ad, i32 %i.ac
  %i.af = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 99, i32 noundef 0, i32 noundef %i.ae)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit73 unwind label %bb.e ; 2 uses

_ZNK6icu_7813UnicodeString7indexOfEDs.exit73:     ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit72
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit74

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit73
  %i.ah = load i16, ptr %i.h, align 8, !tbaa !59  ; 2 uses
  %i.ai = icmp slt i16 %i.ah, 0
  %i.aj = ashr i16 %i.ah, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = load i32, ptr %i.m, align 4
  %i.am = select i1 %i.ai, i32 %i.al, i32 %i.ak
  %i.an = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 67, i32 noundef 0, i32 noundef %i.am)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit74 unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit72, %bb.w
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNK6icu_7813UnicodeString7indexOfEDs.exit74:     ; preds = %bb.d, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit73
  %.052 = phi i32 [ %i.af, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit73 ], [ %i.an, %bb.d ] ; 3 uses
  %i.ap = icmp sgt i32 %.053, -1
  br i1 %i.ap, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %.053)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aq = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ar = add nuw nsw i32 %.053, 1
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !79
  %i.as = invoke noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.x

bb.j:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
end_hunk_0
begin_hunk_1_@_ZN6icu_7812FixedDecimalC2ERKNS_13UnicodeStringER10UErrorCode:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.ck = fcmp olt double %i.ci, 0.000000e+00
  %i.cl = zext i1 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !125
  %i.cn = call double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !126
  %i.cp = invoke signext i8 @uprv_isNaN_78(double noundef %i.cn)
          to label %.noexc78 unwind label %bb.al

.noexc78:                                         ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.cp, ptr %i.cq, align 2, !tbaa !127
  %i.cr = load double, ptr %i.co, align 8, !tbaa !126
  %i.cs = invoke signext i8 @uprv_isInfinite_78(double noundef %i.cr)
          to label %.noexc79 unwind label %bb.al  ; 2 uses

.noexc79:                                         ; preds = %.noexc78
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !128
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.051, ptr %i.cu, align 8, !tbaa !129
  %i.cv = load i8, ptr %i.cq, align 2, !tbaa !127
  %.not.i.i = icmp eq i8 %i.cv, 0
  %.not14.i.i = icmp eq i8 %i.cs, 0
  %or.cond17.i.i = select i1 %.not.i.i, i1 %.not14.i.i, i1 false
  br i1 %or.cond17.i.i, label %bb.ai, label %.thread.i.i

bb.ai:                                            ; preds = %.noexc79
  %i.cw = load double, ptr %i.co, align 8, !tbaa !126 ; 3 uses
  %i.cx = call double @llvm.fabs.f64(double %i.cw)
  %or.cond.i.i = fcmp ogt double %i.cx, f0x43E0000000000000
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.aj

.thread.i.i:                                      ; preds = %bb.ai, %.noexc79
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.cy, align 8, !tbaa !130
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.cz = fptosi double %i.cw to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !130
  %i.db = sitofp i64 %i.cz to double
  %i.dc = fcmp oeq double %i.cw, %i.db
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split

bb.ak:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.al:                                            ; preds = %.noexc78, %bb.ah, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit77
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.am:                                            ; preds = %bb.ag
  br i1 %.154, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.df = load i16, ptr %i.h, align 8, !tbaa !59  ; 2 uses
  %i.dg = icmp slt i16 %i.df, 0
  %i.dh = ashr i16 %i.df, 5
  %i.di = sext i16 %i.dh to i32
  %i.dj = load i32, ptr %i.m, align 4
  %i.dk = select i1 %i.dg, i32 %i.dj, i32 %i.di
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dl = load i32, ptr %i.g, align 8, !tbaa !104
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.dm = phi i32 [ %i.dl, %bb.ao ], [ %i.dk, %bb.an ]
  %i.dn = xor i32 %i.ch, -1
  %i.do = add i32 %i.dm, %i.dn                    ; 4 uses
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = call double @llvm.trunc.f64(double %i.ci)
  %i.dr = fcmp oeq double %i.dq, %i.ci
  %or.cond.i = or i1 %i.dr, %i.dp
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = invoke signext i8 @uprv_isNaN_78(double noundef %i.ci)
          to label %.noexc80 unwind label %bb.az

.noexc80:                                         ; preds = %bb.aq
  %.not.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i, label %bb.ar, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.ar:                                            ; preds = %.noexc80
  %i.dt = invoke signext i8 @uprv_isPositiveInfinity_78(double noundef %i.ci)
          to label %.noexc81 unwind label %bb.az

.noexc81:                                         ; preds = %bb.ar
  %.not19.i = icmp eq i8 %i.dt, 0
  br i1 %.not19.i, label %bb.as, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.as:                                            ; preds = %.noexc81
  %i.du = call double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.dv = call double @llvm.floor.f64(double %i.du)
  %i.dw = fsub double %i.du, %i.dv                ; 4 uses
  switch i32 %i.do, label %bb.aw [
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  %i.dx = call double @llvm.fmuladd.f64(double %i.dw, double 1.000000e+01, double 5.000000e-01)
  %i.dy = fptosi double %i.dx to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.au:                                            ; preds = %bb.as
  %i.dz = call double @llvm.fmuladd.f64(double %i.dw, double 1.000000e+02, double 5.000000e-01)
  %i.ea = fptosi double %i.dz to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.av:                                            ; preds = %bb.as
  %i.eb = call double @llvm.fmuladd.f64(double %i.dw, double 1.000000e+03, double 5.000000e-01)
  %i.ec = fptosi double %i.eb to i64
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.aw:                                            ; preds = %bb.as
  %i.ed = sitofp i32 %i.do to double
  %i.ee = call double @pow(double noundef 1.000000e+01, double noundef %i.ed) #25
  %i.ef = call double @llvm.fmuladd.f64(double %i.dw, double %i.ee, double 5.000000e-01)
  %i.eg = call double @llvm.floor.f64(double %i.ef) ; 2 uses
  %i.eh = fcmp ult double %i.eg, f0x43E0000000000000
  %i.ei = fptosi double %i.eg to i64
  %.0.i = select i1 %i.eh, i64 %i.ei, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %.noexc81, %.noexc80, %bb.ap
  %.2.i = phi i64 [ 0, %bb.ap ], [ 0, %.noexc81 ], [ 0, %.noexc80 ], [ %.0.i, %bb.aw ], [ %i.dy, %bb.at ], [ %i.ea, %bb.au ], [ %i.ec, %bb.av ] ; 5 uses
  %i.ej = fcmp olt double %i.ci, 0.000000e+00
  %i.ek = zext i1 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !125
  %i.em = call double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.em, ptr %i.en, align 8, !tbaa !126
  %i.eo = invoke signext i8 @uprv_isNaN_78(double noundef %i.em)
          to label %.noexc87 unwind label %bb.az

.noexc87:                                         ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.eo, ptr %i.ep, align 2, !tbaa !127
  %i.eq = load double, ptr %i.en, align 8, !tbaa !126
  %i.er = invoke signext i8 @uprv_isInfinite_78(double noundef %i.eq)
          to label %.noexc88 unwind label %bb.az  ; 2 uses

.noexc88:                                         ; preds = %.noexc87
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.er, ptr %i.es, align 1, !tbaa !128
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.051, ptr %i.et, align 8, !tbaa !129
  %i.eu = load i8, ptr %i.ep, align 2, !tbaa !127
  %.not.i.i82 = icmp eq i8 %i.eu, 0
  %.not14.i.i83 = icmp eq i8 %i.er, 0
  %or.cond17.i.i84 = select i1 %.not.i.i82, i1 %.not14.i.i83, i1 false
  br i1 %or.cond17.i.i84, label %bb.ax, label %.thread.i.i85

bb.ax:                                            ; preds = %.noexc88
  %i.ev = load double, ptr %i.en, align 8, !tbaa !126 ; 3 uses
  %i.ew = call double @llvm.fabs.f64(double %i.ev)
  %or.cond.i.i86 = fcmp ogt double %i.ew, f0x43E0000000000000
  br i1 %or.cond.i.i86, label %.thread.i.i85, label %bb.ay

.thread.i.i85:                                    ; preds = %bb.ax, %.noexc88
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ex, align 8, !tbaa !130
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.ey = fptosi double %i.ev to i64              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !130
  %i.fa = sitofp i64 %i.ey to double
  %i.fb = fcmp oeq double %i.ev, %i.fa
  %i.fc = zext i1 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.fc, ptr %i.fd, align 4, !tbaa !131
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.do, ptr %i.fe, align 8, !tbaa !132
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.ff, align 8, !tbaa !133
  %i.fg = icmp eq i64 %.2.i, 0
  br i1 %i.fg, label %_ZN6icu_7812FixedDecimal4initEdili.exit89, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ay
  %i.fh = srem i64 %.2.i, 10
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit89

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.fj, %.lr.ph.i.i ], [ %.2.i, %.preheader.i.i ]
  %i.fj = sdiv i64 %.018.i.i, 10                  ; 3 uses
  %i.fk = srem i64 %i.fj, 10
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i, label %_ZN6icu_7812FixedDecimal4initEdili.exit89, !llvm.loop !10

bb.az:                                            ; preds = %.noexc87, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, %bb.ar, %bb.aq
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split: ; preds = %bb.aj, %.thread.i.i, %bb.ac, %.thread.i.i.i, %.thread.i.i85
  %.sink103.shrunk = phi i1 [ false, %.thread.i.i85 ], [ %i.by, %bb.ac ], [ false, %.thread.i.i.i ], [ false, %.thread.i.i ], [ %i.dc, %bb.aj ]
  %.sink103 = zext i1 %.sink103.shrunk to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %.sink103, ptr %i.fn, align 4, !tbaa !131
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.fo, align 8, !tbaa !132
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.fp, align 8, !tbaa !133
  br label %_ZN6icu_7812FixedDecimal4initEdili.exit89

_ZN6icu_7812FixedDecimal4initEdili.exit89:        ; preds = %.lr.ph.i.i, %_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split, %.preheader.i.i, %bb.ay
  %.0.lcssa.sink.i.i.sink = phi i64 [ 0, %_ZN6icu_7812FixedDecimal4initEdili.exit89.sink.split ], [ %.2.i, %.preheader.i.i ], [ 0, %bb.ay ], [ %i.fj, %.lr.ph.i.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.sink, ptr %i.fq, align 8, !tbaa !134
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.fr = load i8, ptr %i.f, align 4, !tbaa !105
  %.not.i.i.i90 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i90, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN6icu_7812FixedDecimal4initEdili.exit89
  %i.fs = load ptr, ptr %3, align 8, !tbaa !102
  invoke void @uprv_free_78(ptr noundef %i.fs)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #26
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %_ZN6icu_7812FixedDecimal4initEdili.exit89, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.bc:                                            ; preds = %bb.ak, %bb.az, %bb.al, %bb.ae
  %.pn66 = phi { ptr, i32 } [ %i.ca, %bb.ae ], [ %i.dd, %bb.ak ], [ %i.de, %bb.al ], [ %i.fm, %bb.az ]
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ad
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %bb.bc ], [ %i.bz, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.e, %bb.l, %bb.m, %bb.u, %bb.v, %bb.bd, %bb.c
  %.pn66.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn66.pn, %bb.bd ], [ %i.av, %bb.m ], [ %.pn59, %bb.l ], [ %i.bc, %bb.v ], [ %.pn, %bb.u ], [ %i.ao, %bb.e ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #25
  call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %.pn66.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN6icu_7811ICU_Utility17parseAsciiIntegerERKNS_13UnicodeStringERi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7812FixedDecimalC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 28), (32, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 16), ptr %0, align 8, !tbaa !22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FixedDecimalE, i64 80), ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.c, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !189
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !189
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !130
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.l, ptr %i.m, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.o, ptr %i.p, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load <4 x i8>, ptr %i.q, align 4, !tbaa !59
  store <4 x i8> %i.s, ptr %i.r, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812FixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #25
  tail call void @_ZN6icu_7813IFixedDecimalD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N6icu_7812FixedDecimalD1Ev(ptr noundef %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN6icu_7812FixedDecimalD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812FixedDecimalD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7812FixedDecimalD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N6icu_7812FixedDecimalD0Ev(ptr noundef %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN6icu_7812FixedDecimalD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FixedDecimal18createWithExponentEdii(ptr dead_on_unwind noalias writable sret(%"class.icu_78::FixedDecimal") align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = tail call double @llvm.trunc.f64(double %1)
  %i.c = fcmp oeq double %i.b, %1
  %or.cond.i = or i1 %i.a, %i.c
  br i1 %or.cond.i, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call signext i8 @uprv_isNaN_78(double noundef %1)
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %1)
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
  %i.p = tail call double @pow(double noundef 1.000000e+01, double noundef %i.o) #25
  %i.q = tail call double @llvm.fmuladd.f64(double %i.h, double %i.p, double 5.000000e-01)
  %i.r = tail call double @llvm.floor.f64(double %i.q) ; 2 uses
  %i.s = fcmp ult double %i.r, f0x43E0000000000000
  %i.t = fptosi double %i.r to i64
  %.0.i = select i1 %i.s, i64 %i.t, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.2.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.0.i, %bb.h ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  tail call void @_ZN6icu_7812FixedDecimalC1Edili(ptr noundef nonnull align 8 dereferenceable(64) %0, double noundef %1, i32 noundef %2, i64 noundef %.2.i, i32 noundef %3)
  ret void
end_hunk_1
begin_hunk_2_@_ZN6icu_7812FixedDecimal8decimalsEd:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %i.a, i8 0, i64 30, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.17, double noundef %i.b) #25 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.p = call i64 @__isoc23_strtol(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 10) #25, !inline_history !11
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i8, ptr %i.r, align 16, !tbaa !59
  %.not26 = icmp eq i8 %i.s, 48
  br i1 %.not26, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.017.lcssa = phi i32 [ 15, %bb.e ], [ %i.u, %.lr.ph ]
  %i.t = sub nsw i32 %.017.lcssa, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 16, %bb.e ]
  %.01727 = phi i32 [ %i.u, %.lr.ph ], [ 15, %bb.e ]
  %i.u = add nsw i32 %.01727, -1                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 1, !tbaa !59
  %.not = icmp eq i8 %i.w, 48
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !12

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %._crit_edge
  %.3 = phi i32 [ %i.t, %._crit_edge ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

declare signext i8 @uprv_isNaN_78(double noundef) local_unnamed_addr #7

declare signext i8 @uprv_isInfinite_78(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FixedDecimal9quickInitEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, double noundef %1) local_unnamed_addr #3 align 2 {
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
  %i.n = tail call signext i8 @uprv_isNaN_78(double noundef %i.a)
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.g, label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

bb.g:                                             ; preds = %bb.f
  %i.o = tail call signext i8 @uprv_isPositiveInfinity_78(double noundef %i.a)
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
  %i.y = tail call double @pow(double noundef 1.000000e+01, double noundef %i.x) #25
  %i.z = tail call double @llvm.fmuladd.f64(double %i.q, double %i.y, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 2 uses
  %i.ab = fcmp ult double %i.aa, f0x43E0000000000000
  %i.ac = fptosi double %i.aa to i64
  %.0.i = select i1 %i.ab, i64 %i.ac, i64 9223372036854775807
  br label %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit

_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l
  %.2.i = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ], [ %.0.i, %bb.l ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.ad, align 1, !tbaa !125
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store double %i.a, ptr %i.ae, align 8, !tbaa !126
  %i.af = tail call signext i8 @uprv_isNaN_78(double noundef %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  store i8 %i.af, ptr %i.ag, align 2, !tbaa !127
  %i.ah = load double, ptr %i.ae, align 8, !tbaa !126
  %i.ai = tail call signext i8 @uprv_isInfinite_78(double noundef %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !128
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ak, align 8, !tbaa !129
  %i.al = load i8, ptr %i.ag, align 2, !tbaa !127
  %.not.i.i.i = icmp eq i8 %i.al, 0
  %.not14.i.i.i = icmp eq i8 %i.ai, 0
  %or.cond17.i.i.i = select i1 %.not.i.i.i, i1 %.not14.i.i.i, i1 false
  br i1 %or.cond17.i.i.i, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.am = load double, ptr %i.ae, align 8, !tbaa !126 ; 3 uses
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %or.cond.i.i.i = fcmp ogt double %i.an, f0x43E0000000000000
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %_ZN6icu_7812FixedDecimal19getFractionalDigitsEdi.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.ao, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.ap, align 4, !tbaa !131
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.aq, align 8, !tbaa !132
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ar, align 8, !tbaa !133
  br label %_ZN6icu_7812FixedDecimal4initEdil.exit

bb.n:                                             ; preds = %bb.m
  %i.as = fptosi double %i.am to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !130
  %i.au = sitofp i64 %i.as to double
  %i.av = fcmp oeq double %i.am, %i.au
  %i.aw = zext i1 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.aw, ptr %i.ax, align 4, !tbaa !131
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.014.lcssa.ph, ptr %i.ay, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2.i, ptr %i.az, align 8, !tbaa !133
  %i.ba = icmp eq i64 %.2.i, 0
  br i1 %i.ba, label %_ZN6icu_7812FixedDecimal4initEdil.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.n
  %i.bb = srem i64 %.2.i, 10
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i ], [ %.2.i, %.preheader.i.i.i ]
  %i.bd = sdiv i64 %.018.i.i.i, 10                ; 3 uses
  %i.be = srem i64 %i.bd, 10
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZN6icu_7812FixedDecimal4initEdil.exit, !llvm.loop !10

_ZN6icu_7812FixedDecimal4initEdil.exit:           ; preds = %.lr.ph.i.i.i, %.thread.i.i.i, %bb.n, %.preheader.i.i.i
  %.0.lcssa.sink.i.i.i = phi i64 [ 0, %bb.n ], [ 0, %.thread.i.i.i ], [ %.2.i, %.preheader.i.i.i ], [ %i.bd, %.lr.ph.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.sink.i.i.i, ptr %i.bg, align 8, !tbaa !134
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %_ZN6icu_7812FixedDecimal4initEdil.exit
  %.225 = phi i8 [ 1, %_ZN6icu_7812FixedDecimal4initEdil.exit ], [ 0, %bb.d ]
  ret i8 %.225
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #14

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare signext i8 @uprv_isPositiveInfinity_78(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6icu_7812FixedDecimal26adjustForMinFractionDigitsEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !132
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
  store i64 %i.h, ptr %i.e, align 8, !tbaa !133
  %i.i = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %i.c
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !190

bb.d:                                             ; preds = %bb.b, %bb.c
  store i32 %1, ptr %i.a, align 8, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef double @_ZNK6icu_7812FixedDecimal16getPluralOperandENS_13PluralOperandE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #9 align 2 {
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !126 ; 2 uses
  br i1 %i.c, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sitofp i32 %i.b to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #25
  %i.h = fmul double %i.e, %i.g
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !130
  br label %_ZNK6icu_7812FixedDecimal9longValueEv.exit

bb.f:                                             ; preds = %bb.d
  %i.n = sitofp i32 %i.j to double
  %i.o = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.n) #25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !130
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
  %i.w = load i64, ptr %i.v, align 8, !tbaa !133
  %i.x = sitofp i64 %i.w to double
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !134
  %i.aa = sitofp i64 %i.z to double
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !132
  %i.ad = sitofp i32 %i.ac to double
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !129
  %i.ag = sitofp i32 %i.af to double
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !129
  %i.aj = sitofp i32 %i.ai to double
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZNK6icu_7812FixedDecimal9longValueEv.exit
  %.0 = phi double [ %i.aj, %bb.k ], [ %i.u, %_ZNK6icu_7812FixedDecimal9longValueEv.exit ], [ %i.x, %bb.g ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ], [ %i.ag, %bb.j ], [ %i.h, %bb.c ], [ %i.e, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef i64 @_ZNK6icu_7812FixedDecimal9longValueEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !130
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = sitofp i32 %i.b to double
  %i.g = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.f) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %i.j = sitofp i64 %i.i to double
  %i.k = fmul double %i.g, %i.j
  %i.l = fptosi double %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6icu_7812FixedDecimal5isNaNEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i8, ptr %i.a, align 2, !tbaa !127
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6icu_7812FixedDecimal10isInfiniteEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.b = load i8, ptr %i.a, align 1, !tbaa !128
  %i.c = icmp ne i8 %i.b, 0
  ret i1 %i.c
end_hunk_2
