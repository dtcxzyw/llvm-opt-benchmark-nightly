inline.NumInlined: 416
inline.NumDeleted: 142
begin_hunk_0_@_ZNK6icu_7811MeasureUnit23withConstantDenominatorEmR10UErrorCode:bb.a

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.an = load i8, ptr %i.am, align 4
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void @uprv_free_78(ptr noundef %i.ap) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit

bb.o:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.aq = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %i.av, %bb.q ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 2 uses
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.at) #15
  %.pre.i.i = load i32, ptr %i.ai, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi i32 [ %i.aq, %bb.o ], [ %.pre.i.i, %bb.p ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next.i.i, %i.aw
  br i1 %i.ax, label %bb.o, label %._crit_edge.i.i, !llvm.loop !13

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.i, %_ZN6icu_7815MeasureUnitImplD2Ev.exit, %bb.b
  ret void
}

declare void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7811MeasureUnit17getDimensionalityER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call { i64, i32 } @_ZN6icu_7814SingleUnitImpl14forMeasureUnitERKNS_11MeasureUnitER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.a, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.a, 1
  %i.b = load i32, ptr %1, align 4
  %i.c = and i64 %.fca.0.extract, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  %.inv = icmp sgt i32 %i.b, 0
  %i.e = select i1 %.inv, i1 true, i1 %i.d
  %.0 = select i1 %i.e, i32 0, i32 %.fca.1.extract
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811MeasureUnit18withDimensionalityEiR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MeasureUnit") align 8 %0, ptr noundef nonnull align 8 dereferenceable(19) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"struct.icu_78::SingleUnitImpl", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = tail call { i64, i32 } @_ZN6icu_7814SingleUnitImpl14forMeasureUnitERKNS_11MeasureUnitER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.fca.0.extract = extractvalue { i64, i32 } %i.a, 0
  store i64 %.fca.0.extract, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZNK6icu_7814SingleUnitImpl5buildER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::MeasureUnit") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811MeasureUnit10reciprocalER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MeasureUnit") align 8 %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6icu_7815MeasureUnitImpl23forMeasureUnitMaybeCopyERKNS_11MeasureUnitER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnitImpl") align 8 %3, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %0) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.d) #15
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN6icu_7815MeasureUnitImpl14takeReciprocalER10UErrorCode.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sub nsw i32 0, %i.m
  store i32 %i.n, ptr %i.l, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = load i32, ptr %i.e, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %bb.d, label %_ZN6icu_7815MeasureUnitImpl14takeReciprocalER10UErrorCode.exit, !llvm.loop !6

_ZN6icu_7815MeasureUnitImpl14takeReciprocalER10UErrorCode.exit: ; preds = %bb.d, %bb.c
  call void @_ZN6icu_7815MeasureUnitImpl9serializeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 4 dereferenceable(4) %2), !noalias !45
  call void @_ZN6icu_7811MeasureUnitC1EONS_15MeasureUnitImplE(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(112) %3) #15
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7815MeasureUnitImpl14takeReciprocalER10UErrorCode.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.s) #15
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = load i8, ptr %i.x, align 4
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void @uprv_free_78(ptr noundef %i.aa) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i
  %i.ab = phi i32 [ %i.u, %.lr.ph.i.i ], [ %i.ag, %bb.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ae) #15
  %.pre.i.i = load i32, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi i32 [ %i.ab, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i.i, %i.ah
  br i1 %i.ai, label %bb.g, label %._crit_edge.i.i, !llvm.loop !13

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811MeasureUnit7productERKS0_R10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::MeasureUnit") align 8 %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(19) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 15 uses
  %5 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN6icu_7815MeasureUnitImpl23forMeasureUnitMaybeCopyERKNS_11MeasureUnitER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnitImpl") align 8 %4, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %2, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 4 uses
  %6 = load i32, ptr %4, align 8
  %7 = icmp eq i32 %6, 2
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 2
  %or.cond23 = select i1 %7, i1 true, i1 %i.i
  br i1 %or.cond23, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 4
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %0) #15
  br label %bb.h

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ne i64 %i.o, 0
  %i.s = icmp ne i64 %i.q, 0
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 @_ZN6icu_7815MeasureUnitImpl16appendSingleUnitERKNS_14SingleUnitImplER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.j, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.c, label %._crit_edge, !llvm.loop !48

bb.d:                                             ; preds = %._crit_edge
  store i32 1, ptr %3, align 4
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %0) #15
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.aa = trunc i64 %i.o to i32
  %i.ab = trunc i64 %i.q to i32
  %i.ac = call i32 @uprv_max_78(i32 noundef %i.aa, i32 noundef %i.ab) #15 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %i.n, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp sgt i32 %i.af, 1
  %i.ah = icmp ne i32 %i.ac, 0
  %or.cond4 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %4, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @_ZN6icu_7815MeasureUnitImpl9serializeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(4) %3), !noalias !49
  call void @_ZN6icu_7811MeasureUnitC1EONS_15MeasureUnitImplE(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(112) %4) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.b
  %i.ai = load ptr, ptr %i.f, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.ai) #15
  %i.aj = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %bb.h
  %i.al = load i8, ptr %i.e, align 4
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.am = load ptr, ptr %i.b, align 8
  call void @uprv_free_78(ptr noundef %i.am) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.k
  %i.an = phi i32 [ %i.as, %bb.k ], [ %i.aj, %bb.h ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.aq) #15
  %.pre.i.i = load i32, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.as = phi i32 [ %i.an, %.lr.ph.i.i ], [ %.pre.i.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i.i, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !13

_ZN6icu_7815MeasureUnitImplD2Ev.exit:             ; preds = %._crit_edge.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.aw) #15
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i24, label %._crit_edge.i.i22

.lr.ph.i.i24:                                     ; preds = %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.m

._crit_edge.i.i22:                                ; preds = %bb.o, %_ZN6icu_7815MeasureUnitImplD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bc = load i8, ptr %i.bb, align 4
  %.not.i.i.i.i23 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i23, label %_ZN6icu_7815MeasureUnitImplD2Ev.exit28, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i22
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void @uprv_free_78(ptr noundef %i.be) #15
  br label %_ZN6icu_7815MeasureUnitImplD2Ev.exit28

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i24
  %i.bf = phi i32 [ %i.ay, %.lr.ph.i.i24 ], [ %i.bk, %bb.o ]
  %indvars.iv.i.i25 = phi i64 [ 0, %.lr.ph.i.i24 ], [ %indvars.iv.next.i.i27, %bb.o ] ; 2 uses
  %i.bg = load ptr, ptr %i.ba, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i.i25
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bi) #15
  %.pre.i.i26 = load i32, ptr %i.ax, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = phi i32 [ %i.bf, %bb.m ], [ %.pre.i.i26, %bb.n ] ; 2 uses
  %indvars.iv.next.i.i27 = add nuw nsw i64 %indvars.iv.i.i25, 1 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i.i27, %i.bl
  br i1 %i.bm, label %bb.m, label %._crit_edge.i.i22, !llvm.loop !13

_ZN6icu_7815MeasureUnitImplD2Ev.exit28:           ; preds = %._crit_edge.i.i22, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

declare i32 @uprv_max_78(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811MeasureUnit22splitToSingleUnitsImplERiR10UErrorCode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::LocalArray") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::MeasureUnit", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i32 0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 24) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  %i.n = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.m, i64 8) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = or i1 %i.l, %i.o
  %i.q = extractvalue { i64, i1 } %i.n, 0
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.r) #15 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.j, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.u, %bb.c ], [ %i.y, %bb.d ] ; 2 uses
  call void @_ZN6icu_7811MeasureUnitC1Ev(ptr noundef nonnull align 8 dereferenceable(19) %i.x) #15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.aa = load i32, ptr %2, align 4
  %i.ab = icmp sgt i32 %i.aa, 0
end_hunk_0
