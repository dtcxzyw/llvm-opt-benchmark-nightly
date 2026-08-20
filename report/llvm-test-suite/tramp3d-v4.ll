inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN18CanonicalCenteringILi3EED2Ev:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %.preheader12, !llvm.loop !790

bb.k:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.bh) #48
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !715  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !713  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = icmp ugt i64 %i.j, 768614336404564650
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #45
  br label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !713
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !715
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !714
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !721  ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !721  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.q, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %i.s = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.s, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !236
  store i32 %i.v, ptr %i.t, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !236
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !720

_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit:     ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.m, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ], [ %i.aa, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.n, align 8, !tbaa !715
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !716 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !711 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit
  %i.aj = sdiv exact i64 %i.ai, 24
  %i.ak = icmp ugt i64 %i.aj, 384307168202282325
  br i1 %i.ak, label %bb.e, label %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #45
  br label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit
  %i.am = phi ptr [ %i.al, %_ZNSt15__new_allocatorI6VectorILi3Ed4FullEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit ] ; 5 uses
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !711
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !716
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !712
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !726 ; 2 uses
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !726 ; 2 uses
  %.not7.i.i.i.i.i5 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not7.i.i.i.i.i5, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i6
  %.09.i.i.i.i.i7 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i6 ], [ %i.am, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i8 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i6 ], [ %i.aq, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i ] ; 4 uses
  %i.as = load double, ptr %.sroa.04.08.i.i.i.i.i8, align 8, !tbaa !247
  store double %i.as, ptr %.09.i.i.i.i.i7, align 8, !tbaa !247
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !247
  store double %i.av, ptr %i.at, align 8, !tbaa !247
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !247
  store double %i.ay, ptr %i.aw, align 8, !tbaa !247
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 24 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.az, %i.ar
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6, !llvm.loop !725

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i6, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i10 = phi ptr [ %i.am, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EEC2EmRKS3_.exit.i ], [ %i.ba, %.lr.ph.i.i.i.i.i6 ]
  store ptr %.0.lcssa.i.i.i.i.i10, ptr %i.an, align 8, !tbaa !716
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK13UniformMapper3mapERKSt6vectorIP4NodeI8IntervalILi1EES3_ESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #25 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN5Pooma13numContexts_gE, align 4, !tbaa !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !236  ; 2 uses
  %i.d = sdiv i32 %i.c, %i.a                      ; 4 uses
  %i.e = srem i32 %i.c, %i.a                      ; 4 uses
  %i.f = icmp sgt i32 %i.a, 0
  br i1 %i.f, label %.preheader.lr.ph, label %._crit_edge23

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = icmp sgt i32 %i.d, 0
  %i.h = load ptr, ptr %1, align 8                ; 9 uses
  br i1 %i.g, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i32 %i.a, 1
  %i.i = icmp eq i32 %i.a, 1
  br i1 %i.i, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.a, 2147483646
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %xtraiter39 = and i32 %i.d, 3                   ; 3 uses
  %i.j = icmp ult i32 %i.d, 4
  %unroll_iter44 = and i32 %i.d, 2147483644
  %lcmp.mod40.not = icmp eq i32 %xtraiter39, 0
  %lcmp.mod43 = icmp ne i32 %xtraiter39, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.01722.us = phi i32 [ %i.ad, %bb.c ], [ 0, %.preheader.us.preheader ] ; 8 uses
  %.01821.us = phi i64 [ %.2.us, %bb.c ], [ 0, %.preheader.us.preheader ]
  %sext = shl i64 %.01821.us, 32
  %i.k = ashr exact i64 %sext, 32                 ; 2 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ %i.k, %.preheader.us ] ; 5 uses
  %niter45 = phi i32 [ %niter45.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !791
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %.01722.us, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !791
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %.01722.us, ptr %i.r, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %.01722.us, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !791
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %.01722.us, ptr %i.y, align 4, !tbaa !4
  %niter45.next.3 = add i32 %niter45, 4           ; 2 uses
  %niter45.ncmp.3 = icmp eq i32 %niter45.next.3, %unroll_iter44
  br i1 %niter45.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !793

bb.b:                                             ; preds = %._crit_edge.us
  %i.z = add i64 %indvars.iv.lcssa, 2
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.lcssa
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !791
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %.01722.us, ptr %i.ac, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %.2.us = phi i64 [ %i.z, %bb.b ], [ %indvars.iv.next.lcssa, %._crit_edge.us ]
  %i.ad = add nuw nsw i32 %.01722.us, 1           ; 2 uses
  %exitcond27.not = icmp eq i32 %i.ad, %i.a
  br i1 %exitcond27.not, label %._crit_edge23, label %.preheader.us, !llvm.loop !794

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod40.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ %i.k, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !791
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %.01722.us, ptr %i.ag, align 4, !tbaa !4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter39
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !795

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.epil, %bb.d ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %i.ah = icmp slt i32 %.01722.us, %i.e
  br i1 %i.ah, label %bb.b, label %bb.c

.preheader:                                       ; preds = %bb.n, %.preheader.preheader.new
  %.01722 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bx, %bb.n ] ; 4 uses
  %.01821 = phi i32 [ 0, %.preheader.preheader.new ], [ %.2.1, %bb.n ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.ai = icmp slt i32 %.01722, %i.e
  br i1 %i.ai, label %bb.l, label %.preheader.1

._crit_edge23.loopexit37.unr-lcssa:               ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge23, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge23.loopexit37.unr-lcssa, %.preheader.preheader
  %.01722.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bx, %._crit_edge23.loopexit37.unr-lcssa ] ; 2 uses
  %.01821.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.2.1, %._crit_edge23.loopexit37.unr-lcssa ]
  %lcmp.mod38 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.aj = icmp slt i32 %.01722.epil.init, %i.e
  br i1 %i.aj, label %bb.e, label %._crit_edge23

bb.e:                                             ; preds = %.preheader.epil.preheader
  %i.ak = sext i32 %.01821.epil.init to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !791
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i32 %.01722.epil.init, ptr %i.an, align 4, !tbaa !4
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit37.unr-lcssa, %bb.e, %.preheader.epil.preheader, %bb.c, %bb.a
  %i.ao = load ptr, ptr %1, align 8, !tbaa !796   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !796 ; 3 uses
  %.not17.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not17.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge23
  %i.ar = load i32, ptr @_ZN5Pooma11myContext_gE, align 4, !tbaa !4 ; 2 uses
  br label %bb.f

.preheader.i:                                     ; preds = %bb.h
  %i.as = sitofp i32 %.1.i to double
  br label %bb.i

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 3 uses
  %.sroa.07.018.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.az, %bb.h ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.07.018.i, align 8, !tbaa !791 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.av, %i.ar
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 %.019.i, ptr %i.ax, align 4, !tbaa !4
  %i.ay = add nsw i32 %.019.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi i32 [ %i.ay, %bb.g ], [ %.019.i, %bb.f ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.az, %i.aq
  br i1 %.not.i, label %.preheader.i, label %bb.f, !llvm.loop !798

bb.i:                                             ; preds = %bb.k, %.preheader.i
  %.sroa.07.121.i = phi ptr [ %i.ao, %.preheader.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.07.121.i, align 8, !tbaa !791 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = icmp eq i32 %i.bc, %i.ar
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fdiv double %i.bg, %i.as
  %i.bi = fptosi double %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.121.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.bk, %i.aq
  br i1 %.not16.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %bb.i, !llvm.loop !799

_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit: ; preds = %bb.k, %._crit_edge23
  ret void

bb.l:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %.01821, 1
  %i.bm = sext i32 %.01821 to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !791
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 %.01722, ptr %i.bp, align 4, !tbaa !4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.l
  %.2 = phi i32 [ %i.bl, %bb.l ], [ %.01821, %.preheader ] ; 3 uses
  %i.bq = or disjoint i32 %.01722, 1              ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.e
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.bs = add nsw i32 %.2, 1
  %i.bt = sext i32 %.2 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !791
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 %i.bq, ptr %i.bw, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.1
  %.2.1 = phi i32 [ %i.bs, %bb.m ], [ %.2, %.preheader.1 ] ; 2 uses
  %i.bx = add nuw nsw i32 %.01722, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge23.loopexit37.unr-lcssa, label %.preheader, !llvm.loop !794
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma7OptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(54) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !17
  store i8 0, ptr %i.b, align 8, !tbaa !16
  store i32 1, ptr %0, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.e, align 1, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 1, ptr %i.f, align 2, !tbaa !38
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.44, i64 noundef 0) #47 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.k, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 0, ptr %i.l, align 1, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma7Options5resetEv(ptr noundef nonnull align 8 dereferenceable(54) initializes((0, 7)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.a, align 4, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionEC2I10GridLayoutILi3EEEERK9CenteringILi3EERKT_RKS5_i:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !715
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.b, align 8, !tbaa !1796
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !835  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %3, align 8, !tbaa !859   ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !837
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !837
  %.pre = load i32, ptr %i.m, align 8, !tbaa !4, !noalias !3749
  %.pre40 = load i32, ptr %i.t, align 4, !tbaa !4, !noalias !3749
  %.pre41 = load i32, ptr %i.u, align 8, !tbaa !4, !noalias !3749
  %.pre42 = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !3749
  %.pre43 = load i32, ptr %i.aa, align 8, !tbaa !4, !noalias !3749
  %.pre44 = load i32, ptr %i.af, align 4, !tbaa !4, !noalias !3749
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.am = phi i32 [ %i.ae, %bb.a ], [ %.pre44, %bb.b ]
  %i.an = phi i32 [ %i.ac, %bb.a ], [ %.pre43, %bb.b ]
  %i.ao = phi i32 [ %i.y, %bb.a ], [ %.pre42, %bb.b ]
  %i.ap = phi i32 [ %i.w, %bb.a ], [ %.pre41, %bb.b ]
  %i.aq = phi i32 [ %i.s, %bb.a ], [ %.pre40, %bb.b ]
  %i.ar = phi i32 [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !4, !noalias !3749 ; 2 uses
  %i.au = add nsw i32 %i.at, %i.ar
  %i.av = load i32, ptr %i.as, align 4, !tbaa !4, !noalias !3749
  %i.aw = add i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4, !noalias !3749 ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !4, !noalias !3749
  %i.bc = add i32 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4, !noalias !3749 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.an
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4, !noalias !3749
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = xor i32 %i.aw, -1
  %i.bk = add i32 %i.aq, %i.bj
  %i.bl = xor i32 %i.bc, -1
  %i.bm = add i32 %i.ao, %i.bl
  %i.bn = xor i32 %i.bi, -1
  %i.bo = add i32 %i.am, %i.bn
  store i32 %i.au, ptr %i.m, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.t, align 4, !tbaa !4
  store i32 %i.az, ptr %i.u, align 8, !tbaa !4
  store i32 %i.bm, ptr %i.z, align 4, !tbaa !4
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !4
  store i32 %i.bo, ptr %i.af, align 4, !tbaa !4
  %i.bp = load i32, ptr %0, align 8, !tbaa !1794
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !715
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 12
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul nsw i32 %i.bp, %i.by                ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed16ConstantFunctionELb0E18RefBlockControllerIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1182 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1185 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ca, 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3752
  %.not.i.i.i.not.i = icmp ugt ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !1806
  %.not6.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ce, %bb.c ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  %i.cl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !1728
  store i32 1, ptr %i.cl, align 4, !tbaa !837
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 56 ; 2 uses
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !1806
  %.not.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3753

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, %bb.c
  %i.cp = load i32, ptr %0, align 8, !tbaa !1794  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.preheader.preheader, label %._crit_edge36

.preheader.preheader:                             ; preds = %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit
  %.pre45 = load ptr, ptr %i.d, align 8, !tbaa !715
  %.pre46 = load ptr, ptr %i.c, align 8, !tbaa !713
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.da, %._crit_edge ], [ %i.cp, %.preheader.preheader ]
  %i.cs = phi ptr [ %i.db, %._crit_edge ], [ %.pre46, %.preheader.preheader ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %._crit_edge ], [ %.pre45, %.preheader.preheader ] ; 2 uses
  %.01435 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge36:                                    ; preds = %._crit_edge, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEd16ConstantFunctionE12addSubFieldsEv.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit
  %.pre48 = load i32, ptr %0, align 8, !tbaa !1794
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.da = phi i32 [ %.pre48, %._crit_edge.loopexit ], [ %i.cr, %.preheader ] ; 2 uses
  %i.db = phi ptr [ %i.gh, %._crit_edge.loopexit ], [ %i.cs, %.preheader ]
  %i.dc = phi ptr [ %i.gg, %._crit_edge.loopexit ], [ %i.ct, %.preheader ]
  %i.dd = add nuw nsw i32 %.01435, 1              ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.da
  br i1 %i.de, label %.preheader, label %._crit_edge36, !llvm.loop !3754

.lr.ph:                                           ; preds = %.preheader, %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit
  %.034 = phi i32 [ %i.gf, %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !835 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.di = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4 ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.dl, align 4, !tbaa !837
  %i.dn = load i32, ptr %i.b, align 8, !tbaa !1796
  %i.do = mul nsw i32 %i.dn, %.01435
  %i.dp = add nsw i32 %i.do, %.034
  %i.dq = sext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !1182
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1185
  %i.du = load i64, ptr %i.l, align 8, !tbaa !1188
  %i.dv = getelementptr inbounds [56 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds [56 x i8], ptr %i.dv, i64 %i.dq ; 5 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !1190
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <4 x i32> %i.di, ptr %i.dx, align 8, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %5 = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x i32> %i.di, <4 x i32> %5, <4 x i32> <i32 4, i32 5, i32 0, i32 2>
  store <4 x i32> %6, ptr %i.dy, align 8
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store i32 %i.dk, ptr %.sroa.19.32..sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1728 ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.ea, %i.dl
  br i1 %.not.i.i.i15, label %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge, label %bb.d

.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge: ; preds = %.lr.ph
  %.pre47 = load i32, ptr %i.dl, align 4, !tbaa !837
  %i.eb = add nsw i32 %.pre47, -1
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit

bb.d:                                             ; preds = %.lr.ph
  %.not3.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not3.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !837
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !837
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1731 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !1734 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %.not.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.f
  %.lcssa4.i.i.i.i = phi ptr [ %i.ei, %bb.f ], [ %i.ew, %bb.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.ej, %bb.f ], [ %i.fa, %bb.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1735
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %.lcssa.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i, i64 noundef %i.en) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.i
  %i.eo = phi ptr [ %i.ew, %bb.i ], [ %i.ei, %bb.f ] ; 2 uses
  %i.ep = phi ptr [ %i.ex, %bb.i ], [ %i.eh, %bb.f ]
  %.05.i.i.i.i = phi i64 [ %i.ey, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.05.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1736 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !73
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.er) #47, !inline_history !3755
  %.pre.i.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !1731
  %.pre9.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !1734
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.ew = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %.pre9.i.i.i.i, %bb.h ] ; 3 uses
  %i.ex = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.h ] ; 2 uses
  %i.ey = add nuw i64 %.05.i.i.i.i, 1             ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ult i64 %i.ey, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i:             ; preds = %bb.g, %._crit_edge.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 32) #48
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %_ZN16RelationListDataD2Ev.exit.i.i.i
  store ptr %i.dl, ptr %i.dz, align 8, !tbaa !1728
  %i.fe = load i32, ptr %i.dl, align 4, !tbaa !837
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit

_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit: ; preds = %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge, %bb.j
  %i.ff = phi i32 [ %i.eb, %.lr.ph._ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit_crit_edge ], [ %i.fe, %bb.j ] ; 2 uses
  store i32 %i.ff, ptr %i.dl, align 4, !tbaa !837
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.k, label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit

bb.k:                                             ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1731 ; 2 uses
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !1734 ; 4 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n, %bb.k
  %.lcssa4.i.i.i.i.i = phi ptr [ %i.fj, %bb.k ], [ %i.fx, %bb.n ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.fk, %bb.k ], [ %i.gb, %bb.n ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1735
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.lcssa.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i.i, i64 noundef %i.fo) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.n
  %i.fp = phi ptr [ %i.fx, %bb.n ], [ %i.fj, %bb.k ] ; 2 uses
  %i.fq = phi ptr [ %i.fy, %bb.n ], [ %i.fi, %bb.k ]
  %.05.i.i.i.i.i = phi i64 [ %i.fz, %bb.n ], [ 0, %bb.k ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1736 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.fs) #47, !inline_history !3756
  %.pre.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !1731
  %.pre9.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !1734
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.fx = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.pre9.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.fy = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.fz = add nuw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i.i:           ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #48
  br label %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit

_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionED2Ev.exit: ; preds = %_ZN19FieldEngineBaseDataILi3Ed16ConstantFunctionEaSEOS1_.exit, %_ZN16RelationListDataD2Ev.exit.i.i.i.i
  %i.gf = add nuw nsw i32 %.034, 1                ; 2 uses
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !715 ; 2 uses
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !713 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 12
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp slt i32 %i.gf, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !3757
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3Ed16ConstantFunctionELb0E18RefBlockControllerIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 11 uses
  store i32 0, ptr %i.a, align 4, !tbaa !837
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not.i.i = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  br i1 %.not.i.i, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i.i = mul i64 %1, 240518168576
  %i.c = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #45 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %1, 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.f = udiv i64 %i.c, 56
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.f
  br label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit

_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit: ; preds = %bb.a, %bb.b
  %.021.i.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  %.020.i.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  %.019.i.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a)
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !1185
  store ptr %.020.i.i, ptr %i.j, align 8, !tbaa !1806
  store ptr %.019.i.i, ptr %i.i, align 8, !tbaa !3752
  store i8 1, ptr %i.h, align 8, !tbaa !1805
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1182 ; 7 uses
  %.not.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i, label %_ZN13RefCountedPtrI18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEEaSEPS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3Ed16ConstantFunctionEEC2EmRKNS3_9NoInitTagE.exit
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionEC2I10GridLayoutILi3EEEERK9CenteringILi3EERKT_RKS5_i:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !715
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.b, align 8, !tbaa !3762
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !835  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4    ; 2 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 %i.y, ptr %i.z, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1065
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %3, align 8, !tbaa !859   ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !859
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !837
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !837
  %.pre = load i32, ptr %i.m, align 8, !tbaa !4, !noalias !3763
  %.pre39 = load i32, ptr %i.t, align 4, !tbaa !4, !noalias !3763
  %.pre40 = load i32, ptr %i.u, align 8, !tbaa !4, !noalias !3763
  %.pre41 = load i32, ptr %i.z, align 4, !tbaa !4, !noalias !3763
  %.pre42 = load i32, ptr %i.aa, align 8, !tbaa !4, !noalias !3763
  %.pre43 = load i32, ptr %i.af, align 4, !tbaa !4, !noalias !3763
  br label %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit

_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.am = phi i32 [ %i.ae, %bb.a ], [ %.pre43, %bb.b ]
  %i.an = phi i32 [ %i.ac, %bb.a ], [ %.pre42, %bb.b ]
  %i.ao = phi i32 [ %i.y, %bb.a ], [ %.pre41, %bb.b ]
  %i.ap = phi i32 [ %i.w, %bb.a ], [ %.pre40, %bb.b ]
  %i.aq = phi i32 [ %i.s, %bb.a ], [ %.pre39, %bb.b ]
  %i.ar = phi i32 [ %i.q, %bb.a ], [ %.pre, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.at = load i32, ptr %i.ag, align 8, !tbaa !4, !noalias !3763 ; 2 uses
  %i.au = add nsw i32 %i.at, %i.ar
  %i.av = load i32, ptr %i.as, align 4, !tbaa !4, !noalias !3763
  %i.aw = add i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4, !noalias !3763 ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.ap
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !4, !noalias !3763
  %i.bc = add i32 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !4, !noalias !3763 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.an
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4, !noalias !3763
  %i.bi = add i32 %i.bh, %i.be
  %i.bj = xor i32 %i.aw, -1
  %i.bk = add i32 %i.aq, %i.bj
  %i.bl = xor i32 %i.bc, -1
  %i.bm = add i32 %i.ao, %i.bl
  %i.bn = xor i32 %i.bi, -1
  %i.bo = add i32 %i.am, %i.bn
  store i32 %i.au, ptr %i.m, align 8, !tbaa !4
  store i32 %i.bk, ptr %i.t, align 4, !tbaa !4
  store i32 %i.az, ptr %i.u, align 8, !tbaa !4
  store i32 %i.bm, ptr %i.z, align 4, !tbaa !4
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !4
  store i32 %i.bo, ptr %i.af, align 4, !tbaa !4
  %i.bp = load i32, ptr %0, align 8, !tbaa !3759
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !715
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !713
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 12
  %i.by = trunc i64 %i.bx to i32
  %i.bz = mul nsw i32 %i.bp, %i.by                ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  tail call void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionELb0E18RefBlockControllerIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 noundef %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2236 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !3766 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ca, 48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !3769
  %.not.i.i.i.not.i = icmp ugt ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.not.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !3770
  %.not6.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not6.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.ce, %bb.c ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  %i.cl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !1728
  store i32 1, ptr %i.cl, align 4, !tbaa !837
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48 ; 2 uses
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !3770
  %.not.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i.i, label %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3771

_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEEC2ERKS4_.exit, %bb.c
  %i.cp = load i32, ptr %0, align 8, !tbaa !3759  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.preheader.preheader, label %._crit_edge35

.preheader.preheader:                             ; preds = %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit
  %.pre44 = load ptr, ptr %i.d, align 8, !tbaa !715
  %.pre45 = load ptr, ptr %i.c, align 8, !tbaa !713
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.cr = phi i32 [ %i.da, %._crit_edge ], [ %i.cp, %.preheader.preheader ]
  %i.cs = phi ptr [ %i.db, %._crit_edge ], [ %.pre45, %.preheader.preheader ] ; 2 uses
  %i.ct = phi ptr [ %i.dc, %._crit_edge ], [ %.pre44, %.preheader.preheader ] ; 2 uses
  %.01434 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

._crit_edge35:                                    ; preds = %._crit_edge, %_ZN11FieldEngineI22UniformRectilinearMeshI10MeshTraitsILi3Ed21UniformRectilinearTag12CartesianTagLi3EEE4ZeroIdE16ConstantFunctionE12addSubFieldsEv.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit
  %.pre47 = load i32, ptr %0, align 8, !tbaa !3759
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.da = phi i32 [ %.pre47, %._crit_edge.loopexit ], [ %i.cr, %.preheader ] ; 2 uses
  %i.db = phi ptr [ %i.gh, %._crit_edge.loopexit ], [ %i.cs, %.preheader ]
  %i.dc = phi ptr [ %i.gg, %._crit_edge.loopexit ], [ %i.ct, %.preheader ]
  %i.dd = add nuw nsw i32 %.01434, 1              ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.da
  br i1 %i.de, label %.preheader, label %._crit_edge35, !llvm.loop !3772

.lr.ph:                                           ; preds = %.preheader, %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit
  %.033 = phi i32 [ %i.gf, %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit ], [ 0, %.preheader ] ; 2 uses
  %i.df = load ptr, ptr %i.n, align 8, !tbaa !835 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.di = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4 ; 2 uses
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !4
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dl = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #45 ; 10 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.dl, align 4, !tbaa !837
  %i.dn = load i32, ptr %i.b, align 8, !tbaa !3762
  %i.do = mul nsw i32 %i.dn, %.01434
  %i.dp = add nsw i32 %i.do, %.033
  %i.dq = sext i32 %i.dp to i64
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !2236
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !3766
  %i.du = load i64, ptr %i.l, align 8, !tbaa !3773
  %i.dv = getelementptr inbounds [48 x i8], ptr %i.dt, i64 %i.du
  %i.dw = getelementptr inbounds [48 x i8], ptr %i.dv, i64 %i.dq ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store <4 x i32> %i.di, ptr %i.dx, align 4, !tbaa !4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %5 = shufflevector <2 x i32> %i.dj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x i32> %i.di, <4 x i32> %5, <4 x i32> <i32 4, i32 5, i32 0, i32 2>
  store <4 x i32> %6, ptr %i.dy, align 4
  %.sroa.17.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 36
  store i32 %i.dk, ptr %.sroa.17.28..sroa_idx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 40 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1728 ; 8 uses
  %.not.i.i.i15 = icmp eq ptr %i.ea, %i.dl
  br i1 %.not.i.i.i15, label %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge, label %bb.d

.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge: ; preds = %.lr.ph
  %.pre46 = load i32, ptr %i.dl, align 4, !tbaa !837
  %i.eb = add nsw i32 %.pre46, -1
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %.not3.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not3.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !837
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !837
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1731 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !1734 ; 4 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %.not.i.i.i.i = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.f
  %.lcssa4.i.i.i.i = phi ptr [ %i.ei, %bb.f ], [ %i.ew, %bb.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i64 [ %i.ej, %bb.f ], [ %i.fa, %bb.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1735
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %.lcssa.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i, i64 noundef %i.en) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.i
  %i.eo = phi ptr [ %i.ew, %bb.i ], [ %i.ei, %bb.f ] ; 2 uses
  %i.ep = phi ptr [ %i.ex, %bb.i ], [ %i.eh, %bb.f ]
  %.05.i.i.i.i = phi i64 [ %i.ey, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.05.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1736 ; 3 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !73
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.er) #47, !inline_history !3774
  %.pre.i.i.i.i = load ptr, ptr %i.eg, align 8, !tbaa !1731
  %.pre9.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !1734
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.ew = phi ptr [ %i.eo, %.lr.ph.i.i.i.i ], [ %.pre9.i.i.i.i, %bb.h ] ; 3 uses
  %i.ex = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.h ] ; 2 uses
  %i.ey = add nuw i64 %.05.i.i.i.i, 1             ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = icmp ult i64 %i.ey, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i:             ; preds = %bb.g, %._crit_edge.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef 32) #48
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %_ZN16RelationListDataD2Ev.exit.i.i.i
  store ptr %i.dl, ptr %i.dz, align 8, !tbaa !1728
  %i.fe = load i32, ptr %i.dl, align 4, !tbaa !837
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit

_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit: ; preds = %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge, %bb.j
  %i.ff = phi i32 [ %i.eb, %.lr.ph._ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit_crit_edge ], [ %i.fe, %bb.j ] ; 2 uses
  store i32 %i.ff, ptr %i.dl, align 4, !tbaa !837
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.k, label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit

bb.k:                                             ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1731 ; 2 uses
  %i.fj = load ptr, ptr %i.dm, align 8, !tbaa !1734 ; 4 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n, %bb.k
  %.lcssa4.i.i.i.i.i = phi ptr [ %i.fj, %bb.k ], [ %i.fx, %bb.n ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i64 [ %i.fk, %bb.k ], [ %i.gb, %bb.n ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.lcssa4.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN16RelationListDataD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1735
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.lcssa.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa4.i.i.i.i.i, i64 noundef %i.fo) #48
  br label %_ZN16RelationListDataD2Ev.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.n
  %i.fp = phi ptr [ %i.fx, %bb.n ], [ %i.fj, %bb.k ] ; 2 uses
  %i.fq = phi ptr [ %i.fy, %bb.n ], [ %i.fi, %bb.k ]
  %.05.i.i.i.i.i = phi i64 [ %i.fz, %bb.n ], [ 0, %bb.k ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.05.i.i.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1736 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.fs) #47, !inline_history !3775
  %.pre.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !1731
  %.pre9.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !1734
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.fx = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %.pre9.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.fy = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.m ] ; 2 uses
  %i.fz = add nuw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1739

_ZN16RelationListDataD2Ev.exit.i.i.i.i:           ; preds = %bb.l, %._crit_edge.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #48
  br label %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit

_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionED2Ev.exit: ; preds = %_ZN19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEaSEOS3_.exit, %_ZN16RelationListDataD2Ev.exit.i.i.i.i
  %i.gf = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !715 ; 2 uses
  %i.gh = load ptr, ptr %i.c, align 8, !tbaa !713 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 12
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = icmp slt i32 %i.gf, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !3776
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18RefCountedBlockPtrI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionELb0E18RefBlockControllerIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 11 uses
  store i32 0, ptr %i.a, align 4, !tbaa !837
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not.i.i = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  br i1 %.not.i.i, label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext.i.i = mul i64 %1, 206158430208
  %i.c = ashr exact i64 %sext.i.i, 32             ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #45 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %1, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  %i.f = udiv i64 %i.c, 48
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.f
  br label %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit

_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit: ; preds = %bb.a, %bb.b
  %.021.i.i = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  %.020.i.i = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  %.019.i.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEE13deleteStorageEv(ptr noundef nonnull align 8 dereferenceable(33) %i.a)
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !3766
  store ptr %.020.i.i, ptr %i.j, align 8, !tbaa !3770
  store ptr %.019.i.i, ptr %i.i, align 8, !tbaa !3769
  store i8 1, ptr %i.h, align 8, !tbaa !3777
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2236 ; 7 uses
  %.not.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i, label %_ZN13RefCountedPtrI18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEEaSEPS6_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN18RefBlockControllerI19FieldEngineBaseDataILi3E4ZeroIdE16ConstantFunctionEEC2EmRKNS5_9NoInitTagE.exit
  %.not4.i = icmp eq ptr %i.l, null
  br i1 %.not4.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_2
