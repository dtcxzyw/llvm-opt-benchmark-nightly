Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/triangle_triangle_intersect_shared_vertex?download=true
inline.NumInlined: 1540
inline.NumDeleted: 723
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarE:bb.a
  %.idx213 = shl i64 %i.v, 3
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx213
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !20
  store double %i.al, ptr %11, align 16, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.n
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  store double %i.ao, ptr %i.am, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  store double %i.ar, ptr %i.ap, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.as = add nsw i32 %3, 1
  %i.at = srem i32 %i.as, 3                       ; 2 uses
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51, !nonnull !25, !align !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %i.ba = load double, ptr %i.av, align 8, !tbaa !20
  store double %i.ba, ptr %12, align 16, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !20
  store double %i.bd, ptr %i.bb, align 8, !tbaa !20
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.az, 4
  %i.be = getelementptr inbounds i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bf = sext i32 %2 to i64
  %i.bg = sext i32 %i.at to i64
  %i.bh = mul nsw i64 %i.v, %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.f, i64 %i.bf
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  store double %i.bn, ptr %12, align 16, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.n
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !20
  store double %i.bq, ptr %i.bo, align 8, !tbaa !20
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.be, %bb.b ], [ %i.br, %bb.c ]
  %i.bs = load double, ptr %.in, align 8, !tbaa !20 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store double %i.bs, ptr %i.bt, align 16, !tbaa !20
  %i.bu = add nsw i32 %3, 2
  %i.bv = srem i32 %i.bu, 3                       ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %4
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !51, !nonnull !25, !align !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = load double, ptr %i.bx, align 8, !tbaa !20
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cb
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.ce, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i49 = shl nsw i64 %i.cb, 4
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cg = sext i32 %2 to i64
  %i.ch = sext i32 %i.bv to i64
  %i.ci = mul nsw i64 %i.v, %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.f, i64 %i.cg
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cm ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !20
  %.sroa.0.0.vec.insert194 = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.n
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !20
  %.sroa.0.8.vec.insert196 = insertelement <2 x double> %.sroa.0.0.vec.insert194, double %i.cq, i64 1
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.0.in = phi ptr [ %i.cf, %bb.e ], [ %i.cr, %bb.f ]
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.8.vec.insert, %bb.e ], [ %.sroa.0.8.vec.insert196, %bb.f ] ; 2 uses
  %.sroa.8.0 = load double, ptr %.sroa.8.0.in, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.cs = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.ct = fsub <2 x double> %.sroa.0.0, %i.cs
  store <2 x double> %i.ct, ptr %13, align 16, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = fsub double %.sroa.8.0, %i.bs
  store double %i.cv, ptr %i.cu, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 0, ptr %i.d, align 1, !tbaa !29
  %i.cw = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.cw, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

.lr.ph85.i.i.i.i.i.preheader.i.i.i:               ; preds = %bb.h
  %i.cz = load double, ptr %i.ab, align 8, !tbaa !20, !noalias !52
  %i.da = load double, ptr %i.ap, align 16, !tbaa !20, !noalias !52
  %i.db = load double, ptr %i.s, align 16, !tbaa !20, !noalias !52 ; 3 uses
  %i.dc = load double, ptr %i.ae, align 16, !tbaa !20, !noalias !52
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.da, i64 1
  %i.df = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fsub <2 x double> %i.de, %i.dg          ; 7 uses
  %i.di = load double, ptr %i.am, align 8, !tbaa !20, !noalias !52
  %i.dj = load <2 x double>, ptr %11, align 16
  %i.dk = load double, ptr %10, align 16, !tbaa !20, !noalias !52
  %i.dl = load <2 x double>, ptr %9, align 16, !tbaa !20, !noalias !52 ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1
  %i.dn = fsub double %i.di, %i.dm                ; 2 uses
  %i.do = insertelement <2 x double> %i.dj, double %i.cz, i64 1
  %i.dp = fsub <2 x double> %i.do, %i.dl          ; 3 uses
  %i.dq = extractelement <2 x double> %i.dl, i64 0
  %i.dr = fsub double %i.dk, %i.dq                ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dt = insertelement <2 x double> %i.ds, double %i.dn, i64 1
  %i.du = fneg <2 x double> %i.dt
  %i.dv = insertelement <2 x double> %i.ds, double %i.dr, i64 0
  %i.dw = fmul <2 x double> %i.dv, %i.du
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dh, <2 x double> %i.dw)
  %i.dy = extractelement <2 x double> %i.dp, i64 0
  %i.dz = fneg double %i.dy
  %i.ea = extractelement <2 x double> %i.dp, i64 1
  %i.eb = fmul double %i.ea, %i.dz
  %i.ec = call double @llvm.fmuladd.f64(double %i.dr, double %i.dn, double %i.eb) ; 3 uses
  %i.ed = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ee = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.ef = load <2 x double>, ptr %9, align 16, !tbaa !27 ; 4 uses
  %i.eg = load double, ptr %i.bt, align 16, !tbaa !20
  %i.eh = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ed) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.ei = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i
  %i.ej = select i1 %i.ei, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ec) ; 2 uses
  %i.el = fcmp olt double %i.ej, %i.ek
  %i.em = select i1 %i.el, double %i.ek, double %i.ej ; 7 uses
  %i.en = fcmp ogt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.eo = fdiv double 1.000000e+00, %i.em         ; 2 uses
  %i.ep = fcmp ogt double %i.eo, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ep, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eq = fcmp ogt double %i.em, f0x7FEFFFFFFFFFFFFF
  br i1 %i.eq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.er = fcmp uno double %i.em, 0.000000e+00
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.em, %bb.k ], [ %i.em, %bb.m ], [ %i.em, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.eo, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.es = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.es, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.et = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.ed, %i.et          ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ev)
  %i.ex = fmul double %.155.i.i.i, %i.ec          ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = fadd double %i.ew, %i.ey
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ez, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.fa = fsub <2 x double> %i.ee, %i.ef          ; 3 uses
  %i.fb = fmul <2 x double> %i.ed, %i.fa          ; 2 uses
  %shift = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fb, %shift
  %i.fc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fd = fsub double %i.eg, %i.db                ; 2 uses
  %i.fe = fmul double %i.ec, %i.fd
  %i.ff = fadd double %i.fe, %i.fc
  %i.fg = call noundef double @llvm.fabs.f64(double %i.ff)
  %i.fh = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.fi = fmul double %.158.i.i.i, %i.fh
  %i.fj = fmul double %8, %i.fi
  %i.fk = fcmp olt double %i.fg, %i.fj
  br i1 %i.fk, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit
  %i.fl = load <2 x double>, ptr %10, align 16, !tbaa !27, !noalias !53
  %i.fm = fsub <2 x double> %i.fl, %i.ef          ; 5 uses
  %i.fn = load <2 x double>, ptr %11, align 16, !tbaa !27, !noalias !54
  %i.fo = fsub <2 x double> %i.fn, %i.ef          ; 5 uses
  %i.fp = fmul <2 x double> %i.fm, %i.fm          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fmul <2 x double> %i.dh, %i.fq
  %i.fs = fmul <2 x double> %i.fm, %i.fo          ; 2 uses
  %i.ft = fmul <2 x double> %i.fo, %i.fo          ; 2 uses
  %shift247 = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x double> %i.ft, %shift247
  %foldExtExtBinop250 = fmul <2 x double> %i.dh, %i.dh
  %shift252 = shufflevector <2 x double> %foldExtExtBinop250, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fadd <2 x double> %shift252, %foldExtExtBinop248 ; 2 uses
  %i.fu = extractelement <2 x double> %foldExtExtBinop253, i64 0
  %i.fv = fmul <2 x double> %i.fa, %i.fm          ; 2 uses
  %i.fw = fmul <2 x double> %i.fa, %i.fo          ; 2 uses
  %i.fx = fsub <2 x double> %.sroa.0.0, %i.ef     ; 2 uses
  %i.fy = fsub double %.sroa.8.0, %i.db
  %i.fz = fmul <2 x double> %i.fx, %i.fm          ; 2 uses
  %i.ga = fmul <2 x double> %i.fx, %i.fo          ; 2 uses
  %i.gb = shufflevector <2 x double> %i.fp, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.gc = shufflevector <2 x double> %i.fp, <2 x double> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gd = fadd <2 x double> %i.gb, %i.gc
  %i.ge = fadd <2 x double> %i.fr, %i.gd          ; 4 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 1 ; 2 uses
  %i.gg = fneg double %i.gf
  %i.gh = fmul double %i.gf, %i.gg
  %i.gi = extractelement <2 x double> %i.ge, i64 0
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.fu, double %i.gh)
  %i.gk = shufflevector <2 x double> %i.fw, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gl = shufflevector <2 x double> %i.fw, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.gm = fadd <2 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.go = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.fy, i64 1 ; 2 uses
  %i.gq = fmul <2 x double> %i.gn, %i.gp
  %i.gr = fadd <2 x double> %i.gq, %i.gm          ; 2 uses
  %i.gs = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gt = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gu = fadd <2 x double> %i.gs, %i.gt
  %i.gv = fmul <2 x double> %i.gp, %i.fq
  %i.gw = fadd <2 x double> %i.gv, %i.gu          ; 2 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gz = fmul <2 x double> %i.gy, %i.gx
  %i.ha = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gr, <2 x double> %i.gz)
  %i.hc = fneg <2 x double> %i.gr
  %i.hd = fmul <2 x double> %i.gy, %i.hc
  %i.he = shufflevector <2 x double> %foldExtExtBinop253, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.gw, <2 x double> %i.hd)
  %i.hg = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hi = fdiv <2 x double> %i.hf, %i.hh          ; 10 uses
  %i.hj = fdiv <2 x double> %i.hb, %i.hh          ; 14 uses
  %i.hk = extractelement <2 x double> %i.hi, i64 0 ; 5 uses
  %i.hl = fcmp ult double %i.hk, 0.000000e+00
  br i1 %i.hl, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hm = extractelement <2 x double> %i.hj, i64 0
  %i.hn = fcmp oge double %i.hm, 0.000000e+00
  %foldExtExtBinop255 = fadd <2 x double> %i.hi, %i.hj
  %i.ho = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.hp = fcmp ole double %i.ho, 1.000000e+00
  %or.cond.i.i = and i1 %i.hn, %i.hp
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hq = extractelement <2 x double> %i.hi, i64 1 ; 4 uses
  %i.hr = fcmp ult double %i.hq, 0.000000e+00
  br i1 %i.hr, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i
  %i.hs = extractelement <2 x double> %i.hj, i64 1 ; 2 uses
  %i.ht = fcmp oge double %i.hs, 0.000000e+00
  %i.hu = fadd double %i.hq, %i.hs
  %i.hv = fcmp ole double %i.hu, 1.000000e+00
  %or.cond69.i.i = and i1 %i.ht, %i.hv
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i
  %i.hw = extractelement <2 x double> %i.hj, i64 0 ; 5 uses
  %i.hx = fcmp oeq double %i.hw, 0.000000e+00
  %i.hy = extractelement <2 x double> %i.hj, i64 1 ; 2 uses
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.hz, %i.hx
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i
  %i.ia = bitcast double %i.hw to i64
  %i.ib = bitcast double %i.hy to i64
  %i.ic = xor i64 %i.ia, %i.ib
  %i.id = icmp slt i64 %i.ic, 0
  br i1 %i.id, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i
  %i.ie = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.if = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 1, i32 2>
  %i.ig = fsub <2 x double> %i.ie, %i.if          ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  %i.ii = fdiv double %i.hw, %i.ih
  %i.ij = extractelement <2 x double> %i.ig, i64 1
  %i.ik = call double @llvm.fmuladd.f64(double %i.ii, double %i.ij, double %i.hk) ; 2 uses
  %i.il = fcmp ult double %i.ik, 0.000000e+00
  %i.im = fcmp ugt double %i.ik, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.il, %i.im
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i
  %i.in = fcmp oeq double %i.hk, 0.000000e+00
  %i.io = fcmp oeq double %i.hq, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.in, %i.io
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i
  %i.ip = bitcast double %i.hk to i64
  %i.iq = bitcast double %i.hq to i64
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i
  %i.it = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.iu = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 1, i32 2>
  %i.iv = fsub <2 x double> %i.it, %i.iu          ; 2 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  %i.ix = fdiv double %i.hk, %i.iw
  %i.iy = extractelement <2 x double> %i.iv, i64 1
  %i.iz = call double @llvm.fmuladd.f64(double %i.ix, double %i.iy, double %i.hw) ; 2 uses
  %i.ja = fcmp ult double %i.iz, 0.000000e+00
  %i.jb = fcmp ugt double %i.iz, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.ja, %i.jb
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i
  %i.jc = fadd <2 x double> %i.hi, %i.hj
  %i.jd = fadd <2 x double> %i.jc, splat (double -1.000000e+00) ; 3 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0
  %i.jf = fcmp oeq double %i.je, 0.000000e+00
  %i.jg = extractelement <2 x double> %i.jd, i64 1
  %i.jh = fcmp oeq double %i.jg, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.jh, %i.jf
  %or.cond.i60.i.i.not = xor i1 %or.cond.i60.i.i, true
  %i.ji = bitcast <2 x double> %i.jd to <2 x i64>
  %i.jj = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.ji)
  %i.jk = icmp slt i64 %i.jj, 0
  %or.cond = select i1 %or.cond.i60.i.i.not, i1 %i.jk, i1 false
  br i1 %or.cond, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i
  %i.jl = insertelement <2 x double> %i.hi, double 1.000000e+00, i64 0
  %i.jm = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fsub <2 x double> %i.jl, %i.jm          ; 2 uses
  %i.jo = fsub <2 x double> %i.jn, %i.hj
  %i.jp = fadd <2 x double> %i.jn, %i.hj
  %i.jq = extractelement <2 x double> %i.jo, i64 0
  %i.jr = shufflevector <2 x double> %i.jp, <2 x double> %i.hj, <2 x i32> <i32 1, i32 3>
  %i.js = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fsub <2 x double> %i.jr, %i.js          ; 2 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0
  %i.jv = fdiv double %i.jq, %i.ju
  %i.jw = extractelement <2 x double> %i.jt, i64 1
  %i.jx = call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.hw) ; 2 uses
  %i.jy = fcmp ult double %i.jx, 0.000000e+00
  %i.jz = fcmp ugt double %i.jx, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit: ; preds = %bb.g
  %i.ka = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.kb = fcmp ogt double %i.ka, 0.000000e+00
  %i.kc = fadd double %8, 1.000000e+00
  %i.kd = fcmp olt double %i.ka, %i.kc
  %i.ke = and i1 %i.kb, %i.kd
  br i1 %i.ke, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.kf = sext i32 %2 to i64
  %i.kg = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %i.kg, i64 %i.kf ; 3 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarE:bb.a
  %i.kk = load ptr, ptr %0, align 8, !tbaa !17, !noalias !55 ; 5 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kj ; 3 uses
  %i.km = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !20
  store double %i.kn, ptr %14, align 16, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !20
  store double %i.kq, ptr %i.ko, align 8, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i51 = shl nsw i64 %i.km, 4 ; 5 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !20
  store double %i.kt, ptr %i.kr, align 16, !tbaa !20
  %i.ku = load i64, ptr %i.g, align 8, !tbaa !21  ; 4 uses
  %i.kv = getelementptr [4 x i8], ptr %i.kh, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !14
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kx ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.la = load double, ptr %i.ky, align 8, !tbaa !20
  store double %i.la, ptr %i.kz, align 8, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.km
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !20
  store double %i.ld, ptr %i.lb, align 16, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.ky, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !20
  store double %i.lg, ptr %i.le, align 8, !tbaa !20
  %.idx214 = shl i64 %i.ku, 3
  %i.lh = getelementptr i8, ptr %i.kh, i64 %.idx214
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !14
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lj ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.lm = load double, ptr %i.lk, align 8, !tbaa !20
  store double %i.lm, ptr %i.ll, align 16, !tbaa !20
  %i.ln = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.km
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !20
  store double %i.lp, ptr %i.ln, align 8, !tbaa !20
  %i.lq = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !20
  store double %i.ls, ptr %i.lq, align 16, !tbaa !20
  %i.lt = sext i32 %4 to i64
  %i.lu = getelementptr inbounds [24 x i8], ptr %14, i64 %i.lt ; 3 uses
  %i.lv = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !51, !nonnull !25, !align !26
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !18 ; 2 uses
  %i.ma = load double, ptr %i.lv, align 8, !tbaa !20
  store double %i.ma, ptr %i.lu, align 8, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.lz
  %i.md = load double, ptr %i.mc, align 8, !tbaa !20
  store double %i.md, ptr %i.mb, align 8, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i54 = shl nsw i64 %i.lz, 4
  %i.mf = getelementptr inbounds i8, ptr %i.lv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i54
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !20
  store double %i.mg, ptr %i.me, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.mh = add nsw i32 %7, 1
  %i.mi = srem i32 %i.mh, 3
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.ku, %i.mj
  %i.ml = getelementptr [4 x i8], ptr %i.kg, i64 %i.e ; 2 uses
  %i.mm = getelementptr [4 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !14
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.mo ; 3 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !20
  store double %i.mq, ptr %15, align 16, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.km
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !20
  store double %i.mt, ptr %i.mr, align 8, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.mp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !20 ; 2 uses
  store double %i.mw, ptr %i.mu, align 16, !tbaa !20
  %i.mx = add nsw i32 %7, 2
  %i.my = srem i32 %i.mx, 3
  %i.mz = sext i32 %i.my to i64
  %i.na = mul nsw i64 %i.ku, %i.mz
  %i.nb = getelementptr [4 x i8], ptr %i.ml, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !14
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.nd ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !20
  %.sroa.0204.0.vec.insert = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.km
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !20
  %.sroa.0204.8.vec.insert = insertelement <2 x double> %.sroa.0204.0.vec.insert, double %i.nh, i64 1 ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.ne, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.nk = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.nl = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.nk
  store <2 x double> %i.nl, ptr %16, align 16, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nn = fsub double %i.nj, %i.mw
  store double %i.nn, ptr %i.nm, align 16, !tbaa !20
  %i.no = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.kz, ptr noundef nonnull align 1 dereferenceable(1) %i.ll, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.no, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210
  %i.np = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.nq = fcmp ogt double %i.np, 0.000000e+00
  %i.nr = fadd double %8, 1.000000e+00
  %i.ns = fcmp olt double %i.np, %i.nr
  %i.nt = and i1 %i.nq, %i.ns
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread210
  %i.nu = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i84, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

.lr.ph85.i.i.i.i.i.preheader.i.i.i84:             ; preds = %bb.v
  %i.nw = load double, ptr %i.lb, align 16, !tbaa !20, !noalias !56
  %i.nx = load double, ptr %i.lq, align 16, !tbaa !20, !noalias !56
  %i.ny = load double, ptr %i.kr, align 16, !tbaa !20, !noalias !56 ; 3 uses
  %i.nz = load <2 x double>, ptr %i.le, align 8
  %i.oa = insertelement <2 x double> %i.nz, double %i.nx, i64 1
  %i.ob = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fsub <2 x double> %i.oa, %i.oc          ; 7 uses
  %i.oe = load double, ptr %i.ln, align 8, !tbaa !20, !noalias !56
  %i.of = load <2 x double>, ptr %i.ll, align 16
  %i.og = load double, ptr %i.kz, align 8, !tbaa !20, !noalias !56
  %i.oh = load <2 x double>, ptr %14, align 16, !tbaa !20, !noalias !56 ; 3 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 1
  %i.oj = fsub double %i.oe, %i.oi                ; 2 uses
  %i.ok = insertelement <2 x double> %i.of, double %i.nw, i64 1
  %i.ol = fsub <2 x double> %i.ok, %i.oh          ; 3 uses
  %i.om = extractelement <2 x double> %i.oh, i64 0
  %i.on = fsub double %i.og, %i.om                ; 2 uses
  %i.oo = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.op = insertelement <2 x double> %i.oo, double %i.oj, i64 1
  %i.oq = fneg <2 x double> %i.op
  %i.or = insertelement <2 x double> %i.oo, double %i.on, i64 0
  %i.os = fmul <2 x double> %i.or, %i.oq
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.od, <2 x double> %i.os)
  %i.ou = extractelement <2 x double> %i.ol, i64 0
  %i.ov = fneg double %i.ou
  %i.ow = extractelement <2 x double> %i.ol, i64 1
  %i.ox = fmul double %i.ow, %i.ov
  %i.oy = call double @llvm.fmuladd.f64(double %i.on, double %i.oj, double %i.ox) ; 3 uses
  %i.oz = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.pa = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.pb = load <2 x double>, ptr %14, align 16, !tbaa !27 ; 4 uses
  %i.pc = load double, ptr %i.mu, align 16, !tbaa !20
  %i.pd = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.oz) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 = extractelement <2 x double> %i.pd, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86 = extractelement <2 x double> %i.pd, i64 1 ; 2 uses
  %i.pe = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86
  %i.pf = select i1 %i.pe, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 ; 2 uses
  %i.pg = call noundef double @llvm.fabs.f64(double %i.oy) ; 2 uses
  %i.ph = fcmp olt double %i.pf, %i.pg
  %i.pi = select i1 %i.ph, double %i.pg, double %i.pf ; 7 uses
  %i.pj = fcmp ogt double %i.pi, 0.000000e+00
  br i1 %i.pj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pk = fdiv double 1.000000e+00, %i.pi         ; 2 uses
  %i.pl = fcmp ogt double %i.pk, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pl, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pm = fcmp ogt double %i.pi, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pm, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pn = fcmp uno double %i.pi, 0.000000e+00
  br i1 %i.pn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i72 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.pi, %bb.y ], [ %i.pi, %bb.aa ], [ %i.pi, %bb.x ] ; 2 uses
  %.155.i.i.i73 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.pk, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.po = fcmp ogt double %.158.i.i.i72, 0.000000e+00
  br i1 %i.po, label %.lr.ph85.i.i.i.i32.i.i.i.i79, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87

.lr.ph85.i.i.i.i32.i.i.i.i79:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76 = insertelement <2 x double> poison, double %.155.i.i.i73, i64 0
  %i.pp = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pq = fmul <2 x double> %i.oz, %i.pp          ; 2 uses
  %i.pr = fmul <2 x double> %i.pq, %i.pq
  %i.ps = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.pr)
  %i.pt = fmul double %.155.i.i.i73, %i.oy        ; 2 uses
  %i.pu = fmul double %i.pt, %i.pt
  %i.pv = fadd double %i.ps, %i.pu
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i79, %bb.ab
  %.2.i.i.i75 = phi double [ 0.000000e+00, %bb.ab ], [ %i.pv, %.lr.ph85.i.i.i.i32.i.i.i.i79 ]
  %i.pw = fsub <2 x double> %i.pa, %i.pb          ; 3 uses
  %i.px = fmul <2 x double> %i.oz, %i.pw          ; 2 uses
  %shift260 = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop261 = fadd <2 x double> %i.px, %shift260
  %i.py = extractelement <2 x double> %foldExtExtBinop261, i64 0
  %i.pz = fsub double %i.pc, %i.ny                ; 2 uses
  %i.qa = fmul double %i.oy, %i.pz
  %i.qb = fadd double %i.qa, %i.py
  %i.qc = call noundef double @llvm.fabs.f64(double %i.qb)
  %i.qd = call double @sqrt(double noundef %.2.i.i.i75) #5
  %i.qe = fmul double %.158.i.i.i72, %i.qd
  %i.qf = fmul double %8, %i.qe
  %i.qg = fcmp olt double %i.qc, %i.qf
  br i1 %i.qg, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87
  %i.qh = load <2 x double>, ptr %i.kz, align 8, !tbaa !27, !noalias !57
  %i.qi = fsub <2 x double> %i.qh, %i.pb          ; 5 uses
  %i.qj = load <2 x double>, ptr %i.ll, align 16, !tbaa !27, !noalias !58
  %i.qk = fsub <2 x double> %i.qj, %i.pb          ; 5 uses
  %i.ql = fmul <2 x double> %i.qi, %i.qi          ; 2 uses
  %i.qm = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qn = fmul <2 x double> %i.od, %i.qm
  %i.qo = fmul <2 x double> %i.qi, %i.qk          ; 2 uses
  %i.qp = fmul <2 x double> %i.qk, %i.qk          ; 2 uses
  %shift263 = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x double> %i.qp, %shift263
  %foldExtExtBinop266 = fmul <2 x double> %i.od, %i.od
  %shift268 = shufflevector <2 x double> %foldExtExtBinop266, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %shift268, %foldExtExtBinop264 ; 2 uses
  %i.qq = extractelement <2 x double> %foldExtExtBinop269, i64 0
  %i.qr = fmul <2 x double> %i.pw, %i.qi          ; 2 uses
  %i.qs = fmul <2 x double> %i.pw, %i.qk          ; 2 uses
  %i.qt = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.pb ; 2 uses
  %i.qu = fsub double %i.nj, %i.ny
  %i.qv = fmul <2 x double> %i.qt, %i.qi          ; 2 uses
  %i.qw = fmul <2 x double> %i.qt, %i.qk          ; 2 uses
  %i.qx = shufflevector <2 x double> %i.ql, <2 x double> %i.qo, <2 x i32> <i32 0, i32 2>
  %i.qy = shufflevector <2 x double> %i.ql, <2 x double> %i.qo, <2 x i32> <i32 1, i32 3>
  %i.qz = fadd <2 x double> %i.qx, %i.qy
  %i.ra = fadd <2 x double> %i.qn, %i.qz          ; 4 uses
  %i.rb = extractelement <2 x double> %i.ra, i64 1 ; 2 uses
  %i.rc = fneg double %i.rb
  %i.rd = fmul double %i.rb, %i.rc
  %i.re = extractelement <2 x double> %i.ra, i64 0
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double %i.qq, double %i.rd)
  %i.rg = shufflevector <2 x double> %i.qs, <2 x double> %i.qw, <2 x i32> <i32 0, i32 2>
  %i.rh = shufflevector <2 x double> %i.qs, <2 x double> %i.qw, <2 x i32> <i32 1, i32 3>
  %i.ri = fadd <2 x double> %i.rg, %i.rh
  %i.rj = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rk = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.rl = insertelement <2 x double> %i.rk, double %i.qu, i64 1 ; 2 uses
  %i.rm = fmul <2 x double> %i.rj, %i.rl
  %i.rn = fadd <2 x double> %i.rm, %i.ri          ; 2 uses
  %i.ro = shufflevector <2 x double> %i.qr, <2 x double> %i.qv, <2 x i32> <i32 0, i32 2>
  %i.rp = shufflevector <2 x double> %i.qr, <2 x double> %i.qv, <2 x i32> <i32 1, i32 3>
  %i.rq = fadd <2 x double> %i.ro, %i.rp
  %i.rr = fmul <2 x double> %i.rl, %i.qm
  %i.rs = fadd <2 x double> %i.rr, %i.rq          ; 2 uses
  %i.rt = fneg <2 x double> %i.rs
  %i.ru = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rv = fmul <2 x double> %i.ru, %i.rt
  %i.rw = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> %i.rn, <2 x double> %i.rv)
  %i.ry = fneg <2 x double> %i.rn
  %i.rz = fmul <2 x double> %i.ru, %i.ry
  %i.sa = shufflevector <2 x double> %foldExtExtBinop269, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.rs, <2 x double> %i.rz)
  %i.sc = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.se = fdiv <2 x double> %i.sb, %i.sd          ; 10 uses
  %i.sf = fdiv <2 x double> %i.rx, %i.sd          ; 14 uses
  %i.sg = extractelement <2 x double> %i.se, i64 0 ; 5 uses
  %i.sh = fcmp ult double %i.sg, 0.000000e+00
  br i1 %i.sh, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.si = extractelement <2 x double> %i.sf, i64 0
  %i.sj = fcmp oge double %i.si, 0.000000e+00
  %foldExtExtBinop271 = fadd <2 x double> %i.se, %i.sf
  %i.sk = extractelement <2 x double> %foldExtExtBinop271, i64 0
  %i.sl = fcmp ole double %i.sk, 1.000000e+00
  %or.cond.i.i88 = and i1 %i.sj, %i.sl
  br i1 %or.cond.i.i88, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89: ; preds = %bb.ad, %bb.ac
  %i.sm = extractelement <2 x double> %i.se, i64 1 ; 4 uses
  %i.sn = fcmp ult double %i.sm, 0.000000e+00
  br i1 %i.sn, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89
  %i.so = extractelement <2 x double> %i.sf, i64 1 ; 2 uses
  %i.sp = fcmp oge double %i.so, 0.000000e+00
  %i.sq = fadd double %i.sm, %i.so
  %i.sr = fcmp ole double %i.sq, 1.000000e+00
  %or.cond69.i.i92 = and i1 %i.sp, %i.sr
  br i1 %or.cond69.i.i92, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit.thread.i.i89
  %i.ss = extractelement <2 x double> %i.sf, i64 0 ; 5 uses
  %i.st = fcmp oeq double %i.ss, 0.000000e+00
  %i.su = extractelement <2 x double> %i.sf, i64 1 ; 2 uses
  %i.sv = fcmp oeq double %i.su, 0.000000e+00
  %or.cond.i.i.i94 = or i1 %i.sv, %i.st
  br i1 %or.cond.i.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93
  %i.sw = bitcast double %i.ss to i64
  %i.sx = bitcast double %i.su to i64
  %i.sy = xor i64 %i.sw, %i.sx
  %i.sz = icmp slt i64 %i.sy, 0
  br i1 %i.sz, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95
  %i.ta = shufflevector <2 x double> %i.sf, <2 x double> %i.se, <2 x i32> <i32 0, i32 3>
  %i.tb = shufflevector <2 x double> %i.sf, <2 x double> %i.se, <2 x i32> <i32 1, i32 2>
  %i.tc = fsub <2 x double> %i.ta, %i.tb          ; 2 uses
  %i.td = extractelement <2 x double> %i.tc, i64 0
  %i.te = fdiv double %i.ss, %i.td
  %i.tf = extractelement <2 x double> %i.tc, i64 1
  %i.tg = call double @llvm.fmuladd.f64(double %i.te, double %i.tf, double %i.sg) ; 2 uses
  %i.th = fcmp ult double %i.tg, 0.000000e+00
  %i.ti = fcmp ugt double %i.tg, 1.000000e+00
  %or.cond.not.i.i106 = or i1 %i.th, %i.ti
  br i1 %or.cond.not.i.i106, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlSO_E_clESO_.exit56.thread.i.i93
  %i.tj = fcmp oeq double %i.sg, 0.000000e+00
  %i.tk = fcmp oeq double %i.sm, 0.000000e+00
  %or.cond.i57.i.i97 = or i1 %i.tj, %i.tk
  br i1 %or.cond.i57.i.i97, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96
  %i.tl = bitcast double %i.sg to i64
  %i.tm = bitcast double %i.sm to i64
  %i.tn = xor i64 %i.tm, %i.tl
  %i.to = icmp slt i64 %i.tn, 0
  br i1 %i.to, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98
  %i.tp = shufflevector <2 x double> %i.se, <2 x double> %i.sf, <2 x i32> <i32 0, i32 3>
  %i.tq = shufflevector <2 x double> %i.se, <2 x double> %i.sf, <2 x i32> <i32 1, i32 2>
  %i.tr = fsub <2 x double> %i.tp, %i.tq          ; 2 uses
  %i.ts = extractelement <2 x double> %i.tr, i64 0
  %i.tt = fdiv double %i.sg, %i.ts
  %i.tu = extractelement <2 x double> %i.tr, i64 1
  %i.tv = call double @llvm.fmuladd.f64(double %i.tt, double %i.tu, double %i.ss) ; 2 uses
  %i.tw = fcmp ult double %i.tv, 0.000000e+00
  %i.tx = fcmp ugt double %i.tv, 1.000000e+00
  %or.cond5.not.i.i105 = or i1 %i.tw, %i.tx
  br i1 %or.cond5.not.i.i105, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.i.i98, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit.thread.i.i96
  %i.ty = fadd <2 x double> %i.se, %i.sf
  %i.tz = fadd <2 x double> %i.ty, splat (double -1.000000e+00) ; 3 uses
  %i.ua = extractelement <2 x double> %i.tz, i64 0
  %i.ub = fcmp oeq double %i.ua, 0.000000e+00
  %i.uc = extractelement <2 x double> %i.tz, i64 1
  %i.ud = fcmp oeq double %i.uc, 0.000000e+00
  %or.cond.i60.i.i100 = or i1 %i.ud, %i.ub
  %or.cond.i60.i.i100.not = xor i1 %or.cond.i60.i.i100, true
  %i.ue = bitcast <2 x double> %i.tz to <2 x i64>
  %i.uf = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.ue)
  %i.ug = icmp slt i64 %i.uf, 0
  %or.cond283 = select i1 %or.cond.i60.i.i100.not, i1 %i.ug, i1 false
  br i1 %or.cond283, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99
  %i.uh = insertelement <2 x double> %i.se, double 1.000000e+00, i64 0
  %i.ui = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uj = fsub <2 x double> %i.uh, %i.ui          ; 2 uses
  %i.uk = fsub <2 x double> %i.uj, %i.sf
  %i.ul = fadd <2 x double> %i.uj, %i.sf
  %i.um = extractelement <2 x double> %i.uk, i64 0
  %i.un = shufflevector <2 x double> %i.ul, <2 x double> %i.sf, <2 x i32> <i32 1, i32 3>
  %i.uo = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.up = fsub <2 x double> %i.un, %i.uo          ; 2 uses
  %i.uq = extractelement <2 x double> %i.up, i64 0
  %i.ur = fdiv double %i.um, %i.uq
  %i.us = extractelement <2 x double> %i.up, i64 1
  %i.ut = call double @llvm.fmuladd.f64(double %i.ur, double %i.us, double %i.ss) ; 2 uses
  %i.uu = fcmp ult double %i.ut, 0.000000e+00
  %i.uv = fcmp ugt double %i.ut, 1.000000e+00
  %or.cond7.not.i.i104 = or i1 %i.uu, %i.uv
  br i1 %or.cond7.not.i.i104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit59.thread.i.i99
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87, %bb.u
  %.1 = phi i1 [ %i.nt, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESO_SO_SO_E_clESO_SO_SO_SO_.exit87 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E_clESO_SO_ENKUlddE_clEdd.exit62.thread.i.i102 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIKS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EEiiiRKNS8_IT1_EEiiNS9_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESO_E0_clESO_SO_.exit107 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
end_hunk_1
begin_hunk_2_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarE:bb.a
  store double %i.u, ptr %i.s, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.v = load i64, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.w = getelementptr [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.y ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !20
  store double %i.aa, ptr %10, align 16, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.n
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !20
  store double %i.ad, ptr %i.ab, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !20
  store double %i.ag, ptr %i.ae, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %.idx206 = shl i64 %i.v, 3
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx206
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !20
  store double %i.al, ptr %11, align 16, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.n
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  store double %i.ao, ptr %i.am, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  store double %i.ar, ptr %i.ap, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.as = add nsw i32 %3, 1
  %i.at = srem i32 %i.as, 3                       ; 2 uses
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.aw = load <2 x double>, ptr %i.av, align 16, !tbaa !27
  store <2 x double> %i.aw, ptr %12, align 16, !tbaa !27
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ay = sext i32 %2 to i64
  %i.az = sext i32 %i.at to i64
  %i.ba = mul nsw i64 %i.v, %i.az
  %i.bb = getelementptr [4 x i8], ptr %i.f, i64 %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.be ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !20
  store double %i.bg, ptr %12, align 16, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.n
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.ax, %bb.b ], [ %i.bk, %bb.c ]
  %i.bl = load double, ptr %.in, align 8, !tbaa !20 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store double %i.bl, ptr %i.bm, align 16, !tbaa !20
  %i.bn = add nsw i32 %3, 2
  %i.bo = srem i32 %i.bn, 3                       ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %4
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.br = load <2 x double>, ptr %i.bq, align 16, !tbaa !27
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bt = sext i32 %2 to i64
  %i.bu = sext i32 %i.bo to i64
  %i.bv = mul nsw i64 %i.v, %i.bu
  %i.bw = getelementptr [4 x i8], ptr %i.f, i64 %i.bt
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bz ; 3 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !20
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.n
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !20
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.cd, i64 1
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.7.0.in = phi ptr [ %i.bs, %bb.e ], [ %i.ce, %bb.f ]
  %.sroa.0.0 = phi <2 x double> [ %i.br, %bb.e ], [ %.sroa.0.8.vec.insert, %bb.f ] ; 2 uses
  %.sroa.7.0 = load double, ptr %.sroa.7.0.in, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.cf = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.cg = fsub <2 x double> %.sroa.0.0, %i.cf
  store <2 x double> %i.cg, ptr %13, align 16, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ci = fsub double %.sroa.7.0, %i.bl
  store double %i.ci, ptr %i.ch, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 0, ptr %i.d, align 1, !tbaa !29
  %i.cj = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.cj, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

.lr.ph85.i.i.i.i.i.preheader.i.i.i:               ; preds = %bb.h
  %i.cm = load double, ptr %i.ab, align 8, !tbaa !20, !noalias !78
  %i.cn = load double, ptr %i.ap, align 16, !tbaa !20, !noalias !78
  %i.co = load double, ptr %i.s, align 16, !tbaa !20, !noalias !78 ; 3 uses
  %i.cp = load double, ptr %i.ae, align 16, !tbaa !20, !noalias !78
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fsub <2 x double> %i.cr, %i.ct          ; 7 uses
  %i.cv = load double, ptr %i.am, align 8, !tbaa !20, !noalias !78
  %i.cw = load <2 x double>, ptr %11, align 16
  %i.cx = load double, ptr %10, align 16, !tbaa !20, !noalias !78
  %i.cy = load <2 x double>, ptr %9, align 16, !tbaa !20, !noalias !78 ; 3 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 1
  %i.da = fsub double %i.cv, %i.cz                ; 2 uses
  %i.db = insertelement <2 x double> %i.cw, double %i.cm, i64 1
  %i.dc = fsub <2 x double> %i.db, %i.cy          ; 3 uses
  %i.dd = extractelement <2 x double> %i.cy, i64 0
  %i.de = fsub double %i.cx, %i.dd                ; 2 uses
  %i.df = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = insertelement <2 x double> %i.df, double %i.da, i64 1
  %i.dh = fneg <2 x double> %i.dg
  %i.di = insertelement <2 x double> %i.df, double %i.de, i64 0
  %i.dj = fmul <2 x double> %i.di, %i.dh
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cu, <2 x double> %i.dj)
  %i.dl = extractelement <2 x double> %i.dc, i64 0
  %i.dm = fneg double %i.dl
  %i.dn = extractelement <2 x double> %i.dc, i64 1
  %i.do = fmul double %i.dn, %i.dm
  %i.dp = call double @llvm.fmuladd.f64(double %i.de, double %i.da, double %i.do) ; 3 uses
  %i.dq = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.dr = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.ds = load <2 x double>, ptr %9, align 16, !tbaa !27 ; 4 uses
  %i.dt = load double, ptr %i.bm, align 16, !tbaa !20
  %i.du = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dq) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.du, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.du, i64 1 ; 2 uses
  %i.dv = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i
  %i.dw = select i1 %i.dv, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dx = call noundef double @llvm.fabs.f64(double %i.dp) ; 2 uses
  %i.dy = fcmp olt double %i.dw, %i.dx
  %i.dz = select i1 %i.dy, double %i.dx, double %i.dw ; 7 uses
  %i.ea = fcmp ogt double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.eb = fdiv double 1.000000e+00, %i.dz         ; 2 uses
  %i.ec = fcmp ogt double %i.eb, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ec, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ed = fcmp ogt double %i.dz, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ed, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.ee = fcmp uno double %i.dz, 0.000000e+00
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.dz, %bb.k ], [ %i.dz, %bb.m ], [ %i.dz, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.eb, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.ef = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.ef, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.eg = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %i.dq, %i.eg          ; 2 uses
  %i.ei = fmul <2 x double> %i.eh, %i.eh
  %i.ej = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ei)
  %i.ek = fmul double %.155.i.i.i, %i.dp          ; 2 uses
  %i.el = fmul double %i.ek, %i.ek
  %i.em = fadd double %i.ej, %i.el
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.em, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.en = fsub <2 x double> %i.dr, %i.ds          ; 3 uses
  %i.eo = fmul <2 x double> %i.dq, %i.en          ; 2 uses
  %shift = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.eo, %shift
  %i.ep = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.eq = fsub double %i.dt, %i.co                ; 2 uses
  %i.er = fmul double %i.dp, %i.eq
  %i.es = fadd double %i.er, %i.ep
  %i.et = call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.ev = fmul double %.158.i.i.i, %i.eu
  %i.ew = fmul double %8, %i.ev
  %i.ex = fcmp olt double %i.et, %i.ew
  br i1 %i.ex, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit
  %i.ey = load <2 x double>, ptr %10, align 16, !tbaa !27, !noalias !79
  %i.ez = fsub <2 x double> %i.ey, %i.ds          ; 5 uses
  %i.fa = load <2 x double>, ptr %11, align 16, !tbaa !27, !noalias !80
  %i.fb = fsub <2 x double> %i.fa, %i.ds          ; 5 uses
  %i.fc = fmul <2 x double> %i.ez, %i.ez          ; 2 uses
  %i.fd = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fmul <2 x double> %i.cu, %i.fd
  %i.ff = fmul <2 x double> %i.ez, %i.fb          ; 2 uses
  %i.fg = fmul <2 x double> %i.fb, %i.fb          ; 2 uses
  %shift240 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fadd <2 x double> %i.fg, %shift240
  %foldExtExtBinop243 = fmul <2 x double> %i.cu, %i.cu
  %shift245 = shufflevector <2 x double> %foldExtExtBinop243, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop246 = fadd <2 x double> %shift245, %foldExtExtBinop241 ; 2 uses
  %i.fh = extractelement <2 x double> %foldExtExtBinop246, i64 0
  %i.fi = fmul <2 x double> %i.en, %i.ez          ; 2 uses
  %i.fj = fmul <2 x double> %i.en, %i.fb          ; 2 uses
  %i.fk = fsub <2 x double> %.sroa.0.0, %i.ds     ; 2 uses
  %i.fl = fsub double %.sroa.7.0, %i.co
  %i.fm = fmul <2 x double> %i.fk, %i.ez          ; 2 uses
  %i.fn = fmul <2 x double> %i.fk, %i.fb          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fc, <2 x double> %i.ff, <2 x i32> <i32 0, i32 2>
  %i.fp = shufflevector <2 x double> %i.fc, <2 x double> %i.ff, <2 x i32> <i32 1, i32 3>
  %i.fq = fadd <2 x double> %i.fo, %i.fp
  %i.fr = fadd <2 x double> %i.fe, %i.fq          ; 4 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1 ; 2 uses
  %i.ft = fneg double %i.fs
  %i.fu = fmul double %i.fs, %i.ft
  %i.fv = extractelement <2 x double> %i.fr, i64 0
  %i.fw = call double @llvm.fmuladd.f64(double %i.fv, double %i.fh, double %i.fu)
  %i.fx = shufflevector <2 x double> %i.fj, <2 x double> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fy = shufflevector <2 x double> %i.fj, <2 x double> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fz = fadd <2 x double> %i.fx, %i.fy
  %i.ga = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.fl, i64 1 ; 2 uses
  %i.gd = fmul <2 x double> %i.ga, %i.gc
  %i.ge = fadd <2 x double> %i.gd, %i.fz          ; 2 uses
  %i.gf = shufflevector <2 x double> %i.fi, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.gg = shufflevector <2 x double> %i.fi, <2 x double> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.gh = fadd <2 x double> %i.gf, %i.gg
  %i.gi = fmul <2 x double> %i.gc, %i.fd
  %i.gj = fadd <2 x double> %i.gi, %i.gh          ; 2 uses
  %i.gk = fneg <2 x double> %i.gj
  %i.gl = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gm = fmul <2 x double> %i.gl, %i.gk
  %i.gn = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.ge, <2 x double> %i.gm)
  %i.gp = fneg <2 x double> %i.ge
  %i.gq = fmul <2 x double> %i.gl, %i.gp
  %i.gr = shufflevector <2 x double> %foldExtExtBinop246, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gj, <2 x double> %i.gq)
  %i.gt = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fdiv <2 x double> %i.gs, %i.gu          ; 10 uses
  %i.gw = fdiv <2 x double> %i.go, %i.gu          ; 14 uses
  %i.gx = extractelement <2 x double> %i.gv, i64 0 ; 5 uses
  %i.gy = fcmp ult double %i.gx, 0.000000e+00
  br i1 %i.gy, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gz = extractelement <2 x double> %i.gw, i64 0
  %i.ha = fcmp oge double %i.gz, 0.000000e+00
  %foldExtExtBinop248 = fadd <2 x double> %i.gv, %i.gw
  %i.hb = extractelement <2 x double> %foldExtExtBinop248, i64 0
  %i.hc = fcmp ole double %i.hb, 1.000000e+00
  %or.cond.i.i = and i1 %i.ha, %i.hc
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hd = extractelement <2 x double> %i.gv, i64 1 ; 4 uses
  %i.he = fcmp ult double %i.hd, 0.000000e+00
  br i1 %i.he, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i
  %i.hf = extractelement <2 x double> %i.gw, i64 1 ; 2 uses
  %i.hg = fcmp oge double %i.hf, 0.000000e+00
  %i.hh = fadd double %i.hd, %i.hf
  %i.hi = fcmp ole double %i.hh, 1.000000e+00
  %or.cond69.i.i = and i1 %i.hg, %i.hi
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i
  %i.hj = extractelement <2 x double> %i.gw, i64 0 ; 5 uses
  %i.hk = fcmp oeq double %i.hj, 0.000000e+00
  %i.hl = extractelement <2 x double> %i.gw, i64 1 ; 2 uses
  %i.hm = fcmp oeq double %i.hl, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.hm, %i.hk
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i
  %i.hn = bitcast double %i.hj to i64
  %i.ho = bitcast double %i.hl to i64
  %i.hp = xor i64 %i.hn, %i.ho
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i
  %i.hr = shufflevector <2 x double> %i.gw, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3>
  %i.hs = shufflevector <2 x double> %i.gw, <2 x double> %i.gv, <2 x i32> <i32 1, i32 2>
  %i.ht = fsub <2 x double> %i.hr, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = fdiv double %i.hj, %i.hu
  %i.hw = extractelement <2 x double> %i.ht, i64 1
  %i.hx = call double @llvm.fmuladd.f64(double %i.hv, double %i.hw, double %i.gx) ; 2 uses
  %i.hy = fcmp ult double %i.hx, 0.000000e+00
  %i.hz = fcmp ugt double %i.hx, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.hy, %i.hz
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i
  %i.ia = fcmp oeq double %i.gx, 0.000000e+00
  %i.ib = fcmp oeq double %i.hd, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.ia, %i.ib
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i
  %i.ic = bitcast double %i.gx to i64
  %i.id = bitcast double %i.hd to i64
  %i.ie = xor i64 %i.id, %i.ic
  %i.if = icmp slt i64 %i.ie, 0
  br i1 %i.if, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i
  %i.ig = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.ih = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 1, i32 2>
  %i.ii = fsub <2 x double> %i.ig, %i.ih          ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = fdiv double %i.gx, %i.ij
  %i.il = extractelement <2 x double> %i.ii, i64 1
  %i.im = call double @llvm.fmuladd.f64(double %i.ik, double %i.il, double %i.hj) ; 2 uses
  %i.in = fcmp ult double %i.im, 0.000000e+00
  %i.io = fcmp ugt double %i.im, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.in, %i.io
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i
  %i.ip = fadd <2 x double> %i.gv, %i.gw
  %i.iq = fadd <2 x double> %i.ip, splat (double -1.000000e+00) ; 3 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0
  %i.is = fcmp oeq double %i.ir, 0.000000e+00
  %i.it = extractelement <2 x double> %i.iq, i64 1
  %i.iu = fcmp oeq double %i.it, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.iu, %i.is
  %or.cond.i60.i.i.not = xor i1 %or.cond.i60.i.i, true
  %i.iv = bitcast <2 x double> %i.iq to <2 x i64>
  %i.iw = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.iv)
  %i.ix = icmp slt i64 %i.iw, 0
  %or.cond = select i1 %or.cond.i60.i.i.not, i1 %i.ix, i1 false
  br i1 %or.cond, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i
  %i.iy = insertelement <2 x double> %i.gv, double 1.000000e+00, i64 0
  %i.iz = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fsub <2 x double> %i.iy, %i.iz          ; 2 uses
  %i.jb = fsub <2 x double> %i.ja, %i.gw
  %i.jc = fadd <2 x double> %i.ja, %i.gw
  %i.jd = extractelement <2 x double> %i.jb, i64 0
  %i.je = shufflevector <2 x double> %i.jc, <2 x double> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.jf = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = fsub <2 x double> %i.je, %i.jf          ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0
  %i.ji = fdiv double %i.jd, %i.jh
  %i.jj = extractelement <2 x double> %i.jg, i64 1
  %i.jk = call double @llvm.fmuladd.f64(double %i.ji, double %i.jj, double %i.hj) ; 2 uses
  %i.jl = fcmp ult double %i.jk, 0.000000e+00
  %i.jm = fcmp ugt double %i.jk, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jl, %i.jm
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit: ; preds = %bb.g
  %i.jn = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.jo = fcmp ogt double %i.jn, 0.000000e+00
  %i.jp = fadd double %8, 1.000000e+00
  %i.jq = fcmp olt double %i.jn, %i.jp
  %i.jr = and i1 %i.jo, %i.jq
  br i1 %i.jr, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.js = sext i32 %2 to i64
  %i.jt = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ju = getelementptr [4 x i8], ptr %i.jt, i64 %i.js ; 3 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !14
  %i.jw = sext i32 %i.jv to i64
  %i.jx = load ptr, ptr %0, align 8, !tbaa !17, !noalias !81 ; 5 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jw ; 3 uses
  %i.jz = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.ka = load double, ptr %i.jy, align 8, !tbaa !20
  store double %i.ka, ptr %14, align 16, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %i.jz
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !20
  store double %i.kd, ptr %i.kb, align 8, !tbaa !20
  %i.ke = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i49 = shl nsw i64 %i.jz, 4 ; 5 uses
  %i.kf = getelementptr inbounds i8, ptr %i.jy, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !20
  store double %i.kg, ptr %i.ke, align 16, !tbaa !20
  %i.kh = load i64, ptr %i.g, align 8, !tbaa !21  ; 4 uses
  %i.ki = getelementptr [4 x i8], ptr %i.ju, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !14
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kk ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !20
  store double %i.kn, ptr %i.km, align 8, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.jz
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !20
  store double %i.kq, ptr %i.ko, align 16, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !20
  store double %i.kt, ptr %i.kr, align 8, !tbaa !20
  %.idx207 = shl i64 %i.kh, 3
  %i.ku = getelementptr i8, ptr %i.ju, i64 %.idx207
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !14
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kw ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !20
  store double %i.kz, ptr %i.ky, align 16, !tbaa !20
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.jz
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !20
  store double %i.lc, ptr %i.la, align 8, !tbaa !20
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.kx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.lf = load double, ptr %i.le, align 8, !tbaa !20
  store double %i.lf, ptr %i.ld, align 16, !tbaa !20
  %i.lg = sext i32 %4 to i64
  %i.lh = getelementptr inbounds [24 x i8], ptr %14, i64 %i.lg ; 2 uses
  %i.li = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.lj = load <2 x double>, ptr %i.li, align 16, !tbaa !27
  store <2 x double> %i.lj, ptr %i.lh, align 8, !tbaa !27
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.ll = getelementptr i8, ptr %i.li, i64 16
  %i.lm = load double, ptr %i.ll, align 16, !tbaa !20
  store double %i.lm, ptr %i.lk, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.ln = add nsw i32 %7, 1
  %i.lo = srem i32 %i.ln, 3
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul nsw i64 %i.kh, %i.lp
  %i.lr = getelementptr [4 x i8], ptr %i.jt, i64 %i.e ; 2 uses
  %i.ls = getelementptr [4 x i8], ptr %i.lr, i64 %i.lq
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !14
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.lu ; 3 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !20
  store double %i.lw, ptr %15, align 16, !tbaa !20
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.jz
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !20
  store double %i.lz, ptr %i.lx, align 8, !tbaa !20
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.lv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !20 ; 2 uses
  store double %i.mc, ptr %i.ma, align 16, !tbaa !20
  %i.md = add nsw i32 %7, 2
  %i.me = srem i32 %i.md, 3
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul nsw i64 %i.kh, %i.mf
  %i.mh = getelementptr [4 x i8], ptr %i.lr, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !14
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.mj ; 3 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !20
  %.sroa.0197.0.vec.insert = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.jz
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !20
  %.sroa.0197.8.vec.insert = insertelement <2 x double> %.sroa.0197.0.vec.insert, double %i.mn, i64 1 ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.mq = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.mr = fsub <2 x double> %.sroa.0197.8.vec.insert, %i.mq
  store <2 x double> %i.mr, ptr %16, align 16, !tbaa !27
  %i.ms = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mt = fsub double %i.mp, %i.mc
  store double %i.mt, ptr %i.ms, align 16, !tbaa !20
  %i.mu = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.km, ptr noundef nonnull align 1 dereferenceable(1) %i.ky, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.mu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203
  %i.mv = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.mw = fcmp ogt double %i.mv, 0.000000e+00
  %i.mx = fadd double %8, 1.000000e+00
  %i.my = fcmp olt double %i.mv, %i.mx
  %i.mz = and i1 %i.mw, %i.my
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread203
  %i.na = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i81, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

.lr.ph85.i.i.i.i.i.preheader.i.i.i81:             ; preds = %bb.v
  %i.nc = load double, ptr %i.ko, align 16, !tbaa !20, !noalias !82
  %i.nd = load double, ptr %i.ld, align 16, !tbaa !20, !noalias !82
  %i.ne = load double, ptr %i.ke, align 16, !tbaa !20, !noalias !82 ; 3 uses
  %i.nf = load <2 x double>, ptr %i.kr, align 8
  %i.ng = insertelement <2 x double> %i.nf, double %i.nd, i64 1
  %i.nh = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fsub <2 x double> %i.ng, %i.ni          ; 7 uses
  %i.nk = load double, ptr %i.la, align 8, !tbaa !20, !noalias !82
  %i.nl = load <2 x double>, ptr %i.ky, align 16
  %i.nm = load double, ptr %i.km, align 8, !tbaa !20, !noalias !82
  %i.nn = load <2 x double>, ptr %14, align 16, !tbaa !20, !noalias !82 ; 3 uses
  %i.no = extractelement <2 x double> %i.nn, i64 1
  %i.np = fsub double %i.nk, %i.no                ; 2 uses
  %i.nq = insertelement <2 x double> %i.nl, double %i.nc, i64 1
  %i.nr = fsub <2 x double> %i.nq, %i.nn          ; 3 uses
  %i.ns = extractelement <2 x double> %i.nn, i64 0
  %i.nt = fsub double %i.nm, %i.ns                ; 2 uses
  %i.nu = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nv = insertelement <2 x double> %i.nu, double %i.np, i64 1
  %i.nw = fneg <2 x double> %i.nv
  %i.nx = insertelement <2 x double> %i.nu, double %i.nt, i64 0
  %i.ny = fmul <2 x double> %i.nx, %i.nw
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.nj, <2 x double> %i.ny)
  %i.oa = extractelement <2 x double> %i.nr, i64 0
  %i.ob = fneg double %i.oa
  %i.oc = extractelement <2 x double> %i.nr, i64 1
  %i.od = fmul double %i.oc, %i.ob
  %i.oe = call double @llvm.fmuladd.f64(double %i.nt, double %i.np, double %i.od) ; 3 uses
  %i.of = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.og = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.oh = load <2 x double>, ptr %14, align 16, !tbaa !27 ; 4 uses
  %i.oi = load double, ptr %i.ma, align 16, !tbaa !20
  %i.oj = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.of) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82 = extractelement <2 x double> %i.oj, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83 = extractelement <2 x double> %i.oj, i64 1 ; 2 uses
  %i.ok = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83
  %i.ol = select i1 %i.ok, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i83, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i82 ; 2 uses
  %i.om = call noundef double @llvm.fabs.f64(double %i.oe) ; 2 uses
  %i.on = fcmp olt double %i.ol, %i.om
  %i.oo = select i1 %i.on, double %i.om, double %i.ol ; 7 uses
  %i.op = fcmp ogt double %i.oo, 0.000000e+00
  br i1 %i.op, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i81
  %i.oq = fdiv double 1.000000e+00, %i.oo         ; 2 uses
  %i.or = fcmp ogt double %i.oq, f0x7FEFFFFFFFFFFFFF
  br i1 %i.or, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.os = fcmp ogt double %i.oo, f0x7FEFFFFFFFFFFFFF
  br i1 %i.os, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i81
  %i.ot = fcmp uno double %i.oo, 0.000000e+00
  br i1 %i.ot, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i69 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.oo, %bb.y ], [ %i.oo, %bb.aa ], [ %i.oo, %bb.x ] ; 2 uses
  %.155.i.i.i70 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.oq, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.ou = fcmp ogt double %.158.i.i.i69, 0.000000e+00
  br i1 %i.ou, label %.lr.ph85.i.i.i.i32.i.i.i.i76, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84

.lr.ph85.i.i.i.i32.i.i.i.i76:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i73 = insertelement <2 x double> poison, double %.155.i.i.i70, i64 0
  %i.ov = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i73, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = fmul <2 x double> %i.of, %i.ov          ; 2 uses
  %i.ox = fmul <2 x double> %i.ow, %i.ow
  %i.oy = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ox)
  %i.oz = fmul double %.155.i.i.i70, %i.oe        ; 2 uses
  %i.pa = fmul double %i.oz, %i.oz
  %i.pb = fadd double %i.oy, %i.pa
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i76, %bb.ab
  %.2.i.i.i72 = phi double [ 0.000000e+00, %bb.ab ], [ %i.pb, %.lr.ph85.i.i.i.i32.i.i.i.i76 ]
  %i.pc = fsub <2 x double> %i.og, %i.oh          ; 3 uses
  %i.pd = fmul <2 x double> %i.of, %i.pc          ; 2 uses
  %shift253 = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop254 = fadd <2 x double> %i.pd, %shift253
  %i.pe = extractelement <2 x double> %foldExtExtBinop254, i64 0
  %i.pf = fsub double %i.oi, %i.ne                ; 2 uses
  %i.pg = fmul double %i.oe, %i.pf
  %i.ph = fadd double %i.pg, %i.pe
  %i.pi = call noundef double @llvm.fabs.f64(double %i.ph)
  %i.pj = call double @sqrt(double noundef %.2.i.i.i72) #5
  %i.pk = fmul double %.158.i.i.i69, %i.pj
  %i.pl = fmul double %8, %i.pk
  %i.pm = fcmp olt double %i.pi, %i.pl
  br i1 %i.pm, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84
  %i.pn = load <2 x double>, ptr %i.km, align 8, !tbaa !27, !noalias !83
  %i.po = fsub <2 x double> %i.pn, %i.oh          ; 5 uses
  %i.pp = load <2 x double>, ptr %i.ky, align 16, !tbaa !27, !noalias !84
  %i.pq = fsub <2 x double> %i.pp, %i.oh          ; 5 uses
  %i.pr = fmul <2 x double> %i.po, %i.po          ; 2 uses
  %i.ps = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = fmul <2 x double> %i.nj, %i.ps
  %i.pu = fmul <2 x double> %i.po, %i.pq          ; 2 uses
  %i.pv = fmul <2 x double> %i.pq, %i.pq          ; 2 uses
  %shift256 = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop257 = fadd <2 x double> %i.pv, %shift256
  %foldExtExtBinop259 = fmul <2 x double> %i.nj, %i.nj
  %shift261 = shufflevector <2 x double> %foldExtExtBinop259, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop262 = fadd <2 x double> %shift261, %foldExtExtBinop257 ; 2 uses
  %i.pw = extractelement <2 x double> %foldExtExtBinop262, i64 0
  %i.px = fmul <2 x double> %i.pc, %i.po          ; 2 uses
  %i.py = fmul <2 x double> %i.pc, %i.pq          ; 2 uses
  %i.pz = fsub <2 x double> %.sroa.0197.8.vec.insert, %i.oh ; 2 uses
  %i.qa = fsub double %i.mp, %i.ne
  %i.qb = fmul <2 x double> %i.pz, %i.po          ; 2 uses
  %i.qc = fmul <2 x double> %i.pz, %i.pq          ; 2 uses
  %i.qd = shufflevector <2 x double> %i.pr, <2 x double> %i.pu, <2 x i32> <i32 0, i32 2>
  %i.qe = shufflevector <2 x double> %i.pr, <2 x double> %i.pu, <2 x i32> <i32 1, i32 3>
  %i.qf = fadd <2 x double> %i.qd, %i.qe
  %i.qg = fadd <2 x double> %i.pt, %i.qf          ; 4 uses
  %i.qh = extractelement <2 x double> %i.qg, i64 1 ; 2 uses
  %i.qi = fneg double %i.qh
  %i.qj = fmul double %i.qh, %i.qi
  %i.qk = extractelement <2 x double> %i.qg, i64 0
  %i.ql = call double @llvm.fmuladd.f64(double %i.qk, double %i.pw, double %i.qj)
  %i.qm = shufflevector <2 x double> %i.py, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.qn = shufflevector <2 x double> %i.py, <2 x double> %i.qc, <2 x i32> <i32 1, i32 3>
  %i.qo = fadd <2 x double> %i.qm, %i.qn
  %i.qp = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qq = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.qr = insertelement <2 x double> %i.qq, double %i.qa, i64 1 ; 2 uses
  %i.qs = fmul <2 x double> %i.qp, %i.qr
  %i.qt = fadd <2 x double> %i.qs, %i.qo          ; 2 uses
  %i.qu = shufflevector <2 x double> %i.px, <2 x double> %i.qb, <2 x i32> <i32 0, i32 2>
  %i.qv = shufflevector <2 x double> %i.px, <2 x double> %i.qb, <2 x i32> <i32 1, i32 3>
  %i.qw = fadd <2 x double> %i.qu, %i.qv
  %i.qx = fmul <2 x double> %i.qr, %i.ps
  %i.qy = fadd <2 x double> %i.qx, %i.qw          ; 2 uses
  %i.qz = fneg <2 x double> %i.qy
  %i.ra = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rb = fmul <2 x double> %i.ra, %i.qz
  %i.rc = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rc, <2 x double> %i.qt, <2 x double> %i.rb)
  %i.re = fneg <2 x double> %i.qt
  %i.rf = fmul <2 x double> %i.ra, %i.re
  %i.rg = shufflevector <2 x double> %foldExtExtBinop262, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.qy, <2 x double> %i.rf)
  %i.ri = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rk = fdiv <2 x double> %i.rh, %i.rj          ; 10 uses
  %i.rl = fdiv <2 x double> %i.rd, %i.rj          ; 14 uses
  %i.rm = extractelement <2 x double> %i.rk, i64 0 ; 5 uses
  %i.rn = fcmp ult double %i.rm, 0.000000e+00
  br i1 %i.rn, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ro = extractelement <2 x double> %i.rl, i64 0
  %i.rp = fcmp oge double %i.ro, 0.000000e+00
  %foldExtExtBinop264 = fadd <2 x double> %i.rk, %i.rl
  %i.rq = extractelement <2 x double> %foldExtExtBinop264, i64 0
  %i.rr = fcmp ole double %i.rq, 1.000000e+00
  %or.cond.i.i85 = and i1 %i.rp, %i.rr
  br i1 %or.cond.i.i85, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86: ; preds = %bb.ad, %bb.ac
  %i.rs = extractelement <2 x double> %i.rk, i64 1 ; 4 uses
  %i.rt = fcmp ult double %i.rs, 0.000000e+00
  br i1 %i.rt, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86
  %i.ru = extractelement <2 x double> %i.rl, i64 1 ; 2 uses
  %i.rv = fcmp oge double %i.ru, 0.000000e+00
  %i.rw = fadd double %i.rs, %i.ru
  %i.rx = fcmp ole double %i.rw, 1.000000e+00
  %or.cond69.i.i89 = and i1 %i.rv, %i.rx
  br i1 %or.cond69.i.i89, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit.thread.i.i86
  %i.ry = extractelement <2 x double> %i.rl, i64 0 ; 5 uses
  %i.rz = fcmp oeq double %i.ry, 0.000000e+00
  %i.sa = extractelement <2 x double> %i.rl, i64 1 ; 2 uses
  %i.sb = fcmp oeq double %i.sa, 0.000000e+00
  %or.cond.i.i.i91 = or i1 %i.sb, %i.rz
  br i1 %or.cond.i.i.i91, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90
  %i.sc = bitcast double %i.ry to i64
  %i.sd = bitcast double %i.sa to i64
  %i.se = xor i64 %i.sc, %i.sd
  %i.sf = icmp slt i64 %i.se, 0
  br i1 %i.sf, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92
  %i.sg = shufflevector <2 x double> %i.rl, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.sh = shufflevector <2 x double> %i.rl, <2 x double> %i.rk, <2 x i32> <i32 1, i32 2>
  %i.si = fsub <2 x double> %i.sg, %i.sh          ; 2 uses
  %i.sj = extractelement <2 x double> %i.si, i64 0
  %i.sk = fdiv double %i.ry, %i.sj
  %i.sl = extractelement <2 x double> %i.si, i64 1
  %i.sm = call double @llvm.fmuladd.f64(double %i.sk, double %i.sl, double %i.rm) ; 2 uses
  %i.sn = fcmp ult double %i.sm, 0.000000e+00
  %i.so = fcmp ugt double %i.sm, 1.000000e+00
  %or.cond.not.i.i103 = or i1 %i.sn, %i.so
  br i1 %or.cond.not.i.i103, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.i.i92, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlSM_E_clESM_.exit56.thread.i.i90
  %i.sp = fcmp oeq double %i.rm, 0.000000e+00
  %i.sq = fcmp oeq double %i.rs, 0.000000e+00
  %or.cond.i57.i.i94 = or i1 %i.sp, %i.sq
  br i1 %or.cond.i57.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93
  %i.sr = bitcast double %i.rm to i64
  %i.ss = bitcast double %i.rs to i64
  %i.st = xor i64 %i.ss, %i.sr
  %i.su = icmp slt i64 %i.st, 0
  br i1 %i.su, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95
  %i.sv = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.sw = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 1, i32 2>
  %i.sx = fsub <2 x double> %i.sv, %i.sw          ; 2 uses
  %i.sy = extractelement <2 x double> %i.sx, i64 0
  %i.sz = fdiv double %i.rm, %i.sy
  %i.ta = extractelement <2 x double> %i.sx, i64 1
  %i.tb = call double @llvm.fmuladd.f64(double %i.sz, double %i.ta, double %i.ry) ; 2 uses
  %i.tc = fcmp ult double %i.tb, 0.000000e+00
  %i.td = fcmp ugt double %i.tb, 1.000000e+00
  %or.cond5.not.i.i102 = or i1 %i.tc, %i.td
  br i1 %or.cond5.not.i.i102, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit.thread.i.i93
  %i.te = fadd <2 x double> %i.rk, %i.rl
  %i.tf = fadd <2 x double> %i.te, splat (double -1.000000e+00) ; 3 uses
  %i.tg = extractelement <2 x double> %i.tf, i64 0
  %i.th = fcmp oeq double %i.tg, 0.000000e+00
  %i.ti = extractelement <2 x double> %i.tf, i64 1
  %i.tj = fcmp oeq double %i.ti, 0.000000e+00
  %or.cond.i60.i.i97 = or i1 %i.tj, %i.th
  %or.cond.i60.i.i97.not = xor i1 %or.cond.i60.i.i97, true
  %i.tk = bitcast <2 x double> %i.tf to <2 x i64>
  %i.tl = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.tk)
  %i.tm = icmp slt i64 %i.tl, 0
  %or.cond276 = select i1 %or.cond.i60.i.i97.not, i1 %i.tm, i1 false
  br i1 %or.cond276, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96
  %i.tn = insertelement <2 x double> %i.rk, double 1.000000e+00, i64 0
  %i.to = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tp = fsub <2 x double> %i.tn, %i.to          ; 2 uses
  %i.tq = fsub <2 x double> %i.tp, %i.rl
  %i.tr = fadd <2 x double> %i.tp, %i.rl
  %i.ts = extractelement <2 x double> %i.tq, i64 0
  %i.tt = shufflevector <2 x double> %i.tr, <2 x double> %i.rl, <2 x i32> <i32 1, i32 3>
  %i.tu = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tv = fsub <2 x double> %i.tt, %i.tu          ; 2 uses
  %i.tw = extractelement <2 x double> %i.tv, i64 0
  %i.tx = fdiv double %i.ts, %i.tw
  %i.ty = extractelement <2 x double> %i.tv, i64 1
  %i.tz = call double @llvm.fmuladd.f64(double %i.tx, double %i.ty, double %i.ry) ; 2 uses
  %i.ua = fcmp ult double %i.tz, 0.000000e+00
  %i.ub = fcmp ugt double %i.tz, 1.000000e+00
  %or.cond7.not.i.i101 = or i1 %i.ua, %i.ub
  br i1 %or.cond7.not.i.i101, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit59.thread.i.i96
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84, %bb.u
  %.1 = phi i1 [ %i.mz, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESM_SM_SM_E_clESM_SM_SM_SM_.exit84 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E_clESM_SM_ENKUlddE_clEdd.exit62.thread.i.i99 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEbRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEiiiRKNS6_IT1_EEiiNS7_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESM_E0_clESM_SM_.exit104 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
end_hunk_2
begin_hunk_3_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarE:bb.a
  %.idx213 = shl i64 %i.v, 3
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx213
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aj ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !20
  store double %i.al, ptr %11, align 16, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.n
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20
  store double %i.ao, ptr %i.am, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !20
  store double %i.ar, ptr %i.ap, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.as = add nsw i32 %3, 1
  %i.at = srem i32 %i.as, 3                       ; 2 uses
  %i.au = icmp eq i32 %i.at, %4
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.av = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !106, !nonnull !25, !align !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !18 ; 2 uses
  %i.ba = load double, ptr %i.av, align 8, !tbaa !20
  store double %i.ba, ptr %12, align 16, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.az
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !20
  store double %i.bd, ptr %i.bb, align 8, !tbaa !20
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.az, 4
  %i.be = getelementptr inbounds i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bf = sext i32 %2 to i64
  %i.bg = sext i32 %i.at to i64
  %i.bh = mul nsw i64 %i.v, %i.bg
  %i.bi = getelementptr [4 x i8], ptr %i.f, i64 %i.bf
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !20
  store double %i.bn, ptr %12, align 16, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.n
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !20
  store double %i.bq, ptr %i.bo, align 8, !tbaa !20
  %i.br = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.be, %bb.b ], [ %i.br, %bb.c ]
  %i.bs = load double, ptr %.in, align 8, !tbaa !20 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store double %i.bs, ptr %i.bt, align 16, !tbaa !20
  %i.bu = add nsw i32 %3, 2
  %i.bv = srem i32 %i.bu, 3                       ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %4
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !106, !nonnull !25, !align !26
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18 ; 2 uses
  %i.cc = load double, ptr %i.bx, align 8, !tbaa !20
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cb
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.ce, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i49 = shl nsw i64 %i.cb, 4
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i49
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.cg = sext i32 %2 to i64
  %i.ch = sext i32 %i.bv to i64
  %i.ci = mul nsw i64 %i.v, %i.ch
  %i.cj = getelementptr [4 x i8], ptr %i.f, i64 %i.cg
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cm ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !20
  %.sroa.0.0.vec.insert194 = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.n
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !20
  %.sroa.0.8.vec.insert196 = insertelement <2 x double> %.sroa.0.0.vec.insert194, double %i.cq, i64 1
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.0.in = phi ptr [ %i.cf, %bb.e ], [ %i.cr, %bb.f ]
  %.sroa.0.0 = phi <2 x double> [ %.sroa.0.8.vec.insert, %bb.e ], [ %.sroa.0.8.vec.insert196, %bb.f ] ; 2 uses
  %.sroa.8.0 = load double, ptr %.sroa.8.0.in, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.cs = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.ct = fsub <2 x double> %.sroa.0.0, %i.cs
  store <2 x double> %i.ct, ptr %13, align 16, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cv = fsub double %.sroa.8.0, %i.bs
  store double %i.cv, ptr %i.cu, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 0, ptr %i.d, align 1, !tbaa !29
  %i.cw = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.cw, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

.lr.ph85.i.i.i.i.i.preheader.i.i.i:               ; preds = %bb.h
  %i.cz = load double, ptr %i.ab, align 8, !tbaa !20, !noalias !107
  %i.da = load double, ptr %i.ap, align 16, !tbaa !20, !noalias !107
  %i.db = load double, ptr %i.s, align 16, !tbaa !20, !noalias !107 ; 3 uses
  %i.dc = load double, ptr %i.ae, align 16, !tbaa !20, !noalias !107
  %i.dd = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.da, i64 1
  %i.df = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fsub <2 x double> %i.de, %i.dg          ; 7 uses
  %i.di = load double, ptr %i.am, align 8, !tbaa !20, !noalias !107
  %i.dj = load <2 x double>, ptr %11, align 16
  %i.dk = load double, ptr %10, align 16, !tbaa !20, !noalias !107
  %i.dl = load <2 x double>, ptr %9, align 16, !tbaa !20, !noalias !107 ; 3 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1
  %i.dn = fsub double %i.di, %i.dm                ; 2 uses
  %i.do = insertelement <2 x double> %i.dj, double %i.cz, i64 1
  %i.dp = fsub <2 x double> %i.do, %i.dl          ; 3 uses
  %i.dq = extractelement <2 x double> %i.dl, i64 0
  %i.dr = fsub double %i.dk, %i.dq                ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dt = insertelement <2 x double> %i.ds, double %i.dn, i64 1
  %i.du = fneg <2 x double> %i.dt
  %i.dv = insertelement <2 x double> %i.ds, double %i.dr, i64 0
  %i.dw = fmul <2 x double> %i.dv, %i.du
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dh, <2 x double> %i.dw)
  %i.dy = extractelement <2 x double> %i.dp, i64 0
  %i.dz = fneg double %i.dy
  %i.ea = extractelement <2 x double> %i.dp, i64 1
  %i.eb = fmul double %i.ea, %i.dz
  %i.ec = call double @llvm.fmuladd.f64(double %i.dr, double %i.dn, double %i.eb) ; 3 uses
  %i.ed = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ee = load <2 x double>, ptr %12, align 16, !tbaa !27
  %i.ef = load <2 x double>, ptr %9, align 16, !tbaa !27 ; 4 uses
  %i.eg = load double, ptr %i.bt, align 16, !tbaa !20
  %i.eh = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ed) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.ei = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i
  %i.ej = select i1 %i.ei, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ec) ; 2 uses
  %i.el = fcmp olt double %i.ej, %i.ek
  %i.em = select i1 %i.el, double %i.ek, double %i.ej ; 7 uses
  %i.en = fcmp ogt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.eo = fdiv double 1.000000e+00, %i.em         ; 2 uses
  %i.ep = fcmp ogt double %i.eo, f0x7FEFFFFFFFFFFFFF
  br i1 %i.ep, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eq = fcmp ogt double %i.em, f0x7FEFFFFFFFFFFFFF
  br i1 %i.eq, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i
  %i.er = fcmp uno double %i.em, 0.000000e+00
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.158.i.i.i = phi double [ 0.000000e+00, %bb.l ], [ f0x0004000000000000, %bb.i ], [ %i.em, %bb.k ], [ %i.em, %bb.m ], [ %i.em, %bb.j ] ; 2 uses
  %.155.i.i.i = phi double [ 1.000000e+00, %bb.l ], [ f0x7FEFFFFFFFFFFFFF, %bb.i ], [ %i.eo, %bb.k ], [ 1.000000e+00, %bb.m ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.es = fcmp ogt double %.158.i.i.i, 0.000000e+00
  br i1 %i.es, label %.lr.ph85.i.i.i.i32.i.i.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit

.lr.ph85.i.i.i.i32.i.i.i.i:                       ; preds = %bb.n
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %.155.i.i.i, i64 0
  %i.et = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.ed, %i.et          ; 2 uses
  %i.ev = fmul <2 x double> %i.eu, %i.eu
  %i.ew = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ev)
  %i.ex = fmul double %.155.i.i.i, %i.ec          ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = fadd double %i.ew, %i.ey
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i, %bb.n
  %.2.i.i.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ez, %.lr.ph85.i.i.i.i32.i.i.i.i ]
  %i.fa = fsub <2 x double> %i.ee, %i.ef          ; 3 uses
  %i.fb = fmul <2 x double> %i.ed, %i.fa          ; 2 uses
  %shift = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.fb, %shift
  %i.fc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fd = fsub double %i.eg, %i.db                ; 2 uses
  %i.fe = fmul double %i.ec, %i.fd
  %i.ff = fadd double %i.fe, %i.fc
  %i.fg = call noundef double @llvm.fabs.f64(double %i.ff)
  %i.fh = call double @sqrt(double noundef %.2.i.i.i) #5
  %i.fi = fmul double %.158.i.i.i, %i.fh
  %i.fj = fmul double %8, %i.fi
  %i.fk = fcmp olt double %i.fg, %i.fj
  br i1 %i.fk, label %bb.o, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

bb.o:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit
  %i.fl = load <2 x double>, ptr %10, align 16, !tbaa !27, !noalias !108
  %i.fm = fsub <2 x double> %i.fl, %i.ef          ; 5 uses
  %i.fn = load <2 x double>, ptr %11, align 16, !tbaa !27, !noalias !109
  %i.fo = fsub <2 x double> %i.fn, %i.ef          ; 5 uses
  %i.fp = fmul <2 x double> %i.fm, %i.fm          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fmul <2 x double> %i.dh, %i.fq
  %i.fs = fmul <2 x double> %i.fm, %i.fo          ; 2 uses
  %i.ft = fmul <2 x double> %i.fo, %i.fo          ; 2 uses
  %shift247 = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fadd <2 x double> %i.ft, %shift247
  %foldExtExtBinop250 = fmul <2 x double> %i.dh, %i.dh
  %shift252 = shufflevector <2 x double> %foldExtExtBinop250, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fadd <2 x double> %shift252, %foldExtExtBinop248 ; 2 uses
  %i.fu = extractelement <2 x double> %foldExtExtBinop253, i64 0
  %i.fv = fmul <2 x double> %i.fa, %i.fm          ; 2 uses
  %i.fw = fmul <2 x double> %i.fa, %i.fo          ; 2 uses
  %i.fx = fsub <2 x double> %.sroa.0.0, %i.ef     ; 2 uses
  %i.fy = fsub double %.sroa.8.0, %i.db
  %i.fz = fmul <2 x double> %i.fx, %i.fm          ; 2 uses
  %i.ga = fmul <2 x double> %i.fx, %i.fo          ; 2 uses
  %i.gb = shufflevector <2 x double> %i.fp, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.gc = shufflevector <2 x double> %i.fp, <2 x double> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gd = fadd <2 x double> %i.gb, %i.gc
  %i.ge = fadd <2 x double> %i.fr, %i.gd          ; 4 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 1 ; 2 uses
  %i.gg = fneg double %i.gf
  %i.gh = fmul double %i.gf, %i.gg
  %i.gi = extractelement <2 x double> %i.ge, i64 0
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.fu, double %i.gh)
  %i.gk = shufflevector <2 x double> %i.fw, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gl = shufflevector <2 x double> %i.fw, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.gm = fadd <2 x double> %i.gk, %i.gl
  %i.gn = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.go = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.fy, i64 1 ; 2 uses
  %i.gq = fmul <2 x double> %i.gn, %i.gp
  %i.gr = fadd <2 x double> %i.gq, %i.gm          ; 2 uses
  %i.gs = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gt = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gu = fadd <2 x double> %i.gs, %i.gt
  %i.gv = fmul <2 x double> %i.gp, %i.fq
  %i.gw = fadd <2 x double> %i.gv, %i.gu          ; 2 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gz = fmul <2 x double> %i.gy, %i.gx
  %i.ha = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gr, <2 x double> %i.gz)
  %i.hc = fneg <2 x double> %i.gr
  %i.hd = fmul <2 x double> %i.gy, %i.hc
  %i.he = shufflevector <2 x double> %foldExtExtBinop253, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %i.gw, <2 x double> %i.hd)
  %i.hg = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hi = fdiv <2 x double> %i.hf, %i.hh          ; 10 uses
  %i.hj = fdiv <2 x double> %i.hb, %i.hh          ; 14 uses
  %i.hk = extractelement <2 x double> %i.hi, i64 0 ; 5 uses
  %i.hl = fcmp ult double %i.hk, 0.000000e+00
  br i1 %i.hl, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hm = extractelement <2 x double> %i.hj, i64 0
  %i.hn = fcmp oge double %i.hm, 0.000000e+00
  %foldExtExtBinop255 = fadd <2 x double> %i.hi, %i.hj
  %i.ho = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.hp = fcmp ole double %i.ho, 1.000000e+00
  %or.cond.i.i = and i1 %i.hn, %i.hp
  br i1 %or.cond.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i: ; preds = %bb.p, %bb.o
  %i.hq = extractelement <2 x double> %i.hi, i64 1 ; 4 uses
  %i.hr = fcmp ult double %i.hq, 0.000000e+00
  br i1 %i.hr, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i, label %bb.q

bb.q:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i
  %i.hs = extractelement <2 x double> %i.hj, i64 1 ; 2 uses
  %i.ht = fcmp oge double %i.hs, 0.000000e+00
  %i.hu = fadd double %i.hq, %i.hs
  %i.hv = fcmp ole double %i.hu, 1.000000e+00
  %or.cond69.i.i = and i1 %i.ht, %i.hv
  br i1 %or.cond69.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i: ; preds = %bb.q, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i
  %i.hw = extractelement <2 x double> %i.hj, i64 0 ; 5 uses
  %i.hx = fcmp oeq double %i.hw, 0.000000e+00
  %i.hy = extractelement <2 x double> %i.hj, i64 1 ; 2 uses
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  %or.cond.i.i.i = or i1 %i.hz, %i.hx
  br i1 %or.cond.i.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i
  %i.ia = bitcast double %i.hw to i64
  %i.ib = bitcast double %i.hy to i64
  %i.ic = xor i64 %i.ia, %i.ib
  %i.id = icmp slt i64 %i.ic, 0
  br i1 %i.id, label %bb.r, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i

bb.r:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i
  %i.ie = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.if = shufflevector <2 x double> %i.hj, <2 x double> %i.hi, <2 x i32> <i32 1, i32 2>
  %i.ig = fsub <2 x double> %i.ie, %i.if          ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  %i.ii = fdiv double %i.hw, %i.ih
  %i.ij = extractelement <2 x double> %i.ig, i64 1
  %i.ik = call double @llvm.fmuladd.f64(double %i.ii, double %i.ij, double %i.hk) ; 2 uses
  %i.il = fcmp ult double %i.ik, 0.000000e+00
  %i.im = fcmp ugt double %i.ik, 1.000000e+00
  %or.cond.not.i.i = or i1 %i.il, %i.im
  br i1 %or.cond.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i: ; preds = %bb.r, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i
  %i.in = fcmp oeq double %i.hk, 0.000000e+00
  %i.io = fcmp oeq double %i.hq, 0.000000e+00
  %or.cond.i57.i.i = or i1 %i.in, %i.io
  br i1 %or.cond.i57.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i
  %i.ip = bitcast double %i.hk to i64
  %i.iq = bitcast double %i.hq to i64
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = icmp slt i64 %i.ir, 0
  br i1 %i.is, label %bb.s, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i

bb.s:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i
  %i.it = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.iu = shufflevector <2 x double> %i.hi, <2 x double> %i.hj, <2 x i32> <i32 1, i32 2>
  %i.iv = fsub <2 x double> %i.it, %i.iu          ; 2 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  %i.ix = fdiv double %i.hk, %i.iw
  %i.iy = extractelement <2 x double> %i.iv, i64 1
  %i.iz = call double @llvm.fmuladd.f64(double %i.ix, double %i.iy, double %i.hw) ; 2 uses
  %i.ja = fcmp ult double %i.iz, 0.000000e+00
  %i.jb = fcmp ugt double %i.iz, 1.000000e+00
  %or.cond5.not.i.i = or i1 %i.ja, %i.jb
  br i1 %or.cond5.not.i.i, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i: ; preds = %bb.s, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i
  %i.jc = fadd <2 x double> %i.hi, %i.hj
  %i.jd = fadd <2 x double> %i.jc, splat (double -1.000000e+00) ; 3 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0
  %i.jf = fcmp oeq double %i.je, 0.000000e+00
  %i.jg = extractelement <2 x double> %i.jd, i64 1
  %i.jh = fcmp oeq double %i.jg, 0.000000e+00
  %or.cond.i60.i.i = or i1 %i.jh, %i.jf
  %or.cond.i60.i.i.not = xor i1 %or.cond.i60.i.i, true
  %i.ji = bitcast <2 x double> %i.jd to <2 x i64>
  %i.jj = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.ji)
  %i.jk = icmp slt i64 %i.jj, 0
  %or.cond = select i1 %or.cond.i60.i.i.not, i1 %i.jk, i1 false
  br i1 %or.cond, label %bb.t, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

bb.t:                                             ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i
  %i.jl = insertelement <2 x double> %i.hi, double 1.000000e+00, i64 0
  %i.jm = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = fsub <2 x double> %i.jl, %i.jm          ; 2 uses
  %i.jo = fsub <2 x double> %i.jn, %i.hj
  %i.jp = fadd <2 x double> %i.jn, %i.hj
  %i.jq = extractelement <2 x double> %i.jo, i64 0
  %i.jr = shufflevector <2 x double> %i.jp, <2 x double> %i.hj, <2 x i32> <i32 1, i32 3>
  %i.js = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fsub <2 x double> %i.jr, %i.js          ; 2 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0
  %i.jv = fdiv double %i.jq, %i.ju
  %i.jw = extractelement <2 x double> %i.jt, i64 1
  %i.jx = call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.hw) ; 2 uses
  %i.jy = fcmp ult double %i.jx, 0.000000e+00
  %i.jz = fcmp ugt double %i.jx, 1.000000e+00
  %or.cond7.not.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond7.not.i.i, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit: ; preds = %bb.g
  %i.ka = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.kb = fcmp ogt double %i.ka, 0.000000e+00
  %i.kc = fadd double %8, 1.000000e+00
  %i.kd = fcmp olt double %i.ka, %i.kc
  %i.ke = and i1 %i.kb, %i.kd
  br i1 %i.ke, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i, %bb.t, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit, %bb.h, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  %i.kf = sext i32 %2 to i64
  %i.kg = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %i.kg, i64 %i.kf ; 3 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !14
end_hunk_3
begin_hunk_4_@_ZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarE:bb.a
  %i.kk = load ptr, ptr %0, align 8, !tbaa !17, !noalias !110 ; 5 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kj ; 3 uses
  %i.km = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !20
  store double %i.kn, ptr %14, align 16, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !20
  store double %i.kq, ptr %i.ko, align 8, !tbaa !20
  %i.kr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i51 = shl nsw i64 %i.km, 4 ; 5 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !20
  store double %i.kt, ptr %i.kr, align 16, !tbaa !20
  %i.ku = load i64, ptr %i.g, align 8, !tbaa !21  ; 4 uses
  %i.kv = getelementptr [4 x i8], ptr %i.kh, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !14
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.kx ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.la = load double, ptr %i.ky, align 8, !tbaa !20
  store double %i.la, ptr %i.kz, align 8, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.km
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !20
  store double %i.ld, ptr %i.lb, align 16, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.ky, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !20
  store double %i.lg, ptr %i.le, align 8, !tbaa !20
  %.idx214 = shl i64 %i.ku, 3
  %i.lh = getelementptr i8, ptr %i.kh, i64 %.idx214
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !14
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.lj ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 4 uses
  %i.lm = load double, ptr %i.lk, align 8, !tbaa !20
  store double %i.lm, ptr %i.ll, align 16, !tbaa !20
  %i.ln = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.km
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !20
  store double %i.lp, ptr %i.ln, align 8, !tbaa !20
  %i.lq = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lk, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !20
  store double %i.ls, ptr %i.lq, align 16, !tbaa !20
  %i.lt = sext i32 %4 to i64
  %i.lu = getelementptr inbounds [24 x i8], ptr %14, i64 %i.lt ; 3 uses
  %i.lv = load ptr, ptr %5, align 8, !tbaa !103   ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !106, !nonnull !25, !align !26
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !18 ; 2 uses
  %i.ma = load double, ptr %i.lv, align 8, !tbaa !20
  store double %i.ma, ptr %i.lu, align 8, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.lv, i64 %i.lz
  %i.md = load double, ptr %i.mc, align 8, !tbaa !20
  store double %i.md, ptr %i.mb, align 8, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %.idx.i.i.i.i.i.i.i.i.i.i.i54 = shl nsw i64 %i.lz, 4
  %i.mf = getelementptr inbounds i8, ptr %i.lv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i54
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !20
  store double %i.mg, ptr %i.me, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.mh = add nsw i32 %7, 1
  %i.mi = srem i32 %i.mh, 3
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.ku, %i.mj
  %i.ml = getelementptr [4 x i8], ptr %i.kg, i64 %i.e ; 2 uses
  %i.mm = getelementptr [4 x i8], ptr %i.ml, i64 %i.mk
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !14
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.mo ; 3 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !20
  store double %i.mq, ptr %15, align 16, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.km
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !20
  store double %i.mt, ptr %i.mr, align 8, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.mp, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !20 ; 2 uses
  store double %i.mw, ptr %i.mu, align 16, !tbaa !20
  %i.mx = add nsw i32 %7, 2
  %i.my = srem i32 %i.mx, 3
  %i.mz = sext i32 %i.my to i64
  %i.na = mul nsw i64 %i.ku, %i.mz
  %i.nb = getelementptr [4 x i8], ptr %i.ml, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !14
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.nd ; 3 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !20
  %.sroa.0204.0.vec.insert = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.km
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !20
  %.sroa.0204.8.vec.insert = insertelement <2 x double> %.sroa.0204.0.vec.insert, double %i.nh, i64 1 ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.ne, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i51
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.nk = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.nl = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.nk
  store <2 x double> %i.nl, ptr %16, align 16, !tbaa !27
  %i.nm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nn = fsub double %i.nj, %i.mw
  store double %i.nn, ptr %i.nm, align 16, !tbaa !20
  %i.no = call noundef zeroext i1 @_ZN3igl22ray_triangle_intersectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEES3_S3_S3_S3_EEbRKNS1_10MatrixBaseIT_EERKNS4_IT0_EERKNS4_IT1_EERKNS4_IT2_EERKNS4_IT3_EENS5_6ScalarERSP_SQ_SQ_Rb(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %i.kz, ptr noundef nonnull align 1 dereferenceable(1) %i.ll, double noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  br i1 %i.no, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210
  %i.np = load double, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.nq = fcmp ogt double %i.np, 0.000000e+00
  %i.nr = fadd double %8, 1.000000e+00
  %i.ns = fcmp olt double %i.np, %i.nr
  %i.nt = and i1 %i.nq, %i.ns
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

bb.v:                                             ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread210
  %i.nu = load i8, ptr %i.d, align 1, !tbaa !29, !range !30, !noundef !25
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %.lr.ph85.i.i.i.i.i.preheader.i.i.i84, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

.lr.ph85.i.i.i.i.i.preheader.i.i.i84:             ; preds = %bb.v
  %i.nw = load double, ptr %i.lb, align 16, !tbaa !20, !noalias !111
  %i.nx = load double, ptr %i.lq, align 16, !tbaa !20, !noalias !111
  %i.ny = load double, ptr %i.kr, align 16, !tbaa !20, !noalias !111 ; 3 uses
  %i.nz = load <2 x double>, ptr %i.le, align 8
  %i.oa = insertelement <2 x double> %i.nz, double %i.nx, i64 1
  %i.ob = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fsub <2 x double> %i.oa, %i.oc          ; 7 uses
  %i.oe = load double, ptr %i.ln, align 8, !tbaa !20, !noalias !111
  %i.of = load <2 x double>, ptr %i.ll, align 16
  %i.og = load double, ptr %i.kz, align 8, !tbaa !20, !noalias !111
  %i.oh = load <2 x double>, ptr %14, align 16, !tbaa !20, !noalias !111 ; 3 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 1
  %i.oj = fsub double %i.oe, %i.oi                ; 2 uses
  %i.ok = insertelement <2 x double> %i.of, double %i.nw, i64 1
  %i.ol = fsub <2 x double> %i.ok, %i.oh          ; 3 uses
  %i.om = extractelement <2 x double> %i.oh, i64 0
  %i.on = fsub double %i.og, %i.om                ; 2 uses
  %i.oo = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.op = insertelement <2 x double> %i.oo, double %i.oj, i64 1
  %i.oq = fneg <2 x double> %i.op
  %i.or = insertelement <2 x double> %i.oo, double %i.on, i64 0
  %i.os = fmul <2 x double> %i.or, %i.oq
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.od, <2 x double> %i.os)
  %i.ou = extractelement <2 x double> %i.ol, i64 0
  %i.ov = fneg double %i.ou
  %i.ow = extractelement <2 x double> %i.ol, i64 1
  %i.ox = fmul double %i.ow, %i.ov
  %i.oy = call double @llvm.fmuladd.f64(double %i.on, double %i.oj, double %i.ox) ; 3 uses
  %i.oz = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.pa = load <2 x double>, ptr %15, align 16, !tbaa !27
  %i.pb = load <2 x double>, ptr %14, align 16, !tbaa !27 ; 4 uses
  %i.pc = load double, ptr %i.mu, align 16, !tbaa !20
  %i.pd = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.oz) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 = extractelement <2 x double> %i.pd, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86 = extractelement <2 x double> %i.pd, i64 1 ; 2 uses
  %i.pe = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85, %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86
  %i.pf = select i1 %i.pe, double %.sroa.0.8.vec.extract.i.i.i.i.i.i.i.i.i.i86, double %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i.i.i85 ; 2 uses
  %i.pg = call noundef double @llvm.fabs.f64(double %i.oy) ; 2 uses
  %i.ph = fcmp olt double %i.pf, %i.pg
  %i.pi = select i1 %i.ph, double %i.pg, double %i.pf ; 7 uses
  %i.pj = fcmp ogt double %i.pi, 0.000000e+00
  br i1 %i.pj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pk = fdiv double 1.000000e+00, %i.pi         ; 2 uses
  %i.pl = fcmp ogt double %i.pk, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pl, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.pm = fcmp ogt double %i.pi, f0x7FEFFFFFFFFFFFFF
  br i1 %i.pm, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph85.i.i.i.i.i.preheader.i.i.i84
  %i.pn = fcmp uno double %i.pi, 0.000000e+00
  br i1 %i.pn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.158.i.i.i72 = phi double [ 0.000000e+00, %bb.z ], [ f0x0004000000000000, %bb.w ], [ %i.pi, %bb.y ], [ %i.pi, %bb.aa ], [ %i.pi, %bb.x ] ; 2 uses
  %.155.i.i.i73 = phi double [ 1.000000e+00, %bb.z ], [ f0x7FEFFFFFFFFFFFFF, %bb.w ], [ %i.pk, %bb.y ], [ 1.000000e+00, %bb.aa ], [ 1.000000e+00, %bb.x ] ; 2 uses
  %i.po = fcmp ogt double %.158.i.i.i72, 0.000000e+00
  br i1 %i.po, label %.lr.ph85.i.i.i.i32.i.i.i.i79, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87

.lr.ph85.i.i.i.i32.i.i.i.i79:                     ; preds = %bb.ab
  %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76 = insertelement <2 x double> poison, double %.155.i.i.i73, i64 0
  %i.pp = shufflevector <2 x double> %.sroa.6.40.vec.insert.i.i.i.i.i.i.i76, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pq = fmul <2 x double> %i.oz, %i.pp          ; 2 uses
  %i.pr = fmul <2 x double> %i.pq, %i.pq
  %i.ps = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.pr)
  %i.pt = fmul double %.155.i.i.i73, %i.oy        ; 2 uses
  %i.pu = fmul double %i.pt, %i.pt
  %i.pv = fadd double %i.ps, %i.pu
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87: ; preds = %.lr.ph85.i.i.i.i32.i.i.i.i79, %bb.ab
  %.2.i.i.i75 = phi double [ 0.000000e+00, %bb.ab ], [ %i.pv, %.lr.ph85.i.i.i.i32.i.i.i.i79 ]
  %i.pw = fsub <2 x double> %i.pa, %i.pb          ; 3 uses
  %i.px = fmul <2 x double> %i.oz, %i.pw          ; 2 uses
  %shift260 = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop261 = fadd <2 x double> %i.px, %shift260
  %i.py = extractelement <2 x double> %foldExtExtBinop261, i64 0
  %i.pz = fsub double %i.pc, %i.ny                ; 2 uses
  %i.qa = fmul double %i.oy, %i.pz
  %i.qb = fadd double %i.qa, %i.py
  %i.qc = call noundef double @llvm.fabs.f64(double %i.qb)
  %i.qd = call double @sqrt(double noundef %.2.i.i.i75) #5
  %i.qe = fmul double %.158.i.i.i72, %i.qd
  %i.qf = fmul double %8, %i.qe
  %i.qg = fcmp olt double %i.qc, %i.qf
  br i1 %i.qg, label %bb.ac, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

bb.ac:                                            ; preds = %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87
  %i.qh = load <2 x double>, ptr %i.kz, align 8, !tbaa !27, !noalias !112
  %i.qi = fsub <2 x double> %i.qh, %i.pb          ; 5 uses
  %i.qj = load <2 x double>, ptr %i.ll, align 16, !tbaa !27, !noalias !113
  %i.qk = fsub <2 x double> %i.qj, %i.pb          ; 5 uses
  %i.ql = fmul <2 x double> %i.qi, %i.qi          ; 2 uses
  %i.qm = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qn = fmul <2 x double> %i.od, %i.qm
  %i.qo = fmul <2 x double> %i.qi, %i.qk          ; 2 uses
  %i.qp = fmul <2 x double> %i.qk, %i.qk          ; 2 uses
  %shift263 = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x double> %i.qp, %shift263
  %foldExtExtBinop266 = fmul <2 x double> %i.od, %i.od
  %shift268 = shufflevector <2 x double> %foldExtExtBinop266, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop269 = fadd <2 x double> %shift268, %foldExtExtBinop264 ; 2 uses
  %i.qq = extractelement <2 x double> %foldExtExtBinop269, i64 0
  %i.qr = fmul <2 x double> %i.pw, %i.qi          ; 2 uses
  %i.qs = fmul <2 x double> %i.pw, %i.qk          ; 2 uses
  %i.qt = fsub <2 x double> %.sroa.0204.8.vec.insert, %i.pb ; 2 uses
  %i.qu = fsub double %i.nj, %i.ny
  %i.qv = fmul <2 x double> %i.qt, %i.qi          ; 2 uses
  %i.qw = fmul <2 x double> %i.qt, %i.qk          ; 2 uses
  %i.qx = shufflevector <2 x double> %i.ql, <2 x double> %i.qo, <2 x i32> <i32 0, i32 2>
  %i.qy = shufflevector <2 x double> %i.ql, <2 x double> %i.qo, <2 x i32> <i32 1, i32 3>
  %i.qz = fadd <2 x double> %i.qx, %i.qy
  %i.ra = fadd <2 x double> %i.qn, %i.qz          ; 4 uses
  %i.rb = extractelement <2 x double> %i.ra, i64 1 ; 2 uses
  %i.rc = fneg double %i.rb
  %i.rd = fmul double %i.rb, %i.rc
  %i.re = extractelement <2 x double> %i.ra, i64 0
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double %i.qq, double %i.rd)
  %i.rg = shufflevector <2 x double> %i.qs, <2 x double> %i.qw, <2 x i32> <i32 0, i32 2>
  %i.rh = shufflevector <2 x double> %i.qs, <2 x double> %i.qw, <2 x i32> <i32 1, i32 3>
  %i.ri = fadd <2 x double> %i.rg, %i.rh
  %i.rj = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rk = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.rl = insertelement <2 x double> %i.rk, double %i.qu, i64 1 ; 2 uses
  %i.rm = fmul <2 x double> %i.rj, %i.rl
  %i.rn = fadd <2 x double> %i.rm, %i.ri          ; 2 uses
  %i.ro = shufflevector <2 x double> %i.qr, <2 x double> %i.qv, <2 x i32> <i32 0, i32 2>
  %i.rp = shufflevector <2 x double> %i.qr, <2 x double> %i.qv, <2 x i32> <i32 1, i32 3>
  %i.rq = fadd <2 x double> %i.ro, %i.rp
  %i.rr = fmul <2 x double> %i.rl, %i.qm
  %i.rs = fadd <2 x double> %i.rr, %i.rq          ; 2 uses
  %i.rt = fneg <2 x double> %i.rs
  %i.ru = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rv = fmul <2 x double> %i.ru, %i.rt
  %i.rw = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> %i.rn, <2 x double> %i.rv)
  %i.ry = fneg <2 x double> %i.rn
  %i.rz = fmul <2 x double> %i.ru, %i.ry
  %i.sa = shufflevector <2 x double> %foldExtExtBinop269, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.rs, <2 x double> %i.rz)
  %i.sc = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.se = fdiv <2 x double> %i.sb, %i.sd          ; 10 uses
  %i.sf = fdiv <2 x double> %i.rx, %i.sd          ; 14 uses
  %i.sg = extractelement <2 x double> %i.se, i64 0 ; 5 uses
  %i.sh = fcmp ult double %i.sg, 0.000000e+00
  br i1 %i.sh, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.si = extractelement <2 x double> %i.sf, i64 0
  %i.sj = fcmp oge double %i.si, 0.000000e+00
  %foldExtExtBinop271 = fadd <2 x double> %i.se, %i.sf
  %i.sk = extractelement <2 x double> %foldExtExtBinop271, i64 0
  %i.sl = fcmp ole double %i.sk, 1.000000e+00
  %or.cond.i.i88 = and i1 %i.sj, %i.sl
  br i1 %or.cond.i.i88, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89: ; preds = %bb.ad, %bb.ac
  %i.sm = extractelement <2 x double> %i.se, i64 1 ; 4 uses
  %i.sn = fcmp ult double %i.sm, 0.000000e+00
  br i1 %i.sn, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93, label %bb.ae

bb.ae:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89
  %i.so = extractelement <2 x double> %i.sf, i64 1 ; 2 uses
  %i.sp = fcmp oge double %i.so, 0.000000e+00
  %i.sq = fadd double %i.sm, %i.so
  %i.sr = fcmp ole double %i.sq, 1.000000e+00
  %or.cond69.i.i92 = and i1 %i.sp, %i.sr
  br i1 %or.cond69.i.i92, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93: ; preds = %bb.ae, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit.thread.i.i89
  %i.ss = extractelement <2 x double> %i.sf, i64 0 ; 5 uses
  %i.st = fcmp oeq double %i.ss, 0.000000e+00
  %i.su = extractelement <2 x double> %i.sf, i64 1 ; 2 uses
  %i.sv = fcmp oeq double %i.su, 0.000000e+00
  %or.cond.i.i.i94 = or i1 %i.sv, %i.st
  br i1 %or.cond.i.i.i94, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93
  %i.sw = bitcast double %i.ss to i64
  %i.sx = bitcast double %i.su to i64
  %i.sy = xor i64 %i.sw, %i.sx
  %i.sz = icmp slt i64 %i.sy, 0
  br i1 %i.sz, label %bb.af, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96

bb.af:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95
  %i.ta = shufflevector <2 x double> %i.sf, <2 x double> %i.se, <2 x i32> <i32 0, i32 3>
  %i.tb = shufflevector <2 x double> %i.sf, <2 x double> %i.se, <2 x i32> <i32 1, i32 2>
  %i.tc = fsub <2 x double> %i.ta, %i.tb          ; 2 uses
  %i.td = extractelement <2 x double> %i.tc, i64 0
  %i.te = fdiv double %i.ss, %i.td
  %i.tf = extractelement <2 x double> %i.tc, i64 1
  %i.tg = call double @llvm.fmuladd.f64(double %i.te, double %i.tf, double %i.sg) ; 2 uses
  %i.th = fcmp ult double %i.tg, 0.000000e+00
  %i.ti = fcmp ugt double %i.tg, 1.000000e+00
  %or.cond.not.i.i106 = or i1 %i.th, %i.ti
  br i1 %or.cond.not.i.i106, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96: ; preds = %bb.af, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.i.i95, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlSN_E_clESN_.exit56.thread.i.i93
  %i.tj = fcmp oeq double %i.sg, 0.000000e+00
  %i.tk = fcmp oeq double %i.sm, 0.000000e+00
  %or.cond.i57.i.i97 = or i1 %i.tj, %i.tk
  br i1 %or.cond.i57.i.i97, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96
  %i.tl = bitcast double %i.sg to i64
  %i.tm = bitcast double %i.sm to i64
  %i.tn = xor i64 %i.tm, %i.tl
  %i.to = icmp slt i64 %i.tn, 0
  br i1 %i.to, label %bb.ag, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99

bb.ag:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98
  %i.tp = shufflevector <2 x double> %i.se, <2 x double> %i.sf, <2 x i32> <i32 0, i32 3>
  %i.tq = shufflevector <2 x double> %i.se, <2 x double> %i.sf, <2 x i32> <i32 1, i32 2>
  %i.tr = fsub <2 x double> %i.tp, %i.tq          ; 2 uses
  %i.ts = extractelement <2 x double> %i.tr, i64 0
  %i.tt = fdiv double %i.sg, %i.ts
  %i.tu = extractelement <2 x double> %i.tr, i64 1
  %i.tv = call double @llvm.fmuladd.f64(double %i.tt, double %i.tu, double %i.ss) ; 2 uses
  %i.tw = fcmp ult double %i.tv, 0.000000e+00
  %i.tx = fcmp ugt double %i.tv, 1.000000e+00
  %or.cond5.not.i.i105 = or i1 %i.tw, %i.tx
  br i1 %or.cond5.not.i.i105, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99: ; preds = %bb.ag, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.i.i98, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit.thread.i.i96
  %i.ty = fadd <2 x double> %i.se, %i.sf
  %i.tz = fadd <2 x double> %i.ty, splat (double -1.000000e+00) ; 3 uses
  %i.ua = extractelement <2 x double> %i.tz, i64 0
  %i.ub = fcmp oeq double %i.ua, 0.000000e+00
  %i.uc = extractelement <2 x double> %i.tz, i64 1
  %i.ud = fcmp oeq double %i.uc, 0.000000e+00
  %or.cond.i60.i.i100 = or i1 %i.ud, %i.ub
  %or.cond.i60.i.i100.not = xor i1 %or.cond.i60.i.i100, true
  %i.ue = bitcast <2 x double> %i.tz to <2 x i64>
  %i.uf = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %i.ue)
  %i.ug = icmp slt i64 %i.uf, 0
  %or.cond283 = select i1 %or.cond.i60.i.i100.not, i1 %i.ug, i1 false
  br i1 %or.cond283, label %bb.ah, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102

bb.ah:                                            ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99
  %i.uh = insertelement <2 x double> %i.se, double 1.000000e+00, i64 0
  %i.ui = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uj = fsub <2 x double> %i.uh, %i.ui          ; 2 uses
  %i.uk = fsub <2 x double> %i.uj, %i.sf
  %i.ul = fadd <2 x double> %i.uj, %i.sf
  %i.um = extractelement <2 x double> %i.uk, i64 0
  %i.un = shufflevector <2 x double> %i.ul, <2 x double> %i.sf, <2 x i32> <i32 1, i32 3>
  %i.uo = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.up = fsub <2 x double> %i.un, %i.uo          ; 2 uses
  %i.uq = extractelement <2 x double> %i.up, i64 0
  %i.ur = fdiv double %i.um, %i.uq
  %i.us = extractelement <2 x double> %i.up, i64 1
  %i.ut = call double @llvm.fmuladd.f64(double %i.ur, double %i.us, double %i.ss) ; 2 uses
  %i.uu = fcmp ult double %i.ut, 0.000000e+00
  %i.uv = fcmp ugt double %i.ut, 1.000000e+00
  %or.cond7.not.i.i104 = or i1 %i.uu, %i.uv
  br i1 %or.cond7.not.i.i104, label %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102, label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102: ; preds = %bb.ah, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit59.thread.i.i99
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107: ; preds = %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.v, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87, %bb.u
  %.1 = phi i1 [ %i.nt, %bb.u ], [ false, %bb.v ], [ false, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi3ELi1ELi1ELi3EEESN_SN_SN_E_clESN_SN_SN_SN_.exit87 ], [ true, %bb.ad ], [ true, %bb.ae ], [ false, %_ZZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E_clESN_SN_ENKUlddE_clEdd.exit62.thread.i.i102 ], [ true, %bb.ah ], [ true, %bb.ag ], [ true, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread

_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit.thread: ; preds = %bb.r, %bb.s, %bb.t, %bb.q, %bb.p, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit
  %.2 = phi i1 [ true, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit ], [ %.1, %_ZZN3igl41triangle_triangle_intersect_shared_vertexIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS1_5BlockIS3_Li1ELin1ELb0EEEEEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EEiiiRKNS7_IT1_EEiiNS8_6ScalarEENKUlRKNS2_IdLi1ELi2ELi1ELi1ELi2EEESN_E0_clESN_SN_.exit107 ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
end_hunk_4
