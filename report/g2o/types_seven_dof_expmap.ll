inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN5Eigen12PartialPivLUINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE7computeEv:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  store i32 5, ptr %i.ej, align 4, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store i32 6, ptr %i.ek, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.em = load i32, ptr %i.el, align 4, !tbaa !27
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !27
  store i32 %i.ep, ptr %i.ek, align 8, !tbaa !27
  store i32 6, ptr %i.eo, align 4, !tbaa !27
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !27
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.ej, align 4, !tbaa !27
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !27
  store i32 %i.ev, ptr %i.ej, align 4, !tbaa !27
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !27
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !27
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ei, align 8, !tbaa !27
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !27
  store i32 %i.fb, ptr %i.ei, align 8, !tbaa !27
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !27
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.eh, align 4, !tbaa !27
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !27
  store i32 %i.fh, ptr %i.eh, align 4, !tbaa !27
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !27
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !27
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.eg, align 8, !tbaa !27
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !27
  store i32 %i.fn, ptr %i.eg, align 8, !tbaa !27
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !27
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !27
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.ef, align 4, !tbaa !27
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !27
  store i32 %i.ft, ptr %i.ef, align 4, !tbaa !27
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !27
  %i.fu = load i32, ptr %i.dx, align 4, !tbaa !27
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.ee, align 8, !tbaa !27
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !27
  store i32 %i.fy, ptr %i.ee, align 8, !tbaa !27
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !27
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 457
  store i8 1, ptr %i.fz, align 1, !tbaa !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi7EE12unblocked_luERNS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1505", align 8 ; 26 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.1517", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1522", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Block.1454", align 8 ; 10 uses
  store i32 0, ptr %2, align 4, !tbaa !27
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
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 6, ptr %i.r, align 4, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !671
  %i.t = load i64, ptr %i.a, align 8, !tbaa !193
  %.idx = mul i64 %i.t, 48
  %i.u = getelementptr i8, ptr %i.s, i64 %.idx
  %i.v = getelementptr i8, ptr %i.u, i64 48
  %i.w = load double, ptr %i.v, align 8, !tbaa !33
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  %i.y = icmp eq i64 %.1, -1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %spec.select = select i1 %i.z, i64 6, i64 %.1
  ret i64 %spec.select

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.loopexit
  %.0171 = phi i64 [ -1, %bb.a ], [ %.1, %.loopexit ] ; 5 uses
  %.052170 = phi i64 [ 0, %bb.a ], [ %i.fb, %.loopexit ] ; 17 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !671, !noalias !673 ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !193, !noalias !673 ; 8 uses
  %i.ac = mul nsw i64 %i.ab, %.052170
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.052170 ; 8 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !33
  %i.ag = call noundef double @llvm.fabs.f64(double %i.af) ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !33
  %i.aj = call noundef double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp ogt double %i.aj, %i.ag            ; 3 uses
  %.sroa.0.1.i.i = zext i1 %i.ak to i64           ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.052170, 5
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.al = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !33
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an) ; 3 uses
  %i.ap = fcmp ogt double %i.ao, %i.al            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ap, i64 2, i64 %.sroa.0.1.i.i ; 2 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ap, double %i.ao, double %.sroa.7.1.i.i ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %.052170, 4
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.aq = select i1 %i.ap, double %i.ao, double %i.al ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !33
  %i.at = call noundef double @llvm.fabs.f64(double %i.as) ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.aq            ; 3 uses
  %.sroa.0.1.i.i.2 = select i1 %i.au, i64 3, i64 %.sroa.0.1.i.i.1 ; 2 uses
  %.sroa.7.1.i.i.2 = select i1 %i.au, double %i.at, double %.sroa.7.1.i.i.1 ; 2 uses
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %.052170, 3
  br i1 %exitcond.not.i.i.i.i.2, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.av = select i1 %i.au, double %i.at, double %i.aq ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ae, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !33
  %i.ay = call noundef double @llvm.fabs.f64(double %i.ax) ; 3 uses
  %i.az = fcmp ogt double %i.ay, %i.av            ; 3 uses
  %.sroa.0.1.i.i.3 = select i1 %i.az, i64 4, i64 %.sroa.0.1.i.i.2 ; 2 uses
  %.sroa.7.1.i.i.3 = select i1 %i.az, double %i.ay, double %.sroa.7.1.i.i.2 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %.052170, 2
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.ba = select i1 %i.az, double %i.ay, double %i.av ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !33
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc) ; 3 uses
  %i.be = fcmp ogt double %i.bd, %i.ba            ; 3 uses
  %.sroa.0.1.i.i.4 = select i1 %i.be, i64 5, i64 %.sroa.0.1.i.i.3 ; 2 uses
  %.sroa.7.1.i.i.4 = select i1 %i.be, double %i.bd, double %.sroa.7.1.i.i.3 ; 2 uses
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %.052170, 1
  br i1 %exitcond.not.i.i.i.i.4, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.5

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.bf = select i1 %i.be, double %i.bd, double %i.ba
  %i.bg = getelementptr i8, ptr %i.ae, i64 48
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !33
  %i.bi = call noundef double @llvm.fabs.f64(double %i.bh) ; 2 uses
  %i.bj = fcmp ogt double %i.bi, %i.bf            ; 2 uses
  %.sroa.0.1.i.i.5 = select i1 %i.bj, i64 6, i64 %.sroa.0.1.i.i.4
  %.sroa.7.1.i.i.5 = select i1 %i.bj, double %i.bi, double %.sroa.7.1.i.i.4
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %.lr.ph.i.i.i.i.5, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.0.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.0.1.i.i.4, %.lr.ph.i.i.i.i.4 ], [ %.sroa.0.1.i.i.5, %.lr.ph.i.i.i.i.5 ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i.1 ], [ %.sroa.7.1.i.i.2, %.lr.ph.i.i.i.i.2 ], [ %.sroa.7.1.i.i.3, %.lr.ph.i.i.i.i.3 ], [ %.sroa.7.1.i.i.4, %.lr.ph.i.i.i.i.4 ], [ %.sroa.7.1.i.i.5, %.lr.ph.i.i.i.i.5 ]
  %i.bk = trunc nuw nsw i64 %.052170 to i32
  %i.bl = sub nsw i32 6, %i.bk                    ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.052170 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.052170
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !27
  %i.bp = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bp, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.052170 ; 8 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bm ; 8 uses
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !33
  %i.bt = load double, ptr %i.br, align 8, !tbaa !33
  store double %i.bt, ptr %i.bq, align 8, !tbaa !33
  store double %i.bs, ptr %i.br, align 8, !tbaa !33
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ab ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.ab ; 2 uses
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !33
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !33
  store double %i.bx, ptr %i.bu, align 8, !tbaa !33
  store double %i.bw, ptr %i.bv, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 4  ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ca = load double, ptr %i.by, align 8, !tbaa !33
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !33
  store double %i.cb, ptr %i.by, align 8, !tbaa !33
  store double %i.ca, ptr %i.bz, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 24 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !33
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !33
  store double %i.cf, ptr %i.cc, align 8, !tbaa !33
  store double %i.ce, ptr %i.cd, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 5 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !33
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !33
  store double %i.cj, ptr %i.cg, align 8, !tbaa !33
  store double %i.ci, ptr %i.ch, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 40 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !33
  store double %i.cn, ptr %i.ck, align 8, !tbaa !33
  store double %i.cm, ptr %i.cl, align 8, !tbaa !33
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 48 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.br, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !33
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !33
  store double %i.cr, ptr %i.co, align 8, !tbaa !33
  store double %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cs = load i32, ptr %2, align 4, !tbaa !27
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %2, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %8 = sext i32 %i.bl to i64                      ; 10 uses
  %9 = sub nsw i64 7, %8                          ; 4 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %9 ; 11 uses
  %i.cv = load double, ptr %i.ae, align 8, !tbaa !33, !noalias !676 ; 9 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cy = lshr exact i64 %i.cw, 3
  %i.cz = and i64 %i.cy, 1
  %i.da = call i64 @llvm.smin.i64(i64 %i.cz, i64 %8)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.da, %bb.f ], [ %8, %bb.e ] ; 10 uses
  %i.db = sub nsw i64 %8, %.0.i.i.i.i.i.i.i       ; 2 uses
  %10 = sdiv i64 %i.db, 2                         ; 2 uses
  %i.dc = shl nsw i64 %10, 1
  %i.dd = add nsw i64 %i.dc, %.0.i.i.i.i.i.i.i    ; 5 uses
  %11 = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %11, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.de = load double, ptr %i.cu, align 8, !tbaa !33
  %i.df = fdiv double %i.de, %i.cv
  store double %i.df, ptr %i.cu, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !33
  %i.di = fdiv double %i.dh, %i.cv
  store double %i.di, ptr %i.dg, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !33
  %i.dl = fdiv double %i.dk, %i.cv
  store double %i.dl, ptr %i.dj, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !33
  %i.do = fdiv double %i.dn, %i.cv
  store double %i.do, ptr %i.dm, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !33
  %i.dr = fdiv double %i.dq, %i.cv
  store double %i.dr, ptr %i.dp, align 8, !tbaa !33
  %exitcond.not.i.i.i.i.i.i.i.4 = icmp eq i64 %.0.i.i.i.i.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i.i.i.i.4, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.5:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cu, i64 40 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !33
  %i.du = fdiv double %i.dt, %i.cv
  store double %i.du, ptr %i.ds, align 8, !tbaa !33
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.5, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dv = icmp sgt i64 %i.db, 1
  br i1 %i.dv, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dw = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dy = icmp slt i64 %i.dd, %8
  br i1 %i.dy, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dz = shl nsw i64 %10, 1
  %i.ea = add i64 %.0.i.i.i.i.i.i.i, %i.dz
  %i.eb = sub i64 %8, %i.ea                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.eb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.eb, -2                      ; 3 uses
  %i.ec = add i64 %i.dd, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = getelementptr [8 x i8], ptr %i.cu, i64 %i.dd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ee, align 8, !tbaa !33
  %i.ef = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ef, ptr %i.ee, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader177

.lr.ph.i17.i.i.i.i.i.i.preheader177:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dd, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader177, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !33
  %i.ej = fdiv double %i.ei, %i.cv
  store double %i.ej, ptr %i.eh, align 8, !tbaa !33
  %i.ek = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ek, %8
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !680

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.em = load <2 x double>, ptr %i.el, align 16, !tbaa !17
  %i.en = fdiv <2 x double> %i.em, %i.dx
  store <2 x double> %i.en, ptr %i.el, align 16, !tbaa !17
  %i.eo = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.ep = icmp slt i64 %i.eo, %i.dd
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !681

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELi7ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.eq = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.eq, i64 %.052170, i64 %.0171
  %.pre = sext i32 %i.bl to i64                   ; 2 uses
  %.pre172 = sub nsw i64 7, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %9, %._crit_edge.i.i.i.i.i.i ], [ %9, %middle.block ], [ %9, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %8, %._crit_edge.i.i.i.i.i.i ], [ %8, %middle.block ], [ %8, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.er = load ptr, ptr %0, align 8, !tbaa !671, !noalias !682 ; 3 uses
  %i.es = load i64, ptr %i.a, align 8, !tbaa !193, !noalias !682 ; 8 uses
  %i.et = mul nsw i64 %i.es, %.052170
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi173 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.052170 ; 2 uses
  %i.ex = mul nsw i64 %i.es, %.pre-phi173         ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.pre-phi173
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ex ; 2 uses
  store ptr %i.fa, ptr %7, align 8, !tbaa !685, !alias.scope !687
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !193, !alias.scope !687
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !193, !alias.scope !687
  store ptr %0, ptr %i.d, align 8, !tbaa !690, !alias.scope !687
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !193, !alias.scope !687
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !193, !alias.scope !687
  store i64 %i.es, ptr %i.g, align 8, !tbaa !692, !alias.scope !687
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ev, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.eu, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.es, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.es, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.ey, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.ew, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.ev, ptr %i.i, align 8, !tbaa !695
  store i64 %i.es, ptr %i.j, align 8, !tbaa !193
  store ptr %i.ey, ptr %i.k, align 8, !tbaa !697
  store i64 %i.es, ptr %i.l, align 8, !tbaa !193
  store i64 1, ptr %i.m, align 8, !tbaa !699
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.fa, ptr %4, align 8, !tbaa !725
  store i64 %i.es, ptr %i.n, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !727
  store ptr %3, ptr %i.o, align 8, !tbaa !729
  store ptr %6, ptr %i.p, align 8, !tbaa !580
  store ptr %7, ptr %i.q, align 8, !tbaa !731
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fb = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, 6
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !733
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !734, !nonnull !300, !align !587 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !193  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !193  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !300, !align !587 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !300, !align !587 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !725  ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !193  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !736, !noalias !737 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !740, !noalias !741 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !744, !noalias !741, !nonnull !300, !align !587
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !193, !noalias !741 ; 3 uses
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
  %i.ao = load double, ptr %i.an, align 8, !tbaa !33, !alias.scope !745
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !33, !alias.scope !748
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !33, !alias.scope !748
  %i.as = fmul <2 x double> %wide.load, %broadcast.splat
  %i.at = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.au = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.ap, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %i.av = fsub <2 x double> %wide.load71, %i.as
  %i.aw = fsub <2 x double> %wide.load72, %i.at
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !33, !alias.scope !750, !noalias !752
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !753

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.09.i.ph ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.ba = load double, ptr %i.az, align 8, !tbaa !33
  %i.bb = load double, ptr %i.an, align 8, !tbaa !33
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !33
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !33
  %i.bf = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li7ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi7ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !754

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %.09.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !33
  %i.bl = load double, ptr %i.an, align 8, !tbaa !33
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !33
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %i.bi, align 8, !tbaa !33
  %i.bp = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !33
  %i.bt = load double, ptr %i.an, align 8, !tbaa !33
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !33
end_hunk_0
