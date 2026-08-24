Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15254
inline.NumDeleted: 8448
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5Eigen12PartialPivLUINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7computeEv:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %1, align 8, !tbaa !446
  store i64 6, ptr %i.ch, align 8, !tbaa !448
  %i.ci = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ck = and i32 %i.cj, 1
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not, i8 1, i8 -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !235
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.cn, align 16, !tbaa !27
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  store i32 4, ptr %i.cr, align 16, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  store i32 5, ptr %i.cs, align 4, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !27
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !27
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !27
  store i32 5, ptr %i.cw, align 4, !tbaa !27
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !27
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.cr, align 16, !tbaa !27
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !27
  store i32 %i.dd, ptr %i.cr, align 16, !tbaa !27
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.df = load i32, ptr %i.de, align 4, !tbaa !27
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.cq, align 4, !tbaa !27
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !27
  store i32 %i.dj, ptr %i.cq, align 4, !tbaa !27
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !27
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !27
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.cp, align 8, !tbaa !27
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !27
  store i32 %i.dp, ptr %i.cp, align 8, !tbaa !27
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !27
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !27
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.co, align 4, !tbaa !27
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !27
  store i32 %i.dv, ptr %i.co, align 4, !tbaa !27
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !27
  %i.dw = load i32, ptr %i.cg, align 8, !tbaa !27
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.cn, align 16, !tbaa !27
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !27
  store i32 %i.ea, ptr %i.cn, align 16, !tbaa !27
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 345
  store i8 1, ptr %i.eb, align 1, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.2451", align 8 ; 26 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.2463", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2468", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Block.2403", align 8 ; 10 uses
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
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 5, ptr %i.r, align 4, !tbaa !27
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = load i64, ptr %i.a, align 8, !tbaa !448
  %.idx = mul i64 %i.t, 40
  %i.u = getelementptr i8, ptr %i.s, i64 %.idx
  %i.v = getelementptr i8, ptr %i.u, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !29
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  %i.y = icmp eq i64 %.1, -1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %spec.select = select i1 %i.z, i64 5, i64 %.1
  ret i64 %spec.select

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.loopexit
  %.0171 = phi i64 [ -1, %bb.a ], [ %.1, %.loopexit ] ; 5 uses
  %.052170 = phi i64 [ 0, %bb.a ], [ %i.ep, %.loopexit ] ; 16 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !446, !noalias !450 ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !448, !noalias !450 ; 7 uses
  %i.ac = mul nsw i64 %i.ab, %.052170
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.052170 ; 7 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29
  %i.ag = call noundef double @llvm.fabs.f64(double %i.af) ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aj = call noundef double @llvm.fabs.f64(double %i.ai) ; 3 uses
  %i.ak = fcmp ogt double %i.aj, %i.ag            ; 3 uses
  %.sroa.0.1.i.i = zext i1 %i.ak to i64           ; 2 uses
  %.sroa.7.1.i.i = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %.052170, 4
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.al = select i1 %i.ak, double %i.aj, double %i.ag ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !29
  %i.ao = call noundef double @llvm.fabs.f64(double %i.an) ; 3 uses
  %i.ap = fcmp ogt double %i.ao, %i.al            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ap, i64 2, i64 %.sroa.0.1.i.i ; 2 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ap, double %i.ao, double %.sroa.7.1.i.i ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %.052170, 3
  br i1 %exitcond.not.i.i.i.i.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.aq = select i1 %i.ap, double %i.ao, double %i.al ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !29
  %i.at = call noundef double @llvm.fabs.f64(double %i.as) ; 3 uses
  %i.au = fcmp ogt double %i.at, %i.aq            ; 3 uses
  %.sroa.0.1.i.i.2 = select i1 %i.au, i64 3, i64 %.sroa.0.1.i.i.1 ; 2 uses
  %.sroa.7.1.i.i.2 = select i1 %i.au, double %i.at, double %.sroa.7.1.i.i.1 ; 2 uses
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %.052170, 2
  br i1 %exitcond.not.i.i.i.i.2, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.3

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.av = select i1 %i.au, double %i.at, double %i.aq ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ae, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29
  %i.ay = call noundef double @llvm.fabs.f64(double %i.ax) ; 3 uses
  %i.az = fcmp ogt double %i.ay, %i.av            ; 3 uses
  %.sroa.0.1.i.i.3 = select i1 %i.az, i64 4, i64 %.sroa.0.1.i.i.2 ; 2 uses
  %.sroa.7.1.i.i.3 = select i1 %i.az, double %i.ay, double %.sroa.7.1.i.i.2 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %.052170, 1
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.4

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.ba = select i1 %i.az, double %i.ay, double %i.av
  %i.bb = getelementptr i8, ptr %i.ae, i64 40
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !29
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
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !27
  %i.bk = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bk, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.052170 ; 7 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bh ; 7 uses
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !29
  %i.bo = load double, ptr %i.bm, align 8, !tbaa !29
  store double %i.bo, ptr %i.bl, align 8, !tbaa !29
  store double %i.bn, ptr %i.bm, align 8, !tbaa !29
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ab ; 2 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ab ; 2 uses
  %i.br = load double, ptr %i.bp, align 8, !tbaa !29
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !29
  store double %i.bs, ptr %i.bp, align 8, !tbaa !29
  store double %i.br, ptr %i.bq, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 4  ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !29
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !29
  store double %i.bw, ptr %i.bt, align 8, !tbaa !29
  store double %i.bv, ptr %i.bu, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 24 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !29
  %i.ca = load double, ptr %i.by, align 8, !tbaa !29
  store double %i.ca, ptr %i.bx, align 8, !tbaa !29
  store double %i.bz, ptr %i.by, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ab, 5 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !29
  %i.ce = load double, ptr %i.cc, align 8, !tbaa !29
  store double %i.ce, ptr %i.cb, align 8, !tbaa !29
  store double %i.cd, ptr %i.cc, align 8, !tbaa !29
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i64 %i.ab, 40 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.bl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !29
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !29
  store double %i.ci, ptr %i.cf, align 8, !tbaa !29
  store double %i.ch, ptr %i.cg, align 8, !tbaa !29
  %i.cj = load i32, ptr %2, align 4, !tbaa !27
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %2, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %8 = sext i32 %i.bg to i64                      ; 10 uses
  %i.cl = sub nsw i64 6, %8                       ; 4 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cl ; 10 uses
  %i.cn = load double, ptr %i.ae, align 8, !tbaa !29, !noalias !453 ; 8 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = and i64 %i.co, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cq = lshr exact i64 %i.co, 3
  %i.cr = and i64 %i.cq, 1
  %i.cs = call i64 @llvm.smin.i64(i64 %i.cr, i64 %8)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.f ], [ %8, %bb.e ] ; 9 uses
  %i.ct = sub nsw i64 %8, %.0.i.i.i.i.i.i.i       ; 2 uses
  %9 = sdiv i64 %i.ct, 2
  %i.cu = shl nsw i64 %9, 1                       ; 2 uses
  %i.cv = add nsw i64 %i.cu, %.0.i.i.i.i.i.i.i    ; 5 uses
  %10 = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %10, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cw = load double, ptr %i.cm, align 8, !tbaa !29
  %i.cx = fdiv double %i.cw, %i.cn
  store double %i.cx, ptr %i.cm, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !29
  %i.da = fdiv double %i.cz, %i.cn
  store double %i.da, ptr %i.cy, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !29
  %i.dd = fdiv double %i.dc, %i.cn
  store double %i.dd, ptr %i.db, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !29
  %i.dg = fdiv double %i.df, %i.cn
  store double %i.dg, ptr %i.de, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !29
  %i.dj = fdiv double %i.di, %i.cn
  store double %i.dj, ptr %i.dh, align 8, !tbaa !29
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dk = icmp sgt i64 %i.ct, 1
  br i1 %i.dk, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dl = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dn = icmp slt i64 %i.cv, %8
  br i1 %i.dn, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.do = add i64 %.0.i.i.i.i.i.i.i, %i.cu
  %i.dp = sub i64 %8, %i.do                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dp, -2                      ; 3 uses
  %i.dq = add i64 %i.cv, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = getelementptr [8 x i8], ptr %i.cm, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !29
  %i.dt = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader177

.lr.ph.i17.i.i.i.i.i.i.preheader177:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cv, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader177, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !29
  %i.dx = fdiv double %i.dw, %i.cn
  store double %i.dx, ptr %i.dv, align 8, !tbaa !29
  %i.dy = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dy, %8
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !457

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !17
  %i.eb = fdiv <2 x double> %i.ea, %i.dm
  store <2 x double> %i.eb, ptr %i.dz, align 16, !tbaa !17
  %i.ec = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.cv
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !458

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.ee = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.ee, i64 %.052170, i64 %.0171
  %.pre = sext i32 %i.bg to i64                   ; 2 uses
  %.pre172 = sub nsw i64 6, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cl, %._crit_edge.i.i.i.i.i.i ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %8, %._crit_edge.i.i.i.i.i.i ], [ %8, %middle.block ], [ %8, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !446, !noalias !459 ; 3 uses
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !448, !noalias !459 ; 8 uses
  %i.eh = mul nsw i64 %i.eg, %.052170
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.pre-phi173 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.052170 ; 2 uses
  %i.el = mul nsw i64 %i.eg, %.pre-phi173         ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %.pre-phi173
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.el ; 2 uses
  store ptr %i.eo, ptr %7, align 8, !tbaa !462, !alias.scope !464
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !448, !alias.scope !464
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !448, !alias.scope !464
  store ptr %0, ptr %i.d, align 8, !tbaa !467, !alias.scope !464
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !448, !alias.scope !464
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !448, !alias.scope !464
  store i64 %i.eg, ptr %i.g, align 8, !tbaa !469, !alias.scope !464
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.ej, ptr %3, align 8
  store i64 %.pre-phi, ptr %.sroa.484.0..sroa_idx, align 8
  store ptr %i.ei, ptr %.sroa.686.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.888.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.989.0..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.1090.0..sroa_idx, align 8
  store i64 %i.eg, ptr %.sroa.1191.0..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.1292.0..sroa_idx, align 8
  store i64 %i.eg, ptr %.sroa.14.0..sroa_idx, align 8
  store ptr %i.em, ptr %i.h, align 8
  store i64 %.pre-phi, ptr %.sroa.18.96..sroa_idx, align 8
  store ptr %i.ek, ptr %.sroa.19.96..sroa_idx, align 8
  store ptr %0, ptr %.sroa.21.96..sroa_idx, align 8
  store i64 %.052170, ptr %.sroa.22.96..sroa_idx, align 8
  store i64 0, ptr %.sroa.23.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.24.96..sroa_idx, align 8
  store i64 %.pre-phi173, ptr %.sroa.26.96..sroa_idx, align 8
  store i64 1, ptr %.sroa.27.96..sroa_idx, align 8
  store ptr %i.ej, ptr %i.i, align 8, !tbaa !472
  store i64 %i.eg, ptr %i.j, align 8, !tbaa !448
  store ptr %i.em, ptr %i.k, align 8, !tbaa !474
  store i64 %i.eg, ptr %i.l, align 8, !tbaa !448
  store i64 1, ptr %i.m, align 8, !tbaa !476
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.eo, ptr %4, align 8, !tbaa !502
  store i64 %i.eg, ptr %i.n, align 8, !tbaa !448
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %4, ptr %5, align 8, !tbaa !504
  store ptr %3, ptr %i.o, align 8, !tbaa !506
  store ptr %6, ptr %i.p, align 8, !tbaa !508
  store ptr %7, ptr %i.q, align 8, !tbaa !510
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ep = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, 5
  br i1 %exitcond.not, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !512
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSM_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !513, !nonnull !101, !align !133 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !462
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !448  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !448  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !101, !align !133 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.p = load ptr, ptr %0, align 8, !nonnull !101, !align !133 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !502  ; 4 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !448  ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !515, !noalias !516 ; 6 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !519, !noalias !520 ; 3 uses
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !523, !noalias !520, !nonnull !101, !align !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !448, !noalias !520 ; 3 uses
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
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29, !alias.scope !524
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ao, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !29, !alias.scope !527
  %wide.load70 = load <2 x double>, ptr %i.ar, align 8, !tbaa !29, !alias.scope !527
  %i.as = fmul <2 x double> %wide.load, %broadcast.splat
  %i.at = fmul <2 x double> %wide.load70, %broadcast.splat
  %i.au = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.ap, align 8, !tbaa !29, !alias.scope !529, !noalias !531
  %wide.load72 = load <2 x double>, ptr %i.au, align 8, !tbaa !29, !alias.scope !529, !noalias !531
  %i.av = fsub <2 x double> %wide.load71, %i.as
  %i.aw = fsub <2 x double> %wide.load72, %i.at
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !29, !alias.scope !529, !noalias !531
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !29, !alias.scope !529, !noalias !531
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !532

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.09.i.ph ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i.ph
  %i.ba = load double, ptr %i.az, align 8, !tbaa !29
  %i.bb = load double, ptr %i.an, align 8, !tbaa !29
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !29
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !29
  %i.bf = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bh = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEEEENS3_INS_7ProductINS4_INS4_ISA_Li6ELi1ELb1EEELin1ELi1ELb0EEENS4_INS4_ISA_Li1ELi6ELb0EEELi1ELin1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !533

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bx, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %.09.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.09.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !29
  %i.bl = load double, ptr %i.an, align 8, !tbaa !29
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !29
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %i.bi, align 8, !tbaa !29
  %i.bp = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bp
  %i.bs = load double, ptr %i.br, align 8, !tbaa !29
  %i.bt = load double, ptr %i.an, align 8, !tbaa !29
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = load double, ptr %i.bq, align 8, !tbaa !29
end_hunk_0
