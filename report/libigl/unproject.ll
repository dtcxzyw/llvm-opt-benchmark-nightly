Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject?download=true
inline.NumInlined: 4357
inline.NumDeleted: 2343
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !38, !alias.scope !106
  store ptr %1, ptr %i.bu, align 8, !tbaa !38, !alias.scope !106
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !12 ; 5 uses
  %i.by = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bz = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.by ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fsub <2 x double> %i.bz, %i.ca          ; 2 uses
  %i.cc = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cc ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fsub <2 x double> %i.cd, %i.ce          ; 2 uses
  %i.cg = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cg ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fsub <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.ck ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 2 uses
  %i.co = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.co
  %i.cq = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cs = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %i.cs, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cu = fsub <2 x double> %i.cp, %i.ct          ; 5 uses
  %i.cv = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cv
  %i.cx = fsub <2 x double> %i.cr, %i.cw          ; 5 uses
  %i.cy = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cy
  %i.da = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.da
  %i.dc = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.dc
  %i.de = fsub <2 x double> %i.cz, %i.dd          ; 6 uses
  %i.df = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.df
  %i.dh = fsub <2 x double> %i.db, %i.dg          ; 6 uses
  %i.di = shufflevector <2 x double> %i.de, <2 x double> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dj = fmul <2 x double> %i.cu, %i.di
  %i.dk = shufflevector <2 x double> %i.de, <2 x double> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.dl = fmul <2 x double> %i.cx, %i.dk
  %i.dm = fadd <2 x double> %i.dj, %i.dl          ; 2 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.do = fadd <2 x double> %i.dm, %i.dn
  %i.dp = fmul <2 x double> %i.cb, %i.cn
  %i.dq = fmul <2 x double> %i.cf, %i.cj
  %i.dr = fadd <2 x double> %i.dq, %i.dp
  %i.ds = fsub <2 x double> %i.dr, %i.do
  %i.dt = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.ds
  %i.du = bitcast <2 x double> %i.dt to <2 x i64>
  %i.dv = shufflevector <2 x i64> %i.du, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.cu, %i.dw
  %i.dy = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.cu, %i.dy
  %i.ea = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fmul <2 x double> %i.cx, %i.ea
  %i.ec = fadd <2 x double> %i.dx, %i.eb
  %i.ed = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x double> %i.cx, %i.ed
  %i.ef = fadd <2 x double> %i.dz, %i.ee
  %i.eg = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.eg
  %i.ei = fsub <2 x double> %i.eh, %i.ec          ; 2 uses
  %i.ej = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.eg
  %i.ek = fsub <2 x double> %i.ej, %i.ef          ; 2 uses
  %i.el = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.el, %i.de
  %i.en = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x double> %i.en, %i.de
  %i.ep = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x double> %i.ep, %i.dh
  %i.er = fadd <2 x double> %i.em, %i.eq
  %i.es = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x double> %i.es, %i.dh
  %i.eu = fadd <2 x double> %i.eo, %i.et
  %i.ev = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ev
  %i.ex = fsub <2 x double> %i.ew, %i.er          ; 2 uses
  %i.ey = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.ev
  %i.ez = fsub <2 x double> %i.ey, %i.eu          ; 2 uses
  %i.fa = shufflevector <2 x double> %i.cx, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fb = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.fa
  %i.fc = fmul <2 x double> %i.fa, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.fd = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = shufflevector <2 x double> %i.cx, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ff = fmul <2 x double> %i.fd, %i.fe
  %i.fg = fsub <2 x double> %i.fb, %i.ff
  %i.fh = fmul <2 x double> %i.fe, %i.ck
  %i.fi = fsub <2 x double> %i.fc, %i.fh
  %i.fj = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fk = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.fj
  %i.fl = fsub <2 x double> %i.fk, %i.fg          ; 2 uses
  %i.fm = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.fj
  %i.fn = fsub <2 x double> %i.fm, %i.fi          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.dh, <2 x double> %i.de, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fp = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fo
  %i.fq = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fo
  %i.fr = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = shufflevector <2 x double> %i.dh, <2 x double> %i.de, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ft = fmul <2 x double> %i.fr, %i.fs
  %i.fu = fsub <2 x double> %i.fp, %i.ft
  %i.fv = fmul <2 x double> %i.by, %i.fs
  %i.fw = fsub <2 x double> %i.fq, %i.fv
  %i.fx = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fy = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.fx
  %i.fz = fsub <2 x double> %i.fy, %i.fu          ; 2 uses
  %i.ga = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.fx
  %i.gb = fsub <2 x double> %i.ga, %i.fw          ; 2 uses
  %i.gc = xor <2 x i64> %i.dv, <i64 0, i64 -9223372036854775808>
  %i.gd = bitcast <2 x i64> %i.gc to <2 x double> ; 4 uses
  %i.ge = xor <2 x i64> %i.dv, <i64 -9223372036854775808, i64 0>
  %i.gf = bitcast <2 x i64> %i.ge to <2 x double> ; 4 uses
  %i.gg = shufflevector <2 x double> %i.ez, <2 x double> %i.ex, <2 x i32> <i32 1, i32 3>
  %i.gh = fmul <2 x double> %i.gg, %i.gd
  %i.gi = shufflevector <2 x double> %i.ez, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.gj = fmul <2 x double> %i.gi, %i.gf
  %i.gk = shufflevector <2 x double> %i.fn, <2 x double> %i.fl, <2 x i32> <i32 1, i32 3>
  %i.gl = fmul <2 x double> %i.gk, %i.gd
  %i.gm = shufflevector <2 x double> %i.fn, <2 x double> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul <2 x double> %i.gm, %i.gf
  %i.go = shufflevector <2 x double> %i.gb, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.gp = fmul <2 x double> %i.go, %i.gd
  %i.gq = shufflevector <2 x double> %i.gb, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gr = fmul <2 x double> %i.gq, %i.gf
  %i.gs = shufflevector <2 x double> %i.ek, <2 x double> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.gt = fmul <2 x double> %i.gs, %i.gd
  %i.gu = shufflevector <2 x double> %i.ek, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.gv = fmul <2 x double> %i.gu, %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.gw = load ptr, ptr %0, align 8, !tbaa !27, !noalias !107
  %i.gx = load i64, ptr %i.a, align 8, !tbaa !26, !noalias !107
  %i.gy = mul nsw i64 %i.gx, %indvars.iv
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy ; 2 uses
  %i.ha = load <2 x double>, ptr %i.gz, align 1, !tbaa !12, !noalias !108
  %gep53.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %gep53.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !14, !noalias !108
  %i.hc = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.hb, i64 0
  %i.hd = load <2 x float>, ptr %3, align 4, !tbaa !11
  %i.he = fpext <2 x float> %i.hd to <2 x double>
  %i.hf = fsub <2 x double> %i.ha, %i.he
  %i.hg = load <2 x float>, ptr %i.bv, align 4, !tbaa !11
  %i.hh = fpext <2 x float> %i.hg to <2 x double>
  %i.hi = fdiv <2 x double> %i.hf, %i.hh
  %i.hj = fmul <2 x double> %i.hi, splat (double 2.000000e+00)
  %i.hk = fadd <2 x double> %i.hj, splat (double -1.000000e+00) ; 2 uses
  %i.hl = fmul <2 x double> %i.hc, splat (double 2.000000e+00)
  %i.hm = fadd <2 x double> %i.hl, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hn = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ho = fmul <2 x double> %i.gh, %i.hn
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.hk, i64 1
  %i.hp = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.hq = shufflevector <1 x double> %i.hp, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hr = fmul <2 x double> %i.gj, %i.hq
  %i.hs = fadd <2 x double> %i.ho, %i.hr
  %i.ht = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hu = fmul <2 x double> %i.gp, %i.ht
  %i.hv = fadd <2 x double> %i.hu, %i.hs
  %i.hw = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hx = fmul <2 x double> %i.gr, %i.hw
  %i.hy = fadd <2 x double> %i.hx, %i.hv
  %i.hz = fmul <2 x double> %i.gl, %i.hn
  %i.ia = fmul <2 x double> %i.gn, %i.hq
  %i.ib = fadd <2 x double> %i.hz, %i.ia
  %i.ic = fmul <2 x double> %i.gt, %i.ht
  %i.id = fadd <2 x double> %i.ic, %i.ib
  %i.ie = fmul <2 x double> %i.gv, %i.hw
  %i.if = fadd <2 x double> %i.ie, %i.id          ; 2 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ih = fdiv <2 x double> %i.hy, %i.ig          ; 2 uses
  store <2 x double> %i.ih, ptr %10, align 16, !tbaa !12
  %i.ii = fdiv <2 x double> %i.if, %i.ig
  store <2 x double> %i.ii, ptr %i.bw, align 16, !tbaa !12
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i.i.i ; 5 uses
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = lshr exact i64 %i.ik, 3
  %i.im = and i64 %i.il, 1                        ; 5 uses
  %.not111 = icmp eq i64 %i.im, 0
  br i1 %.not111, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.a:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %11 = extractelement <2 x double> %i.ih, i64 0
  store double %11, ptr %i.ij, align 8, !tbaa !14
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.im
  %14 = load <2 x double>, ptr %13, align 8, !tbaa !12
  store <2 x double> %14, ptr %12, align 16, !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %16 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.im
  %17 = load <2 x double>, ptr %16, align 8, !tbaa !12
  store <2 x double> %17, ptr %15, align 16, !tbaa !12
  %18 = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %19 = load double, ptr %i.bx, align 16, !tbaa !14
  store double %19, ptr %18, align 8, !tbaa !14
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.a, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !104

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, %bb.i, %bb.h
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef 1, i64 noundef %i.b)
  %i.g = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef 1, i64 noundef %i.h)
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ 1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 12 uses
  %i.r = phi i64 [ %.pr.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.t = icmp sgt i64 %i.r, 0
  %i.u = icmp sgt i64 %i.q, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.f
  %i.v = add nsw i64 %i.q, -1
  %i.w = mul i64 %i.r, %i.q
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.x
  %i.y = mul i64 %i.q, 24
  %i.z = shl i64 %i.r, 3
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %scevgep7 = getelementptr i8, ptr %i.ab, i64 -24
  %min.iters.check = icmp ult i64 %i.q, 26
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %bound0 = icmp ult ptr %i.s, %scevgep7
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.q, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.ac = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.q, 8070450532247928828      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ad = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.q
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %i.g, i64 %.0810.i.i.i.i.i.i.i ; 11 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %mul.result
  %i.ag = icmp ult ptr %i.af, %i.ae
  %i.ah = or i1 %i.ag, %mul.overflow
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ah
  %brmerge = select i1 %or.cond, i1 true, i1 %i.ac
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.aj = mul i64 %index, 24
  %i.ak = mul i64 %index, 24
  %i.al = mul i64 %index, 24
  %i.am = mul i64 %index, 24
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 72
  %i.au = load double, ptr %i.an, align 8, !tbaa !14, !alias.scope !116
  %i.av = load double, ptr %i.ap, align 8, !tbaa !14, !alias.scope !116
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = load double, ptr %i.ar, align 8, !tbaa !14, !alias.scope !116
  %i.az = load double, ptr %i.at, align 8, !tbaa !14, !alias.scope !116
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %i.ax, ptr %i.ai, align 8, !tbaa !14, !alias.scope !117, !noalias !116
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !14, !alias.scope !117, !noalias !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.bg, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.09.i.i.i.i.i.i.i.prol, 24
  %i.be = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.prol
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  store double %i.bf, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !14
  %i.bg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !113

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %.09.i.i.i.i.i.i.i.ph, %i.q
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bj = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.r
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !114

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.bv, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.09.i.i.i.i.i.i.i, 24
  %i.bk = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  store double %i.bl, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !14
  %i.bm = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %gep.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bm
  %.idx.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.bm, 24
  %i.bn = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  store double %i.bo, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !14
  %i.bp = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 2   ; 2 uses
  %gep.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bp
  %.idx.i.i.i.i.i.i.i.i.i.i.2 = mul i64 %i.bp, 24
  %i.bq = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.2
  %i.br = load double, ptr %i.bq, align 8, !tbaa !14
  store double %i.br, ptr %gep.i.i.i.i.i.i.i.2, align 8, !tbaa !14
  %i.bs = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 3   ; 2 uses
  %gep.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bs
  %.idx.i.i.i.i.i.i.i.i.i.i.3 = mul i64 %i.bs, 24
  %i.bt = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.3
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !14
  store double %i.bu, ptr %gep.i.i.i.i.i.i.i.3, align 8, !tbaa !14
  %i.bv = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 4   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE:.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %8 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !38, !alias.scope !128
  store ptr %1, ptr %i.a, align 8, !tbaa !38, !alias.scope !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !12 ; 5 uses
  %i.d = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.d ; 2 uses
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fsub <2 x double> %i.e, %i.f             ; 2 uses
  %i.h = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.i = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.h ; 2 uses
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.k = fsub <2 x double> %i.i, %i.j             ; 2 uses
  %i.l = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.m = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.l ; 2 uses
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fsub <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.q = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.p ; 2 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.t
  %i.v = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.x = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.y = fmul <2 x double> %i.x, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.z = fsub <2 x double> %i.u, %i.y             ; 5 uses
  %i.aa = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.aa
  %i.ac = fsub <2 x double> %i.w, %i.ab           ; 5 uses
  %i.ad = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.ad
  %i.af = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.af
  %i.ah = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.ah
  %i.aj = fsub <2 x double> %i.ae, %i.ai          ; 6 uses
  %i.ak = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.ak
  %i.am = fsub <2 x double> %i.ag, %i.al          ; 6 uses
  %i.an = shufflevector <2 x double> %i.aj, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.ao = fmul <2 x double> %i.z, %i.an
  %i.ap = shufflevector <2 x double> %i.aj, <2 x double> %i.am, <2 x i32> <i32 1, i32 3>
  %i.aq = fmul <2 x double> %i.ac, %i.ap
  %i.ar = fadd <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = fadd <2 x double> %i.ar, %i.as
  %i.au = fmul <2 x double> %i.g, %i.s
  %i.av = fmul <2 x double> %i.k, %i.o
  %i.aw = fadd <2 x double> %i.av, %i.au
  %i.ax = fsub <2 x double> %i.aw, %i.at
  %i.ay = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.ax
  %i.az = bitcast <2 x double> %i.ay to <2 x i64>
  %i.ba = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.z, %i.bb
  %i.bd = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.z, %i.bd
  %i.bf = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = fmul <2 x double> %i.ac, %i.bf
  %i.bh = fadd <2 x double> %i.bc, %i.bg
  %i.bi = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fmul <2 x double> %i.ac, %i.bi
  %i.bk = fadd <2 x double> %i.be, %i.bj
  %i.bl = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.bl
  %i.bn = fsub <2 x double> %i.bm, %i.bh          ; 2 uses
  %i.bo = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.bl
  %i.bp = fsub <2 x double> %i.bo, %i.bk          ; 2 uses
  %i.bq = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.bq, %i.aj
  %i.bs = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bs, %i.aj
  %i.bu = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x double> %i.bu, %i.am
  %i.bw = fadd <2 x double> %i.br, %i.bv
  %i.bx = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x double> %i.bx, %i.am
  %i.bz = fadd <2 x double> %i.bt, %i.by
  %i.ca = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ca
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.ca
  %i.ce = fsub <2 x double> %i.cd, %i.bz          ; 2 uses
  %i.cf = shufflevector <2 x double> %i.ac, <2 x double> %i.z, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cg = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.cf
  %i.ch = fmul <2 x double> %i.cf, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.ci = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = shufflevector <2 x double> %i.ac, <2 x double> %i.z, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ck = fmul <2 x double> %i.ci, %i.cj
  %i.cl = fsub <2 x double> %i.cg, %i.ck
  %i.cm = fmul <2 x double> %i.cj, %i.p
  %i.cn = fsub <2 x double> %i.ch, %i.cm
  %i.co = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.co
  %i.cq = fsub <2 x double> %i.cp, %i.cl          ; 2 uses
  %i.cr = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.co
  %i.cs = fsub <2 x double> %i.cr, %i.cn          ; 2 uses
  %i.ct = shufflevector <2 x double> %i.am, <2 x double> %i.aj, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cu = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ct
  %i.cv = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.ct
  %i.cw = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = shufflevector <2 x double> %i.am, <2 x double> %i.aj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cy = fmul <2 x double> %i.cw, %i.cx
  %i.cz = fsub <2 x double> %i.cu, %i.cy
  %i.da = fmul <2 x double> %i.d, %i.cx
  %i.db = fsub <2 x double> %i.cv, %i.da
  %i.dc = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.dc
  %i.de = fsub <2 x double> %i.dd, %i.cz          ; 2 uses
  %i.df = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.dc
  %i.dg = fsub <2 x double> %i.df, %i.db          ; 2 uses
  %i.dh = xor <2 x i64> %i.ba, <i64 0, i64 -9223372036854775808>
  %i.di = bitcast <2 x i64> %i.dh to <2 x double> ; 4 uses
  %i.dj = xor <2 x i64> %i.ba, <i64 -9223372036854775808, i64 0>
  %i.dk = bitcast <2 x i64> %i.dj to <2 x double> ; 4 uses
  %i.dl = shufflevector <2 x double> %i.ce, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.dm = fmul <2 x double> %i.dl, %i.di
  %i.dn = shufflevector <2 x double> %i.ce, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.do = fmul <2 x double> %i.dn, %i.dk
  %i.dp = shufflevector <2 x double> %i.cs, <2 x double> %i.cq, <2 x i32> <i32 1, i32 3>
  %i.dq = fmul <2 x double> %i.dp, %i.di
  %i.dr = shufflevector <2 x double> %i.cs, <2 x double> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.ds = fmul <2 x double> %i.dr, %i.dk
  %i.dt = shufflevector <2 x double> %i.dg, <2 x double> %i.de, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x double> %i.dt, %i.di
  %i.dv = shufflevector <2 x double> %i.dg, <2 x double> %i.de, <2 x i32> <i32 0, i32 2>
  %i.dw = fmul <2 x double> %i.dv, %i.dk
  %i.dx = shufflevector <2 x double> %i.bp, <2 x double> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.dy = fmul <2 x double> %i.dx, %i.di
  %i.dz = shufflevector <2 x double> %i.bp, <2 x double> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.ea = fmul <2 x double> %i.dz, %i.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.eb = load <2 x double>, ptr %0, align 1, !tbaa !12, !noalias !129
  %gep56.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %0, i64 16
  %i.ec = load double, ptr %gep56.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !14, !noalias !129
  %i.ed = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ec, i64 0
  %i.ee = load <2 x float>, ptr %3, align 4, !tbaa !11
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.eb, %i.ef
  %i.eh = load <2 x float>, ptr %i.b, align 4, !tbaa !11
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = fdiv <2 x double> %i.eg, %i.ei
  %i.ek = fmul <2 x double> %i.ej, splat (double 2.000000e+00)
  %i.el = fadd <2 x double> %i.ek, splat (double -1.000000e+00) ; 2 uses
  %i.em = fmul <2 x double> %i.ed, splat (double 2.000000e+00)
  %i.en = fadd <2 x double> %i.em, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.eo = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fmul <2 x double> %i.dm, %i.eo
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.el, i64 1
  %i.eq = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.er = shufflevector <1 x double> %i.eq, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul <2 x double> %i.do, %i.er
  %i.et = fadd <2 x double> %i.ep, %i.es
  %i.eu = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fmul <2 x double> %i.du, %i.eu
  %i.ew = fadd <2 x double> %i.ev, %i.et
  %i.ex = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ey = fmul <2 x double> %i.dw, %i.ex
  %i.ez = fadd <2 x double> %i.ey, %i.ew
  %i.fa = fmul <2 x double> %i.dq, %i.eo
  %i.fb = fmul <2 x double> %i.ds, %i.er
  %i.fc = fadd <2 x double> %i.fa, %i.fb
  %i.fd = fmul <2 x double> %i.dy, %i.eu
  %i.fe = fadd <2 x double> %i.fd, %i.fc
  %i.ff = fmul <2 x double> %i.ea, %i.ex
  %i.fg = fadd <2 x double> %i.ff, %i.fe          ; 2 uses
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fi = fdiv <2 x double> %i.ez, %i.fh          ; 2 uses
  store <2 x double> %i.fi, ptr %8, align 16, !tbaa !12
  %i.fj = fdiv <2 x double> %i.fg, %i.fh
  store <2 x double> %i.fj, ptr %i.c, align 16, !tbaa !12
  %i.fk = ptrtoint ptr %4 to i64
  %i.fl = lshr exact i64 %i.fk, 3
  %i.fm = and i64 %i.fl, 1                        ; 5 uses
  %.not = icmp eq i64 %i.fm, 0
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.a:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %9 = extractelement <2 x double> %i.fi, i64 0
  store double %9, ptr %4, align 8, !tbaa !14
  %10 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fm
  %11 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fm
  %12 = load <2 x double>, ptr %11, align 8, !tbaa !12
  store <2 x double> %12, ptr %10, align 16, !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %13 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fm
  %14 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.fm
  %15 = load <2 x double>, ptr %14, align 8, !tbaa !12
  store <2 x double> %15, ptr %13, align 16, !tbaa !12
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %18 = load double, ptr %17, align 16, !tbaa !14
  store double %18, ptr %16, align 8, !tbaa !14
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.a, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLi4ELi4ELi0ELi4ELi4EEES4_NS2_IdLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"struct.Eigen::internal::evaluator.623", align 8 ; 8 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.626", align 8 ; 4 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.631", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Matrix.33", align 16 ; 12 uses
  %10 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 80
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 96
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.h = getelementptr i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !40
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  store ptr %2, ptr %i.b, align 8, !tbaa !42
  store ptr %1, ptr %i.c, align 8, !tbaa !42
  store i64 4, ptr %i.d, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %9, ptr %6, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr %6, ptr %7, align 8, !tbaa !46
  store ptr %5, ptr %i.e, align 8, !tbaa !134
  store ptr %8, ptr %i.f, align 8, !tbaa !49
  store ptr %9, ptr %i.g, align 8, !tbaa !40
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.sroa.0263.0.copyload.i.i = load <2 x double>, ptr %9, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !tbaa !12 ; 5 uses
  %i.j = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.j ; 2 uses
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fsub <2 x double> %i.k, %i.l             ; 2 uses
  %i.n = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.n ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.s = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.r ; 2 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fsub <2 x double> %i.s, %i.t             ; 2 uses
  %i.v = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.w = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.v ; 2 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.y = fsub <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.z
  %i.ab = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x double> %i.ab, %.sroa.6.0.copyload.i.i
  %i.ad = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = fmul <2 x double> %i.ad, %.sroa.6.0.copyload.i.i
  %i.af = fsub <2 x double> %i.aa, %i.ae          ; 5 uses
  %i.ag = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.ag
  %i.ai = fsub <2 x double> %i.ac, %i.ah          ; 5 uses
  %i.aj = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.aj
  %i.al = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.al
  %i.an = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.an
  %i.ap = fsub <2 x double> %i.ak, %i.ao          ; 6 uses
  %i.aq = shufflevector <2 x double> %.sroa.10.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.aq
  %i.as = fsub <2 x double> %i.am, %i.ar          ; 6 uses
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.au = fmul <2 x double> %i.af, %i.at
  %i.av = shufflevector <2 x double> %i.ap, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.aw = fmul <2 x double> %i.ai, %i.av
  %i.ax = fadd <2 x double> %i.au, %i.aw          ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fmul <2 x double> %i.m, %i.y
  %i.bb = fmul <2 x double> %i.q, %i.u
  %i.bc = fadd <2 x double> %i.bb, %i.ba
  %i.bd = fsub <2 x double> %i.bc, %i.az
  %i.be = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.bd
  %i.bf = bitcast <2 x double> %i.be to <2 x i64>
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = shufflevector <2 x double> %.sroa.7.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.af, %i.bh
  %i.bj = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.af, %i.bj
  %i.bl = shufflevector <2 x double> %.sroa.7.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x double> %i.ai, %i.bl
  %i.bn = fadd <2 x double> %i.bi, %i.bm
  %i.bo = shufflevector <2 x double> %.sroa.9.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x double> %i.ai, %i.bo
  %i.bq = fadd <2 x double> %i.bk, %i.bp
  %i.br = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.br
  %i.bt = fsub <2 x double> %i.bs, %i.bn          ; 2 uses
  %i.bu = fmul <2 x double> %.sroa.10.0.copyload.i.i, %i.br
  %i.bv = fsub <2 x double> %i.bu, %i.bq          ; 2 uses
  %i.bw = shufflevector <2 x double> %.sroa.4.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %i.ap
  %i.by = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x double> %i.by, %i.ap
  %i.ca = shufflevector <2 x double> %.sroa.4.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x double> %i.ca, %i.as
  %i.cc = fadd <2 x double> %i.bx, %i.cb
  %i.cd = shufflevector <2 x double> %.sroa.6.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x double> %i.cd, %i.as
  %i.cf = fadd <2 x double> %i.bz, %i.ce
  %i.cg = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.cg
  %i.ci = fsub <2 x double> %i.ch, %i.cc          ; 2 uses
  %i.cj = fmul <2 x double> %.sroa.5.0.copyload.i.i, %i.cg
  %i.ck = fsub <2 x double> %i.cj, %i.cf          ; 2 uses
  %i.cl = shufflevector <2 x double> %i.ai, <2 x double> %i.af, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cm = fmul <2 x double> %.sroa.8.0.copyload.i.i, %i.cl
  %i.cn = fmul <2 x double> %i.cl, %.sroa.10.0.copyload.i.i
  %i.co = shufflevector <2 x double> %.sroa.8.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = shufflevector <2 x double> %i.ai, <2 x double> %i.af, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cq = fmul <2 x double> %i.co, %i.cp
  %i.cr = fsub <2 x double> %i.cm, %i.cq
  %i.cs = fmul <2 x double> %i.cp, %i.v
  %i.ct = fsub <2 x double> %i.cn, %i.cs
  %i.cu = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x double> %.sroa.7.0.copyload.i.i, %i.cu
  %i.cw = fsub <2 x double> %i.cv, %i.cr          ; 2 uses
  %i.cx = fmul <2 x double> %.sroa.9.0.copyload.i.i, %i.cu
  %i.cy = fsub <2 x double> %i.cx, %i.ct          ; 2 uses
  %i.cz = shufflevector <2 x double> %i.as, <2 x double> %i.ap, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.da = fmul <2 x double> %.sroa.0263.0.copyload.i.i, %i.cz
  %i.db = fmul <2 x double> %.sroa.5.0.copyload.i.i, %i.cz
  %i.dc = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = shufflevector <2 x double> %i.as, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.de = fmul <2 x double> %i.dc, %i.dd
  %i.df = fsub <2 x double> %i.da, %i.de
  %i.dg = fmul <2 x double> %i.j, %i.dd
  %i.dh = fsub <2 x double> %i.db, %i.dg
  %i.di = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul <2 x double> %.sroa.4.0.copyload.i.i, %i.di
  %i.dk = fsub <2 x double> %i.dj, %i.df          ; 2 uses
  %i.dl = fmul <2 x double> %.sroa.6.0.copyload.i.i, %i.di
  %i.dm = fsub <2 x double> %i.dl, %i.dh          ; 2 uses
  %i.dn = xor <2 x i64> %i.bg, <i64 0, i64 -9223372036854775808>
  %i.do = bitcast <2 x i64> %i.dn to <2 x double> ; 4 uses
  %i.dp = xor <2 x i64> %i.bg, <i64 -9223372036854775808, i64 0>
  %i.dq = bitcast <2 x i64> %i.dp to <2 x double> ; 4 uses
  %i.dr = shufflevector <2 x double> %i.ck, <2 x double> %i.ci, <2 x i32> <i32 1, i32 3>
  %i.ds = fmul <2 x double> %i.dr, %i.do
  %i.dt = shufflevector <2 x double> %i.ck, <2 x double> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.du = fmul <2 x double> %i.dt, %i.dq
  %i.dv = shufflevector <2 x double> %i.cy, <2 x double> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.dw = fmul <2 x double> %i.dv, %i.do
  %i.dx = shufflevector <2 x double> %i.cy, <2 x double> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.dy = fmul <2 x double> %i.dx, %i.dq
  %i.dz = shufflevector <2 x double> %i.dm, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.ea = fmul <2 x double> %i.dz, %i.do
  %i.eb = shufflevector <2 x double> %i.dm, <2 x double> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.ec = fmul <2 x double> %i.eb, %i.dq
  %i.ed = shufflevector <2 x double> %i.bv, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.ee = fmul <2 x double> %i.ed, %i.do
  %i.ef = shufflevector <2 x double> %i.bv, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.eg = fmul <2 x double> %i.ef, %i.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.eh = load <2 x double>, ptr %0, align 1, !tbaa !12, !noalias !135
  %gep56.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %0, i64 16
  %i.ei = load double, ptr %gep56.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !14, !noalias !135
  %i.ej = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ei, i64 0
  %i.ek = load <2 x double>, ptr %3, align 8, !tbaa !14
  %i.el = fsub <2 x double> %i.eh, %i.ek
  %i.em = load <2 x double>, ptr %i.h, align 8, !tbaa !14
  %i.en = fdiv <2 x double> %i.el, %i.em
  %i.eo = fmul <2 x double> %i.en, splat (double 2.000000e+00)
  %i.ep = fadd <2 x double> %i.eo, splat (double -1.000000e+00) ; 2 uses
  %i.eq = fmul <2 x double> %i.ej, splat (double 2.000000e+00)
  %i.er = fadd <2 x double> %i.eq, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.es = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = fmul <2 x double> %i.ds, %i.es
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.ep, i64 1
  %i.eu = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.ev = shufflevector <1 x double> %i.eu, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <2 x double> %i.du, %i.ev
  %i.ex = fadd <2 x double> %i.et, %i.ew
  %i.ey = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul <2 x double> %i.ea, %i.ey
  %i.fa = fadd <2 x double> %i.ez, %i.ex
  %i.fb = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fc = fmul <2 x double> %i.ec, %i.fb
  %i.fd = fadd <2 x double> %i.fc, %i.fa
  %i.fe = fmul <2 x double> %i.dw, %i.es
  %i.ff = fmul <2 x double> %i.dy, %i.ev
  %i.fg = fadd <2 x double> %i.fe, %i.ff
  %i.fh = fmul <2 x double> %i.ee, %i.ey
  %i.fi = fadd <2 x double> %i.fh, %i.fg
  %i.fj = fmul <2 x double> %i.eg, %i.fb
  %i.fk = fadd <2 x double> %i.fj, %i.fi          ; 2 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fm = fdiv <2 x double> %i.fd, %i.fl          ; 2 uses
  store <2 x double> %i.fm, ptr %10, align 16, !tbaa !12
  %i.fn = fdiv <2 x double> %i.fk, %i.fl
  store <2 x double> %i.fn, ptr %i.i, align 16, !tbaa !12
  %i.fo = ptrtoint ptr %4 to i64
  %i.fp = lshr exact i64 %i.fo, 3
  %i.fq = and i64 %i.fp, 1                        ; 5 uses
  %.not = icmp eq i64 %i.fq, 0
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.a:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %11 = extractelement <2 x double> %i.fm, i64 0
  store double %11, ptr %4, align 8, !tbaa !14
  %12 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fq
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fq
  %14 = load <2 x double>, ptr %13, align 8, !tbaa !12
  store <2 x double> %14, ptr %12, align 16, !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %15 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fq
  %16 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fq
  %17 = load <2 x double>, ptr %16, align 8, !tbaa !12
  store <2 x double> %17, ptr %15, align 16, !tbaa !12
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %20 = load double, ptr %19, align 16, !tbaa !14
  store double %20, ptr %18, align 8, !tbaa !14
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.a, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductIS5_S5_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !50, !align !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !50, !align !51 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !52   ; 4 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !12
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !52   ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !12
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !14
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !12
  %i.x = getelementptr i8, ptr %i.i, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
  %i.ac = fadd <2 x double> %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ae = load <2 x double>, ptr %i.ad, align 16, !tbaa !12
  %i.af = getelementptr i8, ptr %i.i, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ae, %i.ai
  %i.ak = fadd <2 x double> %i.ac, %i.aj
  store <2 x double> %i.ak, ptr %i.c, align 16, !tbaa !12
  %i.al = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !50, !align !51
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !50, !align !51 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !52 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load <2 x double>, ptr %i.as, align 16, !tbaa !12
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 4 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !12
  %i.bb = getelementptr i8, ptr %i.au, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x double> %i.ba, %i.be
  %i.bg = fadd <2 x double> %i.ay, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.bi = load <2 x double>, ptr %i.bh, align 16, !tbaa !12
  %i.bj = getelementptr i8, ptr %i.au, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !14
  %i.bl = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x double> %i.bi, %i.bm
  %i.bo = fadd <2 x double> %i.bg, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.bq = load <2 x double>, ptr %i.bp, align 16, !tbaa !12
  %i.br = getelementptr i8, ptr %i.au, i64 24
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bq, %i.bu
  %i.bw = fadd <2 x double> %i.bo, %i.bv
  store <2 x double> %i.bw, ptr %i.an, align 16, !tbaa !12
  %i.bx = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !50, !align !51
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !52
  %i.bz = getelementptr i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !50, !align !51 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !52 ; 4 uses
  %i.ce = load <2 x double>, ptr %i.cd, align 16, !tbaa !12
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !52 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 32
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !14
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !12
  %i.cn = getelementptr i8, ptr %i.cf, i64 40
  %i.co = load double, ptr %i.cn, align 8, !tbaa !14
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cm, %i.cq
  %i.cs = fadd <2 x double> %i.ck, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cu = load <2 x double>, ptr %i.ct, align 16, !tbaa !12
  %i.cv = getelementptr i8, ptr %i.cf, i64 48
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !14
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cu, %i.cy
  %i.da = fadd <2 x double> %i.cs, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !12
  %i.dd = getelementptr i8, ptr %i.cf, i64 56
  %i.de = load double, ptr %i.dd, align 8, !tbaa !14
  %i.df = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %i.dc, %i.dg
  %i.di = fadd <2 x double> %i.da, %i.dh
  store <2 x double> %i.di, ptr %i.bz, align 16, !tbaa !12
  %i.dj = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !50, !align !51
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52
  %i.dl = getelementptr i8, ptr %i.dk, i64 48
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !50, !align !51 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !52 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load <2 x double>, ptr %i.dq, align 16, !tbaa !12
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !52 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  %i.du = load double, ptr %i.dt, align 8, !tbaa !14
  %i.dv = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !12
  %i.ea = getelementptr i8, ptr %i.ds, i64 40
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !14
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dz, %i.ed
  %i.ef = fadd <2 x double> %i.dx, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.eh = load <2 x double>, ptr %i.eg, align 16, !tbaa !12
  %i.ei = getelementptr i8, ptr %i.ds, i64 48
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !14
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.eh, %i.el
  %i.en = fadd <2 x double> %i.ef, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  %i.ep = load <2 x double>, ptr %i.eo, align 16, !tbaa !12
  %i.eq = getelementptr i8, ptr %i.ds, i64 56
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  %i.es = insertelement <2 x double> poison, double %i.er, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.ep, %i.et
  %i.ev = fadd <2 x double> %i.en, %i.eu
  store <2 x double> %i.ev, ptr %i.dl, align 16, !tbaa !12
  %i.ew = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !50, !align !51
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !52
  %i.ey = getelementptr i8, ptr %i.ex, i64 64
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !138, !nonnull !50, !align !51 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !52 ; 4 uses
  %i.fd = load <2 x double>, ptr %i.fc, align 16, !tbaa !12
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !52 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 64
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !14
  %i.fh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x double> %i.fd, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fl = load <2 x double>, ptr %i.fk, align 16, !tbaa !12
  %i.fm = getelementptr i8, ptr %i.fe, i64 72
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !14
  %i.fo = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x double> %i.fl, %i.fp
  %i.fr = fadd <2 x double> %i.fj, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.ft = load <2 x double>, ptr %i.fs, align 16, !tbaa !12
  %i.fu = getelementptr i8, ptr %i.fe, i64 80
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !14
  %i.fw = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.ft, %i.fx
  %i.fz = fadd <2 x double> %i.fr, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fc, i64 96
  %i.gb = load <2 x double>, ptr %i.ga, align 16, !tbaa !12
  %i.gc = getelementptr i8, ptr %i.fe, i64 88
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !14
end_hunk_1
begin_hunk_2_@_ZN3igl9unprojectIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERNS1_15PlainObjectBaseIT3_EE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !38, !alias.scope !152
  store ptr %1, ptr %i.bu, align 8, !tbaa !38, !alias.scope !152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 16, !tbaa !12 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.by = load ptr, ptr %0, align 8, !tbaa !20, !noalias !153
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv ; 3 uses
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !21, !noalias !154 ; 2 uses
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !14, !noalias !154
  %.sroa.0.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.cb, i64 0
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !14, !noalias !154
  %.sroa.0.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.sroa.0.0.vec.insert, double %i.cc, i64 1
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx = shl i64 %i.ca, 4
  %gep.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bz, i64 %gep.i.i.i.i.i.i.i.i.i.i.i.i.2.idx
  %i.cd = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !14, !noalias !154
  %i.ce = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cf = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.ce ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fsub <2 x double> %i.cf, %i.cg          ; 2 uses
  %i.ci = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.ci ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fsub <2 x double> %i.cj, %i.ck          ; 2 uses
  %i.cm = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cn = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fsub <2 x double> %i.cn, %i.co          ; 2 uses
  %i.cq = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cr = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fsub <2 x double> %i.cr, %i.cs          ; 2 uses
  %i.cu = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.cu
  %i.cw = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x double> %i.cw, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.cy = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul <2 x double> %i.cy, %.sroa.6.0.copyload.i.i.i.i.i.i
  %i.da = fsub <2 x double> %i.cv, %i.cz          ; 5 uses
  %i.db = shufflevector <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.db
  %i.dd = fsub <2 x double> %i.cx, %i.dc          ; 5 uses
  %i.de = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.de
  %i.dg = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.dg
  %i.di = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.di
  %i.dk = fsub <2 x double> %i.df, %i.dj          ; 6 uses
  %i.dl = shufflevector <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.dl
  %i.dn = fsub <2 x double> %i.dh, %i.dm          ; 6 uses
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dp = fmul <2 x double> %i.da, %i.do
  %i.dq = shufflevector <2 x double> %i.dk, <2 x double> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dr = fmul <2 x double> %i.dd, %i.dq
  %i.ds = fadd <2 x double> %i.dp, %i.dr          ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = fadd <2 x double> %i.ds, %i.dt
  %i.dv = fmul <2 x double> %i.ch, %i.ct
  %i.dw = fmul <2 x double> %i.cl, %i.cp
  %i.dx = fadd <2 x double> %i.dw, %i.dv
  %i.dy = fsub <2 x double> %i.dx, %i.du
  %i.dz = fdiv <2 x double> <double 1.000000e+00, double poison>, %i.dy
  %i.ea = bitcast <2 x double> %i.dz to <2 x i64>
  %i.eb = shufflevector <2 x i64> %i.ea, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.da, %i.ec
  %i.ee = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fmul <2 x double> %i.da, %i.ee
  %i.eg = shufflevector <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = fmul <2 x double> %i.dd, %i.eg
  %i.ei = fadd <2 x double> %i.ed, %i.eh
  %i.ej = shufflevector <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = fmul <2 x double> %i.dd, %i.ej
  %i.el = fadd <2 x double> %i.ef, %i.ek
  %i.em = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.em
  %i.eo = fsub <2 x double> %i.en, %i.ei          ; 2 uses
  %i.ep = fmul <2 x double> %.sroa.10.0.copyload.i.i.i.i.i.i, %i.em
  %i.eq = fsub <2 x double> %i.ep, %i.el          ; 2 uses
  %i.er = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x double> %i.er, %i.dk
  %i.et = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x double> %i.et, %i.dk
  %i.ev = shufflevector <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ew = fmul <2 x double> %i.ev, %i.dn
  %i.ex = fadd <2 x double> %i.es, %i.ew
  %i.ey = shufflevector <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ez = fmul <2 x double> %i.ey, %i.dn
  %i.fa = fadd <2 x double> %i.eu, %i.ez
  %i.fb = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fb
  %i.fd = fsub <2 x double> %i.fc, %i.ex          ; 2 uses
  %i.fe = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fb
  %i.ff = fsub <2 x double> %i.fe, %i.fa          ; 2 uses
  %i.fg = shufflevector <2 x double> %i.dd, <2 x double> %i.da, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fh = fmul <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, %i.fg
  %i.fi = fmul <2 x double> %i.fg, %.sroa.10.0.copyload.i.i.i.i.i.i
  %i.fj = shufflevector <2 x double> %.sroa.8.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = shufflevector <2 x double> %i.dd, <2 x double> %i.da, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = fmul <2 x double> %i.fj, %i.fk
  %i.fm = fsub <2 x double> %i.fh, %i.fl
  %i.fn = fmul <2 x double> %i.fk, %i.cq
  %i.fo = fsub <2 x double> %i.fi, %i.fn
  %i.fp = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fmul <2 x double> %.sroa.7.0.copyload.i.i.i.i.i.i, %i.fp
  %i.fr = fsub <2 x double> %i.fq, %i.fm          ; 2 uses
  %i.fs = fmul <2 x double> %.sroa.9.0.copyload.i.i.i.i.i.i, %i.fp
  %i.ft = fsub <2 x double> %i.fs, %i.fo          ; 2 uses
  %i.fu = shufflevector <2 x double> %i.dn, <2 x double> %i.dk, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fv = fmul <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, %i.fu
  %i.fw = fmul <2 x double> %.sroa.5.0.copyload.i.i.i.i.i.i, %i.fu
  %i.fx = shufflevector <2 x double> %.sroa.0263.0.copyload.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <2 x double> %i.dn, <2 x double> %i.dk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fz = fmul <2 x double> %i.fx, %i.fy
  %i.ga = fsub <2 x double> %i.fv, %i.fz
  %i.gb = fmul <2 x double> %i.ce, %i.fy
  %i.gc = fsub <2 x double> %i.fw, %i.gb
  %i.gd = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ge = fmul <2 x double> %.sroa.4.0.copyload.i.i.i.i.i.i, %i.gd
  %i.gf = fsub <2 x double> %i.ge, %i.ga          ; 2 uses
  %i.gg = fmul <2 x double> %.sroa.6.0.copyload.i.i.i.i.i.i, %i.gd
  %i.gh = fsub <2 x double> %i.gg, %i.gc          ; 2 uses
  %i.gi = xor <2 x i64> %i.eb, <i64 0, i64 -9223372036854775808>
  %i.gj = bitcast <2 x i64> %i.gi to <2 x double> ; 4 uses
  %i.gk = xor <2 x i64> %i.eb, <i64 -9223372036854775808, i64 0>
  %i.gl = bitcast <2 x i64> %i.gk to <2 x double> ; 4 uses
  %i.gm = shufflevector <2 x double> %i.ff, <2 x double> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x double> %i.gm, %i.gj
  %i.go = shufflevector <2 x double> %i.ff, <2 x double> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.gp = fmul <2 x double> %i.go, %i.gl
  %i.gq = shufflevector <2 x double> %i.ft, <2 x double> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.gr = fmul <2 x double> %i.gq, %i.gj
  %i.gs = shufflevector <2 x double> %i.ft, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.gt = fmul <2 x double> %i.gs, %i.gl
  %i.gu = shufflevector <2 x double> %i.gh, <2 x double> %i.gf, <2 x i32> <i32 1, i32 3>
  %i.gv = fmul <2 x double> %i.gu, %i.gj
  %i.gw = shufflevector <2 x double> %i.gh, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.gx = fmul <2 x double> %i.gw, %i.gl
  %i.gy = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.gz = fmul <2 x double> %i.gy, %i.gj
  %i.ha = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.hb = fmul <2 x double> %i.ha, %i.gl
  %.sroa.0.sroa.7.24.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cd, i64 0
  %i.hc = load <2 x float>, ptr %3, align 4, !tbaa !11
  %i.hd = fpext <2 x float> %i.hc to <2 x double>
  %i.he = fsub <2 x double> %.sroa.0.sroa.0.8.vec.insert, %i.hd
  %i.hf = load <2 x float>, ptr %i.bv, align 4, !tbaa !11
  %i.hg = fpext <2 x float> %i.hf to <2 x double>
  %i.hh = fdiv <2 x double> %i.he, %i.hg
  %i.hi = fmul <2 x double> %i.hh, splat (double 2.000000e+00)
  %i.hj = fadd <2 x double> %i.hi, splat (double -1.000000e+00) ; 2 uses
  %i.hk = fmul <2 x double> %.sroa.0.sroa.7.24.vec.insert, splat (double 2.000000e+00)
  %i.hl = fadd <2 x double> %i.hk, splat (double -1.000000e+00) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hm = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hn = fmul <2 x double> %i.gn, %i.hm
  %.sroa.0.sroa.0.8.vec.extract = extractelement <2 x double> %i.hj, i64 1
  %i.ho = bitcast double %.sroa.0.sroa.0.8.vec.extract to <1 x double>
  %i.hp = shufflevector <1 x double> %i.ho, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x double> %i.gp, %i.hp
  %i.hr = fadd <2 x double> %i.hn, %i.hq
  %i.hs = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x double> %i.gv, %i.hs
  %i.hu = fadd <2 x double> %i.ht, %i.hr
  %i.hv = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hw = fmul <2 x double> %i.gx, %i.hv
  %i.hx = fadd <2 x double> %i.hw, %i.hu
  %i.hy = fmul <2 x double> %i.gr, %i.hm
  %i.hz = fmul <2 x double> %i.gt, %i.hp
  %i.ia = fadd <2 x double> %i.hy, %i.hz
  %i.ib = fmul <2 x double> %i.gz, %i.hs
  %i.ic = fadd <2 x double> %i.ib, %i.ia
  %i.id = fmul <2 x double> %i.hb, %i.hv
  %i.ie = fadd <2 x double> %i.id, %i.ic          ; 2 uses
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ig = fdiv <2 x double> %i.hx, %i.if          ; 2 uses
  store <2 x double> %i.ig, ptr %10, align 16, !tbaa !12
  %i.ih = fdiv <2 x double> %i.ie, %i.if
  store <2 x double> %i.ih, ptr %i.bw, align 16, !tbaa !12
  %.idx.i.i.i.i = mul nuw nsw i64 %indvars.iv, 24
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i.i.i ; 5 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = lshr exact i64 %i.ij, 3
  %i.il = and i64 %i.ik, 1                        ; 5 uses
  %.not110 = icmp eq i64 %i.il, 0
  br i1 %.not110, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.i.i.i.i.i.a:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %11 = extractelement <2 x double> %i.ig, i64 0
  store double %11, ptr %i.ii, align 8, !tbaa !14
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.il
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.il
  %14 = load <2 x double>, ptr %13, align 8, !tbaa !12
  store <2 x double> %14, ptr %12, align 16, !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.il
  %16 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.il
  %17 = load <2 x double>, ptr %16, align 8, !tbaa !12
  store <2 x double> %17, ptr %15, align 16, !tbaa !12
  %18 = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %19 = load double, ptr %i.bx, align 16, !tbaa !14
  store double %19, ptr %18, align 8, !tbaa !14
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.a, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, !llvm.loop !150

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS0_INS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !21
  store i64 %3, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.709", align 16 ; 23 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.626", align 8 ; 4 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.714", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = load ptr, ptr %1, align 8, !tbaa !157, !nonnull !50, !align !53 ; 8 uses
  %i.b = load <2 x float>, ptr %i.a, align 16, !tbaa !11
  %i.c = fpext <2 x float> %i.b to <2 x double>
  store <2 x double> %i.c, ptr %3, align 16, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !11
  %i.g = fpext <2 x float> %i.f to <2 x double>
  store <2 x double> %i.g, ptr %i.d, align 16, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load <2 x float>, ptr %i.i, align 16, !tbaa !11
  %i.k = fpext <2 x float> %i.j to <2 x double>
  store <2 x double> %i.k, ptr %i.h, align 16, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !11
  %i.o = fpext <2 x float> %i.n to <2 x double>
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load <2 x float>, ptr %i.q, align 16, !tbaa !11
  %i.s = fpext <2 x float> %i.r to <2 x double>
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !11
  %i.w = fpext <2 x float> %i.v to <2 x double>
  store <2 x double> %i.w, ptr %i.t, align 16, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load <2 x float>, ptr %i.y, align 16, !tbaa !11
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %i.x, align 16, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !11
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.ab, align 16, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !157, !nonnull !50, !align !53 ; 8 uses
  %i.ai = load <2 x float>, ptr %i.ah, align 16, !tbaa !11
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  store <2 x double> %i.aj, ptr %i.af, align 16, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load <2 x float>, ptr %i.al, align 8, !tbaa !11
  %i.an = fpext <2 x float> %i.am to <2 x double>
  store <2 x double> %i.an, ptr %i.ak, align 16, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = load <2 x float>, ptr %i.ap, align 16, !tbaa !11
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  store <2 x double> %i.ar, ptr %i.ao, align 16, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 8, !tbaa !11
  %i.av = fpext <2 x float> %i.au to <2 x double>
  store <2 x double> %i.av, ptr %i.as, align 16, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ay = load <2 x float>, ptr %i.ax, align 16, !tbaa !11
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bc = load <2 x float>, ptr %i.bb, align 8, !tbaa !11
  %i.bd = fpext <2 x float> %i.bc to <2 x double>
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.bg = load <2 x float>, ptr %i.bf, align 16, !tbaa !11
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  store <2 x double> %i.bh, ptr %i.be, align 16, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bk = load <2 x float>, ptr %i.bj, align 8, !tbaa !11
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  store <2 x double> %i.bl, ptr %i.bi, align 16, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 256
  store ptr %3, ptr %i.bm, align 16, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr %i.af, ptr %i.bn, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i64 4, ptr %i.bo, align 16, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %0, ptr %4, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %4, ptr %5, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.bp, align 8, !tbaa !164
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.bq, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.br, align 8, !tbaa !40
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS4_IfLi4ELi4ELi0ELi4ELi4EEEEESD_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEEENS3_INS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS4_IfLi4ELi4ELi0ELi4ELi4EEEEESD_Li1EEEEENS0_9assign_opIddEELi0EEELi2ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !166, !nonnull !50, !align !51
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !167, !nonnull !50, !align !53 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.g = load ptr, ptr %i.e, align 16, !tbaa !52  ; 4 uses
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !12
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !52   ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = insertelement <2 x double> poison, double %i.j, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !12
  %i.p = getelementptr i8, ptr %i.i, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !14
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.o, %i.s
  %i.u = fadd <2 x double> %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !12
  %i.x = getelementptr i8, ptr %i.i, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.w, %i.aa
end_hunk_2
