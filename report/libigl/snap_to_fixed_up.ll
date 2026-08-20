inline.NumInlined: 18317
inline.NumDeleted: 9926
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN3igl16snap_to_fixed_upIdEEvRKN5Eigen10QuaternionIT_Li0EEERS4_:_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %.sroa.0, align 16, !tbaa !22
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store double 0.000000e+00, ptr %.sroa.0.16..sroa_idx, align 16, !tbaa !22
  %i.ah = fmul <2 x double> %.sroa.041.8.vec.insert, zeroinitializer
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8. = load <2 x double>, ptr %.sroa.0.8..sroa_idx, align 8 ; 3 uses
  %i.ai = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.z, %i.ai
  %i.ak = fadd <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %.sroa.10.56.vec.insert, %i.al
  %i.an = fadd <2 x double> %i.am, %i.ak          ; 5 uses
  %i.ao = fmul double %i.ad, 0.000000e+00
  %i.ap = extractelement <2 x double> %.sroa.0.8..sroa.0.8..sroa.0.8., i64 0
  %i.aq = fmul double %i.ae, %i.ap
  %i.ar = fmul double %i.ag, 0.000000e+00
  %i.as = fadd double %i.ar, %i.aq
  %i.at = fadd double %i.ao, %i.as                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.sroa.014.8.vec.insert32 = insertelement <2 x double> %i.an, double 0.000000e+00, i64 0 ; 3 uses
  %i.au = fmul <2 x double> %.sroa.014.8.vec.insert32, %.sroa.014.8.vec.insert32 ; 2 uses
  %shift = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.au, %shift
  %i.av = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aw = fmul <2 x double> %i.an, %i.an          ; 2 uses
  %i.ax = fmul double %i.at, %i.at                ; 2 uses
  %i.ay = fadd double %i.ax, %i.av
  %i.az = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %.sroa.014.0 = select i1 %i.az, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %.sroa.014.8.vec.insert32 ; 4 uses
  %.sroa.10.0 = select i1 %i.az, double 0.000000e+00, double %i.at ; 4 uses
  %i.ba = fmul <2 x double> %.sroa.014.0, %.sroa.014.0 ; 2 uses
  %shift48 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49 = fadd <2 x double> %i.ba, %shift48
  %i.bb = extractelement <2 x double> %foldExtExtBinop49, i64 0
  %i.bc = fmul double %.sroa.10.0, %.sroa.10.0
  %i.bd = fadd double %i.bc, %i.bb                ; 2 uses
  %i.be = fcmp ogt double %i.bd, 0.000000e+00     ; 2 uses
  %.scalar.i3 = tail call double @llvm.sqrt.f64(double %i.bd) ; 2 uses
  %i.bf = insertelement <2 x double> poison, double %.scalar.i3, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x double> %.sroa.014.0, %i.bg
  %i.bi = fdiv double %.sroa.10.0, %.scalar.i3
  %.sroa.014.1 = select i1 %i.be, <2 x double> %i.bh, <2 x double> %.sroa.014.0 ; 4 uses
  %.sroa.10.1 = select i1 %i.be, double %i.bi, double %.sroa.10.0 ; 3 uses
  %i.bj = fmul <2 x double> %.sroa.014.1, %.sroa.014.1 ; 2 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bm = fadd <2 x double> %i.bk, %i.bl
  %i.bn = fmul double %.sroa.10.1, %.sroa.10.1
  %i.bo = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.ax, i64 1
  %i.bq = fadd <2 x double> %i.bp, %i.bm          ; 2 uses
  %i.br = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bq) ; 3 uses
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fdiv <2 x double> %i.an, %i.bs
  %i.bu = fcmp ogt <2 x double> %i.bq, zeroinitializer ; 3 uses
  %.splat = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.i.i = select <2 x i1> %.splat, <2 x double> %i.bt, <2 x double> %i.an ; 7 uses
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %.sroa.014.1, %i.bv
  %i.bx = insertelement <2 x double> poison, double %.sroa.10.1, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.at, i64 1 ; 2 uses
  %i.bz = fdiv <2 x double> %i.by, %i.br
  %i.ca = select <2 x i1> %i.bu, <2 x double> %i.bz, <2 x double> %i.by ; 5 uses
  %.splat54 = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %.sroa.057.0.i.i = select <2 x i1> %.splat54, <2 x double> %i.bw, <2 x double> %.sroa.014.1 ; 7 uses
  %i.cb = fmul <2 x double> %.sroa.0.0.i.i, %.sroa.057.0.i.i ; 2 uses
  %shift51 = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fadd <2 x double> %i.cb, %shift51
  %i.cc = extractelement <2 x double> %foldExtExtBinop52, i64 0
  %i.cd = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.ce = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = fadd double %i.cf, %i.cc                ; 4 uses
  %i.ch = fcmp olt double %i.cg, f0xBFEFFFFFFFFFDCD1
  br i1 %i.ch, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit
  %i.ci = fcmp olt double %i.cg, -1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ci, double -1.000000e+00, double %i.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !29
  %.sroa.0.0.vec.extract53.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 0
  store double %.sroa.0.0.vec.extract53.i.i, ptr %2, align 16, !tbaa !22, !noalias !32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %i.ce, ptr %i.cj, align 16, !tbaa !22, !noalias !32
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = shufflevector <2 x double> %.sroa.057.0.i.i, <2 x double> %.sroa.0.0.i.i, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !22, !noalias !29
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.057.8.vec.extract62.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 1
  store double %.sroa.057.8.vec.extract62.i.i, ptr %i.cm, align 8, !tbaa !22, !noalias !29
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.cd, ptr %i.cn, align 8, !tbaa !22, !noalias !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !29
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 0, ptr %i.cp, align 4, !tbaa !35, !noalias !29
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.co, i8 0, i64 11, i1 false), !noalias !29
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 -1, i64 16, i1 false), !noalias !29
  store i64 0, ptr %i.cr, align 8, !tbaa !52, !noalias !29
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 368
  store i8 0, ptr %i.cs, align 16, !tbaa !53, !noalias !29
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 369
  store i8 0, ptr %i.ct, align 1, !tbaa !72, !noalias !29
  %i.cu = call noundef nonnull align 16 dereferenceable(560) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(560) %3, ptr noundef nonnull align 16 dereferenceable(48) %2, i32 noundef 16), !noalias !29 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !16, !noalias !29
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cy = load double, ptr %i.cx, align 16, !tbaa !22, !noalias !29
  %i.cz = fadd nnan double %.sroa.speculated.i.i, 1.000000e+00
  %i.da = fmul nnan double %i.cz, 5.000000e-01    ; 2 uses
  %i.db = call double @sqrt(double noundef %i.da) #19, !noalias !29
  %i.dc = fsub double 1.000000e+00, %i.da
  %i.dd = call double @sqrt(double noundef %i.dc) #19, !noalias !29 ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.de = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.cw, %i.de
  %i.dg = fmul double %i.cy, %i.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !29
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

bb.b:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9normalizeEv.exit
  %.sroa.0.8.vec.extract.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 1
  %.sroa.057.8.vec.extract.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 1
  %.sroa.057.0.vec.extract.i.i = extractelement <2 x double> %.sroa.057.0.i.i, i64 0
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x double> %.sroa.0.0.i.i, i64 0
  %i.dh = shufflevector <2 x double> %.sroa.057.0.i.i, <2 x double> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.di = fneg <2 x double> %i.dh
  %i.dj = shufflevector <2 x double> %i.ca, <2 x double> %.sroa.0.0.i.i, <2 x i32> <i32 1, i32 2>
  %i.dk = fmul <2 x double> %i.dj, %i.di
  %i.dl = shufflevector <2 x double> %.sroa.0.0.i.i, <2 x double> %.sroa.057.0.i.i, <2 x i32> <i32 1, i32 2>
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.ca, <2 x double> %i.dk)
  %i.dn = fneg double %.sroa.057.0.vec.extract.i.i
  %i.do = fmul double %.sroa.0.8.vec.extract.i.i, %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %.sroa.0.0.vec.extract.i.i, double %.sroa.057.8.vec.extract.i.i, double %i.do)
  %i.dq = fadd double %i.cg, 1.000000e+00
  %i.dr = fmul double %i.dq, 2.000000e+00
  %i.ds = tail call double @sqrt(double noundef %i.dr) #19, !noalias !29 ; 2 uses
  %i.dt = fdiv double 1.000000e+00, %i.ds         ; 2 uses
  %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.du = shufflevector <2 x double> %.sroa.6.16.vec.insert.i.i.i.i.i.i.i.i.i20.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %i.dm, %i.du
  %i.dw = fmul double %i.dp, %i.dt
  %i.dx = fmul double %i.ds, 5.000000e-01
  br label %_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit

_ZN5Eigen10QuaternionIdLi0EE14FromTwoVectorsINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEES4_EES1_RKNS_10MatrixBaseIT_EERKNS5_IT0_EE.exit: ; preds = %bb.a, %bb.b
  %.sink71.i.i = phi double [ %i.db, %bb.a ], [ %i.dx, %bb.b ]
  %.sink70.i.i = phi <2 x double> [ %i.df, %bb.a ], [ %i.dv, %bb.b ] ; 2 uses
  %.sink.i.i = phi double [ %i.dg, %bb.a ], [ %i.dw, %bb.b ]
  %i.dy = load <2 x double>, ptr %0, align 16, !tbaa !16, !noalias !73 ; 4 uses
  %i.dz = load <2 x double>, ptr %i.f, align 16, !tbaa !16, !noalias !73 ; 4 uses
  %i.ea = shufflevector <2 x double> %.sink70.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = shufflevector <2 x double> %.sink70.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %.sink.i.i, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %.sink71.i.i, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = fmul <2 x double> %i.ef, %i.dy
  %i.eh = fmul <2 x double> %i.eb, %i.dz
  %i.ei = fadd <2 x double> %i.eg, %i.eh
  %i.ej = fmul <2 x double> %i.dy, %i.ed
  %i.ek = fmul <2 x double> %i.ea, %i.dz
  %i.el = fsub <2 x double> %i.ej, %i.ek
  %i.em = bitcast <2 x double> %i.el to <2 x i64>
  %i.en = xor <2 x i64> %i.em, <i64 0, i64 -9223372036854775808>
  %i.eo = bitcast <2 x i64> %i.en to <2 x double>
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = fadd <2 x double> %i.ei, %i.ep
  %i.er = fmul <2 x double> %i.ef, %i.dz
  %i.es = fmul <2 x double> %i.eb, %i.dy
  %i.et = fsub <2 x double> %i.er, %i.es
  %i.eu = fmul <2 x double> %i.dz, %i.ed
  %i.ev = fmul <2 x double> %i.ea, %i.dy
  %i.ew = fadd <2 x double> %i.ev, %i.eu
  %i.ex = bitcast <2 x double> %i.ew to <2 x i64>
  %i.ey = xor <2 x i64> %i.ex, <i64 -9223372036854775808, i64 0>
  %i.ez = bitcast <2 x i64> %i.ey to <2 x double>
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = fadd <2 x double> %i.et, %i.fa
  store <2 x double> %i.eq, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> %i.fb, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(16) ptr @_ZN5Eigen14QuaternionBaseINS_10QuaternionIfLi0EEEE17setFromTwoVectorsINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEES6_EERS2_RKNS_10MatrixBaseIT_EERKNS8_IT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.159", align 4 ; 9 uses
  %4 = alloca %"class.Eigen::JacobiSVD", align 16 ; 11 uses
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !9, !noalias !78 ; 4 uses
  %i.b = fmul <2 x float> %i.a, %i.a              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !9, !noalias !78 ; 4 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = extractelement <2 x float> %i.b, i64 1
  %i.g = fadd float %i.f, %i.e
  %i.h = extractelement <2 x float> %i.b, i64 0
  %i.i = fadd float %i.h, %i.g                    ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call float @llvm.sqrt.f32(float %i.i) ; 2 uses
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x float> %i.a, %i.m
  %i.o = fdiv float %i.d, %i.k
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit

_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.12.0 = phi float [ %i.o, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.p = phi <2 x float> [ %i.n, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.q = load float, ptr %2, align 4, !tbaa !9, !noalias !81 ; 4 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = getelementptr i8, ptr %2, i64 4
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !9, !noalias !81 ; 4 uses
  %i.u = fmul <2 x float> %i.t, %i.t              ; 2 uses
  %shift = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.u, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fadd float %i.r, %i.v                    ; 2 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.c, label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18

bb.c:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit
  %i.y = tail call float @llvm.sqrt.f32(float %i.w) ; 2 uses
  %i.z = fdiv float %i.q, %i.y
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x float> %i.t, %i.ab
  br label %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18

_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18: ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit, %bb.c
  %.sroa.052.0 = phi float [ %i.z, %bb.c ], [ %i.q, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit ] ; 4 uses
  %i.ad = phi <2 x float> [ %i.ac, %bb.c ], [ %i.t, %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit ] ; 4 uses
  %i.ae = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.af = fmul float %i.ae, %.sroa.052.0
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.p, i64 1  ; 2 uses
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ak = fmul float %.sroa.12.0, %i.aj
  %i.al = fadd float %i.ak, %i.ai
  %i.am = fadd float %i.af, %i.al                 ; 4 uses
  %i.an = fcmp olt float %i.am, f0xBF7FFF58
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18
  %i.ao = fcmp olt float %i.am, -1.000000e+00
  %.sroa.speculated = select i1 %i.ao, float -1.000000e+00, float %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store float %i.ae, ptr %3, align 4, !tbaa !9, !noalias !84
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ah, ptr %i.ap, align 4, !tbaa !9, !noalias !84
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %.sroa.12.0, ptr %i.aq, align 4, !tbaa !9, !noalias !84
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.052.0, ptr %i.ar, align 4, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.ag, ptr %i.as, align 4, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.aj, ptr %5, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 0, ptr %i.au, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.at, i8 0, i64 11, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 -1, i64 16, i1 false)
  store i64 0, ptr %i.aw, align 8, !tbaa !101
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i8 0, ptr %i.ax, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 233
  store i8 0, ptr %i.ay, align 1, !tbaa !112
  %i.az = call noundef nonnull align 16 dereferenceable(348) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(348) %4, ptr noundef nonnull align 4 dereferenceable(24) %3, i32 noundef 16) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bc = load float, ptr %i.bb, align 16, !tbaa !9
  %i.bd = fadd nnan float %.sroa.speculated, 1.000000e+00
  %i.be = fmul nnan float %i.bd, 5.000000e-01     ; 2 uses
  %i.bf = fsub float 1.000000e+00, %i.be
  %i.bg = load <2 x float>, ptr %i.ba, align 8, !tbaa !9
  %i.bh = call noundef float @sqrtf(float noundef %i.be) #19
  %i.bi = call noundef float @sqrtf(float noundef %i.bf) #19 ; 2 uses
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = fmul float %i.bc, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bl = insertelement <4 x float> poison, float %i.bk, i64 2
  %i.bm = insertelement <4 x float> %i.bl, float %i.bh, i64 3
  %i.bn = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bp = fmul <4 x float> %i.bn, %i.bo
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.f

bb.e:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEEE10normalizedEv.exit18
  %i.br = fneg <2 x float> %i.ad
  %i.bs = fneg float %.sroa.052.0
  %i.bt = fadd float %i.am, 1.000000e+00
  %i.bu = fmul float %i.bt, 2.000000e+00
  %i.bv = tail call noundef float @sqrtf(float noundef %i.bu) #19 ; 2 uses
  %i.bw = insertelement <4 x float> poison, float %.sroa.12.0, i64 0
  %i.bx = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bs, i64 2
  %i.cb = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = fmul <4 x float> %i.bz, %i.cc
  %i.ce = shufflevector <4 x float> %i.by, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.cf = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float -0.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.052.0, i64 1
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.ch, <4 x float> %i.cd)
  %i.cj = fdiv float 1.000000e+00, %i.bv
  %i.ck = insertelement <4 x float> <float poison, float 5.000000e-01, float poison, float poison>, float %i.cj, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cm = fmul <4 x float> %i.ci, %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cn = phi <4 x float> [ %i.bq, %bb.d ], [ %i.cm, %bb.e ]
  store <4 x float> %i.cn, ptr %0, align 4, !tbaa !9
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(348) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE7computeERKS2_j(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !113, !range !114, !noundef !115
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, 3
  %or.cond16.i = select i1 %or.cond.i, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %2, %i.k
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.l, i1 false
  br i1 %or.cond19.i, label %_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !116
  store i64 3, ptr %i.g, align 16, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.m, align 4, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.n, align 16, !tbaa !119
  store i8 1, ptr %i.a, align 1, !tbaa !113
  store i32 %2, ptr %i.j, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.p = trunc i32 %2 to i8                       ; 4 uses
  %i.q = lshr i8 %i.p, 2
  %i.r = and i8 %i.q, 1
  store i8 %i.r, ptr %i.o, align 1, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.t = lshr i8 %i.p, 3
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !121
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.w = lshr i8 %i.p, 4
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 1, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.z = lshr i8 %i.p, 5
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.y, align 2, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 2, ptr %i.ab, align 8, !tbaa !101
  br label %_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit

_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit: ; preds = %bb.a, %bb.b
  %i.ac = load <4 x float>, ptr %1, align 4       ; 2 uses
  %i.ad = tail call noundef <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ac) ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.af = fcmp uno <2 x float> %i.ae, zeroinitializer
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  %i.ah = fcmp ord <2 x float> %i.ag, zeroinitializer
  %i.ai = fcmp uge <2 x float> %i.ae, %i.ag
  %i.aj = and <2 x i1> %i.ah, %i.ai
  %i.ak = or <2 x i1> %i.af, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x float> %i.ae, <2 x float> %i.ag ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0 ; 3 uses
  %i.an = fcmp uno float %i.am, 0.000000e+00
  %i.ao = extractelement <2 x float> %i.al, i64 1 ; 3 uses
  %i.ap = fcmp ord float %i.ao, 0.000000e+00
  %i.aq = fcmp uge float %i.am, %i.ao
  %.not3.i.i.i.i.i.i = and i1 %i.ap, %i.aq
  %i.ar = or i1 %i.an, %.not3.i.i.i.i.i.i
  %i.as = select i1 %i.ar, float %i.am, float %i.ao ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !9 ; 2 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax) ; 2 uses
  %i.az = fcmp uno float %i.au, 0.000000e+00
  %i.ba = fcmp ord float %i.ax, 0.000000e+00
  %i.bb = fcmp uge float %i.av, %i.ay
  %.not3.i.i.i7.i.i.i = and i1 %i.ba, %i.bb
  %i.bc = select i1 %i.az, i1 true, i1 %.not3.i.i.i7.i.i.i
  %i.bd = select i1 %i.bc, float %i.av, float %i.ay ; 3 uses
  %i.be = fcmp uno float %i.as, 0.000000e+00
  %i.bf = fcmp ord float %i.bd, 0.000000e+00
  %i.bg = fcmp uge float %i.as, %i.bd
  %.not3.i.i.i.i.i = and i1 %i.bf, %i.bg
  %i.bh = select i1 %i.be, i1 true, i1 %.not3.i.i.i.i.i
  %i.bi = select i1 %i.bh, float %i.as, float %i.bd ; 3 uses
  %i.bj = fcmp ueq float %i.bi, +inf
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.bk, align 16, !tbaa !119
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 3, ptr %i.bl, align 4, !tbaa !118
  br label %bb.u

bb.d:                                             ; preds = %_ZN5Eigen9JacobiSVDINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2EE8allocateEllj.exit
  %i.bm = fcmp oeq float %i.bi, 0.000000e+00
  %.0181 = select i1 %i.bm, float 1.000000e+00, float %i.bi ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.bo = insertelement <4 x float> poison, float %.0181, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fdiv <4 x float> %i.ac, %i.bp
  store <4 x float> %i.bq, ptr %i.bn, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.bs = load float, ptr %i.at, align 4, !tbaa !9
  %i.bt = fdiv float %i.bs, %.0181
  store float %i.bt, ptr %i.br, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bv = load float, ptr %i.aw, align 4, !tbaa !9
  %i.bw = fdiv float %i.bv, %.0181
  store float %i.bw, ptr %i.bu, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.by = tail call noundef zeroext i1 @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIfLi2ELi3ELi0ELi2ELi3EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_(ptr noundef nonnull align 16 dereferenceable(164) %i.bx, ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.bn) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !101 ; 10 uses
  %i.cc = icmp sgt i64 %i.cb, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 70 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.cc, label %.preheader199.us.preheader, label %.preheader

.preheader199.us.preheader:                       ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load float, ptr %.phi.trans.insert, align 16, !tbaa !9
  %i.ci = tail call noundef float @llvm.fabs.f32(float %.pre) ; 2 uses
  %.phi.trans.insert219 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %.pre220 = load float, ptr %.phi.trans.insert219, align 4, !tbaa !9
  %i.cj = tail call noundef float @llvm.fabs.f32(float %.pre220) ; 2 uses
  %i.ck = fcmp olt float %i.ci, %i.cj
end_hunk_0
