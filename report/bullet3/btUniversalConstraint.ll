Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btUniversalConstraint?download=true
inline.NumInlined: 172
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN21btUniversalConstraintC2ER11btRigidBodyS1_RK9btVector3S4_S4_:bb.a
  %i.bs = fneg float %i.br                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14, !noalias !21
  %i.bv = fneg float %i.bu                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !14, !noalias !21
  %i.by = fneg float %i.bx                        ; 2 uses
  %i.bz = load <2 x float>, ptr %3, align 4       ; 4 uses
  %i.ca = fmul float %i.bo, %i.bv
  %i.cb = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> %i.bz, float %i.bs, i64 1
  %i.ce = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = load <2 x float>, ptr %i.bh, align 8, !tbaa !14, !noalias !16 ; 3 uses
  %i.ch = load <2 x float>, ptr %i.bi, align 8, !tbaa !14, !noalias !16 ; 3 uses
  %i.ci = load <2 x float>, ptr %i.bj, align 8, !tbaa !14, !noalias !16 ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.ch, %i.ck
  %i.cm = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cn, <2 x float> %i.cl)
  %i.cp = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cq, <2 x float> %i.co)
  %i.cs = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x float> %i.cs, %i.ch
  %i.cu = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cg, <2 x float> %i.ct)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cx = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.cz = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.da = insertelement <4 x float> %i.cz, float 1.000000e+00, i64 3
  %i.db = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.dd = fmul <4 x float> %i.cy, %i.dc
  %i.de = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ba, i64 0
  %i.df = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.de, <4 x float> %i.df, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.dh = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.di, <4 x float> %i.dd)
  %i.dk = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cz, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.dl = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.dn = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.do, <4 x float> %i.dj)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dr = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ds = fmul <4 x float> %i.dr, %i.dc
  %i.dt = shufflevector <4 x float> %i.dh, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dt, <4 x float> %i.ds)
  %i.dv = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dv, <4 x float> %i.du)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bo, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ea = fmul <4 x float> %i.dz, %i.dc
  %i.eb = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bn, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.ec, <4 x float> %i.ea)
  %i.ee = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bp, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.20113.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.er = load <2 x float>, ptr %.sroa.42.48..sroa_idx, align 4 ; 5 uses
  %i.es = extractelement <2 x float> %i.er, i64 0
  %i.et = fmul float %i.es, %i.bo
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.ca, i64 1
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.ev)
  %i.ex = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.ey = insertelement <2 x float> %i.ex, float %i.by, i64 1
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ey, <2 x float> %i.ew) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.ci, <2 x float> %i.cv)
  %i.fc = fadd <2 x float> %i.fb, %i.cr
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ez, %shift
  %.sroa.3.12.vec.insert.i4.i.i153 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <4 x float> %i.dp, ptr %i.cw, align 8
  store <4 x float> %i.dw, ptr %i.dq, align 8
  store <4 x float> %i.eg, ptr %i.dx, align 8
  store <2 x float> %i.fc, ptr %i.eh, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i153, ptr %.sroa.20113.48..sroa_idx, align 8, !tbaa !11
  %i.fd = load float, ptr %i.el, align 8, !tbaa !14, !noalias !22 ; 2 uses
  %i.fe = load float, ptr %i.em, align 8, !tbaa !14, !noalias !22 ; 2 uses
  %i.ff = load float, ptr %i.en, align 8, !tbaa !14, !noalias !22 ; 2 uses
  %i.fg = load float, ptr %i.eo, align 8, !tbaa !14, !noalias !27
  %i.fh = fneg float %i.fg                        ; 2 uses
  %i.fi = load float, ptr %i.ep, align 4, !tbaa !14, !noalias !27
  %i.fj = fneg float %i.fi                        ; 2 uses
  %i.fk = load float, ptr %i.eq, align 8, !tbaa !14, !noalias !27
  %i.fl = fneg float %i.fk                        ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = insertelement <2 x float> %i.er, float %i.fj, i64 1
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %i.fq = insertelement <2 x float> %i.bz, float %i.fh, i64 1
  %i.fr = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fs, <2 x float> %i.fp)
  %i.fu = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = insertelement <2 x float> %i.ex, float %i.fl, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.ft) ; 2 uses
  %i.fy = load <2 x float>, ptr %i.ei, align 8, !tbaa !14, !noalias !22 ; 3 uses
  %i.fz = load <2 x float>, ptr %i.ej, align 8, !tbaa !14, !noalias !22 ; 3 uses
  %i.ga = load <2 x float>, ptr %i.ek, align 8, !tbaa !14, !noalias !22 ; 3 uses
  %i.gb = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.fz, %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.gf, <2 x float> %i.gd)
  %i.gh = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gi, <2 x float> %i.gg)
  %i.gk = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.gk, %i.fz
  %i.gm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.fy, <2 x float> %i.gl)
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.ga, <2 x float> %i.gm)
  %i.go = fadd <2 x float> %i.gn, %i.gj
  %shift150 = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop151 = fadd <2 x float> %i.fx, %shift150
  %.sroa.3.12.vec.insert.i4.i.i37154 = insertelement <2 x float> %foldExtExtBinop151, float 0.000000e+00, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gq = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gs = fmul <4 x float> %i.gr, %i.dc
  %i.gt = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.gu, <4 x float> %i.gs)
  %i.gw = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.gx, <4 x float> %i.gv)
  store <4 x float> %i.gy, ptr %i.gp, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ha = shufflevector <4 x float> %i.gq, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.hb = fmul <4 x float> %i.ha, %i.dc
  %i.hc = shufflevector <4 x float> %i.gt, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.hc, <4 x float> %i.hb)
  %i.he = shufflevector <4 x float> %i.gw, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.he, <4 x float> %i.hd)
  store <4 x float> %i.hf, ptr %i.gz, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hh = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.fe, i64 0
  %i.hi = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hj = fmul <4 x float> %i.hi, %i.dc
  %i.hk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.fd, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.hl, <4 x float> %i.hj)
  %i.hn = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ff, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.ho, <4 x float> %i.hm)
  store <4 x float> %i.hp, ptr %i.hg, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.go, ptr %i.hq, align 8
  %.sroa.20.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i37154, ptr %.sroa.20.48..sroa_idx, align 8, !tbaa !11
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 956
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, i8 0, i64 32, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store <2 x float> zeroinitializer, ptr %i.hs, align 4, !tbaa !14
  store <2 x float> <float f0xBFC7C82D, float f0x3FC7C82D>, ptr %i.ht, align 4, !tbaa !14
  store <2 x float> <float f0xC0486C04, float f0x40486C04>, ptr %i.hu, align 4, !tbaa !14
  ret void
}

declare void @_ZN23btGeneric6DofConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1333), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btUniversalConstraint7setAxisERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(1384) initializes((72, 200), (1352, 1384)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !10
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.8.vec.extract.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !11
  %.sroa.0.0.copyload3.i5 = load <2 x float>, ptr %2, align 4 ; 2 uses
  %3 = load <4 x float>, ptr %2, align 4
  %4 = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.c = shufflevector <2 x float> %.sroa.0.0.copyload3.i5, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = shufflevector <2 x float> %.sroa.0.0.copyload3.i5, <2 x float> %.sroa.0.0.copyload3.i, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.e, <2 x float> %i.d)
  %5 = insertelement <2 x float> %4, float %.sroa.8.8.vec.extract.i, i64 1 ; 3 uses
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %5, <2 x float> %i.f)
  %i.h = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.g)
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 3 uses
  %i.j = fmul <2 x float> %i.e, %i.i              ; 4 uses
  %i.k = fmul <2 x float> %i.c, %i.i              ; 5 uses
  %i.l = extractelement <2 x float> %i.k, i64 1
  %i.m = extractelement <2 x float> %i.k, i64 0
  %i.n = fmul <2 x float> %5, %i.i                ; 5 uses
  %i.o = fneg float %i.l
  %i.p = extractelement <2 x float> %i.n, i64 0
  %i.q = fmul float %i.p, %i.o
  %i.r = extractelement <2 x float> %i.n, i64 1
  %i.s = tail call float @llvm.fmuladd.f32(float %i.m, float %i.r, float %i.q)
  %i.t = shufflevector <2 x float> %i.j, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.u = fneg <2 x float> %i.t
  %i.v = shufflevector <2 x float> %i.k, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.v, %i.u
  %i.x = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 1, i32 2>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.x, <2 x float> %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.sroa.41.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28, !nonnull !35, !align !36 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ai = load float, ptr %i.af, align 8, !tbaa !14, !noalias !37 ; 2 uses
  %i.aj = load float, ptr %i.ag, align 8, !tbaa !14, !noalias !37 ; 3 uses
  %i.ak = load float, ptr %i.ah, align 8, !tbaa !14, !noalias !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.am = load float, ptr %i.al, align 8, !tbaa !14, !noalias !42
  %i.an = fneg float %i.am                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !14, !noalias !42
  %i.aq = fneg float %i.ap                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.as = load float, ptr %i.ar, align 8, !tbaa !14, !noalias !42
  %i.at = fneg float %i.as                        ; 2 uses
  %i.au = load <2 x float>, ptr %i.z, align 8     ; 4 uses
  %i.av = fmul float %i.aj, %i.aq
  %i.aw = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x float> %i.au, float %i.an, i64 1
  %i.az = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = load <2 x float>, ptr %i.ac, align 8, !tbaa !14, !noalias !37 ; 3 uses
  %i.bc = load <2 x float>, ptr %i.ad, align 8, !tbaa !14, !noalias !37 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.ae, align 8, !tbaa !14, !noalias !37 ; 3 uses
  %i.be = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bc, %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bl, <2 x float> %i.bj)
  %i.bn = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.bn, %i.bc
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bb, <2 x float> %i.bo)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.bu = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.bu, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.bw = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> %i.bv, <4 x float> %i.bw, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.by = fmul <4 x float> %i.bt, %i.bx
  %i.bz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.s, i64 0
  %i.ca = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.cc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cd, <4 x float> %i.by)
  %i.cf = insertelement <4 x float> %i.bu, float 0.000000e+00, i64 3
  %i.cg = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> %i.cg, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 6 uses
  %i.ci = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cj, <4 x float> %i.ce)
  store <4 x float> %i.ck, ptr %i.br, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = shufflevector <4 x float> %i.bs, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cn = fmul <4 x float> %i.cm, %i.bx
  %i.co = shufflevector <4 x float> %i.cc, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.co, <4 x float> %i.cn)
  %i.cq = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cq, <4 x float> %i.cp)
  store <4 x float> %i.cr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ct = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cv = fmul <4 x float> %i.cu, %i.bx
  %i.cw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ai, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cx, <4 x float> %i.cv)
  %i.cz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ak, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.da, <4 x float> %i.cy)
  store <4 x float> %i.db, ptr %i.cs, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.1982.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !43, !nonnull !35, !align !36 ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 60
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.do = load <2 x float>, ptr %.sroa.41.48..sroa_idx, align 4 ; 5 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = fmul float %i.dp, %i.aj
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.av, i64 1
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ay, <2 x float> %i.ds)
  %i.du = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.dv = insertelement <2 x float> %i.du, float %i.at, i64 1
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.dv, <2 x float> %i.dt) ; 2 uses
  %i.dx = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.bd, <2 x float> %i.bq)
  %i.dz = fadd <2 x float> %i.dy, %i.bm
  %shift = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dw, %shift
  %.sroa.3.12.vec.insert.i4.i.i124 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <2 x float> %i.dz, ptr %i.dc, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i124, ptr %.sroa.1982.48..sroa_idx, align 8, !tbaa !11
  %i.ea = load float, ptr %i.di, align 8, !tbaa !14, !noalias !44 ; 2 uses
  %i.eb = load float, ptr %i.dj, align 8, !tbaa !14, !noalias !44 ; 2 uses
  %i.ec = load float, ptr %i.dk, align 8, !tbaa !14, !noalias !44 ; 2 uses
  %i.ed = load float, ptr %i.dl, align 8, !tbaa !14, !noalias !49
  %i.ee = fneg float %i.ed                        ; 2 uses
  %i.ef = load float, ptr %i.dm, align 4, !tbaa !14, !noalias !49
  %i.eg = fneg float %i.ef                        ; 2 uses
  %i.eh = load float, ptr %i.dn, align 8, !tbaa !14, !noalias !49
  %i.ei = fneg float %i.eh                        ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = insertelement <2 x float> %i.do, float %i.eg, i64 1
  %i.em = fmul <2 x float> %i.ek, %i.el
  %i.en = insertelement <2 x float> %i.au, float %i.ee, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> %i.em)
  %i.er = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x float> %i.du, float %i.ei, i64 1
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.eq) ; 2 uses
  %i.ev = load <2 x float>, ptr %i.df, align 8, !tbaa !14, !noalias !44 ; 3 uses
  %i.ew = load <2 x float>, ptr %i.dg, align 8, !tbaa !14, !noalias !44 ; 3 uses
  %i.ex = load <2 x float>, ptr %i.dh, align 8, !tbaa !14, !noalias !44 ; 3 uses
  %i.ey = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ew, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.fc, <2 x float> %i.fa)
  %i.fe = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ff, <2 x float> %i.fd)
  %i.fh = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.fh, %i.ew
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.ev, <2 x float> %i.fi)
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.ex, <2 x float> %i.fj)
  %i.fl = fadd <2 x float> %i.fk, %i.fg
  %shift121 = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop122 = fadd <2 x float> %i.eu, %shift121
  %.sroa.3.12.vec.insert.i4.i.i37125 = insertelement <2 x float> %foldExtExtBinop122, float 0.000000e+00, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fn = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fp = fmul <4 x float> %i.fo, %i.bx
  %i.fq = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.fr, <4 x float> %i.fp)
  %i.ft = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.fu, <4 x float> %i.fs)
  store <4 x float> %i.fv, ptr %i.fm, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fx = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fy = fmul <4 x float> %i.fx, %i.bx
  %i.fz = shufflevector <4 x float> %i.fq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.fz, <4 x float> %i.fy)
  %i.gb = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.gb, <4 x float> %i.ga)
  store <4 x float> %i.gc, ptr %i.fw, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ge = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.eb, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gg = fmul <4 x float> %i.gf, %i.bx
  %i.gh = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ea, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.gi, <4 x float> %i.gg)
  %i.gk = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ec, i64 0
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.gl, <4 x float> %i.gj)
  store <4 x float> %i.gm, ptr %i.gd, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x float> %i.fl, ptr %i.gn, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_0
