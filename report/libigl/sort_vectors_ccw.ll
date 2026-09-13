Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sort_vectors_ccw?download=true
inline.NumInlined: 7516
inline.NumDeleted: 3939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv:bb.a
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 7 uses
  br i1 %.not.i.i.i.i.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ff = load <2 x double>, ptr %gep, align 8, !tbaa !22 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, %i.ff
  %i.fh = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.fg) ; 3 uses
  br i1 %.not153, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %lcmp.mod168.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ], [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.182.i.i.i.i.i.prol, %i.fk ; 2 uses
  %i.fm = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ch
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !194

.lr.ph85.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ]
  br label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.preheader.new
  %.05283.i.i.i.i.i = phi i64 [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gg, %.lr.ph85.i.i.i.i.i ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !24 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.182.i.i.i.i.i, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24 ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = fadd double %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !24 ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fadd double %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !24 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %i.ga, %i.ge                ; 2 uses
  %i.gg = add nuw nsw i64 %.05283.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gg, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !195

bb.n:                                             ; preds = %bb.l
  %i.gh = load double, ptr %gep, align 8, !tbaa !24 ; 2 uses
  %i.gi = fmul double %i.gh, %i.gh
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i, %bb.m, %bb.n
  %.0.i.i.i = phi double [ %i.gi, %bb.n ], [ %i.fh, %bb.m ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.ez, align 8, !tbaa !24
  br label %.sink.split

bb.o:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.ey)
  %i.gj = fmul double %i.eo, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.gj, %bb.o ]
  store double %.scalar.i90.sink, ptr %i.en, align 8, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.gk = add nuw nsw i64 %.072149, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gk, 3
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !196
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.596", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.492", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.613", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.406", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !24  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !76     ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !19   ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter156 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter159 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter160 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter160.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !24
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !24
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !24
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !24
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !24
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !24
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !24
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter160.next.3 = add nuw nsw i64 %niter160, 4 ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, %unroll_iter159
  br i1 %niter160.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !217

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter161 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter165 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter166 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter166.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !24
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !24
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !24
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !24
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !24
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !24
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !24
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter166.next.3 = add nuw nsw i64 %niter166, 4 ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !218

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !19 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bc = add nsw i64 %i.b, -1                    ; 6 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !76    ; 14 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !250
  %.sroa.038.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bm = sdiv i64 %i.bc, 4
  %i.bn = shl nsw i64 %i.bm, 2                    ; 4 uses
  %i.bo = sdiv i64 %i.bc, 2
  %i.bp = shl nsw i64 %i.bo, 1                    ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.0.0.copyload, i64 16
  %i.br = icmp sgt i64 %i.b, 8
  %i.bs = icmp sgt i64 %i.bp, %i.bn
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.bn
  %i.bu = icmp slt i64 %i.bp, %i.bc               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %i.bv = shl i64 %i.bb, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.bv  ; 2 uses
  %scevgep91 = getelementptr i8, ptr %.sroa.038.sroa.0.0.copyload, i64 8
  %i.bw = mul i64 %i.bb, 24
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bw
  %scevgep92 = getelementptr i8, ptr %i.bx, i64 -8
  %bound0 = icmp ult ptr %3, %scevgep91
  %bound1 = icmp ult ptr %.sroa.038.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %3, %scevgep92
  %bound194 = icmp ult ptr %i.be, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.by = and i64 %i.bb, 3                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 4, i64 %i.by
  %n.vec = sub nsw i64 %i.bb, %i.ca               ; 2 uses
  %i.cb = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !24, !alias.scope !251
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cc = mul nuw nsw i64 %index, 24
  %i.cd = mul nuw i64 %index, 24
  %i.ce = mul nuw i64 %index, 24
  %i.cf = mul nuw i64 %index, 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ce
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cf
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load double, ptr %i.cg, align 8, !tbaa !24, !alias.scope !252
  %i.co = load double, ptr %i.ci, align 8, !tbaa !24, !alias.scope !252
  %i.cp = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = load double, ptr %i.ck, align 8, !tbaa !24, !alias.scope !252
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !24, !alias.scope !252
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cs, i64 1
  %i.cv = fmul <2 x double> %broadcast.splat, %i.cq
  %i.cw = fmul <2 x double> %broadcast.splat, %i.cu
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %i.cv, ptr %i.cx, align 8, !tbaa !24, !alias.scope !253, !noalias !254
  store <2 x double> %i.cw, ptr %i.cy, align 8, !tbaa !24, !alias.scope !253, !noalias !254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129, label %vector.body, !llvm.loop !223

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader
  %.07.us8.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.da = sub i64 %i.bb, %.07.us8.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter142 = and i64 %i.da, 1
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 24
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.prol
  %i.dc = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !24
  %i.dd = load double, ptr %i.db, align 8, !tbaa !24
  %i.de = fmul double %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i.ph
  store double %i.de, ptr %i.df, align 8, !tbaa !24
  %i.dg = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129
  %.07.us8.i.i.i.i.i.i.i.i.unr = phi i64 [ %.07.us8.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.preheader129 ], [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol ]
  %i.dh = icmp eq i64 %i.bb, %.neg
  br i1 %i.dh, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %.07.us8.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i ], [ %.07.us8.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i
  %i.dj = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !24
  %i.dk = load double, ptr %i.di, align 8, !tbaa !24
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us8.i.i.i.i.i.i.i.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !24
  %i.dn = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.dn, 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us9.i.i.i.i.i.i.i.i.1
  %i.dp = load double, ptr %.sroa.038.sroa.0.0.copyload, align 8, !tbaa !24
  %i.dq = load double, ptr %i.do, align 8, !tbaa !24
  %i.dr = fmul double %i.dp, %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dn
  store double %i.dr, ptr %i.ds, align 8, !tbaa !24
  %i.dt = add nuw nsw i64 %.07.us8.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.dt, %i.bb
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, !llvm.loop !224

.lr.ph.split.split.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %9 = icmp sgt i64 %i.b, 4
  br i1 %9, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  %i.du = xor i64 %i.bp, -1
  %i.dv = add i64 %i.b, %i.du
  %i.dw = add nsw i64 %i.b, -2
  %i.dx = sub i64 %i.dw, %i.bp
  %xtraiter139 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  %i.dy = icmp ult i64 %i.dx, 3
  br label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i
  %.07.us12.i.i.i.i.i.i.i.i = phi i64 [ %i.gm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us13.i.i.i.i.i.i.i.i ; 10 uses
  %i.ea = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !22
  %i.eb = load <2 x double>, ptr %i.dz, align 1, !tbaa !22
  %i.ec = fmul <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ed = load <2 x double>, ptr %i.bq, align 1, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ef = load <2 x double>, ptr %i.ee, align 1, !tbaa !22
  %i.eg = fmul <2 x double> %i.ed, %i.ef          ; 2 uses
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 4, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ei = load <2 x double>, ptr %i.eh, align 1, !tbaa !22
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !22
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = fadd <2 x double> %.07278.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.el ; 2 uses
  %i.en = add nuw nsw i64 %.054.in79.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.en
  %i.ep = load <2 x double>, ptr %i.eo, align 1, !tbaa !22
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.en
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !22
  %i.es = fmul <2 x double> %i.ep, %i.er
  %i.et = fadd <2 x double> %.07577.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.es ; 2 uses
  %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.eu = icmp slt i64 %.054.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.bn
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !225

._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.eg, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ec, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i ], [ %i.em, %.lr.ph.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.ev = fadd <2 x double> %.075.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.us.i.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.ew = load <2 x double>, ptr %i.bt, align 1, !tbaa !22
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.bn
  %i.ey = load <2 x double>, ptr %i.ex, align 1, !tbaa !22
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = fadd <2 x double> %i.ev, %i.ez
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ev, %._crit_edge.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %i.fa, %bb.f ]
  %i.fb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.us.i.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader:  ; preds = %bb.g
  br i1 %lcmp.mod140.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol:       ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !24
  %i.fg = fmul double %i.fd, %i.ff
  %i.fh = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %i.fg ; 3 uses
  %i.fi = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, !llvm.loop !226

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader
  %.lcssa132.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fi, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr = phi double [ %i.fb, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.dy, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i = phi double [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !24
  %i.fn = fmul double %i.fk, %i.fm
  %i.fo = fadd double %.182.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %i.fn
  %i.fp = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fp
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fadd double %i.fo, %i.fu
  %i.fw = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !24
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fw
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gb = fmul double %i.fy, %i.ga
  %i.gc = fadd double %i.fv, %i.gb
  %i.gd = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !24
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.gd
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !24
  %i.gi = fmul double %i.gf, %i.gh
  %i.gj = fadd double %i.gc, %i.gi                ; 2 uses
  %i.gk = add nuw nsw i64 %.05283.i.i.i.i.i.us.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !227

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.us15.i.i.i.i.i.i.i.i = phi double [ %i.fb, %bb.g ], [ %.lcssa132.unr, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.gj, %.lr.ph85.i.i.i.i.i.us.i.i.i.i.i.i.i.i ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us12.i.i.i.i.i.i.i.i
  store double %.0.i.i.i.us15.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !tbaa !24
  %i.gm = add nuw nsw i64 %.07.us12.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, %i.bb
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i, !llvm.loop !228

.lr.ph.split.split.split.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.bb, 1
  %i.gn = icmp eq i64 %i.bb, 1
  br i1 %i.gn, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bb, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i
  %i.go = xor i64 %i.bp, -1
  %i.gp = add i64 %i.b, %i.go
  %i.gq = add i64 %i.b, -2
  %i.gr = sub i64 %i.gq, %i.bp
  %xtraiter137 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  %i.gs = icmp ult i64 %i.gr, 3
  br label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i
  %.07.us16.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.us17.i.i.i.i.i.i.i.i ; 6 uses
  %i.gu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !22
  %i.gv = load <2 x double>, ptr %i.gt, align 1, !tbaa !22
  %i.gw = fmul <2 x double> %i.gu, %i.gv
  %i.gx = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gw) ; 2 uses
  br i1 %lcmp.mod138.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol = phi double [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !24
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !24
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.prol, %i.hc ; 3 uses
  %i.he = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter137
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, !llvm.loop !229

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i
  %.lcssa134.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.bp, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.he, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr = phi double [ %i.gx, %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol ]
  br i1 %i.gs, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i = phi i64 [ %i.ig, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i = phi double [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !24
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !24
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %.182.i.i.i.i.i.us21.i.i.i.i.i.i.i.i, %i.hj
  %i.hl = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !24
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hl
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !24
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = fadd double %i.hk, %i.hq
  %i.hs = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !24
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hs
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !24
  %i.hx = fmul double %i.hu, %i.hw
  %i.hy = fadd double %i.hr, %i.hx
  %i.hz = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !24
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hz
  %i.id = load double, ptr %i.ic, align 8, !tbaa !24
  %i.ie = fmul double %i.ib, %i.id
  %i.if = fadd double %i.hy, %i.ie                ; 2 uses
  %i.ig = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ig, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !227

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa134 = phi double [ %.lcssa134.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.if, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa134, ptr %i.ih, align 8, !tbaa !24
  %i.ii = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ii, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !228

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !22
  %i.il = load <2 x double>, ptr %i.ij, align 1, !tbaa !22
  %i.im = fmul <2 x double> %i.ik, %i.il
  %i.in = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.im)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.in, ptr %i.io, align 8, !tbaa !24
  %i.ip = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ip, 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ir = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !22
  %i.is = load <2 x double>, ptr %i.iq, align 1, !tbaa !22
  %i.it = fmul <2 x double> %i.ir, %i.is
  %i.iu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.it)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ip
  store double %i.iu, ptr %i.iv, align 8, !tbaa !24
  %i.iw = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !228

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ix = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.iy = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !22
  %i.iz = load <2 x double>, ptr %i.ix, align 1, !tbaa !22
  %i.ja = fmul <2 x double> %i.iy, %i.iz
  %i.jb = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ja)
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.jb, ptr %i.jc, align 8, !tbaa !24
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit135.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jd = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jd
  %i.je = mul i64 %i.bb, 24
  %i.jf = getelementptr i8, ptr %i.bd, i64 %i.je
  %scevgep98 = getelementptr i8, ptr %i.jf, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jg = and i64 %i.bb, 3                        ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 0
  %i.ji = select i1 %i.jh, i64 4, i64 %i.jg
  %n.vec105 = sub nsw i64 %i.bb, %i.ji            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jk = mul nuw nsw i64 %index107, 24
  %i.jl = mul nuw i64 %index107, 24
  %i.jm = mul nuw i64 %index107, 24
  %i.jn = mul nuw i64 %index107, 24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jm
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  %i.jv = load double, ptr %i.jo, align 8, !tbaa !24, !alias.scope !255
  %i.jw = load double, ptr %i.jq, align 8, !tbaa !24, !alias.scope !255
  %i.jx = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = load double, ptr %i.js, align 8, !tbaa !24, !alias.scope !255
  %i.ka = load double, ptr %i.ju, align 8, !tbaa !24, !alias.scope !255
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jj, align 8, !tbaa !24, !alias.scope !256, !noalias !255
  %wide.load108 = load <2 x double>, ptr %i.kd, align 8, !tbaa !24, !alias.scope !256, !noalias !255
  %i.ke = fadd <2 x double> %i.jy, %wide.load
  %i.kf = fadd <2 x double> %i.kc, %wide.load108
  store <2 x double> %i.ke, ptr %i.jj, align 8, !tbaa !24, !alias.scope !256, !noalias !255
  store <2 x double> %i.kf, ptr %i.kd, align 8, !tbaa !24, !alias.scope !256, !noalias !255
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kg, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !233

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kh = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.ki = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter145 = and i64 %i.kh, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !24
  %i.km = load double, ptr %i.kj, align 8, !tbaa !24
  %i.kn = fadd double %i.kl, %i.km
  store double %i.kn, ptr %i.kj, align 8, !tbaa !24
  %i.ko = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kp = icmp eq i64 %i.ki, %.05.i.i.i.i.i.i.ph
  br i1 %i.kp, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.lb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !24
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !24
  %i.ku = fadd double %i.ks, %i.kt
  store double %i.ku, ptr %i.kq, align 8, !tbaa !24
  %i.kv = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kv ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.kv, 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !24
  %i.kz = load double, ptr %i.kw, align 8, !tbaa !24
  %i.la = fadd double %i.ky, %i.kz
  store double %i.la, ptr %i.kw, align 8, !tbaa !24
  %i.lb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.lb, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !234

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lc = load double, ptr %2, align 8, !tbaa !24, !noalias !257 ; 3 uses
  %xtraiter148 = and i64 %i.bb, 1
  %i.ld = icmp eq i64 %i.ki, 0
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter151 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lr, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter152 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter152.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.le = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !24
  %i.lh = fmul double %i.lc, %i.lg
  %i.li = load double, ptr %i.le, align 8, !tbaa !24
  %i.lj = fsub double %i.li, %i.lh
  store double %i.lj, ptr %i.le, align 8, !tbaa !24
  %i.lk = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.lk, 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.lk
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !24
  %i.lo = fmul double %i.lc, %i.ln
  %i.lp = load double, ptr %i.ll, align 8, !tbaa !24
  %i.lq = fsub double %i.lp, %i.lo
  store double %i.lq, ptr %i.ll, align 8, !tbaa !24
  %i.lr = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !237

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lr, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod150 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !24
  %i.lv = fmul double %i.lc, %i.lu
  %i.lw = load double, ptr %i.ls, align 8, !tbaa !24
  %i.lx = fsub double %i.lw, %i.lv
  store double %i.lx, ptr %i.ls, align 8, !tbaa !24
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !24, !noalias !258
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.ly = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.lz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ly, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.lz, align 8
  %i.ma = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mb = lshr exact i64 %i.ma, 3
  %i.mc = and i64 %i.mb, 1
  %i.md = call i64 @llvm.smin.i64(i64 %i.mc, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.me = sub i64 %.sroa.6.sroa.4.0.copyload, %i.md
  %i.mf = and i64 %i.me, -2                       ; 3 uses
  %i.mg = add nsw i64 %i.mf, %i.md                ; 5 uses
  %i.mh = icmp sgt i64 %i.md, 0
  br i1 %i.mh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mi = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !24
  %i.mj = fmul double %i.ly, %i.mi
  store double %i.mj, ptr %4, align 8, !tbaa !24
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mk = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ml = icmp slt i64 %i.mg, %.sroa.6.sroa.4.0.copyload
  br i1 %i.ml, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = add i64 %i.md, %i.mf
  %i.mn = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mm ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mn, 6
  %i.mo = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.ma
  %diff.check = icmp ugt i64 %i.mo, -32
  %or.cond = select i1 %min.iters.check115, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec117 = and i64 %i.mn, -4                   ; 3 uses
  %i.mp = add i64 %i.mg, %n.vec117
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.ly, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.mq = add i64 %i.mg, %index121                ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.mq ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %wide.load122 = load <2 x double>, ptr %i.ms, align 8, !tbaa !24
  %wide.load123 = load <2 x double>, ptr %i.mt, align 8, !tbaa !24
  %i.mu = fmul <2 x double> %broadcast.splat119, %wide.load122
  %i.mv = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <2 x double> %i.mu, ptr %i.mr, align 8, !tbaa !24
  store <2 x double> %i.mv, ptr %i.mw, align 8, !tbaa !24
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.mx, label %middle.block125, label %vector.body120, !llvm.loop !240

middle.block125:                                  ; preds = %vector.body120
  %cmp.n = icmp eq i64 %i.mn, %n.vec117
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block125
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mg, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mp, %middle.block125 ] ; 4 uses
  %i.my = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter153 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ] ; 3 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ]
  %i.mz = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.na = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nb = load double, ptr %i.na, align 8, !tbaa !24
  %i.nc = fmul double %i.ly, %i.nb
  store double %i.nc, ptr %i.mz, align 8, !tbaa !24
  %i.nd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !241

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader128 ], [ %i.nd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ne = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nf = icmp ugt i64 %i.ne, -4
  br i1 %i.nf, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nz, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nh = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !24
  %i.nj = fmul double %i.ly, %i.ni
  store double %i.nj, ptr %i.ng, align 8, !tbaa !24
  %i.nk = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nl = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nk
  %i.nm = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nk
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !24
  %i.no = fmul double %i.ly, %i.nn
  store double %i.no, ptr %i.nl, align 8, !tbaa !24
  %i.np = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.np
  %i.nr = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.np
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !24
  %i.nt = fmul double %i.ly, %i.ns
  store double %i.nt, ptr %i.nq, align 8, !tbaa !24
  %i.nu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nu
  %i.nw = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nu
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !24
  %i.ny = fmul double %i.ly, %i.nx
  store double %i.ny, ptr %i.nv, align 8, !tbaa !24
  %i.nz = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.nz, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !242

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.md, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oa = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ob = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oc = load <2 x double>, ptr %i.ob, align 1, !tbaa !22
  %i.od = fmul <2 x double> %i.mk, %i.oc
  store <2 x double> %i.od, ptr %i.oa, align 16, !tbaa !22
  %i.oe = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.of = icmp slt i64 %i.oe, %i.mg
  br i1 %i.of, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !243

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.og, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.oh, align 8, !tbaa !62
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.oi, align 8, !tbaa !83
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.oj, align 8, !tbaa !19
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.ok, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.be, ptr %5, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %5, ptr %6, align 8, !tbaa !264
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ol, align 8, !tbaa !265
  %i.om = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.om, align 8, !tbaa !96
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.on, align 8, !tbaa !266
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil.preheader

._crit_edge.i.i.i.i.i.i.epil.preheader:           ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.preheader
  %.03453.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader ], [ %i.ay, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter161, 0
  tail call void @llvm.assume(i1 %lcmp.mod164)
  br label %._crit_edge.i.i.i.i.i.i.epil

._crit_edge.i.i.i.i.i.i.epil:                     ; preds = %._crit_edge.i.i.i.i.i.i.epil, %._crit_edge.i.i.i.i.i.i.epil.preheader
  %.03453.i.i.i.i.i.i.epil = phi i64 [ %i.or, %._crit_edge.i.i.i.i.i.i.epil ], [ %.03453.i.i.i.i.i.i.epil.init, %._crit_edge.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter162 = phi i64 [ %epil.iter162.next, %._crit_edge.i.i.i.i.i.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i38.i.i.i.i.i.i.epil = mul i64 %.03453.i.i.i.i.i.i.epil, 24
  %i.oo = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i.epil ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !24
  %i.oq = fmul double %i.e, %i.op
  store double %i.oq, ptr %i.oo, align 8, !tbaa !24
  %i.or = add nuw nsw i64 %.03453.i.i.i.i.i.i.epil, 1
  %epil.iter162.next = add i64 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i64 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %._crit_edge.i.i.i.i.i.i.epil, !llvm.loop !244

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, %.preheader.i.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ae, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter156, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.i.epil = phi i64 [ %i.ov, %.preheader.i.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.i.epil, 24
  %i.os = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !24
  %i.ou = fmul double %i.e, %i.ot
  store double %i.ou, ptr %i.os, align 8, !tbaa !24
  %i.ov = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter156
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit, label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !245

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit127.unr-lcssa, %.preheader.i.i.i.i.i.i.i.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, %._crit_edge.i.i.i.i.i.i.epil, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, %bb.c, %bb.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !24
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !22 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !22 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !22 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !22 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !267

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !22 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.ah = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !268

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !269

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !24 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !24
  store double %i.bs, ptr %3, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !74    ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !19 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !24
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !22
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !24
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #16 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %storemerge = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !24
  %i.da = fsub double %i.bq, %storemerge          ; 13 uses
  %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !74    ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.do = sub i64 %i.de, %i.e
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !24
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter59 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ] ; 3 uses
  %prol.iter61 = phi i64 [ %prol.iter61.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !24
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter61.next = add i64 %prol.iter61, 1     ; 2 uses
  %prol.iter61.cmp.not = icmp eq i64 %prol.iter61.next, %xtraiter59
  br i1 %prol.iter61.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !271

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader56 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !24
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !24
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !24
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !24
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !24
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !24
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !24
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !272

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.716.24.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi3ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

end_hunk_0
begin_hunk_1_@_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS_9TransposeIKNS_5BlockIKNS1_IdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEEEEvRKT_RT0_:bb.a
.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %.02062.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dz, %.preheader.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter74, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.02062.epil = phi i64 [ %.02062.epil.init, %.epil.preheader ], [ %i.cl, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.02062.epil
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.02062.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ci
  %i.ck = load double, ptr %i.cf, align 8, !tbaa !24
  store double %i.ck, ptr %i.cj, align 8, !tbaa !24
  %i.cl = add nuw nsw i64 %.02062.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter74
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.f, !llvm.loop !329

.preheader:                                       ; preds = %bb.f, %.preheader.unr-lcssa
  %i.cm = icmp samesign ult i64 %i.b, 3
  br i1 %i.cm, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.co = and i64 %i.b, 3                         ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %i.co, 3
  br i1 %lcmp.mod78.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph64, %.prol.preheader
  %.063.prol = phi i64 [ %i.ct, %.prol.preheader ], [ %i.b, %.lr.ph64 ] ; 2 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.prol.preheader ], [ 0, %.lr.ph64 ]
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.063.prol
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !36
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cr
  store double 0.000000e+00, ptr %i.cs, align 8, !tbaa !24
  %i.ct = add i64 %.063.prol, 1                   ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %i.cu = xor i64 %i.co, %prol.iter79.next
  %prol.iter79.cmp.not = icmp eq i64 %i.cu, 3
  br i1 %prol.iter79.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !330

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph64
  %.063.unr = phi i64 [ %i.b, %.lr.ph64 ], [ %i.ct, %.prol.preheader ]
  %i.cv = icmp ult i64 %i.b, 3
  br i1 %i.cv, label %._crit_edge, label %.lr.ph64.new

bb.g:                                             ; preds = %.lr.ph.split.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %.loopexit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.k

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.02062 = phi i64 [ 0, %.lr.ph.new ], [ %i.dz, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.02062
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.02062
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !36
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.cy, align 8, !tbaa !24
  store double %i.dd, ptr %i.dc, align 8, !tbaa !24
  %i.de = or disjoint i64 %.02062, 1              ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !36
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  %i.dk = load double, ptr %i.df, align 8, !tbaa !24
  store double %i.dk, ptr %i.dj, align 8, !tbaa !24
  %i.dl = or disjoint i64 %.02062, 2              ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dl
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !36
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dp
  %i.dr = load double, ptr %i.dm, align 8, !tbaa !24
  store double %i.dr, ptr %i.dq, align 8, !tbaa !24
  %i.ds = or disjoint i64 %.02062, 3              ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ds
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !36
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dw
  %i.dy = load double, ptr %i.dt, align 8, !tbaa !24
  store double %i.dy, ptr %i.dx, align 8, !tbaa !24
  %i.dz = add nuw nsw i64 %.02062, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.i, !llvm.loop !331

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph64.new, %.preheader
  %i.ea = load ptr, ptr %6, align 8, !tbaa !32
  call void @free(ptr noundef %i.ea) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.j

.lr.ph64.new:                                     ; preds = %.prol.loopexit, %.lr.ph64.new
  %.063 = phi i64 [ %i.eu, %.lr.ph64.new ], [ %.063.unr, %.prol.loopexit ] ; 5 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.063
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !36
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ed
  store double 0.000000e+00, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr [4 x i8], ptr %i.cn, i64 %.063
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !36
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ei
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !24
  %i.ek = getelementptr [4 x i8], ptr %i.cn, i64 %.063
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !36
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.en
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !24
  %i.ep = getelementptr [4 x i8], ptr %i.cn, i64 %.063
  %i.eq = getelementptr i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !36
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %2, i64 %i.es
  store double 0.000000e+00, ptr %i.et, align 8, !tbaa !24
  %i.eu = add i64 %.063, 4                        ; 2 uses
  %exitcond67.not.3 = icmp eq i64 %i.eu, 3
  br i1 %exitcond67.not.3, label %._crit_edge, label %.lr.ph64.new, !llvm.loop !332

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn27.pn = phi { ptr, i32 } [ %i.cw, %bb.g ], [ %i.cx, %bb.h ]
  %i.ev = load ptr, ptr %6, align 8, !tbaa !32
  call void @free(ptr noundef %i.ev) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.1598", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.1410", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1602", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.1479", align 8 ; 4 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.1293", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1483", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::mul_assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Block.1382", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !24  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store double %i.e, ptr %8, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !100
  store ptr %i.f, ptr %9, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108, !nonnull !65, !align !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  store i64 %i.k, ptr %i.g, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %9, ptr %10, align 8, !tbaa !375
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %8, ptr %i.l, align 8, !tbaa !376
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.m, align 8, !tbaa !377
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %i.n, align 8, !tbaa !378
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13mul_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = fcmp une double %i.d, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.r = add nsw i64 %i.b, -1                     ; 6 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !100    ; 14 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %12, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.r, ptr %i.v, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.q, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 80
  store i64 1, ptr %i.y, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !383
  %.sroa.042.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = icmp sgt i64 %i.q, 0
  br i1 %i.af, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ag = sdiv i64 %i.r, 4
  %i.ah = shl nsw i64 %i.ag, 2                    ; 4 uses
  %i.ai = sdiv i64 %i.r, 2
  %i.aj = shl nsw i64 %i.ai, 1                    ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.sroa.0.0.copyload, i64 16
  %i.al = icmp sgt i64 %i.b, 8
  %i.am = icmp sgt i64 %i.aj, %i.ah
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.ah
  %i.ao = icmp slt i64 %i.aj, %i.r                ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ugt i64 %i.q, 15
  %ident.check.not = icmp eq i64 %i.ad, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader
  %i.ap = shl i64 %i.q, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ap  ; 2 uses
  %scevgep90 = getelementptr i8, ptr %.sroa.042.sroa.0.0.copyload, i64 8
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap
  %scevgep91 = getelementptr i8, ptr %i.aq, i64 8
  %bound0 = icmp ult ptr %3, %scevgep90
  %bound1 = icmp ult ptr %.sroa.042.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %3, %scevgep91
  %bound193 = icmp ult ptr %i.t, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %i.ar = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !24, !alias.scope !384
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !24, !alias.scope !385
  %wide.load95 = load <2 x double>, ptr %i.at, align 8, !tbaa !24, !alias.scope !385
  %i.au = fmul <2 x double> %broadcast.splat, %wide.load
  %i.av = fmul <2 x double> %broadcast.splat, %wide.load95
  %i.aw = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %i.au, ptr %i.aw, align 8, !tbaa !24, !alias.scope !386, !noalias !387
  store <2 x double> %i.av, ptr %i.ax, align 8, !tbaa !24, !alias.scope !386, !noalias !387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.us12.us.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter175 = and i64 %i.q, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod176.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162
  %i.az = mul nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, %i.ad
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.az
  %i.bb = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !24
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !24
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph
  store double %i.bd, ptr %i.be, align 8, !tbaa !24
  %i.bf = or disjoint i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162
  %.011.us12.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.us12.us.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader162 ], [ %i.bf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol ]
  %i.bg = icmp eq i64 %i.q, %.neg
  br i1 %i.bg, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i

.preheader.i.preheader.i.i.i.i.i.i.i:             ; preds = %.split.i.i.i.i.i.i.i.i
  %13 = icmp sgt i64 %i.b, 4
  br i1 %13, label %.preheader.i.us.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.split.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i.preheader:          ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  %i.bh = xor i64 %i.aj, -1
  %i.bi = add i64 %i.b, %i.bh
  %i.bj = add nsw i64 %i.b, -2
  %i.bk = sub i64 %i.bj, %i.aj
  %xtraiter172 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %i.bl = icmp ult i64 %i.bk, 3
  br label %.preheader.i.us.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i:                    ; preds = %.preheader.i.us.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i
  %.011.i.us.i.i.i.i.i.i.i = phi i64 [ %i.ea, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bm = mul nsw i64 %.011.i.us.i.i.i.i.i.i.i, %i.ad
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bm ; 10 uses
  %i.bo = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !22
  %i.bp = load <2 x double>, ptr %i.bn, align 1, !tbaa !22
  %i.bq = fmul <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = load <2 x double>, ptr %i.ak, align 1, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !22
  %i.bu = fmul <2 x double> %i.br, %i.bt          ; 2 uses
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:            ; preds = %.preheader.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 4, %.preheader.i.us.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.bq, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.bu, %.preheader.i.us.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.bw = load <2 x double>, ptr %i.bv, align 1, !tbaa !22
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.by = load <2 x double>, ptr %i.bx, align 1, !tbaa !22
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.bz ; 2 uses
  %i.cb = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.cb
  %i.cd = load <2 x double>, ptr %i.cc, align 1, !tbaa !22
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cb
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !22
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.cg ; 2 uses
  %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ci = icmp slt i64 %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.ah
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !351

._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.bu, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.bq, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.cj = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.an, align 1, !tbaa !22
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ah
  %i.cm = load <2 x double>, ptr %i.cl, align 1, !tbaa !22
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = fadd <2 x double> %i.cj, %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.co, %bb.e ]
  %i.cp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.ao, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader: ; preds = %bb.f
  br i1 %lcmp.mod173.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi double [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %prol.iter174 = phi i64 [ %prol.iter174.next, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !24
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %i.cu ; 3 uses
  %i.cw = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter174.next = add i64 %prol.iter174, 1   ; 2 uses
  %prol.iter174.cmp.not = icmp eq i64 %prol.iter174.next, %xtraiter172
  br i1 %prol.iter174.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, !llvm.loop !352

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader
  %.lcssa165.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  br i1 %i.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.dx, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !24
  %i.db = fmul double %i.cy, %i.da
  %i.dc = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.db
  %i.dd = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dd
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !24
  %i.di = fmul double %i.df, %i.dh
  %i.dj = fadd double %i.dc, %i.di
  %i.dk = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fadd double %i.dj, %i.dp
  %i.dr = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dr
  %i.dv = load double, ptr %i.du, align 8, !tbaa !24
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = fadd double %i.dq, %i.dw                ; 2 uses
  %i.dy = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dy, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !353

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.cp, %bb.f ], [ %.lcssa165.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dx, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.dz = getelementptr [8 x i8], ptr %3, i64 %.011.i.us.i.i.i.i.i.i.i
  store double %.0.i.i.i.i.i.us.i.i.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !24
  %i.ea = add nuw nsw i64 %.011.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.q
  br i1 %exitcond.not.i.us.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us.i.i.i.i.i.i.i, !llvm.loop !354

.preheader.i.preheader.split.i.i.i.i.i.i.i:       ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  br i1 %i.ao, label %.preheader.i.us23.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.q, 1
  %i.eb = icmp eq i64 %i.q, 1
  br i1 %i.eb, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775806
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.us23.i.i.i.i.i.i.i.preheader:        ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %i.ec = xor i64 %i.aj, -1
  %i.ed = add i64 %i.b, %i.ec
  %i.ee = add i64 %i.b, -2
  %i.ef = sub i64 %i.ee, %i.aj
  %xtraiter170 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  %i.eg = icmp ult i64 %i.ef, 3
  br label %.preheader.i.us23.i.i.i.i.i.i.i

.preheader.i.us23.i.i.i.i.i.i.i:                  ; preds = %.preheader.i.us23.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i
  %.011.i.us24.i.i.i.i.i.i.i = phi i64 [ %i.fx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us23.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eh = mul nsw i64 %.011.i.us24.i.i.i.i.i.i.i, %i.ad
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.eh ; 6 uses
  %i.ej = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !22
  %i.ek = load <2 x double>, ptr %i.ei, align 1, !tbaa !22
  %i.el = fmul <2 x double> %i.ej, %i.ek
  %i.em = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.el) ; 2 uses
  br i1 %lcmp.mod171.not, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol:   ; preds = %.preheader.i.us23.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol = phi i64 [ %i.et, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ], [ %i.aj, %.preheader.i.us23.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol = phi double [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ], [ %i.em, %.preheader.i.us23.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.us23.i.i.i.i.i.i.i ]
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol
  %i.eo = load double, ptr %i.en, align 8, !tbaa !24
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24
  %i.er = fmul double %i.eo, %i.eq
  %i.es = fadd double %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol, %i.er ; 3 uses
  %i.et = add nsw i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter170
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol, !llvm.loop !355

.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol, %.preheader.i.us23.i.i.i.i.i.i.i
  %.lcssa167.unr = phi double [ poison, %.preheader.i.us23.i.i.i.i.i.i.i ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.unr = phi i64 [ %i.aj, %.preheader.i.us23.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.unr = phi double [ %i.em, %.preheader.i.us23.i.i.i.i.i.i.i ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol ]
  br i1 %i.eg, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i:        ; preds = %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i = phi i64 [ %i.fv, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i = phi double [ %i.fu, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !24
  %i.ey = fmul double %i.ev, %i.ex
  %i.ez = fadd double %.182.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i, %i.ey
  %i.fa = add nsw i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !24
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fa
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !24
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %i.ez, %i.ff
  %i.fh = add nsw i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fh
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !24
  %i.fm = fmul double %i.fj, %i.fl
  %i.fn = fadd double %i.fg, %i.fm
  %i.fo = add nsw i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !24
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fo
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fadd double %i.fn, %i.ft                ; 2 uses
  %i.fv = add nsw i64 %.05283.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fv, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, !llvm.loop !353

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa167 = phi double [ %.lcssa167.unr, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fu, %.lr.ph85.i.i.i.i.i.i.i.us26.i.i.i.i.i.i.i ]
  %i.fw = getelementptr [8 x i8], ptr %3, i64 %.011.i.us24.i.i.i.i.i.i.i
  store double %.lcssa167, ptr %i.fw, align 8, !tbaa !24
  %i.fx = add nuw nsw i64 %.011.i.us24.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us34.i.i.i.i.i.i.i = icmp eq i64 %i.fx, %i.q
  br i1 %exitcond.not.i.us34.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us23.i.i.i.i.i.i.i, !llvm.loop !354

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i
  %.011.us12.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i ], [ %.011.us12.us.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fy = mul nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, %i.ad
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fy
  %i.ga = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !24
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gc = fmul double %i.ga, %i.gb
  %i.gd = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i
  store double %i.gc, ptr %i.gd, align 8, !tbaa !24
  %i.ge = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %i.ad
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gf
  %i.gh = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !24
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !24
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = getelementptr [8 x i8], ptr %3, i64 %i.ge
  store double %i.gj, ptr %i.gk, align 8, !tbaa !24
  %i.gl = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond23.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gl, %i.q
  br i1 %exitcond23.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i, !llvm.loop !356

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.hb, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.gm = mul nsw i64 %.011.i.i.i.i.i.i.i.i, %i.ad
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gm
  %i.go = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !22
  %i.gp = load <2 x double>, ptr %i.gn, align 1, !tbaa !22
  %i.gq = fmul <2 x double> %i.go, %i.gp
  %i.gr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gq)
  %i.gs = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i
  store double %i.gr, ptr %i.gs, align 8, !tbaa !24
  %i.gt = or disjoint i64 %.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.ad
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gu
  %i.gw = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !22
  %i.gx = load <2 x double>, ptr %i.gv, align 1, !tbaa !22
  %i.gy = fmul <2 x double> %i.gw, %i.gx
  %i.gz = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gy)
  %i.ha = getelementptr [8 x i8], ptr %3, i64 %i.gt
  store double %i.gz, ptr %i.ha, align 8, !tbaa !24
  %i.hb = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit168.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !354

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit168.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit168.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.hb, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit168.unr-lcssa ] ; 2 uses
  %lcmp.mod169 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.hc = mul nsw i64 %.011.i.i.i.i.i.i.i.i.epil.init, %i.ad
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hc
  %i.he = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !22
  %i.hf = load <2 x double>, ptr %i.hd, align 1, !tbaa !22
  %i.hg = fmul <2 x double> %i.he, %i.hf
  %i.hh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hg)
  %i.hi = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i.epil.init
  store double %i.hh, ptr %i.hi, align 8, !tbaa !24
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit168.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us30.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i, %middle.block
  %.sroa.635.24.copyload = load ptr, ptr %i.u, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.635.24.copyload, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !67 ; 4 uses
  %min.iters.check105 = icmp ugt i64 %i.q, 7
  %ident.check97.not = icmp eq i64 %i.hk, 1
  %or.cond158 = select i1 %min.iters.check105, i1 %ident.check97.not, i1 false
  br i1 %or.cond158, label %vector.memcheck98, label %.split.i.i.i.i.i.i.preheader

vector.memcheck98:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.hl = shl i64 %i.q, 3                         ; 2 uses
  %scevgep99 = getelementptr i8, ptr %3, i64 %i.hl
  %scevgep100 = getelementptr i8, ptr %i.s, i64 %i.hl
  %bound0101 = icmp ult ptr %3, %scevgep100
  %bound1102 = icmp ult ptr %i.s, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.split.i.i.i.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec107 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 3 uses
  %i.hm = getelementptr [8 x i8], ptr %3, i64 %index109 ; 3 uses
  %i.hn = getelementptr [8 x i8], ptr %i.s, i64 %index109 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 16
  %wide.load110 = load <2 x double>, ptr %i.hn, align 8, !tbaa !24, !alias.scope !388
  %wide.load111 = load <2 x double>, ptr %i.ho, align 8, !tbaa !24, !alias.scope !388
  %i.hp = getelementptr i8, ptr %i.hm, i64 16     ; 2 uses
  %wide.load112 = load <2 x double>, ptr %i.hm, align 8, !tbaa !24, !alias.scope !389, !noalias !388
  %wide.load113 = load <2 x double>, ptr %i.hp, align 8, !tbaa !24, !alias.scope !389, !noalias !388
  %i.hq = fadd <2 x double> %wide.load110, %wide.load112
  %i.hr = fadd <2 x double> %wide.load111, %wide.load113
  store <2 x double> %i.hq, ptr %i.hm, align 8, !tbaa !24, !alias.scope !389, !noalias !388
  store <2 x double> %i.hr, ptr %i.hp, align 8, !tbaa !24, !alias.scope !389, !noalias !388
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.hs, label %middle.block115, label %vector.body108, !llvm.loop !360

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.q, %n.vec107
  br i1 %cmp.n116, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i.preheader

.split.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck98, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, %middle.block115
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec107, %middle.block115 ] ; 5 uses
  %.neg187 = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  %xtraiter178 = and i64 %i.q, 1
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.split.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.prol:                          ; preds = %.split.i.i.i.i.i.i.preheader
  %i.ht = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i.ph ; 2 uses
  %i.hu = mul nsw i64 %.09.i.i.i.i.i.i.ph, %i.hk
  %i.hv = getelementptr [8 x i8], ptr %i.s, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !24
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !24
  %i.hy = fadd double %i.hw, %i.hx
  store double %i.hy, ptr %i.ht, align 8, !tbaa !24
  %i.hz = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.split.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.preheader ], [ %i.hz, %.split.i.i.i.i.i.i.prol ]
  %i.ia = icmp eq i64 %i.q, %.neg187
  br i1 %i.ia, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.io, %.split.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ib = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.ic = mul nsw i64 %.09.i.i.i.i.i.i, %i.hk
  %i.id = getelementptr [8 x i8], ptr %i.s, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !24
  %i.if = load double, ptr %i.ib, align 8, !tbaa !24
  %i.ig = fadd double %i.ie, %i.if
  store double %i.ig, ptr %i.ib, align 8, !tbaa !24
  %i.ih = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %3, i64 %i.ih ; 2 uses
  %i.ij = mul nsw i64 %i.ih, %i.hk
  %i.ik = getelementptr [8 x i8], ptr %i.s, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !24
  %i.im = load double, ptr %i.ii, align 8, !tbaa !24
  %i.in = fadd double %i.il, %i.im
  store double %i.in, ptr %i.ii, align 8, !tbaa !24
  %i.io = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.io, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i, !llvm.loop !361

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i, %middle.block115
  %i.ip = load double, ptr %2, align 8, !tbaa !24, !noalias !390 ; 4 uses
  %.sroa.722.24.copyload = load ptr, ptr %i.u, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.722.24.copyload, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !67 ; 4 uses
  %min.iters.check127 = icmp ugt i64 %i.q, 5
  %ident.check119.not = icmp eq i64 %i.ir, 1
  %or.cond159 = select i1 %min.iters.check127, i1 %ident.check119.not, i1 false
  br i1 %or.cond159, label %vector.memcheck120, label %.split.i.i.i.i.i.i8.preheader

vector.memcheck120:                               ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.is = shl i64 %i.q, 3                         ; 2 uses
  %scevgep121 = getelementptr i8, ptr %i.s, i64 %i.is
  %scevgep122 = getelementptr i8, ptr %3, i64 %i.is
  %bound0123 = icmp ult ptr %i.s, %scevgep122
  %bound1124 = icmp ult ptr %3, %scevgep121
  %found.conflict125 = and i1 %bound0123, %bound1124
  br i1 %found.conflict125, label %.split.i.i.i.i.i.i8.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck120
  %n.vec129 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert130 = insertelement <2 x double> poison, double %i.ip, i64 0
  %broadcast.splat131 = shufflevector <2 x double> %broadcast.splatinsert130, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph128
  %index133 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body132 ] ; 3 uses
  %i.it = getelementptr [8 x i8], ptr %i.s, i64 %index133 ; 3 uses
  %i.iu = getelementptr [8 x i8], ptr %3, i64 %index133 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %wide.load134 = load <2 x double>, ptr %i.iu, align 8, !tbaa !24, !alias.scope !391
  %wide.load135 = load <2 x double>, ptr %i.iv, align 8, !tbaa !24, !alias.scope !391
  %i.iw = fmul <2 x double> %broadcast.splat131, %wide.load134
  %i.ix = fmul <2 x double> %broadcast.splat131, %wide.load135
  %i.iy = getelementptr i8, ptr %i.it, i64 16     ; 2 uses
  %wide.load136 = load <2 x double>, ptr %i.it, align 8, !tbaa !24, !alias.scope !392, !noalias !391
  %wide.load137 = load <2 x double>, ptr %i.iy, align 8, !tbaa !24, !alias.scope !392, !noalias !391
  %i.iz = fsub <2 x double> %wide.load136, %i.iw
  %i.ja = fsub <2 x double> %wide.load137, %i.ix
  store <2 x double> %i.iz, ptr %i.it, align 8, !tbaa !24, !alias.scope !392, !noalias !391
  store <2 x double> %i.ja, ptr %i.iy, align 8, !tbaa !24, !alias.scope !392, !noalias !391
  %index.next138 = add nuw i64 %index133, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next138, %n.vec129
  br i1 %i.jb, label %middle.block139, label %vector.body132, !llvm.loop !367

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.q, %n.vec129
  br i1 %cmp.n140, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8.preheader

.split.i.i.i.i.i.i8.preheader:                    ; preds = %vector.memcheck120, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, %middle.block139
  %.09.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck120 ], [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %n.vec129, %middle.block139 ] ; 5 uses
  %.neg188 = or disjoint i64 %.09.i.i.i.i.i.i9.ph, 1
  %xtraiter181 = and i64 %i.q, 1
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.split.i.i.i.i.i.i8.prol.loopexit, label %.split.i.i.i.i.i.i8.prol

.split.i.i.i.i.i.i8.prol:                         ; preds = %.split.i.i.i.i.i.i8.preheader
  %i.jc = mul nsw i64 %.09.i.i.i.i.i.i9.ph, %i.ir
  %i.jd = getelementptr [8 x i8], ptr %i.s, i64 %i.jc ; 2 uses
  %i.je = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i9.ph
  %i.jf = load double, ptr %i.je, align 8, !tbaa !24
  %i.jg = fmul double %i.ip, %i.jf
  %i.jh = load double, ptr %i.jd, align 8, !tbaa !24
  %i.ji = fsub double %i.jh, %i.jg
  store double %i.ji, ptr %i.jd, align 8, !tbaa !24
  %i.jj = or disjoint i64 %.09.i.i.i.i.i.i9.ph, 1
  br label %.split.i.i.i.i.i.i8.prol.loopexit

.split.i.i.i.i.i.i8.prol.loopexit:                ; preds = %.split.i.i.i.i.i.i8.prol, %.split.i.i.i.i.i.i8.preheader
  %.09.i.i.i.i.i.i9.unr = phi i64 [ %.09.i.i.i.i.i.i9.ph, %.split.i.i.i.i.i.i8.preheader ], [ %i.jj, %.split.i.i.i.i.i.i8.prol ]
  %i.jk = icmp eq i64 %i.q, %.neg188
  br i1 %i.jk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8

.split.i.i.i.i.i.i8:                              ; preds = %.split.i.i.i.i.i.i8.prol.loopexit, %.split.i.i.i.i.i.i8
  %.09.i.i.i.i.i.i9 = phi i64 [ %i.ka, %.split.i.i.i.i.i.i8 ], [ %.09.i.i.i.i.i.i9.unr, %.split.i.i.i.i.i.i8.prol.loopexit ] ; 4 uses
  %i.jl = mul nsw i64 %.09.i.i.i.i.i.i9, %i.ir
  %i.jm = getelementptr [8 x i8], ptr %i.s, i64 %i.jl ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i9
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !24
  %i.jp = fmul double %i.ip, %i.jo
  %i.jq = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jr = fsub double %i.jq, %i.jp
  store double %i.jr, ptr %i.jm, align 8, !tbaa !24
  %i.js = add nuw nsw i64 %.09.i.i.i.i.i.i9, 1    ; 2 uses
  %i.jt = mul nsw i64 %i.js, %i.ir
  %i.ju = getelementptr [8 x i8], ptr %i.s, i64 %i.jt ; 2 uses
  %i.jv = getelementptr [8 x i8], ptr %3, i64 %i.js
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !24
  %i.jx = fmul double %i.ip, %i.jw
  %i.jy = load double, ptr %i.ju, align 8, !tbaa !24
  %i.jz = fsub double %i.jy, %i.jx
  store double %i.jz, ptr %i.ju, align 8, !tbaa !24
  %i.ka = add nuw nsw i64 %.09.i.i.i.i.i.i9, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i10.1 = icmp eq i64 %i.ka, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i10.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8, !llvm.loop !368

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.split.i.i.i.i.i.i8.prol.loopexit, %.split.i.i.i.i.i.i8, %middle.block139
  %.pre = load double, ptr %2, align 8, !tbaa !24, !noalias !393
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %bb.d, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.042.sroa.0.0.copyload, %bb.d ] ; 9 uses
  %i.kb = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.d ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload143 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.kb, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.kc, align 8
  %i.kd = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.ke = lshr exact i64 %i.kd, 3
end_hunk_1
