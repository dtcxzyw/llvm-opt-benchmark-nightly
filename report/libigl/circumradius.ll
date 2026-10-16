Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 170
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi4ELi0ELin1ELi4EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERNS1_15PlainObjectBaseIT1_EERNSG_IT2_EERNSG_IT3_EE:bb.a
  %12 = alloca %"class.Eigen::Matrix.709", align 8 ; 8 uses
  %13 = alloca %"class.Eigen::ColPivHouseholderQR.767", align 16 ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !874
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !874
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef 3)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !874
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.d, i64 noundef 4)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !874  ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph, label %._crit_edge

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph:             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ad = ptrtoint ptr %10 to i64
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1                        ; 5 uses
  %i.ag = sub nuw nsw i64 4, %i.af
  %.zext = and i64 %i.ag, 6
  %i.ah = or disjoint i64 %.zext, %i.af           ; 2 uses
  %.not = icmp eq i64 %i.af, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 424
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 425
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 160
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bm = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.bm ; 2 uses
  %scevgep158 = getelementptr i8, ptr %11, i64 %i.bm ; 2 uses
  %i.bn = shl nuw nsw i64 %i.af, 3
  %i.bo = sub nuw nsw i64 16, %i.bn
  %i.bp = and i64 %i.bo, 16
  %i.bq = add nuw nsw i64 %i.bp, 16               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ah
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 176
  br label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit, %bb.a
  ret void

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %indvars.iv.next, %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit ] ; 5 uses
  %i.bx = phi i64 [ %i.e, %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.gz, %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.by = load ptr, ptr %1, align 8, !tbaa !875, !noalias !876
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.ca = load ptr, ptr %0, align 8, !tbaa !85, !noalias !877 ; 4 uses
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !86, !noalias !877 ; 5 uses
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !36, !noalias !877
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !38, !noalias !877
  store double %i.cf, ptr %7, align 16, !tbaa !38, !alias.scope !877
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bx
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36, !noalias !877
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %i.ca, i64 %i.ci ; 3 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !38, !noalias !877
  store double %i.ck, ptr %i.h, align 8, !tbaa !38, !alias.scope !877
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bx, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !36, !noalias !877
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %i.cn ; 3 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !38, !noalias !877
  store double %i.cp, ptr %i.i, align 16, !tbaa !38, !alias.scope !877
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bx, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !36, !noalias !877
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.ca, i64 %i.cs ; 3 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !38, !noalias !877
  store double %i.cu, ptr %i.j, align 8, !tbaa !38, !alias.scope !877
  %i.cv = getelementptr [8 x i8], ptr %i.ce, i64 %i.cb
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !38, !noalias !877
  store double %i.cw, ptr %i.k, align 16, !tbaa !38, !alias.scope !877
  %i.cx = getelementptr [8 x i8], ptr %i.cj, i64 %i.cb
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !38, !noalias !877
  store double %i.cy, ptr %i.l, align 8, !tbaa !38, !alias.scope !877
  %i.cz = getelementptr [8 x i8], ptr %i.co, i64 %i.cb
  %i.da = load double, ptr %i.cz, align 8, !tbaa !38, !noalias !877
  store double %i.da, ptr %i.m, align 16, !tbaa !38, !alias.scope !877
  %i.db = getelementptr [8 x i8], ptr %i.ct, i64 %i.cb
  %i.dc = load double, ptr %i.db, align 8, !tbaa !38, !noalias !877
  store double %i.dc, ptr %i.n, align 8, !tbaa !38, !alias.scope !877
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.cb, 4 ; 4 uses
  %i.dd = getelementptr i8, ptr %i.ce, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !38, !noalias !877
  store double %i.de, ptr %i.o, align 16, !tbaa !38, !alias.scope !877
  %i.df = getelementptr i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !38, !noalias !877
  store double %i.dg, ptr %i.p, align 8, !tbaa !38, !alias.scope !877
  %i.dh = getelementptr i8, ptr %i.co, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !38, !noalias !877
  store double %i.di, ptr %i.q, align 16, !tbaa !38, !alias.scope !877
  %i.dj = getelementptr i8, ptr %i.ct, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !38, !noalias !877
  store double %i.dk, ptr %i.r, align 8, !tbaa !38, !alias.scope !877
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store double 2.000000e+00, ptr %i.s, align 8, !tbaa !51, !alias.scope !878
  store ptr %7, ptr %i.t, align 8
  store ptr %7, ptr %.sroa.4139.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %6, ptr %9, align 8, !tbaa !150, !alias.scope !879
  store i64 4, ptr %i.u, align 8, !tbaa !44, !alias.scope !879
  store i64 4, ptr %i.v, align 8, !tbaa !44, !alias.scope !879
  store ptr %6, ptr %i.w, align 8, !tbaa !152, !alias.scope !879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !879
  store i64 5, ptr %i.y, align 8, !tbaa !155, !alias.scope !879
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5Eigen8internal15call_assignmentINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi4ELi4ELi0ELi4ELi4EEEEEKNS_7ProductINS3_IdLi4ELi3ELi0ELi4ELi3EEENS_9TransposeIKSH_EELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISS_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(41) %8, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  store <2 x double> splat (double 1.000000e+00), ptr %i.z, align 16, !tbaa !71
  store <2 x double> splat (double 1.000000e+00), ptr %i.bw, align 16, !tbaa !71
  store double 1.000000e+00, ptr %i.aa, align 16, !tbaa !38
  store double 1.000000e+00, ptr %i.br, align 8, !tbaa !38
  store double 1.000000e+00, ptr %i.bs, align 16, !tbaa !38
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !38
  store double 0.000000e+00, ptr %i.ab, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.dl = load <2 x double>, ptr %7, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.dm = fmul <2 x double> %i.dl, %i.dl
  %i.dn = load <2 x double>, ptr %i.k, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.do = fmul <2 x double> %i.dn, %i.dn
  %i.dp = load <2 x double>, ptr %i.o, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.dq = fmul <2 x double> %i.dp, %i.dp
  %i.dr = fadd <2 x double> %i.do, %i.dq
  %i.ds = fadd <2 x double> %i.dm, %i.dr          ; 2 uses
  store <2 x double> %i.ds, ptr %11, align 16, !tbaa !71, !alias.scope !880
  %i.dt = load <2 x double>, ptr %i.i, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.du = fmul <2 x double> %i.dt, %i.dt
  %i.dv = load <2 x double>, ptr %i.m, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, %i.dv
  %i.dx = load <2 x double>, ptr %i.q, align 16, !tbaa !71, !noalias !880 ; 2 uses
  %i.dy = fmul <2 x double> %i.dx, %i.dx
  %i.dz = fadd <2 x double> %i.dw, %i.dy
  %i.ea = fadd <2 x double> %i.du, %i.dz
  store <2 x double> %i.ea, ptr %i.ac, align 16, !tbaa !71, !alias.scope !880
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread: ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep158, i64 %i.bq, i1 false), !tbaa !71
  br label %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = extractelement <2 x double> %i.ds, i64 0
  store double %i.eb, ptr %10, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep158, i64 %i.bq, i1 false), !tbaa !71
  %i.ec = load double, ptr %i.bv, align 8, !tbaa !38
  store double %i.ec, ptr %i.bu, align 8, !tbaa !38
  br label %_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit

_ZNK5Eigen9DenseBaseINS_5SolveINS_19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEEENS3_IdLi5ELi1ELi0ELi5ELi1EEEEEE4evalEv.exit: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEENS5_INS_5ArrayIdLi4ELi1ELi0ELi4ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.thread, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  store i8 0, ptr %i.aj, align 8, !tbaa !178, !alias.scope !881
  store i8 0, ptr %i.ak, align 1, !tbaa !882, !alias.scope !881
  %i.ed = load <2 x double>, ptr %6, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ed, ptr %13, align 16, !tbaa !71, !alias.scope !881
  %i.ee = load <2 x double>, ptr %i.am, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ee, ptr %i.al, align 16, !tbaa !71, !alias.scope !881
  %i.ef = load <2 x double>, ptr %i.aa, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ef, ptr %i.an, align 16, !tbaa !71, !alias.scope !881
  %i.eg = load <2 x double>, ptr %i.ap, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.eg, ptr %i.ao, align 16, !tbaa !71, !alias.scope !881
  %i.eh = load <2 x double>, ptr %i.ar, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.eh, ptr %i.aq, align 16, !tbaa !71, !alias.scope !881
  %i.ei = load <2 x double>, ptr %i.at, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ei, ptr %i.as, align 16, !tbaa !71, !alias.scope !881
  %i.ej = load <2 x double>, ptr %i.av, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ej, ptr %i.au, align 16, !tbaa !71, !alias.scope !881
  %i.ek = load <2 x double>, ptr %i.ax, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.ek, ptr %i.aw, align 16, !tbaa !71, !alias.scope !881
  %i.el = load <2 x double>, ptr %i.az, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.el, ptr %i.ay, align 16, !tbaa !71, !alias.scope !881
  %i.em = load <2 x double>, ptr %i.bb, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.em, ptr %i.ba, align 16, !tbaa !71, !alias.scope !881
  %i.en = load <2 x double>, ptr %i.z, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.en, ptr %i.bc, align 16, !tbaa !71, !alias.scope !881
  %i.eo = load <2 x double>, ptr %i.be, align 16, !tbaa !71, !noalias !881
  store <2 x double> %i.eo, ptr %i.bd, align 16, !tbaa !71, !alias.scope !881
  store double 0.000000e+00, ptr %i.bf, align 16, !tbaa !38, !alias.scope !881
  call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(464) %13)
  call void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE11_solve_implINS1_IdLi5ELi1ELi0ELi5ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(464) %13, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.ep = load ptr, ptr %4, align 8, !tbaa !94, !noalias !883
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv ; 5 uses
  %i.er = load i64, ptr %i.bg, align 8, !tbaa !95 ; 3 uses
  %i.es = load double, ptr %12, align 8, !tbaa !38
  store double %i.es, ptr %i.eq, align 8, !tbaa !38
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.eu = load double, ptr %i.bh, align 8, !tbaa !38
  store double %i.eu, ptr %i.et, align 8, !tbaa !38
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.er, 4
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ew = load double, ptr %i.bi, align 8, !tbaa !38
  store double %i.ew, ptr %i.ev, align 8, !tbaa !38
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i73 = mul nsw i64 %i.er, 24
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i73
  %i.ey = load double, ptr %i.bj, align 8, !tbaa !38 ; 4 uses
  store double %i.ey, ptr %i.ex, align 8, !tbaa !38
  %i.ez = load ptr, ptr %3, align 8, !tbaa !85, !noalias !884
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv ; 4 uses
  %i.fb = load double, ptr %i.eq, align 8, !tbaa !38 ; 3 uses
  %i.fc = load double, ptr %7, align 16, !tbaa !38
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = load double, ptr %i.et, align 8, !tbaa !38 ; 3 uses
  %i.ff = load double, ptr %i.h, align 8, !tbaa !38
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = fadd double %i.fd, %i.fg
  %i.fi = load double, ptr %i.ev, align 8, !tbaa !38 ; 3 uses
  %i.fj = load double, ptr %i.i, align 16, !tbaa !38
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = load double, ptr %i.j, align 8, !tbaa !38
  %i.fm = fmul double %i.ey, %i.fl
  %i.fn = fadd double %i.fk, %i.fm
  %i.fo = fadd double %i.fh, %i.fn
  %i.fp = load double, ptr %i.k, align 16, !tbaa !38
  %i.fq = fmul double %i.fb, %i.fp
  %i.fr = load double, ptr %i.l, align 8, !tbaa !38
  %i.fs = fmul double %i.fe, %i.fr
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = load double, ptr %i.m, align 16, !tbaa !38
  %i.fv = fmul double %i.fi, %i.fu
  %i.fw = load double, ptr %i.n, align 8, !tbaa !38
  %i.fx = fmul double %i.ey, %i.fw
  %i.fy = fadd double %i.fv, %i.fx
  %i.fz = fadd double %i.ft, %i.fy
  %i.ga = load <4 x double>, ptr %i.o, align 16, !tbaa !38
  %i.gb = insertelement <4 x double> poison, double %i.fb, i64 0
  %i.gc = insertelement <4 x double> %i.gb, double %i.fe, i64 1
  %i.gd = insertelement <4 x double> %i.gc, double %i.fi, i64 2
  %i.ge = insertelement <4 x double> %i.gd, double %i.ey, i64 3
  %i.gf = fmul <4 x double> %i.ge, %i.ga          ; 2 uses
  %i.gg = shufflevector <4 x double> %i.gf, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.gh = shufflevector <4 x double> %i.gf, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.gi = fadd <2 x double> %i.gg, %i.gh          ; 2 uses
  %shift = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.gi, %shift ; 3 uses
  %i.gj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gk = load i64, ptr %i.bk, align 8, !tbaa !86 ; 2 uses
  store double %i.fo, ptr %i.fa, align 8, !tbaa !38
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.gk ; 2 uses
  store double %i.fz, ptr %i.gl, align 8, !tbaa !38
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74 = shl nsw i64 %i.gk, 4
  %i.gm = getelementptr inbounds i8, ptr %i.fa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i74
  store double %i.gj, ptr %i.gm, align 8, !tbaa !38
  %i.gn = load double, ptr %i.bl, align 8, !tbaa !38
  %i.go = load double, ptr %i.fa, align 8, !tbaa !38 ; 2 uses
  %i.gp = fmul double %i.go, %i.go
  %i.gq = load double, ptr %i.gl, align 8, !tbaa !38 ; 2 uses
  %i.gr = fmul double %i.gq, %i.gq
  %foldExtExtBinop183 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.gs = extractelement <2 x double> %foldExtExtBinop183, i64 0
  %i.gt = fadd double %i.gs, %i.gr
  %i.gu = fadd double %i.gp, %i.gt
  %i.gv = fadd double %i.gn, %i.gu
  %i.gw = call double @sqrt(double noundef %i.gv) #20
  %i.gx = load ptr, ptr %2, align 8, !tbaa !74
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv
  store double %i.gw, ptr %i.gy, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !874 ; 2 uses
  %i.ha = icmp sgt i64 %i.gz, %indvars.iv.next
  br i1 %i.ha, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge, !llvm.loop !872
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl12circumradiusIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EERNSF_IT2_EERNSF_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.320", align 16 ; 15 uses
  %7 = alloca %"class.Eigen::Matrix.821", align 16 ; 15 uses
  %8 = alloca %"class.Eigen::CwiseBinaryOp.838", align 8 ; 6 uses
  %9 = alloca %"class.Eigen::Block.380", align 8  ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.391", align 16 ; 6 uses
  %11 = alloca %"class.Eigen::Matrix.391", align 16 ; 7 uses
  %12 = alloca %"class.Eigen::ColPivHouseholderQR.451", align 16 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.b, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.c, i64 noundef 3)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.d, i64 noundef 3)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph, label %._crit_edge

.lr.ph54.i.i.i.i.i.i.i.i.i.i.i.lr.ph:             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 304
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 305
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %.lr.ph54.i.i.i.i.i.i.i.i.i.i.i

end_hunk_0
