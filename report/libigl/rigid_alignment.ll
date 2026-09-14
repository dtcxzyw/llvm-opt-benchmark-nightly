Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdS3_Lb0ELi0EE3runEllRKS3_S6_Pdld:bb.a
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !21
  %i.hz = tail call double @llvm.fmuladd.f64(double %6, double %i.ih, double %i.hy)
  store double %i.hz, ptr %i.hx, align 8, !tbaa !21
  %i.ia = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ia, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !1351

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.ii, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.ih, %bb.l ]
  %i.ib = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.ic = getelementptr [8 x i8], ptr %i.hw, i64 %i.ib
  %i.id = getelementptr [8 x i8], ptr %i.hv, i64 %.0457
  %i.ie = load double, ptr %i.ic, align 8, !tbaa !21
  %i.if = load double, ptr %i.id, align 8, !tbaa !21
  %i.ig = fmul double %i.ie, %i.if
  %i.ih = fadd double %.0181456, %i.ig            ; 2 uses
  %i.ii = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %.sroa.speculated
  br i1 %i.ij, label %bb.l, label %._crit_edge459, !llvm.loop !1352
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !19     ; 6 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, %i.b
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %i.j = icmp sgt i64 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %.preheader78
  %i.k = load ptr, ptr %1, align 8, !tbaa !105    ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.b, 4
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118  ; 4 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.n) ; 6 uses
  %i.p = icmp eq ptr %calloc, null
  br i1 %i.p, label %.noexc.i, label %.preheader.preheader

.noexc.i:                                         ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.preheader.preheader:                             ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  br label %.preheader

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.s = icmp slt i64 %i.z, %i.n
  br i1 %i.s, label %.preheader.backedge, label %.critedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %.182 = phi i64 [ 0, %.preheader.preheader ], [ %.182.be, %.preheader.backedge ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %calloc, i64 %.182
  %i.u = load i8, ptr %i.t, align 1, !tbaa !1357, !range !88, !noundef !89
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = add nsw i64 %.182, 1                     ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.n
  br i1 %i.x, label %.preheader.backedge, label %.critedge

.preheader.backedge:                              ; preds = %bb.d, %.loopexit
  %.182.be = phi i64 [ %i.w, %bb.d ], [ %i.z, %.loopexit ]
  br label %.preheader, !llvm.loop !1353

bb.e:                                             ; preds = %.preheader
  %i.y = getelementptr inbounds i8, ptr %calloc, i64 %.182
  %i.z = add nsw i64 %.182, 1                     ; 2 uses
  store i8 1, ptr %i.y, align 1, !tbaa !1357
  %.037.in.in83 = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.182
  %.037.in84 = load i32, ptr %.037.in.in83, align 4, !tbaa !63
  %.03785 = sext i32 %.037.in84 to i64            ; 2 uses
  %.not4486 = icmp eq i64 %.182, %.03785
  br i1 %.not4486, label %.loopexit, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.182 ; 2 uses
  %.pre = load double, ptr %i.aa, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph88, %bb.f
  %i.ab = phi double [ %.pre, %.lr.ph88 ], [ %i.ad, %bb.f ]
  %.03787 = phi i64 [ %.03785, %.lr.ph88 ], [ %.037, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.03787 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !21 ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !tbaa !21
  store double %i.ad, ptr %i.aa, align 8, !tbaa !21
  %i.ae = getelementptr inbounds i8, ptr %calloc, i64 %.03787
  store i8 1, ptr %i.ae, align 1, !tbaa !1357
  %.037.in.in = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.03787
  %.037.in = load i32, ptr %.037.in.in, align 4, !tbaa !63
  %.037 = sext i32 %.037.in to i64                ; 2 uses
  %.not44 = icmp eq i64 %.182, %.037
  br i1 %.not44, label %.loopexit, label %bb.f, !llvm.loop !1354

.critedge:                                        ; preds = %.loopexit, %bb.d, %bb.b
  %.sroa.068.07699 = phi ptr [ null, %bb.b ], [ %calloc, %bb.d ], [ %calloc, %.loopexit ]
  tail call void @free(ptr noundef %.sroa.068.07699) #24
  br label %.loopexit79

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.081 = phi i64 [ 0, %.lr.ph.new ], [ %i.bg, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.081
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !63
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ai
  %i.ak = load double, ptr %i.af, align 8, !tbaa !21
  store double %i.ak, ptr %i.aj, align 8, !tbaa !21
  %i.al = or disjoint i64 %.081, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load double, ptr %i.am, align 8, !tbaa !21
  store double %i.ar, ptr %i.aq, align 8, !tbaa !21
  %i.as = or disjoint i64 %.081, 2                ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !63
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load double, ptr %i.at, align 8, !tbaa !21
  store double %i.ay, ptr %i.ax, align 8, !tbaa !21
  %i.az = or disjoint i64 %.081, 3                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !21
  store double %i.bf, ptr %i.be, align 8, !tbaa !21
  %i.bg = add nuw nsw i64 %.081, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit79.loopexit.unr-lcssa, label %bb.g, !llvm.loop !1355

.loopexit79.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit79, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit79.loopexit.unr-lcssa, %.lr.ph
  %.081.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bg, %.loopexit79.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.081.epil = phi i64 [ %.081.epil.init, %.epil.preheader ], [ %i.bn, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.081.epil
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.081.epil
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bk
  %i.bm = load double, ptr %i.bh, align 8, !tbaa !21
  store double %i.bm, ptr %i.bl, align 8, !tbaa !21
  %i.bn = add nuw nsw i64 %.081.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit79, label %bb.h, !llvm.loop !1356

.loopexit79:                                      ; preds = %.loopexit79.loopexit.unr-lcssa, %bb.h, %.preheader78, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN5Eigen8internal16stable_norm_implINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENT_10RealScalarERKS6_PNS0_9enable_ifIXsrS6_21IsVectorAtCompileTimeEvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load ptr, ptr %0, align 8                ; 16 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.e)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = and i64 %i.g, 7
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = lshr exact i64 %i.g, 3
  %i.j = and i64 %i.i, 1
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.b, %bb.c ] ; 14 uses
  %i.l = icmp sgt i64 %.0.i.i.i.i.i, 0
  br i1 %i.l, label %bb.e, label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

bb.e:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i
  %i.m = and i64 %.0.i.i.i.i.i, 9223372036854775804 ; 6 uses
  %i.n = and i64 %.0.i.i.i.i.i, 9223372036854775806 ; 6 uses
  %.not.i.i.i.i.i6 = icmp eq i64 %.0.i.i.i.i.i, 1 ; 2 uses
  br i1 %.not.i.i.i.i.i6, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load <2 x double>, ptr %i.d, align 1     ; 2 uses
  %i.p = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.o) ; 3 uses
  %i.q = icmp samesign ugt i64 %.0.i.i.i.i.i, 3
  %i.r = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !30
  %i.u = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.t) ; 2 uses
  %i.v = icmp samesign ugt i64 %.0.i.i.i.i.i, 7
  br i1 %i.v, label %.lr.ph.i.i.i.i.i35, label %._crit_edge.i.i.i.i.i32

._crit_edge.i.i.i.i.i32:                          ; preds = %.lr.ph.i.i.i.i.i35, %bb.g
  %.075.lcssa.i.i.i.i.i33 = phi <2 x double> [ %i.u, %bb.g ], [ %i.ag, %.lr.ph.i.i.i.i.i35 ]
  %.072.lcssa.i.i.i.i.i34 = phi <2 x double> [ %i.p, %bb.g ], [ %i.ab, %.lr.ph.i.i.i.i.i35 ]
  %i.w = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i.i34, <2 x double> %.075.lcssa.i.i.i.i.i33) #29, !srcloc !165 ; 2 uses
  %i.x = icmp samesign ugt i64 %i.n, %i.m
  br i1 %i.x, label %bb.h, label %bb.i

.lr.ph.i.i.i.i.i35:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i35
  %.05480.i.i.i.i.i36 = phi i64 [ %.054.i.i.i.i.i40, %.lr.ph.i.i.i.i.i35 ], [ 4, %bb.g ] ; 3 uses
  %.054.in79.i.i.i.i.i37 = phi i64 [ %.05480.i.i.i.i.i36, %.lr.ph.i.i.i.i.i35 ], [ 0, %bb.g ]
  %.07278.i.i.i.i.i38 = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i.i35 ], [ %i.p, %bb.g ]
  %.07577.i.i.i.i.i39 = phi <2 x double> [ %i.ag, %.lr.ph.i.i.i.i.i35 ], [ %i.u, %bb.g ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.05480.i.i.i.i.i36
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !30
  %i.aa = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.z)
  %i.ab = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i.i38, <2 x double> %i.aa) #29, !srcloc !165 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i.i37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !30
  %i.af = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ae)
  %i.ag = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i.i39, <2 x double> %i.af) #29, !srcloc !165 ; 2 uses
  %.054.i.i.i.i.i40 = add nuw nsw i64 %.05480.i.i.i.i.i36, 4 ; 2 uses
  %i.ah = icmp samesign ult i64 %.054.i.i.i.i.i40, %i.m
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i35, label %._crit_edge.i.i.i.i.i32, !llvm.loop !1358

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i32
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.aj = load <2 x double>, ptr %i.ai, align 1, !tbaa !30
  %i.ak = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.al = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.w, <2 x double> %i.ak) #29, !srcloc !165
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i32, %bb.f
  %.274.i.i.i.i.i7 = phi <2 x double> [ %i.p, %bb.f ], [ %i.al, %bb.h ], [ %i.w, %._crit_edge.i.i.i.i.i32 ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i8 = extractelement <2 x double> %.274.i.i.i.i.i7, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i9 = extractelement <2 x double> %.274.i.i.i.i.i7, i64 1 ; 2 uses
  %i.am = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i8, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i9
  %i.an = select i1 %i.am, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i9, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i8 ; 2 uses
  %.not = icmp eq i64 %i.n, %.0.i.i.i.i.i
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i, label %.lr.ph85.i.i.i.i.i28

.lr.ph85.i.i.i.i.i28:                             ; preds = %bb.i, %.lr.ph85.i.i.i.i.i28
  %.05283.i.i.i.i.i29 = phi i64 [ %i.at, %.lr.ph85.i.i.i.i.i28 ], [ %i.n, %bb.i ] ; 2 uses
  %.182.i.i.i.i.i30 = phi double [ %i.as, %.lr.ph85.i.i.i.i.i28 ], [ %i.an, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i29
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !21
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap) ; 2 uses
  %i.ar = fcmp olt double %.182.i.i.i.i.i30, %i.aq
  %i.as = select i1 %i.ar, double %i.aq, double %.182.i.i.i.i.i30 ; 2 uses
  %i.at = add nuw nsw i64 %.05283.i.i.i.i.i29, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i31 = icmp eq i64 %i.at, %.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i31, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i, label %.lr.ph85.i.i.i.i.i28, !llvm.loop !1359

bb.j:                                             ; preds = %bb.e
  %i.au = load double, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.au)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i28, %bb.j, %bb.i
  %i.aw = phi double [ %i.r, %bb.i ], [ %i.au, %bb.j ], [ %i.r, %.lr.ph85.i.i.i.i.i28 ]
  %.3.i.i.i.i.i10 = phi double [ %i.an, %bb.i ], [ %i.av, %bb.j ], [ %i.as, %.lr.ph85.i.i.i.i.i28 ] ; 7 uses
  %i.ax = fcmp ogt double %.3.i.i.i.i.i10, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i
  %i.ay = fdiv double 1.000000e+00, %.3.i.i.i.i.i10 ; 2 uses
  %i.az = fcmp ogt double %i.ay, f0x7FEFFFFFFFFFFFFF
  br i1 %i.az, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = fcmp ogt double %.3.i.i.i.i.i10, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ba, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.o

bb.n:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEE8maxCoeffEv.exit.i
  %i.bb = fcmp uno double %.3.i.i.i.i.i10, 0.000000e+00
  br i1 %i.bb, label %bb.o, label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.m
  %.464 = phi double [ %.3.i.i.i.i.i10, %bb.l ], [ f0x0004000000000000, %bb.k ], [ %.3.i.i.i.i.i10, %bb.m ], [ %.3.i.i.i.i.i10, %bb.n ] ; 3 uses
  %.359 = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.k ], [ %i.ay, %bb.m ], [ 1.000000e+00, %bb.n ] ; 5 uses
  %i.bc = fcmp ogt double %.464, 0.000000e+00
  br i1 %i.bc, label %bb.p, label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i6, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6.40.vec.insert.i.i.i.i11 = insertelement <2 x double> poison, double %.359, i64 0
  %i.bd = load <2 x double>, ptr %i.d, align 1, !tbaa !30
  %i.be = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i11, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bf = fmul <2 x double> %i.be, %i.bd          ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf          ; 3 uses
  %i.bh = icmp samesign ugt i64 %.0.i.i.i.i.i, 3
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !30
  %i.bk = fmul <2 x double> %i.be, %i.bj          ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, %i.bk          ; 2 uses
  %i.bm = icmp samesign ugt i64 %.0.i.i.i.i.i, 7
  br i1 %i.bm, label %.lr.ph.i.i.i.i39.i21, label %._crit_edge.i.i.i.i36.i18

._crit_edge.i.i.i.i36.i18:                        ; preds = %.lr.ph.i.i.i.i39.i21, %bb.r
  %.075.lcssa.i.i.i.i37.i19 = phi <2 x double> [ %i.bl, %bb.r ], [ %i.bz, %.lr.ph.i.i.i.i39.i21 ]
  %.072.lcssa.i.i.i.i38.i20 = phi <2 x double> [ %i.bg, %bb.r ], [ %i.bt, %.lr.ph.i.i.i.i39.i21 ]
  %i.bn = fadd <2 x double> %.075.lcssa.i.i.i.i37.i19, %.072.lcssa.i.i.i.i38.i20 ; 2 uses
  %i.bo = icmp samesign ugt i64 %i.n, %i.m
  br i1 %i.bo, label %bb.s, label %bb.t

.lr.ph.i.i.i.i39.i21:                             ; preds = %bb.r, %.lr.ph.i.i.i.i39.i21
  %.05480.i.i.i.i40.i22 = phi i64 [ %.054.i.i.i.i44.i26.a, %.lr.ph.i.i.i.i39.i21 ], [ 4, %bb.r ] ; 3 uses
  %.054.in79.i.i.i.i41.i23 = phi i64 [ %.05480.i.i.i.i40.i22, %.lr.ph.i.i.i.i39.i21 ], [ 0, %bb.r ]
  %.07278.i.i.i.i42.i24 = phi <2 x double> [ %i.bt, %.lr.ph.i.i.i.i39.i21 ], [ %i.bg, %bb.r ]
  %.07577.i.i.i.i43.i25 = phi <2 x double> [ %i.bz, %.lr.ph.i.i.i.i39.i21 ], [ %i.bl, %bb.r ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.05480.i.i.i.i40.i22
  %i.bq = load <2 x double>, ptr %i.bp, align 1, !tbaa !30
  %i.br = fmul <2 x double> %i.be, %i.bq          ; 2 uses
  %i.bs = fmul <2 x double> %i.br, %i.br
  %i.bt = fadd <2 x double> %.07278.i.i.i.i42.i24, %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i41.i23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load <2 x double>, ptr %i.bv, align 1, !tbaa !30
  %i.bx = fmul <2 x double> %i.be, %i.bw          ; 2 uses
  %i.by = fmul <2 x double> %i.bx, %i.bx
  %i.bz = fadd <2 x double> %.07577.i.i.i.i43.i25, %i.by ; 2 uses
  %.054.i.i.i.i44.i26.a = add nuw nsw i64 %.05480.i.i.i.i40.i22, 4 ; 2 uses
  %2 = icmp samesign ult i64 %.054.i.i.i.i44.i26.a, %i.m
  br i1 %2, label %.lr.ph.i.i.i.i39.i21, label %._crit_edge.i.i.i.i36.i18, !llvm.loop !1360

bb.s:                                             ; preds = %._crit_edge.i.i.i.i36.i18
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.cb = load <2 x double>, ptr %i.ca, align 1, !tbaa !30
  %i.cc = fmul <2 x double> %i.be, %i.cb          ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.cc
  %i.ce = fadd <2 x double> %i.bn, %i.cd
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i36.i18, %bb.q
  %.274.i.i.i.i31.i12 = phi <2 x double> [ %i.bg, %bb.q ], [ %i.ce, %bb.s ], [ %i.bn, %._crit_edge.i.i.i.i36.i18 ]
  %i.cf = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i31.i12) ; 2 uses
  %.not70 = icmp eq i64 %i.n, %.0.i.i.i.i.i
  br i1 %.not70, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i, label %.lr.ph85.i.i.i.i32.i14

.lr.ph85.i.i.i.i32.i14:                           ; preds = %bb.t, %.lr.ph85.i.i.i.i32.i14
  %.05283.i.i.i.i33.i15 = phi i64 [ %i.cl, %.lr.ph85.i.i.i.i32.i14 ], [ %i.n, %bb.t ] ; 2 uses
  %.182.i.i.i.i34.i16 = phi double [ %i.ck, %.lr.ph85.i.i.i.i32.i14 ], [ %i.cf, %bb.t ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i33.i15
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !21
  %i.ci = fmul double %.359, %i.ch                ; 2 uses
  %i.cj = fmul double %i.ci, %i.ci
  %i.ck = fadd double %.182.i.i.i.i34.i16, %i.cj  ; 2 uses
  %i.cl = add nuw nsw i64 %.05283.i.i.i.i33.i15, 1 ; 2 uses
  %exitcond.not.i.i.i.i35.i17 = icmp eq i64 %i.cl, %.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i35.i17, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i, label %.lr.ph85.i.i.i.i32.i14, !llvm.loop !1361

bb.u:                                             ; preds = %bb.p
  %i.cm = fmul double %.359, %i.aw                ; 2 uses
  %i.cn = fmul double %i.cm, %i.cm
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i: ; preds = %.lr.ph85.i.i.i.i32.i14, %bb.u, %bb.t
  %.0.i.i.i13 = phi double [ %i.cn, %bb.u ], [ %i.cf, %bb.t ], [ %i.ck, %.lr.ph85.i.i.i.i32.i14 ]
  %i.co = fadd double %.0.i.i.i13, 0.000000e+00
  br label %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit

_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i, %bb.o, %bb.n, %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i
  %.060 = phi double [ 0.000000e+00, %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i ], [ %.464, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i ], [ %.464, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %.056 = phi double [ 1.000000e+00, %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i ], [ %.359, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i ], [ %.359, %bb.o ], [ 1.000000e+00, %bb.n ]
  %.055 = phi double [ 0.000000e+00, %_ZN5Eigen8internalL21first_default_alignedINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEElRKNS_9DenseBaseIT_EE.exit.i ], [ %i.co, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_5BlockIKNS5_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEEKS7_EEEEE11squaredNormEv.exit.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.cp = icmp slt i64 %.0.i.i.i.i.i, %i.b
  br i1 %i.cp, label %.lr.ph.i, label %_ZN5Eigen8internal27stable_norm_impl_inner_stepINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEdEEvRKT_RT0_SA_SA_.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit, %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit
  %.161 = phi double [ %.363, %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit ], [ %.060, %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit ] ; 3 uses
  %.157 = phi double [ %.258, %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit ], [ %.056, %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit ] ; 2 uses
  %.1 = phi double [ %.4, %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit ], [ %.055, %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit ] ; 3 uses
  %.039.i = phi i64 [ %i.hr, %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit ], [ %.0.i.i.i.i.i, %_ZN5Eigen8internal18stable_norm_kernelINS_11VectorBlockIKNS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1EEEdEEvRKT_RT0_SD_SD_.exit ] ; 3 uses
  %i.cq = sub nsw i64 %i.b, %.039.i               ; 5 uses
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 4096) ; 11 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.039.i ; 19 uses
  %i.cs = sdiv i64 %.sroa.speculated.i, 4
  %i.ct = shl nsw i64 %i.cs, 2                    ; 6 uses
  %i.cu = sdiv i64 %.sroa.speculated.i, 2
  %i.cv = shl nsw i64 %i.cu, 1                    ; 12 uses
  %.off.i.i.i.i.i = add nsw i64 %.sroa.speculated.i, 1
  %.not.i.i.i.i.i4 = icmp ult i64 %.off.i.i.i.i.i, 3 ; 2 uses
  br i1 %.not.i.i.i.i.i4, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cw = load <2 x double>, ptr %i.cr, align 1   ; 2 uses
  %i.cx = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cw) ; 3 uses
  %i.cy = icmp sgt i64 %i.cq, 3
  %i.cz = extractelement <2 x double> %i.cw, i64 0 ; 3 uses
  br i1 %i.cy, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.db = load <2 x double>, ptr %i.da, align 1, !tbaa !30
  %i.dc = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.db) ; 2 uses
  %i.dd = icmp samesign ugt i64 %i.cq, 7
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.w
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.w ], [ %i.do, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.cx, %bb.w ], [ %i.dj, %.lr.ph.i.i.i.i.i ]
  %i.de = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.072.lcssa.i.i.i.i.i, <2 x double> %.075.lcssa.i.i.i.i.i) #29, !srcloc !165 ; 2 uses
  %i.df = icmp sgt i64 %i.cv, %i.ct
  br i1 %i.df, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.w ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.w ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.cx, %bb.w ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.do, %.lr.ph.i.i.i.i.i ], [ %i.dc, %bb.w ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.05480.i.i.i.i.i
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !30
  %i.di = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dh)
  %i.dj = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07278.i.i.i.i.i, <2 x double> %i.di) #29, !srcloc !165 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.054.in79.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dm = load <2 x double>, ptr %i.dl, align 1, !tbaa !30
  %i.dn = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dm)
  %i.do = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.07577.i.i.i.i.i, <2 x double> %i.dn) #29, !srcloc !165 ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.dp = icmp slt i64 %.054.i.i.i.i.i, %i.ct
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1362

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.dr = load <2 x double>, ptr %i.dq, align 1, !tbaa !30
  %i.ds = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr)
  %i.dt = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.de, <2 x double> %i.ds) #29, !srcloc !165
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i, %bb.v
  %.274.i.i.i.i.i = phi <2 x double> [ %i.cx, %bb.v ], [ %i.dt, %bb.x ], [ %i.de, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i.i, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i = extractelement <2 x double> %.274.i.i.i.i.i, i64 1 ; 2 uses
  %i.du = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i
  %i.dv = select i1 %i.du, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i ; 4 uses
  %i.dw = icmp slt i64 %i.cv, %.sroa.speculated.i
  br i1 %i.dw, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.y
  %.neg = or disjoint i64 %i.cv, 1
  %xtraiter = and i64 %.sroa.speculated.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cv
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !21
  %i.dz = tail call noundef double @llvm.fabs.f64(double %i.dy) ; 2 uses
  %i.ea = fcmp olt double %i.dv, %i.dz
  %i.eb = select i1 %i.ea, double %i.dz, double %i.dv ; 2 uses
  %i.ec = or disjoint i64 %i.cv, 1
  br label %.lr.ph85.i.i.i.i.i.prol.loopexit

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa132.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.eb, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.cv, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ec, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.dv, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.eb, %.lr.ph85.i.i.i.i.i.prol ]
  %i.ed = icmp eq i64 %.sroa.speculated.i, %.neg
  br i1 %i.ed, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.ep, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.182.i.i.i.i.i = phi double [ %i.eo, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.05283.i.i.i.i.i
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !21
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef) ; 2 uses
  %i.eh = fcmp olt double %.182.i.i.i.i.i, %i.eg
  %i.ei = select i1 %i.eh, double %i.eg, double %.182.i.i.i.i.i ; 2 uses
  %i.ej = getelementptr [8 x i8], ptr %i.cr, i64 %.05283.i.i.i.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !21
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.el) ; 2 uses
  %i.en = fcmp olt double %i.ei, %i.em
  %i.eo = select i1 %i.en, double %i.em, double %i.ei ; 2 uses
  %i.ep = add nsw i64 %.05283.i.i.i.i.i, 2        ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ep, %.sroa.speculated.i
  br i1 %exitcond.not.i.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !1363

bb.z:                                             ; preds = %.lr.ph.i
  %i.eq = load double, ptr %i.cr, align 8, !tbaa !21 ; 2 uses
  %i.er = tail call noundef double @llvm.fabs.f64(double %i.eq)
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.z, %bb.y
  %i.es = phi double [ %i.cz, %bb.y ], [ %i.eq, %bb.z ], [ %i.cz, %.lr.ph85.i.i.i.i.i ], [ %i.cz, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %.3.i.i.i.i.i = phi double [ %i.dv, %bb.y ], [ %i.er, %bb.z ], [ %.lcssa132.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.eo, %.lr.ph85.i.i.i.i.i ] ; 8 uses
  %i.et = fcmp ogt double %.3.i.i.i.i.i, %.161
  br i1 %i.et, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i
  %i.eu = fdiv double %.161, %.3.i.i.i.i.i        ; 2 uses
  %i.ev = fmul double %i.eu, %i.eu
  %i.ew = fmul double %.1, %i.ev                  ; 3 uses
  %i.ex = fdiv double 1.000000e+00, %.3.i.i.i.i.i ; 2 uses
  %i.ey = fcmp ogt double %i.ex, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ey, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = fcmp ogt double %.3.i.i.i.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ez, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br label %bb.af

bb.ad:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEEEE8maxCoeffEv.exit.i
  %i.fa = fcmp uno double %.3.i.i.i.i.i, 0.000000e+00
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.aa, %bb.ae, %bb.ad, %bb.ac
  %.363 = phi double [ %.161, %bb.ad ], [ f0x0004000000000000, %bb.aa ], [ %.3.i.i.i.i.i, %bb.ac ], [ %.3.i.i.i.i.i, %bb.ae ], [ %.3.i.i.i.i.i, %bb.ab ] ; 3 uses
  %.258 = phi double [ %.157, %bb.ad ], [ f0x7FEFFFFFFFFFFFFF, %bb.aa ], [ %i.ex, %bb.ac ], [ %.157, %bb.ae ], [ 1.000000e+00, %bb.ab ] ; 8 uses
  %.3 = phi double [ %.1, %bb.ad ], [ %i.ew, %bb.aa ], [ %i.ew, %bb.ac ], [ %.1, %bb.ae ], [ %i.ew, %bb.ab ] ; 2 uses
  %i.fb = fcmp ogt double %.363, 0.000000e+00
  br i1 %i.fb, label %bb.ag, label %_ZN5Eigen8internal18stable_norm_kernelINS_3RefIKNS_6MatrixIdLin1ELi1ELi0ELi4096ELi1EEELi0ENS_11InnerStrideILi1EEEEEdEEvRKT_RT0_SD_SD_.exit

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i.i.i.i.i4, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.6.40.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %.258, i64 0
end_hunk_0
