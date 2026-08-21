Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.811", align 8 ; 26 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.823", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.828", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Block.763", align 8  ; 10 uses
  store i32 0, ptr %2, align 4, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.1090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.1191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.1292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.18.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.sroa.19.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  %.sroa.21.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.sroa.22.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 144
  %.sroa.23.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 152
  %.sroa.24.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 160
  %.sroa.26.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 176
  %.sroa.27.96..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.loopexit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 5, ptr %i.r, align 4, !tbaa !138
  %i.s = load ptr, ptr %0, align 8, !tbaa !145
  %i.t = load i64, ptr %i.a, align 8, !tbaa !147
  %.idx = mul i64 %i.t, 40
  %i.u = getelementptr i8, ptr %i.s, i64 %.idx
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  %i.y = icmp eq i64 %.1, -1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %spec.select = select i1 %i.z, i64 5, i64 %.1
  ret i64 %spec.select

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.loopexit
  %.0171 = phi i64 [ -1, %bb.a ], [ %.1, %.loopexit ] ; 5 uses
  %.052170 = phi i64 [ 0, %bb.a ], [ %i.es, %.loopexit ] ; 16 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !145, !noalias !149 ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !147, !noalias !149 ; 7 uses
  %i.ac = mul nsw i64 %i.ab, %.052170
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.052170 ; 7 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ag = call noundef double @llvm.fabs.f64(double %i.af) ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = call noundef double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp ogt double %i.aj, %i.ag            ; 3 uses
  %.sroa.0.1.i.i = zext i1 %i.ak to i64           ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.052170, 4
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.al = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !8
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an) ; 3 uses
  %i.ap = fcmp ogt double %i.ao, %i.al            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ap, i64 2, i64 %.sroa.0.1.i.i ; 2 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ap, double %i.ao, double %.sroa.7.1.i.i ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %.052170, 3
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.aq = select i1 %i.ap, double %i.ao, double %i.al ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = call noundef double @llvm.fabs.f64(double %i.as) ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.aq            ; 3 uses
  %.sroa.0.1.i.i.2 = select i1 %i.au, i64 3, i64 %.sroa.0.1.i.i.1 ; 2 uses
  %.sroa.7.1.i.i.2 = select i1 %i.au, double %i.at, double %.sroa.7.1.i.i.1 ; 2 uses
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %.052170, 2
  br i1 %exitcond.not.i.i.i.i.2, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.av = select i1 %i.au, double %i.at, double %i.aq ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ae, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !8
  %i.ay = call noundef double @llvm.fabs.f64(double %i.ax) ; 3 uses
  %i.az = fcmp ogt double %i.ay, %i.av            ; 3 uses
  %.sroa.0.1.i.i.3 = select i1 %i.az, i64 4, i64 %.sroa.0.1.i.i.2 ; 2 uses
  %.sroa.7.1.i.i.3 = select i1 %i.az, double %i.ay, double %.sroa.7.1.i.i.2 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %.052170, 1
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.ba = select i1 %i.az, double %i.ay, double %i.av
  %i.bb = getelementptr i8, ptr %i.ae, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc) ; 2 uses
  %i.be = fcmp ogt double %i.bd, %i.ba            ; 2 uses
  %.sroa.0.1.i.i.4 = select i1 %i.be, i64 5, i64 %.sroa.0.1.i.i.3
  %.sroa.7.1.i.i.4 = select i1 %i.be, double %i.bd, double %.sroa.7.1.i.i.3
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.0.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.0.1.i.i.4, %.lr.ph.i.i.i.i.4 ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.7.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.7.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.7.1.i.i.4, %.lr.ph.i.i.i.i.4 ]
  %i.bf = trunc nuw nsw i64 %.052170 to i32
  %i.bg = sub nsw i32 5, %i.bf                    ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.052170 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.052170
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !138
  %i.bk = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bk, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.052170 ; 7 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bh ; 7 uses
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !8
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !8
  store double %i.bo, ptr %i.bl, align 8, !tbaa !8
  store double %i.bn, ptr %i.bm, align 8, !tbaa !8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ab ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ab ; 2 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !8
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !8
  store double %i.bs, ptr %i.bp, align 8, !tbaa !8
  store double %i.br, ptr %i.bq, align 8, !tbaa !8
  %.idx.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 4  ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !8
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !8
  store double %i.bw, ptr %i.bt, align 8, !tbaa !8
  store double %i.bv, ptr %i.bu, align 8, !tbaa !8
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !8
  %i.ca = load double, ptr %i.by, align 8, !tbaa !8
  store double %i.ca, ptr %i.bx, align 8, !tbaa !8
  store double %i.bz, ptr %i.by, align 8, !tbaa !8
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 5 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !8
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !8
  store double %i.ce, ptr %i.cb, align 8, !tbaa !8
  store double %i.cd, ptr %i.cc, align 8, !tbaa !8
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 40 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !8
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !8
  store double %i.ci, ptr %i.cf, align 8, !tbaa !8
  store double %i.ch, ptr %i.cg, align 8, !tbaa !8
  %i.cj = load i32, ptr %2, align 4, !tbaa !138
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %2, align 4, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cl = sext i32 %i.bg to i64                   ; 10 uses
  %i.cm = sub nsw i64 6, %i.cl                    ; 4 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cm ; 10 uses
  %i.co = load double, ptr %i.ae, align 8, !tbaa !8, !noalias !152 ; 8 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cr = lshr exact i64 %i.cp, 3
  %i.cs = and i64 %i.cr, 1
  %i.ct = call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.cl)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.f ], [ %i.cl, %bb.e ] ; 9 uses
  %i.cu = sub nsw i64 %i.cl, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cv = sdiv i64 %i.cu, 2
  %i.cw = shl nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = add nsw i64 %i.cw, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.cy = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = load double, ptr %i.cn, align 8, !tbaa !8
  %i.da = fdiv double %i.cz, %i.co
  store double %i.da, ptr %i.cn, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !8
  %i.dd = fdiv double %i.dc, %i.co
  store double %i.dd, ptr %i.db, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = fdiv double %i.df, %i.co
  store double %i.dg, ptr %i.de, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = fdiv double %i.di, %i.co
  store double %i.dj, ptr %i.dh, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !8
  %i.dm = fdiv double %i.dl, %i.co
  store double %i.dm, ptr %i.dk, align 8, !tbaa !8
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dn = icmp sgt i64 %i.cu, 1
  br i1 %i.dn, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.do = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dq = icmp slt i64 %i.cx, %i.cl
  br i1 %i.dq, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dr = add i64 %.0.i.i.i.i.i.i.i, %i.cw
  %i.ds = sub i64 %i.cl, %i.dr                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ds, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ds, -2                      ; 3 uses
  %i.dt = add i64 %i.cx, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = getelementptr [8 x i8], ptr %i.cn, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dv, align 8, !tbaa !8
  %i.dw = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dw, ptr %i.dv, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader177

.lr.ph.i17.i.i.i.i.i.i.preheader177:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cx, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader177, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8
  %i.ea = fdiv double %i.dz, %i.co
  store double %i.ea, ptr %i.dy, align 8, !tbaa !8
  %i.eb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.cl
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !158

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ec, align 16, !tbaa !10
  %i.ee = fdiv <2 x double> %i.ed, %i.dp
  store <2 x double> %i.ee, ptr %i.ec, align 16, !tbaa !10
  %i.ef = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.cx
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !159

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.eh = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.eh, i64 %.052170, i64 %.0171
  %.pre = sext i32 %i.bg to i64                   ; 2 uses
  %.pre172 = sub nsw i64 6, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cm, %._crit_edge.i.i.i.i.i.i ], [ %i.cm, %middle.block ], [ %i.cm, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.cl, %._crit_edge.i.i.i.i.i.i ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !145, !noalias !160 ; 3 uses
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !147, !noalias !160 ; 8 uses
  %i.ek = mul nsw i64 %i.ej, %.052170
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.el, i64 %.pre-phi173 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.052170 ; 2 uses
  %i.eo = mul nsw i64 %i.ej, %.pre-phi173         ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.pre-phi173
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.eo ; 2 uses
  store ptr %i.er, ptr %7, align 8, !tbaa !163, !alias.scope !165
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !147, !alias.scope !165
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !147, !alias.scope !165
  store ptr %0, ptr %i.d, align 8, !tbaa !168, !alias.scope !165
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !147, !alias.scope !165
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !147, !alias.scope !165
  store i64 %i.ej, ptr %i.g, align 8, !tbaa !170, !alias.scope !165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.em, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.el, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.ej, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.ej, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.ep, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.en, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.em, ptr %i.i, align 8, !tbaa !173
  store i64 %i.ej, ptr %i.j, align 8, !tbaa !147
  store ptr %i.ep, ptr %i.k, align 8, !tbaa !176
  store i64 %i.ej, ptr %i.l, align 8, !tbaa !147
  store i64 1, ptr %i.m, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.er, ptr %4, align 8, !tbaa !205
  store i64 %i.ej, ptr %i.n, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %4, ptr %5, align 8, !tbaa !207
  store ptr %3, ptr %i.o, align 8, !tbaa !209
  store ptr %6, ptr %i.p, align 8, !tbaa !211
  store ptr %7, ptr %i.q, align 8, !tbaa !213
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.es = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.es, 5
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !215
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216, !nonnull !60, !align !218 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !147  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !147  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !60, !align !218 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !60, !align !218 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !205  ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !147  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !219, !noalias !220 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !223, !noalias !224 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !227, !noalias !224, !nonnull !60, !align !218
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !147, !noalias !224 ; 3 uses
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul i64 %i.s, %i.y
  %i.aa = shl i64 %i.j, 3
  %i.ab = add i64 %i.z, %i.j
  %i.ac = shl i64 %i.ab, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ad = mul i64 %i.x, %i.y
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep64 = getelementptr i8, ptr %i.af, i64 8
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.r, %scevgep63
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %i.r, %scevgep64
  %bound166 = icmp ult ptr %i.u, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %i.ag = or i64 %i.x, %i.s
  %i.ah = and i64 %i.ag, 1152921504606846976
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = or i1 %found.conflict67, %i.ai
  %conflict.rdx = or i1 %found.conflict, %i.aj
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.bh, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nsw i64 %.0810.i, %i.s
  %i.al = getelementptr [8 x i8], ptr %i.r, i64 %i.ak ; 4 uses
  %i.am = mul nsw i64 %.0810.i, %i.x
  %i.an = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.am ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8, !alias.scope !228
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !8, !alias.scope !231
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !8, !alias.scope !231
  %i.as = fmul <2 x double> %wide.load, %broadcast.splat
  %i.at = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.au = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.ap, align 8, !tbaa !8, !alias.scope !233, !noalias !235
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !8, !alias.scope !233, !noalias !235
  %i.av = fsub <2 x double> %wide.load71, %i.as
  %i.aw = fsub <2 x double> %wide.load72, %i.at
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !8, !alias.scope !233, !noalias !235
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !8, !alias.scope !233, !noalias !235
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.09.i.ph ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.ba = load double, ptr %i.az, align 8, !tbaa !8
  %i.bb = load double, ptr %i.an, align 8, !tbaa !8
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !8
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !8
  %i.bf = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !237

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %.09.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bl = load double, ptr %i.an, align 8, !tbaa !8
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !8
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %i.bi, align 8, !tbaa !8
  %i.bp = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8
  %i.bt = load double, ptr %i.an, align 8, !tbaa !8
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !8
  %i.bw = fsub double %i.bv, %i.bu
  store double %i.bw, ptr %i.bq, align 8, !tbaa !8
  %i.bx = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bx, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !238

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !147 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !147 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !239, !nonnull !60, !align !218
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !147
  %i.cg = and i64 %i.cf, 1
  %i.ch = icmp sgt i64 %i.cb, 0
  br i1 %i.ch, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.ci = lshr exact i64 %i.d, 3
  %i.cj = and i64 %i.ci, 1
  %i.ck = tail call i64 @llvm.smin.i64(i64 %i.cj, i64 %i.bz)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cm = shl i64 %i.bz, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.gd, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.ck, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cn = shl i64 %.03451, 3                      ; 2 uses
  %i.co = sub i64 %i.bz, %.03550                  ; 3 uses
  %i.cp = and i64 %i.co, -2                       ; 2 uses
  %i.cq = add nsw i64 %i.cp, %.03550              ; 6 uses
  %i.cr = icmp sgt i64 %.03550, 0
  br i1 %i.cr, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !240, !nonnull !60, !align !218 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !223, !noalias !241
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !227, !noalias !241, !nonnull !60, !align !218
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !147, !noalias !241
  %i.cz = mul nsw i64 %i.cy, %.03451
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cz
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !219, !noalias !244
  %i.dc = load ptr, ptr %0, align 8, !tbaa !247, !nonnull !60, !align !218 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !205
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !147
  %i.dg = mul nsw i64 %i.df, %.03451
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %i.dg ; 2 uses
  %i.di = load double, ptr %i.db, align 8, !tbaa !8
  %i.dj = load double, ptr %i.da, align 8, !tbaa !8
  %i.dk = fmul double %i.di, %i.dj
  %i.dl = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dm = fsub double %i.dl, %i.dk
  store double %i.dm, ptr %i.dh, align 8, !tbaa !8
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.dn = icmp sgt i64 %i.co, 1
  br i1 %i.dn, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.do = icmp slt i64 %i.cq, %i.bz
  br i1 %i.do, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.dp = load ptr, ptr %0, align 8, !tbaa !247, !nonnull !60, !align !218 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !205 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !147 ; 2 uses
  %i.dt = mul nsw i64 %i.ds, %.03451
  %i.du = getelementptr [8 x i8], ptr %i.dq, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.cl, align 8, !tbaa !240, !nonnull !60, !align !218 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !219, !noalias !248 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !223, !noalias !251 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !227, !noalias !251, !nonnull !60, !align !218
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !147, !noalias !251 ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %.03451
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ed ; 3 uses
  %i.ef = add i64 %.03550, %i.cp
  %i.eg = sub i64 %i.bz, %i.ef                    ; 3 uses
  %min.iters.check89 = icmp ult i64 %i.eg, 10
  br i1 %min.iters.check89, label %scalar.ph88.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph49
  %i.eh = mul i64 %i.ds, %i.cn                    ; 2 uses
  %i.ei = shl i64 %i.co, 3
  %i.ej = and i64 %i.ei, -16                      ; 2 uses
  %i.ek = shl i64 %.03550, 3                      ; 2 uses
  %i.el = getelementptr i8, ptr %i.dq, i64 %i.eh
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ej
  %scevgep74 = getelementptr i8, ptr %i.em, i64 %i.ek ; 2 uses
  %scevgep75 = getelementptr i8, ptr %i.dq, i64 %i.cm
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %i.eh ; 2 uses
  %i.en = getelementptr i8, ptr %i.dw, i64 %i.ej
  %scevgep77 = getelementptr i8, ptr %i.en, i64 %i.ek
  %scevgep78 = getelementptr i8, ptr %i.dw, i64 %i.cm
  %scevgep79 = getelementptr i8, ptr %i.dy, i64 8
  %i.eo = mul i64 %i.ec, %i.cn
  %scevgep80 = getelementptr i8, ptr %scevgep79, i64 %i.eo
  %bound081 = icmp ult ptr %scevgep74, %scevgep78
  %bound182 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %bound084 = icmp ult ptr %scevgep74, %scevgep80
  %bound185 = icmp ult ptr %i.ee, %scevgep76
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict83, %found.conflict86
  br i1 %conflict.rdx87, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck73
  %n.vec91 = and i64 %i.eg, -4                    ; 3 uses
  %i.ep = add i64 %i.cq, %n.vec91
  %i.eq = load double, ptr %i.ee, align 8, !tbaa !8, !alias.scope !254
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.eq, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next100, %vector.body92 ] ; 2 uses
  %i.er = add i64 %i.cq, %index93                 ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.du, i64 %i.er ; 3 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.er ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load94 = load <2 x double>, ptr %i.et, align 8, !tbaa !8, !alias.scope !257
  %wide.load95 = load <2 x double>, ptr %i.eu, align 8, !tbaa !8, !alias.scope !257
  %i.ev = fmul <2 x double> %wide.load94, %broadcast.splat97
  %i.ew = fmul <2 x double> %wide.load95, %broadcast.splat97
  %i.ex = getelementptr i8, ptr %i.es, i64 16     ; 2 uses
  %wide.load98 = load <2 x double>, ptr %i.es, align 8, !tbaa !8, !alias.scope !259, !noalias !261
  %wide.load99 = load <2 x double>, ptr %i.ex, align 8, !tbaa !8, !alias.scope !259, !noalias !261
  %i.ey = fsub <2 x double> %wide.load98, %i.ev
  %i.ez = fsub <2 x double> %wide.load99, %i.ew
  store <2 x double> %i.ey, ptr %i.es, align 8, !tbaa !8, !alias.scope !259, !noalias !261
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !8, !alias.scope !259, !noalias !261
  %index.next100 = add nuw i64 %index93, 4        ; 2 uses
  %i.fa = icmp eq i64 %index.next100, %n.vec91
  br i1 %i.fa, label %middle.block101, label %vector.body92, !llvm.loop !262

middle.block101:                                  ; preds = %vector.body92
  %cmp.n102 = icmp eq i64 %i.eg, %n.vec91
  br i1 %cmp.n102, label %._crit_edge, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %vector.memcheck73, %.lr.ph49, %middle.block101
  %.048.ph = phi i64 [ %i.cq, %vector.memcheck73 ], [ %i.cq, %.lr.ph49 ], [ %i.ep, %middle.block101 ]
  br label %scalar.ph88

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fz, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !247, !nonnull !60, !align !218 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !205
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !147
  %i.ff = mul nsw i64 %i.fe, %.03451
  %i.fg = getelementptr [8 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.03246 ; 2 uses
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !240, !nonnull !60, !align !218 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 216
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !173
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %.03246
  %i.fn = load <2 x double>, ptr %i.fm, align 1, !tbaa !10
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !176
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 224
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !147
  %i.fr = mul nsw i64 %i.fq, %.03451
  %i.fs = getelementptr [8 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.fn, %i.fv
  %i.fx = load <2 x double>, ptr %i.fh, align 16, !tbaa !10
  %i.fy = fsub <2 x double> %i.fx, %i.fw
  store <2 x double> %i.fy, ptr %i.fh, align 16, !tbaa !10
  %i.fz = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.cq
  br i1 %i.ga, label %.lr.ph47, label %.preheader, !llvm.loop !263

._crit_edge:                                      ; preds = %scalar.ph88, %middle.block101, %.preheader
  %i.gb = add nsw i64 %.03550, %i.cg
  %i.gc = srem i64 %i.gb, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.gc)
  %i.gd = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.gd, %i.cb
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %bb.c, !llvm.loop !264

scalar.ph88:                                      ; preds = %scalar.ph88.preheader, %scalar.ph88
  %.048 = phi i64 [ %i.gl, %scalar.ph88 ], [ %.048.ph, %scalar.ph88.preheader ] ; 3 uses
  %i.ge = getelementptr [8 x i8], ptr %i.du, i64 %.048 ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.048
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !8
  %i.gh = load double, ptr %i.ee, align 8, !tbaa !8
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = load double, ptr %i.ge, align 8, !tbaa !8
  %i.gk = fsub double %i.gj, %i.gi
  store double %i.gk, ptr %i.ge, align 8, !tbaa !8
  %i.gl = add nsw i64 %.048, 1                    ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.bz
  br i1 %i.gm, label %scalar.ph88, label %._crit_edge, !llvm.loop !265

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.984", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !143    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #25 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !144  ; 2 uses
  %.not156 = icmp eq ptr %i.w, null
  br i1 %.not156, label %bb.h, label %bb.l
end_hunk_0
