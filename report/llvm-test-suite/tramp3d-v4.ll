inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN18CanonicalCenteringILi3EED2Ev:bb.a
  %i.bd = icmp eq ptr %i.ao, %i.ah
  br i1 %i.bd, label %.loopexit33, label %.preheader.1

.loopexit33:                                      ; preds = %_ZN9CenteringILi3EED2Ev.exit.1, %bb.g
  %i.be = add i64 %.idx.1, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.aj, i64 noundef %i.be) #48
  %.pre21 = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw [8 x i8], ptr %.pre21, i64 %indvars.iv
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !308 ; 2 uses
  %i.bf = icmp eq ptr %.pre23, null
  br i1 %i.bf, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.f, %.loopexit33
  %i.bg = phi ptr [ %.pre23, %.loopexit33 ], [ %i.af, %bb.f ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.bg) #48
  %.pre = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303
  br label %bb.j

bb.j:                                             ; preds = %.loopexit33, %.thread
  %i.bh = phi ptr [ %.pre21, %.loopexit33 ], [ %.pre, %.thread ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
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
  %xtraiter40 = and i32 %i.d, 3                   ; 3 uses
  %i.j = icmp ult i32 %i.d, 4
  %unroll_iter45 = and i32 %i.d, 2147483644
  %lcmp.mod41.not = icmp eq i32 %xtraiter40, 0
  %lcmp.mod44 = icmp ne i32 %xtraiter40, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %.01722.us = phi i32 [ %i.o, %bb.c ], [ 0, %.preheader.us.preheader ] ; 8 uses
  %.01821.us = phi i64 [ %.2.us, %bb.c ], [ 0, %.preheader.us.preheader ]
  %sext = shl i64 %.01821.us, 32
  %i.k = ashr exact i64 %sext, 32                 ; 2 uses
  br i1 %i.j, label %.epil.preheader, label %.preheader.us.new

bb.b:                                             ; preds = %._crit_edge.us
  %i.l = add i64 %indvars.iv.lcssa, 2
  %sext35 = shl i64 %indvars.iv.next.lcssa, 32
  %2 = ashr exact i64 %sext35, 29
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  %i.m = load ptr, ptr %3, align 8, !tbaa !791
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 %.01722.us, ptr %i.n, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %.2.us = phi i64 [ %i.l, %bb.b ], [ %indvars.iv.next.lcssa, %._crit_edge.us ]
  %i.o = add nuw nsw i32 %.01722.us, 1            ; 2 uses
  %exitcond27.not = icmp eq i32 %i.o, %i.a
  br i1 %exitcond27.not, label %._crit_edge23, label %.preheader.us, !llvm.loop !793

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ %i.k, %.preheader.us ] ; 5 uses
  %niter46 = phi i32 [ %niter46.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !791
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %.01722.us, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %.01722.us, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !791
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 %.01722.us, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !791
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %.01722.us, ptr %i.ac, align 4, !tbaa !4
  %niter46.next.3 = add i32 %niter46, 4           ; 2 uses
  %niter46.ncmp.3 = icmp eq i32 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !794

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod41.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ %i.k, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !791
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 %.01722.us, ptr %i.af, align 4, !tbaa !4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter40
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.d, !llvm.loop !795

._crit_edge.us:                                   ; preds = %bb.d, %._crit_edge.us.unr-lcssa
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.epil, %bb.d ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %i.ag = icmp slt i32 %.01722.us, %i.e
  br i1 %i.ag, label %bb.b, label %bb.c

.preheader:                                       ; preds = %bb.n, %.preheader.preheader.new
  %.01722 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bw, %bb.n ] ; 4 uses
  %.01821 = phi i32 [ 0, %.preheader.preheader.new ], [ %.2.1, %bb.n ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.ah = icmp slt i32 %.01722, %i.e
  br i1 %i.ah, label %bb.l, label %.preheader.1

._crit_edge23.loopexit38.unr-lcssa:               ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge23, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge23.loopexit38.unr-lcssa, %.preheader.preheader
  %.01722.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bw, %._crit_edge23.loopexit38.unr-lcssa ] ; 2 uses
  %.01821.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.2.1, %._crit_edge23.loopexit38.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.ai = icmp slt i32 %.01722.epil.init, %i.e
  br i1 %i.ai, label %bb.e, label %._crit_edge23

bb.e:                                             ; preds = %.preheader.epil.preheader
  %i.aj = sext i32 %.01821.epil.init to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !791
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %.01722.epil.init, ptr %i.am, align 4, !tbaa !4
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit38.unr-lcssa, %bb.e, %.preheader.epil.preheader, %bb.c, %bb.a
  %i.an = load ptr, ptr %1, align 8, !tbaa !796   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !796 ; 3 uses
  %.not17.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not17.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge23
  %i.aq = load i32, ptr @_ZN5Pooma11myContext_gE, align 4, !tbaa !4 ; 2 uses
  br label %bb.f

.preheader.i:                                     ; preds = %bb.h
  %i.ar = sitofp i32 %.1.i to double
  br label %bb.i

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 3 uses
  %.sroa.07.018.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.07.018.i, align 8, !tbaa !791 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.au, %i.aq
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i32 %.019.i, ptr %i.aw, align 4, !tbaa !4
  %i.ax = add nsw i32 %.019.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi i32 [ %i.ax, %bb.g ], [ %.019.i, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i, label %.preheader.i, label %bb.f, !llvm.loop !798

bb.i:                                             ; preds = %bb.k, %.preheader.i
  %.sroa.07.121.i = phi ptr [ %i.an, %.preheader.i ], [ %i.bj, %bb.k ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.07.121.i, align 8, !tbaa !791 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = icmp eq i32 %i.bb, %i.aq
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = sitofp i32 %i.be to double
  %i.bg = fdiv double %i.bf, %i.ar
  %i.bh = fptosi double %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.07.121.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.bj, %i.ap
  br i1 %.not16.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %bb.i, !llvm.loop !799

_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit: ; preds = %bb.k, %._crit_edge23
  ret void

bb.l:                                             ; preds = %.preheader
  %i.bk = add nsw i32 %.01821, 1
  %i.bl = sext i32 %.01821 to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !791
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %.01722, ptr %i.bo, align 4, !tbaa !4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.l
  %.2 = phi i32 [ %i.bk, %bb.l ], [ %.01821, %.preheader ] ; 3 uses
  %i.bp = or disjoint i32 %.01722, 1              ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.e
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.1
  %i.br = add nsw i32 %.2, 1
  %i.bs = sext i32 %.2 to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !791
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 %i.bp, ptr %i.bv, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.1
  %.2.1 = phi i32 [ %i.br, %bb.m ], [ %.2, %.preheader.1 ] ; 2 uses
  %i.bw = add nuw nsw i32 %.01722, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge23.loopexit38.unr-lcssa, label %.preheader, !llvm.loop !793
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
end_hunk_0
