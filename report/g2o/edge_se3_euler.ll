Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_euler?download=true
inline.NumInlined: 5314
inline.NumDeleted: 2988
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5Eigen12PartialPivLUINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE7computeEv:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %1, align 8, !tbaa !145
  store i64 6, ptr %i.ch, align 8, !tbaa !147
  %i.ci = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !138
  %i.ck = and i32 %i.cj, 1
  %.not = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not, i8 1, i8 -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !134
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.cn, align 16, !tbaa !138
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  store i32 4, ptr %i.cr, align 16, !tbaa !138
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  store i32 5, ptr %i.cs, align 4, !tbaa !138
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !138
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !138
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !138
  store i32 5, ptr %i.cw, align 4, !tbaa !138
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !138
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.cr, align 16, !tbaa !138
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !138
  store i32 %i.dd, ptr %i.cr, align 16, !tbaa !138
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !138
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.df = load i32, ptr %i.de, align 4, !tbaa !138
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.cq, align 4, !tbaa !138
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !138
  store i32 %i.dj, ptr %i.cq, align 4, !tbaa !138
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !138
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !138
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.cp, align 8, !tbaa !138
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !138
  store i32 %i.dp, ptr %i.cp, align 8, !tbaa !138
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !138
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !138
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.co, align 4, !tbaa !138
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !138
  store i32 %i.dv, ptr %i.co, align 4, !tbaa !138
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !138
  %i.dw = load i32, ptr %i.cg, align 8, !tbaa !138
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.cn, align 16, !tbaa !138
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !138
  store i32 %i.ea, ptr %i.cn, align 16, !tbaa !138
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !138
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 345
  store i8 1, ptr %i.eb, align 1, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLi6EE12unblocked_luERNS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %.052170 = phi i64 [ 0, %bb.a ], [ %i.ep, %.loopexit ] ; 16 uses
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
  %i.bg = sub nuw nsw i32 5, %i.bf                ; 2 uses
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
  %8 = zext nneg i32 %i.bg to i64                 ; 10 uses
  %i.cl = sub nuw nsw i64 6, %8                   ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cl ; 10 uses
  %i.cn = load double, ptr %i.ae, align 8, !tbaa !8, !noalias !152 ; 8 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = and i64 %i.co, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cq = lshr exact i64 %i.co, 3
  %i.cr = and i64 %i.cq, 1
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 %8)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.f ], [ %8, %bb.e ] ; 9 uses
  %i.ct = sub nsw i64 %8, %.0.i.i.i.i.i.i.i       ; 2 uses
  %.lhs.trunc = trunc i64 %i.ct to i8
  %9 = sdiv i8 %.lhs.trunc, 2
  %.sext = sext i8 %9 to i64
  %i.cu = shl nsw i64 %.sext, 1                   ; 2 uses
  %i.cv = add nsw i64 %i.cu, %.0.i.i.i.i.i.i.i    ; 5 uses
  %.not177 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not177, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cw = load double, ptr %i.cm, align 8, !tbaa !8
  %i.cx = fdiv double %i.cw, %i.cn
  store double %i.cx, ptr %i.cm, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = fdiv double %i.cz, %i.cn
  store double %i.da, ptr %i.cy, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.0.i.i.i.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !8
  %i.dd = fdiv double %i.dc, %i.cn
  store double %i.dd, ptr %i.db, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.0.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = fdiv double %i.df, %i.cn
  store double %i.dg, ptr %i.de, align 8, !tbaa !8
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELi6ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = fdiv double %i.di, %i.cn
  store double %i.dj, ptr %i.dh, align 8, !tbaa !8
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
  %i.do = add nsw i64 %.0.i.i.i.i.i.i.i, %i.cu
  %i.dp = sub nsw i64 %8, %i.do                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader177, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dp, -2                      ; 3 uses
  %i.dq = add nsw i64 %i.cv, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = getelementptr [8 x i8], ptr %i.cm, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ds, align 8, !tbaa !8
  %i.dt = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.preheader177

.lr.ph.i17.i.i.i.i.i.i.preheader177:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.cv, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader177, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader177 ] ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = fdiv double %i.dw, %i.cn
  store double %i.dx, ptr %i.dv, align 8, !tbaa !8
  %i.dy = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dy, %8
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !158

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !10
  %i.eb = fdiv <2 x double> %i.ea, %i.dm
  store <2 x double> %i.eb, ptr %i.dz, align 16, !tbaa !10
  %i.ec = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.cv
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !159

bb.g:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi6ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.ee = icmp eq i64 %.0171, -1
  %spec.select54 = select i1 %i.ee, i64 %.052170, i64 %.0171
  %.pre = zext nneg i32 %i.bg to i64              ; 2 uses
  %.pre172 = sub nuw nsw i64 6, %.pre
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.g
  %.pre-phi173 = phi i64 [ %.pre172, %bb.g ], [ %i.cl, %._crit_edge.i.i.i.i.i.i ], [ %i.cl, %middle.block ], [ %i.cl, %.lr.ph.i17.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %8, %._crit_edge.i.i.i.i.i.i ], [ %8, %middle.block ], [ %8, %.lr.ph.i17.i.i.i.i.i.i ] ; 4 uses
  %.1 = phi i64 [ %spec.select54, %bb.g ], [ %.0171, %._crit_edge.i.i.i.i.i.i ], [ %.0171, %middle.block ], [ %.0171, %.lr.ph.i17.i.i.i.i.i.i ] ; 3 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !145, !noalias !160 ; 3 uses
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !147, !noalias !160 ; 8 uses
  %i.eh = mul nsw i64 %i.eg, %.052170
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.pre-phi173 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.052170 ; 2 uses
  %i.el = mul nsw i64 %i.eg, %.pre-phi173         ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.pre-phi173
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.el ; 2 uses
  store ptr %i.eo, ptr %7, align 8, !tbaa !163, !alias.scope !165
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !147, !alias.scope !165
  store i64 %.pre-phi, ptr %i.c, align 8, !tbaa !147, !alias.scope !165
  store ptr %0, ptr %i.d, align 8, !tbaa !168, !alias.scope !165
  store i64 %.pre-phi173, ptr %i.e, align 8, !tbaa !147, !alias.scope !165
  store i64 %.pre-phi173, ptr %i.f, align 8, !tbaa !147, !alias.scope !165
  store i64 %i.eg, ptr %i.g, align 8, !tbaa !170, !alias.scope !165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
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
  store ptr %i.ej, ptr %i.i, align 8, !tbaa !173
  store i64 %i.eg, ptr %i.j, align 8, !tbaa !147
  store ptr %i.em, ptr %i.k, align 8, !tbaa !176
  store i64 %i.eg, ptr %i.l, align 8, !tbaa !147
  store i64 1, ptr %i.m, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.eo, ptr %4, align 8, !tbaa !205
  store i64 %i.eg, ptr %i.n, align 8, !tbaa !147
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
  %i.ep = add nuw nsw i64 %.052170, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, 5
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
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #25 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !267
  %.sroa.speculated275 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated275, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph314.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph325.split.preheader, label %._crit_edge

.lr.ph325.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = icmp slt i64 %i.b, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph314.us.preheader:                           ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = shl i64 %i.b, 3
  %i.bc = mul i64 %., %6
  %i.bd = shl i64 %i.bc, 3
  %i.be = shl i64 %6, 3                           ; 3 uses
  %i.bf = shl i64 %3, 3
  %i.bg = add i64 %i.bf, 8
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = shl i64 %3, 5
  %i.bj = add i64 %i.bi, 32
  %i.bk = shl i64 %3, 3
  %stride.check.1 = icmp slt i64 %i.be, 0
  %i.bl = shl i64 %3, 4
  %stride.check.2 = icmp slt i64 %i.be, 0
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.loopexit.us, %.lr.ph314.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph314.us.preheader ] ; 2 uses
  %.0132323.us = phi i64 [ %i.ca, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
  %i.bm = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bn = mul i64 %i.bh, %indvar                  ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bo = sub nsw i64 %0, %.0132323.us
  %.sroa.speculated218.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bo) ; 8 uses
  %i.bp = icmp sgt i64 %.sroa.speculated218.us, 0
  br i1 %i.bp, label %.lr.ph308.us.us.preheader, label %._crit_edge315.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph314.us
  %i.bq = getelementptr i8, ptr %4, i64 %i.bm
  %i.br = getelementptr i8, ptr %4, i64 %i.bm
  %i.bs = getelementptr i8, ptr %2, i64 %i.bn
  %i.bt = getelementptr i8, ptr %4, i64 %i.bm
  %i.bu = getelementptr i8, ptr %2, i64 %i.bn
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us330, %bb.w
  %.0322.us = phi i64 [ %i.ca, %.lr.ph.us330 ], [ %i.by, %bb.w ] ; 4 uses
  %i.bv = sub nsw i64 %0, %.0322.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.bv, i64 %.sroa.speculated243) ; 3 uses
  %i.bw = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.bw, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us327 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0322.us
  store ptr %gep.us327, ptr %14, align 8
  store i64 %3, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us332

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.bx = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.bx, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split334.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.by = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.bz = icmp slt i64 %i.by, %0
  br i1 %i.bz, label %bb.s, label %.loopexit.us, !llvm.loop !269

.loopexit.us:                                     ; preds = %bb.w
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !270

._crit_edge315.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph314.us
  %i.ca = add nsw i64 %.0132323.us, %i.b          ; 3 uses
  %i.cb = icmp slt i64 %i.ca, %0
  br i1 %i.cb, label %.lr.ph.us330, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 3 uses
  %.0131312.us.us = phi i64 [ %i.gu, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 10 uses
  %i.cc = mul i64 %i.bd, %indvar375               ; 3 uses
  %i.cd = or disjoint i64 %.0131312.us.us, 1
  %i.ce = mul i64 %., %indvar375                  ; 2 uses
  %i.cf = sub i64 %1, %i.ce
  %smin379 = call i64 @llvm.smin.i64(i64 %., i64 %i.cf)
  %i.cg = add i64 %smin379, %.0131312.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cd, i64 %i.cg)
  %i.ch = xor i64 %i.ce, -1
  %i.ci = add i64 %smax, %i.ch
  %i.cj = mul i64 %i.be, %i.ci
  %i.ck = sub nsw i64 %1, %.0131312.us.us         ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.ck) ; 3 uses
  %i.cl = add nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
  %i.cm = icmp slt i64 %i.ck, 1
  %i.cn = mul nuw nsw i64 %.0131312.us.us, %.sroa.speculated218.us
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cn ; 2 uses
  %i.cp = mul nsw i64 %.0131312.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bq, i64 %i.cc
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cj
  %i.cs = getelementptr i8, ptr %i.br, i64 %i.cc
  %i.ct = getelementptr i8, ptr %i.bt, i64 %i.cc
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 4 uses
  %.0130306.us.us = phi i64 [ %i.ea, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 5 uses
  %i.cu = shl i64 %indvar377, 5                   ; 3 uses
  %scevgep380 = getelementptr i8, ptr %i.cr, i64 %i.cu
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv341, i64 4)
  %i.cv = shl i64 %smin381, 3                     ; 3 uses
  %scevgep382 = getelementptr i8, ptr %scevgep380, i64 %i.cv ; 2 uses
  %i.cw = mul i64 %i.bj, %indvar377               ; 2 uses
  %i.cx = sub nuw nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.cx, i64 4) ; 9 uses
  %i.cy = icmp slt i64 %i.cx, 1
  %i.cz = add i64 %.0130306.us.us, %.0132323.us   ; 10 uses
  %brmerge = select i1 %i.cy, i1 true, i1 %i.cm
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.x
  %i.da = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.db = add i64 %i.cz, 1                        ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %4, i64 %i.cz
  %i.dd = getelementptr [8 x i8], ptr %4, i64 %i.db
  %i.de = mul i64 %i.cz, %3
  %i.df = getelementptr [8 x i8], ptr %2, i64 %i.db
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  %i.dh = icmp sgt i64 %i.cx, 1
  br i1 %i.dh, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.ec, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.di = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8
  %i.dl = getelementptr [8 x i8], ptr %i.dd, i64 %i.di
  %i.dm = fneg double %i.dk
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.ds, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.0127297.us.us
  %i.do = load double, ptr %i.dn, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0127297.us.us ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !8
  %i.dr = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dq)
  store double %i.dr, ptr %i.dp, align 8, !tbaa !8
  %i.ds = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.da
  br i1 %i.dt, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !271

._crit_edge305.split.us.us:                       ; preds = %.lr.ph300.us.us.2, %._crit_edge.us.us.2, %._crit_edge301.split.us.us, %._crit_edge301.split.us.us.1, %bb.x
  %i.du = sub nsw i64 %i.cx, %.sroa.speculated207.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.cz
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.co, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef %.0130306.us.us)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge305.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dw = add nsw i64 %.sroa.speculated207.us.us, %i.cz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dx = mul nsw i64 %i.cz, %3
  %i.dy = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %i.dx
  store ptr %i.dz, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated207.us.us, i64 noundef %i.du, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split317.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %gep311.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.dw
  store ptr %gep311.us.us, ptr %13, align 8
  store i64 %6, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.co, i64 noundef %i.du, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef 0, i64 noundef %.0130306.us.us)
          to label %bb.ab unwind label %.split320.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.ea = add nuw nsw i64 %.0130306.us.us, 4      ; 2 uses
  %i.eb = icmp slt i64 %i.ea, %.sroa.speculated218.us
  %indvars.iv.next342 = add i64 %indvars.iv341, -4
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.eb, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !272

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.ec = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.cl
  br i1 %i.ed, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !273

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.ee = getelementptr i8, ptr %i.cs, i64 %i.cu
  %scevgep.1 = getelementptr i8, ptr %i.ee, i64 16
  %i.ef = getelementptr i8, ptr %i.bs, i64 %i.cw
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.cv
  %scevgep383.1 = getelementptr i8, ptr %i.eg, i64 %i.bk
  %i.eh = add i64 %i.cz, 1                        ; 2 uses
  %i.ei = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.ej = add i64 %i.cz, 2                        ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %4, i64 %i.eh
  %i.el = getelementptr [8 x i8], ptr %4, i64 %i.ej
  %i.em = mul i64 %i.eh, %3
  %i.en = getelementptr [8 x i8], ptr %2, i64 %i.ej
  %i.eo = getelementptr [8 x i8], ptr %i.en, i64 %i.em ; 3 uses
  %i.ep = icmp sgt i64 %i.cx, 2
  br i1 %i.ep, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.ei, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep383.1
  %bound1.1 = icmp ult ptr %i.eo, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.eq = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.ei, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.ei, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.fk, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.er = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ek, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !8
  %i.eu = getelementptr [8 x i8], ptr %i.el, i64 %i.er ; 2 uses
  %i.ev = fneg double %i.et                       ; 2 uses
  %brmerge388 = select i1 %min.iters.check.1, i1 true, i1 %i.eq
  br i1 %brmerge388, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %index.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.ew, align 8, !tbaa !8, !alias.scope !274
  %wide.load384.1 = load <2 x double>, ptr %i.ex, align 8, !tbaa !8, !alias.scope !274
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index.1 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load385.1 = load <2 x double>, ptr %i.ey, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %wide.load386.1 = load <2 x double>, ptr %i.ez, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load385.1)
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load384.1, <2 x double> %wide.load386.1)
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  store <2 x double> %i.fb, ptr %i.ez, align 8, !tbaa !8, !alias.scope !277, !noalias !274
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.fc = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.fc, label %middle.block.1, label %vector.body.1, !llvm.loop !279

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.fi, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.0127297.us.us.1
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0127297.us.us.1 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = call double @llvm.fmuladd.f64(double %i.ev, double %i.fe, double %i.fg)
  store double %i.fh, ptr %i.ff, align 8, !tbaa !8
  %i.fi = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.ei
  br i1 %i.fj, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !271

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.fk = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %i.cl
  br i1 %i.fl, label %.lr.ph.us.us.1, label %._crit_edge301.split.us.us.1, !llvm.loop !273

._crit_edge301.split.us.us.1:                     ; preds = %._crit_edge.us.us.1, %.lr.ph300.us.us.1
  %exitcond.not.1 = icmp eq i64 %indvars.iv341, 2
  br i1 %exitcond.not.1, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.2

.lr.ph300.us.us.2:                                ; preds = %._crit_edge301.split.us.us.1
  %i.fm = getelementptr i8, ptr %i.ct, i64 %i.cu
  %scevgep.2 = getelementptr i8, ptr %i.fm, i64 24
  %i.fn = getelementptr i8, ptr %i.bu, i64 %i.cw
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.cv
  %scevgep383.2 = getelementptr i8, ptr %i.fo, i64 %i.bl
  %i.fp = add i64 %i.cz, 2                        ; 2 uses
  %i.fq = add nsw i64 %.sroa.speculated207.us.us, -3 ; 4 uses
  %i.fr = add i64 %i.cz, 3                        ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %4, i64 %i.fp
  %i.ft = getelementptr [8 x i8], ptr %4, i64 %i.fr
  %i.fu = mul i64 %i.fp, %3
  %i.fv = getelementptr [8 x i8], ptr %2, i64 %i.fr
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %i.fu ; 3 uses
  %i.fx = icmp sgt i64 %i.cx, 3
  br i1 %i.fx, label %.lr.ph.us.us.preheader.2, label %._crit_edge305.split.us.us

.lr.ph.us.us.preheader.2:                         ; preds = %.lr.ph300.us.us.2
  %min.iters.check.2 = icmp ult i64 %i.fq, 4
  %bound0.2 = icmp ult ptr %scevgep.2, %scevgep383.2
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !266

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #22
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !267
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 7 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 2 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = add i64 %i.bk, %0
  %i.bm = shl i64 %i.bl, 3
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %4, i64 %i.bd
  %i.bt = getelementptr i8, ptr %2, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.ci, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bw = add i64 %i.bh, %i.bv
  %i.bx = mul i64 %i.bp, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.by = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %4, i64 %i.by
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cg, %bb.w ] ; 4 uses
  %i.cd = sub nsw i64 %i.ci, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cd, i64 %.sroa.speculated246) ; 3 uses
  %i.ce = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cf, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ci
  br i1 %i.ch, label %bb.s, label %.loopexit.us, !llvm.loop !433

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !434

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.ci = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.gd, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 13 uses
  %i.ck = or disjoint i64 %.0134310.us.us, 1
  %i.cl = mul i64 %., %indvar377                  ; 2 uses
  %i.cm = sub i64 %1, %i.cl
  %smin389 = call i64 @llvm.smin.i64(i64 %., i64 %i.cm)
  %i.cn = add i64 %smin389, %.0134310.us.us
  %smax390 = call i64 @llvm.smax.i64(i64 %i.ck, i64 %i.cn) ; 2 uses
  %i.co = sub i64 %smax390, %i.cl                 ; 2 uses
  %i.cp = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.cq = add i64 %i.bw, %i.cp
  %i.cr = or disjoint i64 %.0134310.us.us, 1
  %i.cs = mul i64 %., %indvar377                  ; 2 uses
  %i.ct = sub i64 %1, %i.cs
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.ct)
  %i.cu = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cr, i64 %i.cu)
  %i.cv = xor i64 %i.cs, -1
  %i.cw = add i64 %smax, %i.cv
  %i.cx = mul i64 %i.bi, %i.cw
  %i.cy = add i64 %i.cq, %i.cx
  %i.cz = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cz) ; 3 uses
  %i.da = add nsw i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 2 uses
  %i.db = icmp slt i64 %i.cz, 1
  %i.dc = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dc ; 2 uses
  %i.de = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.de
  %i.df = getelementptr [8 x i8], ptr %i.ca, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.cb, i64 %i.cp
  %min.iters.check392 = icmp ugt i64 %i.co, 3
  %or.cond = and i1 %min.iters.check392, %ident.check.not
  %i.dh = and i64 %smax390, 3                     ; 2 uses
  %n.vec394 = sub nuw i64 %i.co, %i.dh            ; 2 uses
  %i.di = add i64 %.0134310.us.us, %n.vec394
  %cmp.n403 = icmp eq i64 %i.dh, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fe, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.dj = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dg, i64 %i.dj
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.dk = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.dk
  %i.dl = add i64 %i.cy, %i.dj
  %i.dm = mul i64 %i.br, %indvar379
  %i.dn = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.do = call i64 @llvm.umin.i64(i64 %i.dn, i64 4)
  %i.dp = sub nuw nsw i64 %smin, %.0133306.us.us  ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.dp, i64 4) ; 7 uses
  %i.dq = icmp slt i64 %i.dp, 1
  %brmerge = select i1 %i.dq, i1 true, i1 %i.db
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %i.dr = getelementptr i8, ptr %i.cc, i64 %i.dm
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fg, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.ds = shl i64 %.0132305.us.us, 3
  %i.dt = sub i64 %i.dl, %i.ds
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.dt
  %i.du = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dv = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.dw = xor i64 %i.dv, -1
  %i.dx = add nsw i64 %.0135326.us, %i.dw         ; 4 uses
  %i.dy = xor i64 %.0132305.us.us, -1
  %i.dz = add nsw i64 %.sroa.speculated210.us.us, %i.dy ; 6 uses
  %i.ea = sub i64 %i.dx, %i.dz                    ; 2 uses
  %i.eb = mul nsw i64 %i.dx, %3                   ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %2, i64 %i.dx
  %i.ed = getelementptr [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !8
  %i.ef = fdiv double 1.000000e+00, %i.ee         ; 3 uses
  %i.eg = getelementptr [8 x i8], ptr %4, i64 %i.dx ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %4, i64 %i.ea
  %i.ei = getelementptr [8 x i8], ptr %2, i64 %i.ea
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.eb ; 3 uses
  %i.ek = icmp sgt i64 %i.dz, 0
  br i1 %i.ek, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dz, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.ej, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.el = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dz, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph393, label %.lr.ph303.split.us316.us.preheader405

vector.ph393:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert395 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat396 = shufflevector <2 x double> %broadcast.splatinsert395, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.eg, i64 %.0134310.us.us
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body397 ] ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %index398 ; 3 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16     ; 2 uses
  %wide.load399 = load <2 x double>, ptr %i.en, align 8, !tbaa !8
  %wide.load400 = load <2 x double>, ptr %i.eo, align 8, !tbaa !8
  %i.ep = fmul <2 x double> %broadcast.splat396, %wide.load399
  %i.eq = fmul <2 x double> %broadcast.splat396, %wide.load400
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !8
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !8
  %index.next401 = add nuw i64 %index398, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.er, label %middle.block402, label %vector.body397, !llvm.loop !435

middle.block402:                                  ; preds = %vector.body397
  br i1 %cmp.n403, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader405

.lr.ph303.split.us316.us.preheader405:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block402
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.di, %middle.block402 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader405, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.ew, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader405 ] ; 2 uses
  %i.es = mul nsw i64 %.0131301.us314.us, %6
  %i.et = getelementptr [8 x i8], ptr %i.eg, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !8
  %i.ev = fmul double %i.ef, %i.eu
  store double %i.ev, ptr %i.et, align 8, !tbaa !8
  %i.ew = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.ex = icmp slt i64 %i.ew, %i.da
  br i1 %i.ex, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !436

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.ey = sub nsw i64 %i.dp, %.sroa.speculated210.us.us ; 5 uses
  %i.ez = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.fa = sub i64 %.0135326.us, %i.ez             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fa
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.ey)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fb = icmp sgt i64 %i.ey, 0
  br i1 %i.fb, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fc = mul nsw i64 %i.fa, %3
  %i.fd = getelementptr [8 x i8], ptr %i.bz, i64 %i.fc
  store ptr %i.fd, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.ey, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.df, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.dd, i64 noundef %i.ey, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.ey)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fe = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.ff = icmp slt i64 %i.fe, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.ff, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !437

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block402
  %i.fg = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fg, %i.do
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !438

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.gb, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fh = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fi = getelementptr [8 x i8], ptr %i.eg, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !8
  %i.fk = fmul double %i.ef, %i.fj                ; 2 uses
  store double %i.fk, ptr %i.fi, align 8, !tbaa !8
  %i.fl = getelementptr [8 x i8], ptr %i.eh, i64 %i.fh ; 2 uses
  %i.fm = fneg double %i.fk                       ; 2 uses
  %brmerge408 = select i1 %min.iters.check, i1 true, i1 %i.el
  br i1 %brmerge408, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !8, !alias.scope !439
  %wide.load386 = load <2 x double>, ptr %i.fo, align 8, !tbaa !8, !alias.scope !439
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.fp, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %wide.load388 = load <2 x double>, ptr %i.fq, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.fr, ptr %i.fp, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  store <2 x double> %i.fs, ptr %i.fq, align 8, !tbaa !8, !alias.scope !442, !noalias !439
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fz, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.0130300.us.us.us
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.0130300.us.us.us ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = call double @llvm.fmuladd.f64(double %i.fm, double %i.fv, double %i.fx)
  store double %i.fy, ptr %i.fw, align 8, !tbaa !8
  %i.fz = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.dz
  br i1 %i.ga, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !445

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.gb = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.da
  br i1 %i.gc, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !446

._crit_edge309.us.us:                             ; preds = %bb.ac
  %i.gd = add nuw nsw i64 %.0134310.us.us, %.     ; 2 uses
  %i.ge = icmp slt i64 %i.gd, %1
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.ge, label %.lr.ph308.us.us, label %._crit_edge313.us, !llvm.loop !447

.lr.ph.us:                                        ; preds = %._crit_edge313.us
  %i.gf = mul nsw i64 %i.ci, %3
  %invariant.gep.us333 = getelementptr [8 x i8], ptr %2, i64 %i.gf
  br label %bb.s

.split.us334:                                     ; preds = %bb.t
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split336.us:                                     ; preds = %bb.u
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.split.us.split.us:                               ; preds = %._crit_edge.split.us.us
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.split320.us.split.us:                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

.split323.us.split.us:                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body

.loopexit:                                        ; preds = %bb.an
  %.sroa.speculated221 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.gp)
  %i.gl = sub nsw i64 %i.gp, %i.b                 ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph, label %._crit_edge, !llvm.loop !434

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge313.us, %.lr.ph328.split.preheader, %bb.r, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ag, label %bb.ad, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ad
  br i1 %i.s, label %bb.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200

bb.ae:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #22
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ae
  ret void

bb.af:                                            ; preds = %bb.g
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

bb.ag:                                            ; preds = %bb.k
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.loopexit
  %i.gp = phi i64 [ %i.av, %.lr.ph.lr.ph ], [ %i.gl, %.loopexit ] ; 5 uses
  %.sroa.speculated221376 = phi i64 [ %.sroa.speculated221375, %.lr.ph.lr.ph ], [ %.sroa.speculated221, %.loopexit ] ; 2 uses
  %i.gq = mul nsw i64 %i.gp, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.gq
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.an
  %.0325 = phi i64 [ 0, %.lr.ph ], [ %i.gw, %bb.an ] ; 4 uses
  %i.gr = sub nsw i64 %i.gp, %.0325
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.gr, i64 %.sroa.speculated246) ; 3 uses
  %i.gs = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.gs, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0325
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated221376, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS4_IS6_Li16ES8_EEEENSC_IKNSB_ISF_S6_Li0EEEEELi1EEEEENS0_13add_assign_opIddEELi0EEELi0ELi0EE3runERSN_:bb.a
  %i.am = getelementptr i8, ptr %i.e, i64 264
  %i.an = getelementptr i8, ptr %i.e, i64 272
  %i.ao = getelementptr i8, ptr %i.e, i64 280
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0810 = phi i64 [ 0, %bb.a ], [ %i.gv, %.preheader ] ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.0810, 48
  %i.ap = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i ; 7 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0810 ; 11 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 48     ; 6 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 96     ; 6 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 144    ; 6 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 192    ; 6 uses
  %i.av = getelementptr i8, ptr %i.aq, i64 240    ; 6 uses
  %i.aw = load double, ptr %i.e, align 8, !tbaa !8
  %i.ax = load double, ptr %i.aq, align 8, !tbaa !8
  %i.ay = fmul double %i.aw, %i.ax
  %i.az = load double, ptr %i.g, align 8, !tbaa !8
  %i.ba = load double, ptr %i.ar, align 8, !tbaa !8
  %i.bb = fmul double %i.az, %i.ba
  %i.bc = load double, ptr %i.h, align 8, !tbaa !8
  %i.bd = load double, ptr %i.as, align 8, !tbaa !8
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fadd double %i.bb, %i.be
  %i.bg = fadd double %i.ay, %i.bf
  %i.bh = load double, ptr %i.i, align 8, !tbaa !8
  %i.bi = load double, ptr %i.at, align 8, !tbaa !8
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = load double, ptr %i.j, align 8, !tbaa !8
  %i.bl = load double, ptr %i.au, align 8, !tbaa !8
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = load double, ptr %i.k, align 8, !tbaa !8
  %i.bo = load double, ptr %i.av, align 8, !tbaa !8
  %i.bp = fmul double %i.bn, %i.bo
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = fadd double %i.bj, %i.bq
  %i.bs = fadd double %i.bg, %i.br
  %i.bt = load double, ptr %i.ap, align 8, !tbaa !8
  %i.bu = fadd double %i.bt, %i.bs
  store double %i.bu, ptr %i.ap, align 8, !tbaa !8
  %i.bv = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.bw = load double, ptr %i.l, align 8, !tbaa !8
  %i.bx = load double, ptr %i.aq, align 8, !tbaa !8
  %i.by = fmul double %i.bw, %i.bx
  %i.bz = load double, ptr %i.m, align 8, !tbaa !8
  %i.ca = load double, ptr %i.ar, align 8, !tbaa !8
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = load double, ptr %i.n, align 8, !tbaa !8
  %i.cd = load double, ptr %i.as, align 8, !tbaa !8
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fadd double %i.cb, %i.ce
  %i.cg = fadd double %i.by, %i.cf
  %i.ch = load double, ptr %i.o, align 8, !tbaa !8
  %i.ci = load double, ptr %i.at, align 8, !tbaa !8
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = load double, ptr %i.p, align 8, !tbaa !8
  %i.cl = load double, ptr %i.au, align 8, !tbaa !8
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = load double, ptr %i.q, align 8, !tbaa !8
  %i.co = load double, ptr %i.av, align 8, !tbaa !8
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fadd double %i.cm, %i.cp
  %i.cr = fadd double %i.cj, %i.cq
  %i.cs = fadd double %i.cg, %i.cr
  %i.ct = load double, ptr %i.bv, align 8, !tbaa !8
  %i.cu = fadd double %i.ct, %i.cs
  store double %i.cu, ptr %i.bv, align 8, !tbaa !8
  %i.cv = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  %i.cw = load double, ptr %i.r, align 8, !tbaa !8
  %i.cx = load double, ptr %i.aq, align 8, !tbaa !8
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = load double, ptr %i.s, align 8, !tbaa !8
  %i.da = load double, ptr %i.ar, align 8, !tbaa !8
  %i.db = fmul double %i.cz, %i.da
  %i.dc = load double, ptr %i.t, align 8, !tbaa !8
  %i.dd = load double, ptr %i.as, align 8, !tbaa !8
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fadd double %i.db, %i.de
  %i.dg = fadd double %i.cy, %i.df
  %i.dh = load double, ptr %i.u, align 8, !tbaa !8
  %i.di = load double, ptr %i.at, align 8, !tbaa !8
  %i.dj = fmul double %i.dh, %i.di
  %i.dk = load double, ptr %i.v, align 8, !tbaa !8
  %i.dl = load double, ptr %i.au, align 8, !tbaa !8
  %i.dm = fmul double %i.dk, %i.dl
  %i.dn = load double, ptr %i.w, align 8, !tbaa !8
  %i.do = load double, ptr %i.av, align 8, !tbaa !8
  %i.dp = fmul double %i.dn, %i.do
  %i.dq = fadd double %i.dm, %i.dp
  %i.dr = fadd double %i.dj, %i.dq
  %i.ds = fadd double %i.dg, %i.dr
  %i.dt = load double, ptr %i.cv, align 8, !tbaa !8
  %i.du = fadd double %i.dt, %i.ds
  store double %i.du, ptr %i.cv, align 8, !tbaa !8
  %i.dv = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  %i.dw = load double, ptr %i.x, align 8, !tbaa !8
  %i.dx = load double, ptr %i.aq, align 8, !tbaa !8
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = load double, ptr %i.y, align 8, !tbaa !8
  %i.ea = load double, ptr %i.ar, align 8, !tbaa !8
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = load double, ptr %i.z, align 8, !tbaa !8
  %i.ed = load double, ptr %i.as, align 8, !tbaa !8
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = fadd double %i.eb, %i.ee
  %i.eg = fadd double %i.dy, %i.ef
  %i.eh = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ei = load double, ptr %i.at, align 8, !tbaa !8
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = load double, ptr %i.ab, align 8, !tbaa !8
  %i.el = load double, ptr %i.au, align 8, !tbaa !8
  %i.em = fmul double %i.ek, %i.el
  %i.en = load double, ptr %i.ac, align 8, !tbaa !8
  %i.eo = load double, ptr %i.av, align 8, !tbaa !8
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = fadd double %i.em, %i.ep
  %i.er = fadd double %i.ej, %i.eq
  %i.es = fadd double %i.eg, %i.er
  %i.et = load double, ptr %i.dv, align 8, !tbaa !8
  %i.eu = fadd double %i.et, %i.es
  store double %i.eu, ptr %i.dv, align 8, !tbaa !8
  %i.ev = getelementptr i8, ptr %i.ap, i64 32     ; 2 uses
  %i.ew = load double, ptr %i.ad, align 8, !tbaa !8
  %i.ex = load double, ptr %i.aq, align 8, !tbaa !8
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = load double, ptr %i.ae, align 8, !tbaa !8
  %i.fa = load double, ptr %i.ar, align 8, !tbaa !8
  %i.fb = fmul double %i.ez, %i.fa
  %i.fc = load double, ptr %i.af, align 8, !tbaa !8
  %i.fd = load double, ptr %i.as, align 8, !tbaa !8
  %i.fe = fmul double %i.fc, %i.fd
  %i.ff = fadd double %i.fb, %i.fe
  %i.fg = fadd double %i.ey, %i.ff
  %i.fh = load double, ptr %i.ag, align 8, !tbaa !8
  %i.fi = load double, ptr %i.at, align 8, !tbaa !8
  %i.fj = fmul double %i.fh, %i.fi
  %i.fk = load double, ptr %i.ah, align 8, !tbaa !8
  %i.fl = load double, ptr %i.au, align 8, !tbaa !8
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = load double, ptr %i.ai, align 8, !tbaa !8
  %i.fo = load double, ptr %i.av, align 8, !tbaa !8
  %i.fp = fmul double %i.fn, %i.fo
  %i.fq = fadd double %i.fm, %i.fp
  %i.fr = fadd double %i.fj, %i.fq
  %i.fs = fadd double %i.fg, %i.fr
  %i.ft = load double, ptr %i.ev, align 8, !tbaa !8
  %i.fu = fadd double %i.ft, %i.fs
  store double %i.fu, ptr %i.ev, align 8, !tbaa !8
  %i.fv = getelementptr i8, ptr %i.ap, i64 40     ; 2 uses
  %i.fw = load double, ptr %i.aj, align 8, !tbaa !8
  %i.fx = load double, ptr %i.aq, align 8, !tbaa !8
  %i.fy = fmul double %i.fw, %i.fx
  %i.fz = load double, ptr %i.ak, align 8, !tbaa !8
  %i.ga = load double, ptr %i.ar, align 8, !tbaa !8
  %i.gb = fmul double %i.fz, %i.ga
  %i.gc = load double, ptr %i.al, align 8, !tbaa !8
  %i.gd = load double, ptr %i.as, align 8, !tbaa !8
  %i.ge = fmul double %i.gc, %i.gd
  %i.gf = fadd double %i.gb, %i.ge
  %i.gg = fadd double %i.fy, %i.gf
  %i.gh = load double, ptr %i.am, align 8, !tbaa !8
  %i.gi = load double, ptr %i.at, align 8, !tbaa !8
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = load double, ptr %i.an, align 8, !tbaa !8
  %i.gl = load double, ptr %i.au, align 8, !tbaa !8
  %i.gm = fmul double %i.gk, %i.gl
  %i.gn = load double, ptr %i.ao, align 8, !tbaa !8
  %i.go = load double, ptr %i.av, align 8, !tbaa !8
  %i.gp = fmul double %i.gn, %i.go
  %i.gq = fadd double %i.gm, %i.gp
  %i.gr = fadd double %i.gj, %i.gq
  %i.gs = fadd double %i.gg, %i.gr
  %i.gt = load double, ptr %i.fv, align 8, !tbaa !8
  %i.gu = fadd double %i.gt, %i.gs
  store double %i.gu, ptr %i.fv, align 8, !tbaa !8
  %i.gv = add nuw nsw i64 %.0810, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gv, 6
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !505

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE: argument 0"}
!18 = distinct !{!18, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE"}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !7, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE: argument 0"}
!23 = distinct !{!23, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES4_Li0EEEE11lazyProductIS4_EEKNS1_IS6_T_Li1EEERKNS0_IS9_EE"}
!24 = !{!25, !28, i64 32}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !6, i64 64, !5, i64 192, !31, i64 200, !32, i64 208}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !26, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIPN3g2o10HyperGraph6VertexESaIS3_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p2 _ZTSN3g2o10HyperGraph6VertexE", !37, i64 0}
!37 = !{!"any p2 pointer", !15, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN3g2o10HyperGraph6VertexE", !15, i64 0}
!40 = !{!41, !56, i64 100}
!41 = !{!"_ZTSN3g2o16OptimizableGraph6VertexE", !42, i64 0, !53, i64 64, !55, i64 80, !54, i64 88, !5, i64 96, !56, i64 100, !56, i64 101, !5, i64 104, !5, i64 108, !57, i64 112, !58, i64 120}
!42 = !{!"_ZTSN3g2o10HyperGraph6VertexE", !43, i64 0, !5, i64 8, !44, i64 16}
!43 = !{!"_ZTSN3g2o10HyperGraph17HyperGraphElementE"}
!44 = !{!"_ZTSSt3setIPN3g2o10HyperGraph4EdgeESt4lessIS3_ESaIS3_EE", !45, i64 0}
!45 = !{!"_ZTSSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE", !46, i64 0}
!46 = !{!"_ZTSNSt8_Rb_treeIPN3g2o10HyperGraph4EdgeES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !47, i64 0, !49, i64 8}
!47 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN3g2o10HyperGraph4EdgeEEE", !48, i64 0}
!48 = !{!"_ZTSSt4lessIPN3g2o10HyperGraph4EdgeEE"}
!49 = !{!"_ZTSSt15_Rb_tree_header", !50, i64 0, !26, i64 32}
!50 = !{!"_ZTSSt18_Rb_tree_node_base", !51, i64 0, !52, i64 8, !52, i64 16, !52, i64 24}
!51 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!52 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!53 = !{!"_ZTSN3g2o10HyperGraph13DataContainerE", !54, i64 8}
!54 = !{!"p1 _ZTSN3g2o10HyperGraph4DataE", !15, i64 0}
!55 = !{!"p1 _ZTSN3g2o16OptimizableGraphE", !15, i64 0}
!56 = !{!"bool", !6, i64 0}
!57 = !{!"_ZTSN3g2o11OpenMPMutexE"}
!58 = !{!"p1 _ZTSN3g2o14CacheContainerE", !15, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !67, i64 64}
!62 = !{!"_ZTSN3g2o16OptimizableGraph4EdgeE", !63, i64 0, !53, i64 40, !5, i64 56, !5, i64 60, !67, i64 64, !68, i64 72, !69, i64 80, !74, i64 104, !79, i64 128, !69, i64 152}
!63 = !{!"_ZTSN3g2o10HyperGraph4EdgeE", !43, i64 0, !64, i64 8, !5, i64 32}
!64 = !{!"_ZTSSt6vectorIPN3g2o10HyperGraph6VertexESaIS3_EE", !65, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIPN3g2o10HyperGraph6VertexESaIS3_EE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIPN3g2o10HyperGraph6VertexESaIS3_EE12_Vector_implE", !35, i64 0}
!67 = !{!"p1 _ZTSN3g2o12RobustKernelE", !15, i64 0}
!68 = !{!"long long", !6, i64 0}
!69 = !{!"_ZTSSt6vectorIiSaIiEE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !72, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 int", !15, i64 0}
!74 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!79 = !{!"_ZTSSt6vectorIPPN3g2o9ParameterESaIS3_EE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIPPN3g2o9ParameterESaIS3_EE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPPN3g2o9ParameterESaIS3_EE12_Vector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIPPN3g2o9ParameterESaIS3_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p3 _ZTSN3g2o9ParameterE", !84, i64 0}
!84 = !{!"any p3 pointer", !37, i64 0}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd: argument 0"}
!87 = distinct !{!87, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE17robustInformationERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE: argument 0"}
!90 = distinct !{!90, !"_ZNK3g2o8BaseEdgeILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE17robustInformationERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE"}
!91 = !{!92, !9, i64 0}
!92 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !9, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE: argument 0"}
!95 = distinct !{!95, !"_ZN5EigenmlIdEEKNS_13CwiseBinaryOpINS_8internal17scalar_product_opINS2_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIS5_dNS3_IS5_dEEEEEE5valueEE4typeEdEEKNS2_19plain_constant_typeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEESA_E4typeEKSE_EERKS5_RKNS_10MatrixBaseISE_EE"}
!96 = !{!56, !56, i64 0}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !99, i64 0, !100, i64 8, !100, i64 9}
!99 = !{!"p1 double", !15, i64 0}
!100 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi6EEE"}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!103 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !15, i64 0}
!104 = !{!105, !99, i64 0}
!105 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !99, i64 0, !26, i64 8}
!106 = !{!107, !99, i64 0}
!107 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS_6StrideILi0ELi0EEEEELi0EEE", !99, i64 0, !100, i64 8, !100, i64 9}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EE7inverseENS_15TransformTraitsE: argument 0"}
!110 = distinct !{!110, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EE7inverseENS_15TransformTraitsE"}
!111 = !{!62, !5, i64 56}
!112 = !{!113, !14, i64 8}
!113 = !{!"_ZTSN5Eigen7ProductINS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES3_Li0EEE", !114, i64 0, !14, i64 8}
!114 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE", !14, i64 0}
!115 = !{i64 16}
!116 = !{!117, !14, i64 16}
!117 = !{!"_ZTSN5Eigen7ProductINS0_INS_9TransposeINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEES3_Li0EEES3_Li1EEE", !113, i64 0, !14, i64 16}
!118 = distinct !{!118, !12}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12partialPivLuEv: argument 0"}
!121 = distinct !{!121, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12partialPivLuEv"}
!122 = !{!123, !9, i64 336}
!123 = !{!"_ZTSN5Eigen12PartialPivLUINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE", !124, i64 0, !128, i64 288, !133, i64 312, !9, i64 336, !6, i64 344, !56, i64 345}
!124 = !{!"_ZTSN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEE", !125, i64 0}
!125 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE", !126, i64 0}
!126 = !{!"_ZTSN5Eigen12DenseStorageIdLi36ELi6ELi6ELi0EEE", !127, i64 0}
!127 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi36ELi0ELi16EEE", !6, i64 0}
!128 = !{!"_ZTSN5Eigen17PermutationMatrixILi6ELi6EiEE", !129, i64 0}
!129 = !{!"_ZTSN5Eigen6MatrixIiLi6ELi1ELi0ELi6ELi1EEE", !130, i64 0}
!130 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLi6ELi1ELi0ELi6ELi1EEEEE", !131, i64 0}
!131 = !{!"_ZTSN5Eigen12DenseStorageIiLi6ELi6ELi1ELi0EEE", !132, i64 0}
!132 = !{!"_ZTSN5Eigen8internal11plain_arrayIiLi6ELi0ELi0EEE", !6, i64 0}
!133 = !{!"_ZTSN5Eigen14TranspositionsILi6ELi6EiEE", !129, i64 0}
!134 = !{!123, !6, i64 344}
!135 = !{!123, !56, i64 345}
!136 = !{i64 0, i64 288, !10}
!137 = !{i64 0, i64 24, !10}
!138 = !{!5, !5, i64 0}
!139 = !{!140, !26, i64 16}
!140 = !{!"_ZTSN5Eigen8internal15level3_blockingIddEE", !99, i64 0, !99, i64 8, !26, i64 16, !26, i64 24, !26, i64 32}
!141 = !{!140, !26, i64 24}
!142 = !{!140, !26, i64 32}
!143 = !{!140, !99, i64 0}
!144 = !{!140, !99, i64 8}
!145 = !{!146, !99, i64 0}
!146 = !{!"_ZTSN5Eigen7MapBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEELi0EEE", !99, i64 0, !100, i64 8, !100, i64 9}
!147 = !{!148, !26, i64 0}
!148 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !26, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!151 = distinct !{!151, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd: argument 0"}
!154 = distinct !{!154, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELi6ELi1EEEE8ConstantEllRKd"}
!155 = distinct !{!155, !12, !156, !157}
!156 = !{!"llvm.loop.isvectorized", i32 1}
!157 = !{!"llvm.loop.unroll.runtime.disable"}
!158 = distinct !{!158, !12, !157, !156}
!159 = distinct !{!159, !12}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
end_hunk_3
