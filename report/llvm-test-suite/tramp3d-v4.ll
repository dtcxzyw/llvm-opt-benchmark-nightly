inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN18CanonicalCenteringILi3EED2Ev:bb.a

_ZN9CenteringILi3EED2Ev.exit.1:                   ; preds = %bb.i, %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i.1
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
  %xtraiter39 = and i32 %i.d, 3                   ; 3 uses
  %i.j = icmp ult i32 %i.d, 4
  %unroll_iter44 = and i32 %i.d, 2147483644
  %lcmp.mod40.not = icmp eq i32 %xtraiter39, 0
  %lcmp.mod43 = icmp ne i32 %xtraiter39, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %7
  %.01722.us = phi i32 [ %8, %7 ], [ 0, %.preheader.us.preheader ] ; 8 uses
  %.01821.us = phi i64 [ %.2.us, %7 ], [ 0, %.preheader.us.preheader ]
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
  %niter45.next.3 = add nuw nsw i32 %niter45, 4   ; 2 uses
  %niter45.ncmp.3 = icmp eq i32 %niter45.next.3, %unroll_iter44
  br i1 %niter45.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !793

2:                                                ; preds = %._crit_edge.us
  %3 = add i64 %indvars.iv.lcssa, 2
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.lcssa
  %5 = load ptr, ptr %4, align 8, !tbaa !791
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.01722.us, ptr %6, align 4, !tbaa !4
  br label %7

7:                                                ; preds = %2, %._crit_edge.us
  %.2.us = phi i64 [ %3, %2 ], [ %indvars.iv.next.lcssa, %._crit_edge.us ]
  %8 = add nuw nsw i32 %.01722.us, 1              ; 2 uses
  %exitcond27.not = icmp eq i32 %8, %i.a
  br i1 %exitcond27.not, label %._crit_edge23, label %.preheader.us, !llvm.loop !794

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod40.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ %i.k, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !791
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 %.01722.us, ptr %i.ab, align 4, !tbaa !4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter39
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !795

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.epil, %bb.b ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %i.ac = icmp slt i32 %.01722.us, %i.e
  br i1 %i.ac, label %2, label %7

.preheader:                                       ; preds = %bb.l, %.preheader.preheader.new
  %.01722 = phi i32 [ 0, %.preheader.preheader.new ], [ %i.bs, %bb.l ] ; 4 uses
  %.01821 = phi i32 [ 0, %.preheader.preheader.new ], [ %.2.1, %bb.l ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.ad = icmp slt i32 %.01722, %i.e
  br i1 %i.ad, label %bb.j, label %.preheader.1

._crit_edge23.loopexit37.unr-lcssa:               ; preds = %bb.l
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge23, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge23.loopexit37.unr-lcssa, %.preheader.preheader
  %.01722.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %i.bs, %._crit_edge23.loopexit37.unr-lcssa ] ; 2 uses
  %.01821.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.2.1, %._crit_edge23.loopexit37.unr-lcssa ]
  %lcmp.mod38 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ae = icmp slt i32 %.01722.epil.init, %i.e
  br i1 %i.ae, label %bb.c, label %._crit_edge23

bb.c:                                             ; preds = %.preheader.epil.preheader
  %i.af = sext i32 %.01821.epil.init to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !791
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %.01722.epil.init, ptr %i.ai, align 4, !tbaa !4
  br label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge23.loopexit37.unr-lcssa, %bb.c, %.preheader.epil.preheader, %7, %bb.a
  %i.aj = load ptr, ptr %1, align 8, !tbaa !796   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !796 ; 3 uses
  %.not17.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not17.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge23
  %i.am = load i32, ptr @_ZN5Pooma11myContext_gE, align 4, !tbaa !4 ; 2 uses
  br label %bb.d

.preheader.i:                                     ; preds = %bb.f
  %i.an = sitofp i32 %.1.i to double
  br label %bb.g

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.019.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 3 uses
  %.sroa.07.018.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.au, %bb.f ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.07.018.i, align 8, !tbaa !791 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = icmp eq i32 %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %.019.i, ptr %i.as, align 4, !tbaa !4
  %i.at = add nsw i32 %.019.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.at, %bb.e ], [ %.019.i, %bb.d ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.al
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !798

bb.g:                                             ; preds = %bb.i, %.preheader.i
  %.sroa.07.121.i = phi ptr [ %i.aj, %.preheader.i ], [ %i.bf, %bb.i ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.07.121.i, align 8, !tbaa !791 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp eq i32 %i.ax, %i.am
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fdiv double %i.bb, %i.an
  %i.bd = fptosi double %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.121.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.bf, %i.al
  br i1 %.not16.i, label %_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit, label %bb.g, !llvm.loop !799

_ZNK13ContextMapperILi1EE11setAffinityERKSt6vectorIP4NodeI8IntervalILi1EES4_ESaIS6_EE.exit: ; preds = %bb.i, %._crit_edge23
  ret void

bb.j:                                             ; preds = %.preheader
  %i.bg = add nsw i32 %.01821, 1
  %i.bh = sext i32 %.01821 to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !791
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %.01722, ptr %i.bk, align 4, !tbaa !4
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader, %bb.j
  %.2 = phi i32 [ %i.bg, %bb.j ], [ %.01821, %.preheader ] ; 3 uses
  %i.bl = or disjoint i32 %.01722, 1              ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.e
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.1
  %i.bn = add nsw i32 %.2, 1
  %i.bo = sext i32 %.2 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !791
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i32 %i.bl, ptr %i.br, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.1
  %.2.1 = phi i32 [ %i.bn, %bb.k ], [ %.2, %.preheader.1 ] ; 2 uses
  %i.bs = add nuw nsw i32 %.01722, 2              ; 2 uses
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.b, align 1, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 1, ptr %i.c, align 2, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull @.str.44, i64 noundef 0) #47 ; 0 uses
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
define dso_local void @_ZN5Pooma7OptionsC2ERiPPc(ptr noundef nonnull align 8 dereferenceable(54) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !17
  store i8 0, ptr %i.c, align 8, !tbaa !16
  store i32 1, ptr %0, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 1, ptr %i.f, align 1, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 1, ptr %i.g, align 2, !tbaa !38
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.44, i64 noundef 0) #47 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.j, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.l, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 0, ptr %i.m, align 1, !tbaa !43
  call void @_ZN5Pooma7Options5parseERiRPPc(ptr noundef nonnull align 8 dereferenceable(54) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Pooma7Options5parseERiRPPc(ptr noundef nonnull align 8 dereferenceable(54) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 39 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !4      ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.ar, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #45 ; 10 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = load ptr, ptr %2, align 8, !tbaa !31
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !186
  store ptr %i.i, ptr %i.f, align 8, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.038115 = phi i32 [ 1, %.lr.ph ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 21 uses
  %.039111 = phi i32 [ 1, %.lr.ph ], [ %.1408897, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.x = load ptr, ptr %2, align 8, !tbaa !31
  %i.y = sext i32 %.038115 to i64                 ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !186 ; 4 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.195) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !12
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #47 ; 2 uses
  store ptr %i.ae, ptr %3, align 8, !tbaa !14
  %i.af = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.af, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !16
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  store i64 %i.ai, ptr %i.k, align 8, !tbaa !17
  %i.aj = load ptr, ptr %3, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.al = load i64, ptr %i.k, align 8, !tbaa !17  ; 8 uses
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79 [
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
    i64 29, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57
    i64 27, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %i.am = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 3270015129826110765
  %i.ap = getelementptr i8, ptr %i.am, i64 7
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = xor i64 %i.aq, 8314877900371817517
  %i.as = or i64 %i.ao, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
end_hunk_0
