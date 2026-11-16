Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageCanvas?download=true
inline.NumInlined: 10055
inline.NumDeleted: 3878
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN3tev11ImageCanvas9transformEPKNS_5ImageE:bb.a
  %i.ba = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bc = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.be = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x float> %i.be, float %i.ar, i64 1
  %i.bg = fdiv <2 x float> <float -2.000000e+00, float 1.000000e+00>, %i.bf ; 5 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bl = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.x, float %i.ai)
  %i.bn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bm, i64 2
  %i.bo = shufflevector <4 x float> %i.ak, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aj, <4 x float> %i.z, <4 x float> %i.bo) ; 5 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0
  %i.br = fadd float %i.as, %i.bq                 ; 2 uses
  %i.bs = extractelement <4 x float> %i.bp, i64 3
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.bs)
  %i.bu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.bt, i64 0
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ab, float %i.aw)
  %i.bw = insertelement <4 x float> %i.bu, float %i.bv, i64 2
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.am, <4 x float> %i.bw) ; 6 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.bz = insertelement <2 x float> %i.by, float %i.aw, i64 1
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> zeroinitializer, <2 x float> %i.bz)
  %i.cb = fadd <2 x float> %i.az, %i.ca           ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bk, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 6, i32 7>
  %i.cd = shufflevector <4 x float> %i.bx, <4 x float> %i.bp, <4 x i32> <i32 1, i32 3, i32 poison, i32 6>
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bb, <4 x float> %i.cf)
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bd, <4 x float> zeroinitializer, <4 x float> %i.cg) ; 3 uses
  %i.ci = shufflevector <4 x float> %i.bp, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %i.cj = insertelement <4 x float> %i.ci, float %i.br, i64 2
  %i.ck = shufflevector <4 x float> %i.bx, <4 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 poison, i32 5>
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cm = shufflevector <4 x float> %i.bj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cn, <4 x float> zeroinitializer)
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> zeroinitializer, <4 x float> %i.co) ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> zeroinitializer, <4 x float> %i.cq) ; 8 uses
  %i.cs = shufflevector <4 x float> %i.bx, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 2, i32 7>
  %i.ct = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.br, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.bi, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.cw = shufflevector <4 x float> %i.cp, <4 x float> %i.cr, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.cx = insertelement <4 x float> %i.cw, float 0.000000e+00, i64 0
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.cv, <4 x float> %i.cx) ; 2 uses
  %i.cz = shufflevector <4 x float> %i.ch, <4 x float> %i.bx, <4 x i32> <i32 poison, i32 0, i32 1, i32 4>
  %i.da = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cz, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dc = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.dc, <4 x float> %i.cy) ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 360
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.dg = load <2 x i64>, ptr %i.de, align 8, !tbaa !79 ; 2 uses
  %i.dh = lshr <2 x i64> %i.dg, splat (i64 32)
  %i.di = trunc nuw <2 x i64> %i.dh to <2 x i32>
  %i.dj = trunc <2 x i64> %i.dg to <2 x i32>
  %i.dk = sitofp <2 x i32> %i.dj to <2 x float>
  %i.dl = sitofp <2 x i32> %i.di to <2 x float>
  %i.dm = tail call reassoc nnan float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dk)
  %i.dn = tail call reassoc nnan float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dl)
  %i.do = extractelement <4 x float> %i.cr, i64 0
  %i.dp = fadd float %i.do, 0.000000e+00
  %i.dq = shufflevector <4 x float> %i.bx, <4 x float> %i.dd, <4 x i32> <i32 poison, i32 2, i32 poison, i32 5>
  %i.dr = shufflevector <4 x float> %i.ce, <4 x float> %i.dq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ds = shufflevector <4 x float> %i.dd, <4 x float> %i.cr, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float %i.dp, i64 3
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> zeroinitializer, <4 x float> %i.du) ; 5 uses
  %i.dw = shufflevector <4 x float> %i.cr, <4 x float> %i.dv, <4 x i32> <i32 1, i32 2, i32 7, i32 poison>
  %i.dx = insertelement <4 x float> %i.dw, float -0.000000e+00, i64 3
  %i.dy = fadd <4 x float> %i.dx, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %i.dz = shufflevector <4 x float> %i.dd, <4 x float> %i.dv, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.df, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %.sroa.04.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32
  %i.ea = bitcast i64 %.sroa.0.0.copyload.i.i to <2 x i32>
  %i.eb = sitofp <2 x i32> %i.ea to <2 x float>
  %.sroa.5.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %.sroa.5.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.5.12.extract.trunc.i = trunc nuw i64 %.sroa.5.12.extract.shift.i to i32
  %i.ec = bitcast i64 %.sroa.2.0.copyload.i.i to <2 x i32>
  %i.ed = sitofp <2 x i32> %i.ec to <2 x float>
  %i.ee = fadd nnan <2 x float> %i.eb, %i.ed
  %i.ef = fmul nnan <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.dm, i64 1
  %i.ej = fmul nnan <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = sub nsw i32 %.sroa.5.8.extract.trunc.i, %.sroa.04.0.extract.trunc.i
  %i.el = sub nsw i32 %.sroa.5.12.extract.trunc.i, %.sroa.04.4.extract.trunc.i
  %i.em = tail call noundef i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.en = tail call noundef i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %i.eo = fsub <2 x float> %i.eg, %i.ej           ; 2 uses
  %i.ep = shufflevector <4 x float> %i.dd, <4 x float> %i.dv, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.eq = insertelement <4 x float> %i.ep, float f0xBDE38E37, i64 3
  %i.er = shufflevector <4 x float> %i.ch, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.es = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.et = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eu = fadd <4 x float> %i.eq, %i.et           ; 5 uses
  %i.ev = shufflevector <4 x float> %i.dz, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> %i.cr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> zeroinitializer, <4 x float> %i.dy) ; 4 uses
  %i.ey = shufflevector <4 x float> %i.eu, <4 x float> %i.cr, <4 x i32> <i32 1, i32 2, i32 5, i32 6>
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> zeroinitializer, <4 x float> %i.ez) ; 4 uses
  %i.fb = shufflevector <4 x float> %i.dd, <4 x float> %i.dv, <4 x i32> <i32 1, i32 2, i32 4, i32 poison>
  %i.fc = insertelement <4 x float> %i.fb, float 0.000000e+00, i64 3
  %i.fd = shufflevector <4 x float> %i.ex, <4 x float> %i.fa, <4 x i32> <i32 3, i32 6, i32 7, i32 poison>
  %i.fe = insertelement <4 x float> %i.fd, float -0.000000e+00, i64 3
  %i.ff = fadd <4 x float> %i.fc, %i.fe
  %i.fg = shufflevector <4 x float> %i.cr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> %i.eu, <4 x float> %i.ff) ; 5 uses
  %i.fi = uitofp nneg i32 %i.en to float          ; 2 uses
  %i.fj = shufflevector <4 x float> %i.cr, <4 x float> %i.dd, <4 x i32> <i32 1, i32 2, i32 5, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.fl = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %i.fn = uitofp nneg i32 %i.em to float          ; 2 uses
  %i.fo = insertelement <2 x float> %i.eo, float %i.fn, i64 1
  %i.fp = fadd <2 x float> %i.fo, <float f0xBDE38E37, float -0.000000e+00>
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fl, <4 x float> %i.fq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float %i.fn, i64 3
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fs, <4 x float> %i.fm) ; 3 uses
  %i.fu = shufflevector <4 x float> %i.dd, <4 x float> %i.fa, <4 x i32> <i32 2, i32 4, i32 poison, i32 5>
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fw = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fq, <4 x float> %i.fw) ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fh, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.fz = shufflevector <4 x float> %i.ft, <4 x float> %i.fx, <4 x i32> <i32 3, i32 5, i32 7, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 0.000000e+00, i64 3
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> zeroinitializer, <4 x float> %i.ga) ; 2 uses
  %i.gc = shufflevector <4 x float> %i.eu, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gd = shufflevector <4 x float> %i.ft, <4 x float> %i.fx, <4 x i32> <i32 2, i32 4, i32 6, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float -0.000000e+00, i64 3
  %i.gf = fadd <4 x float> %i.gc, %i.ge           ; 4 uses
  %i.gg = insertelement <4 x float> %i.gb, float 0.000000e+00, i64 3
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> zeroinitializer, <4 x float> %i.gg) ; 8 uses
  %i.gi = shufflevector <4 x float> %i.fh, <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 1, i32 7>
  %i.gj = shufflevector <4 x float> %i.fa, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7>
  %i.gk = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.gm = shufflevector <4 x float> %i.gj, <4 x float> %i.gl, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gn = shufflevector <4 x float> %i.gb, <4 x float> %i.gh, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.go = insertelement <4 x float> %i.gn, float 0.000000e+00, i64 0
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.gm, <4 x float> %i.go) ; 2 uses
  %i.gq = shufflevector <4 x float> %i.fh, <4 x float> %i.gf, <4 x i32> <i32 2, i32 4, i32 5, i32 0>
  %i.gr = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.fi, i64 0
  %i.gs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gr, <4 x float> %i.gp) ; 7 uses
  %i.gt = extractelement <4 x float> %i.gs, i64 1
  %i.gu = shufflevector <4 x float> %i.gf, <4 x float> %i.fh, <4 x i32> <i32 2, i32 5, i32 6, i32 poison>
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gw = shufflevector <4 x float> %i.gs, <4 x float> %i.gh, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ha = extractelement <4 x float> %i.gh, i64 0
  %i.hb = fadd float %i.ha, 0.000000e+00
  %i.hc = insertelement <4 x float> %i.gx, float %i.hb, i64 3
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> zeroinitializer, <4 x float> %i.hc) ; 5 uses
  %i.he = shufflevector <4 x float> %i.gs, <4 x float> %i.hd, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hg = insertelement <4 x float> %i.gf, float -0.000000e+00, i64 3
  %i.hh = fadd <4 x float> %i.hf, %i.hg           ; 4 uses
  %i.hi = shufflevector <4 x float> %i.gh, <4 x float> %i.hd, <4 x i32> <i32 1, i32 2, i32 7, i32 poison>
  %i.hj = insertelement <4 x float> %i.hi, float -0.000000e+00, i64 3
  %i.hk = fadd <4 x float> %i.hj, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %i.hl = shufflevector <4 x float> %i.gs, <4 x float> %i.hd, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> zeroinitializer, <4 x float> %i.hk) ; 3 uses
  %i.hp = shufflevector <4 x float> %i.hh, <4 x float> %i.gh, <4 x i32> <i32 1, i32 2, i32 5, i32 6>
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> zeroinitializer, <4 x float> %i.hq) ; 2 uses
  %i.hs = shufflevector <4 x float> %i.gs, <4 x float> %i.hd, <4 x i32> <i32 1, i32 2, i32 4, i32 poison>
  %i.ht = insertelement <4 x float> %i.hs, float 0.000000e+00, i64 3
  %i.hu = shufflevector <4 x float> %i.ho, <4 x float> %i.hr, <4 x i32> <i32 3, i32 6, i32 7, i32 poison>
  %i.hv = insertelement <4 x float> %i.hu, float -0.000000e+00, i64 3
  %i.hw = fadd <4 x float> %i.ht, %i.hv
  %i.hx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -5.000000e-01>, <4 x float> %i.hw) ; 4 uses
  %i.hy = shufflevector <4 x float> %i.ho, <4 x float> %i.hr, <4 x i32> <i32 2, i32 4, i32 5, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.hz, ptr %0, align 4, !tbaa !76, !alias.scope !714
  %i.ia = extractelement <4 x float> %i.hx, i64 1
  store float %i.ia, ptr %i.gy, align 4, !tbaa !76, !alias.scope !714
  %i.ib = extractelement <4 x float> %i.hx, i64 3
  %i.ic = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> splat (float -5.000000e-01), <2 x float> zeroinitializer)
  %i.ie = shufflevector <4 x float> %i.gs, <4 x float> %i.hd, <2 x i32> <i32 2, i32 4>
  %i.if = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> splat (float -5.000000e-01), <2 x float> %i.id)
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.gt, float -5.000000e-01, float %i.ib)
  %i.ih = shufflevector <4 x float> %i.hx, <4 x float> %i.hh, <4 x i32> <i32 2, i32 4, i32 5, i32 6>
  %5 = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %5, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 poison, i32 0, i32 1>
  %7 = insertelement <4 x float> %6, float %i.ig, i64 1
  %8 = fadd <4 x float> %i.ih, %7
  store <4 x float> %8, ptr %i.gz, align 4, !tbaa !76, !alias.scope !714
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void

bb.k:                                             ; preds = %bb.e
  unreachable
}

declare float @glfwGetWindowSdrWhiteLevel(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageCanvas21drawPixelValuesAsTextEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.544", align 16 ; 4 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.544", align 16 ; 4 uses
  %12 = alloca %"struct.fmt::v12::detail::format_arg_store.590", align 16 ; 4 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %14 = alloca %"struct.fmt::v12::detail::format_arg_store.589", align 16 ; 7 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.nanogui::Matrix", align 8 ; 13 uses
  %17 = alloca %"class.std::__1::vector.179", align 8 ; 12 uses
  %18 = alloca %"class.std::__1::vector.188", align 8 ; 17 uses
  %19 = alloca %"class.std::__1::vector.195", align 8 ; 15 uses
  %20 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  %22 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %.not328 = icmp eq ptr %i.b, null
  br i1 %.not328, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.f, !prof !213

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #47, !noalias !758
  store ptr @.str.4, ptr %13, align 16, !tbaa !79, !noalias !758
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 119, ptr %i.d, align 16, !tbaa !79, !noalias !758
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 78, ptr %i.e, align 16, !tbaa !79, !noalias !758
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr @.str.5, ptr %i.f, align 16, !tbaa !79, !noalias !758
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %15, ptr nonnull @.str.6, i64 68, i64 49708, ptr nonnull %13)
          to label %bb.b unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47, !noalias !758
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.dd unwind label %bb.d

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.081 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load i8, ptr %15, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.m = load i64, ptr %15, align 8
  %i.n = and i64 %i.m, -2
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br i1 %.081, label %bb.e, label %common.resume

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br i1 %.081, label %bb.e, label %common.resume

bb.e:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn320 = phi { ptr, i32 } [ %i.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.h, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.h, %.split ]
  call void @__cxa_free_exception(ptr %i.c) #47
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #47
  call void @_ZN3tev11ImageCanvas16textureToNanoguiEPKNS_5ImageE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %16, ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 2 uses
  %i.u = load float, ptr %i.o, align 4, !tbaa !76, !noalias !759 ; 4 uses
  %i.v = load float, ptr %i.q, align 8, !tbaa !76, !noalias !759 ; 2 uses
  %i.w = fneg float %i.v                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.y = load <2 x float>, ptr %i.p, align 8, !tbaa !76, !noalias !759 ; 4 uses
  %i.z = load float, ptr %i.s, align 4, !tbaa !76, !noalias !759 ; 3 uses
  %i.aa = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ab = fmul float %i.z, %i.w
  %i.ac = fmul float %i.aa, %i.w
  %i.ad = load <2 x float>, ptr %16, align 8, !tbaa !76, !noalias !759 ; 4 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = load <2 x float>, ptr %i.t, align 4, !tbaa !76, !noalias !759 ; 3 uses
  %i.ag = load float, ptr %i.r, align 8, !tbaa !76, !noalias !759 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ai = fneg float %i.ah                        ; 2 uses
  %i.aj = fmul float %i.z, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ag, float %i.aj) ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ag, float %i.ab)
  %i.am = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ah, float %i.ac) ; 2 uses
  %i.an = fneg float %i.al                        ; 2 uses
  %i.ao = load <2 x float>, ptr %i.x, align 4, !tbaa !76, !noalias !759 ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  %i.aq = fmul float %i.ap, %i.an
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ak, float %i.aq)
  %i.as = extractelement <2 x float> %i.ao, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.am, float %i.ar) ; 2 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.aw = fdiv float 1.000000e+00, %i.at
  %i.ax = fneg float %i.u                         ; 2 uses
  %i.ay = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.az = insertelement <2 x float> poison, float %i.aw, i64 0 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bb = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.w, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.ax, i64 2
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bf = fmul <4 x float> %i.av, %i.be
  %i.bg = shufflevector <2 x float> %i.ao, <2 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.bh = shufflevector <2 x float> %i.af, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.bi = insertelement <3 x float> %i.bh, float %i.z, i64 2
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bj, <4 x float> %i.bf) ; 2 uses
  %i.bl = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.bm = insertelement <3 x float> %i.bl, float 0.000000e+00, i64 1
  %i.bn = shufflevector <2 x float> %i.y, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.bo = insertelement <3 x float> %i.bn, float -0.000000e+00, i64 1
  %i.bp = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.bq = insertelement <2 x float> %i.bp, float %i.an, i64 0
  %i.br = fmul <2 x float> %i.ba, %i.bq
  %i.bs = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 6, i32 5>
  %i.bu = fneg <4 x float> %i.bt                  ; 4 uses
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bw = insertelement <2 x float> %i.bv, float %i.ax, i64 1
  %i.bx = shufflevector <4 x float> %i.ay, <4 x float> %i.bu, <2 x i32> <i32 0, i32 5>
  %i.by = fmul <2 x float> %i.bx, %i.ba
  %i.bz = shufflevector <4 x float> %i.av, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.cb = fmul <3 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = shufflevector <3 x float> %i.cb, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> %i.bu, <3 x i32> <i32 0, i32 6, i32 poison>
  %i.ce = shufflevector <3 x float> %i.cd, <3 x float> %i.cb, <3 x i32> <i32 0, i32 1, i32 4>
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> %i.bo, <3 x float> %i.ce)
  %i.cg = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ch = insertelement <2 x float> %i.cg, float %i.am, i64 0
  %i.ci = fmul <2 x float> %i.ch, %i.ba
  %i.cj = shufflevector <2 x float> %i.az, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ck = fmul <3 x float> %i.cj, %i.cf
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cm = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cn = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit

_ZN7nanogui7inverseERKNS_6MatrixIfLm3EEE.exit:    ; preds = %bb.f, %bb.g
  %i.co = phi <3 x float> [ %i.ck, %bb.g ], [ zeroinitializer, %bb.f ] ; 3 uses
  %i.cp = phi <4 x float> [ %i.cn, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.cq = phi <4 x float> [ %i.cm, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.cr = phi <4 x float> [ %i.cl, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.cs = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x float> %i.cs, <float 1.000000e+00, float 0.000000e+00>
  %i.cu = fadd <2 x float> %i.ct, zeroinitializer
  %i.cv = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fmul <2 x float> %i.cv, <float 1.000000e+00, float 0.000000e+00>
  %i.cx = fadd <2 x float> %i.cw, %i.cu
  %i.cy = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fadd <2 x float> %i.cy, %i.cx
  %i.da = insertelement <2 x float> poison, float %i.u, i64 0
end_hunk_0
begin_hunk_1_@_ZN3tev8ituth27311transferRgbIfEEN7nanogui5ArrayIT_Lm3EEENS0_9ETransferERKS5_:bb.a

bb.ad:                                            ; preds = %bb.ac
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #52
  unreachable

bb.ae:                                            ; preds = %bb.a
  %i.by = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !76
  %.fca.0.insert.i.i118 = insertvalue { <2 x float>, float } poison, <2 x float> %i.by, 0
  %.fca.1.insert.i.i119 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i118, float %i.ca, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.af:                                            ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !76 ; 2 uses
  %i.cd = load <2 x float>, ptr %1, align 4, !tbaa !76 ; 4 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 1
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> <float -1.687360e-01, float 5.870000e-01>, <2 x float> <float 5.000000e-01, float -0.000000e+00>)
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> <float 2.990000e-01, float -3.312640e-01>, <2 x float> %i.cg)
  %i.ci = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> <float 1.140000e-01, float 5.000000e-01>, <2 x float> %i.ch)
  %i.cl = extractelement <2 x float> %i.cd, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float 5.000000e-01, float 5.000000e-01)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ce, float -4.186880e-01, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cc, float -8.131200e-02, float %i.cn)
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ck, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.co, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ag:                                            ; preds = %bb.a
  %i.cp = invoke { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE13EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit unwind label %bb.ah ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  tail call void @__clang_call_terminate(ptr %i.cr) #52
  unreachable

_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.ag
  %.fca.0.extract3.i.i = extractvalue { <2 x float>, float } %i.cp, 0 ; 4 uses
  %.fca.1.extract4.i.i = extractvalue { <2 x float>, float } %i.cp, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract3.i.i, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract3.i.i, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.extract3.i.i, <2 x float> <float -1.687360e-01, float 5.870000e-01>, <2 x float> <float 5.000000e-01, float -0.000000e+00>)
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.fca.0.extract3.i.i, <2 x float> <float 2.990000e-01, float -3.312640e-01>, <2 x float> %i.ct)
  %i.cv = insertelement <2 x float> poison, float %.fca.1.extract4.i.i, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> <float 1.140000e-01, float 5.000000e-01>, <2 x float> %i.cu)
  %i.cy = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float 5.000000e-01, float 5.000000e-01)
  %i.cz = tail call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract.i.i, float -4.186880e-01, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %.fca.1.extract4.i.i, float -8.131200e-02, float %i.cz)
  %.fca.0.insert.i.i.i122 = insertvalue { <2 x float>, float } poison, <2 x float> %i.cx, 0
  %.fca.1.insert.i.i.i123 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i122, float %i.da, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ai:                                            ; preds = %bb.a
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !76
  %.fca.0.insert.i.i126 = insertvalue { <2 x float>, float } poison, <2 x float> %i.db, 0
  %.fca.1.insert.i.i127 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i126, float %i.dd, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.aj:                                            ; preds = %bb.a
  %i.de = load <2 x float>, ptr %1, align 4, !tbaa !76
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !76
  %.fca.0.insert.i.i130 = insertvalue { <2 x float>, float } poison, <2 x float> %i.de, 0
  %.fca.1.insert.i.i131 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i130, float %i.dg, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

bb.ak:                                            ; preds = %bb.a
  %.sroa.0104.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.23.0..0.103.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..0.103.sroa_idx, align 4, !tbaa !79
  %i.dh = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0104.0.copyload, 0
  %i.di = insertvalue { <2 x float>, float } %i.dh, float %.sroa.23.0.copyload, 1
  br label %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit

_ZN3tev8ituth27311transferRgbILNS0_9ETransferE1EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit: ; preds = %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.ak, %bb.aj, %bb.ai, %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit, %bb.af, %bb.ae, %bb.v, %bb.u, %bb.t
  %.fca.1.insert.merged = phi { <2 x float>, float } [ %i.di, %bb.ak ], [ %.fca.1.insert.i.i131, %bb.aj ], [ %i.a, %bb.b ], [ %i.d, %bb.d ], [ %i.g, %bb.f ], [ %i.j, %bb.h ], [ %i.m, %bb.j ], [ %i.p, %bb.l ], [ %i.s, %bb.n ], [ %i.v, %bb.p ], [ %.fca.1.insert.i.i, %bb.t ], [ %.fca.1.insert.i.i108, %bb.u ], [ %.fca.1.insert.i.i115, %bb.v ], [ %i.y, %bb.r ], [ %i.bm, %bb.w ], [ %i.bp, %bb.y ], [ %i.bs, %bb.aa ], [ %.fca.1.insert.i.i119, %bb.ae ], [ %.fca.1.insert.i.i.i, %bb.af ], [ %.fca.1.insert.i.i.i123, %_ZN3tev8ituth27311transferRgbILNS0_9ETransferE125EfEEN7nanogui5ArrayIT0_Lm3EEERKS6_.exit ], [ %.fca.1.insert.i.i127, %bb.ai ], [ %i.bv, %bb.ac ]
  ret { <2 x float>, float } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZN3tev8ituth27317transferComponentIfEET_NS0_9ETransferERKS2_(i8 noundef zeroext %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !76   ; 38 uses
  switch i8 %0, label %bb.o [
    i8 1, label %bb.b
    i8 6, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 11, label %bb.c
    i8 12, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 7, label %bb.g
    i8 125, label %bb.n
    i8 9, label %bb.h
    i8 10, label %bb.i
    i8 13, label %bb.j
    i8 16, label %bb.k
    i8 17, label %bb.l
    i8 18, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = fmul float %i.a, 4.500000e+00
  %i.c = fcmp olt float %i.a, f0x00800000
  %i.d = bitcast float %i.a to i32
  %i.e = select i1 %i.c, i32 8388608, i32 %i.d    ; 2 uses
  %i.f = lshr i32 %i.e, 23
  %i.g = and i32 %i.f, 255
  %i.h = add nsw i32 %i.g, -127
  %i.i = sitofp i32 %i.h to float
  %i.j = and i32 %i.e, 8388607
  %i.k = or disjoint i32 %i.j, 1065353216
  %i.l = bitcast i32 %i.k to float
  %i.m = fadd float %i.l, -1.000000e+00           ; 5 uses
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float f0x3D3BF404, float f0xBE471796)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.m, float f0x3ED4B281)
  %i.p = tail call noundef float @llvm.fma.f32(float %i.o, float %i.m, float f0xBF356C3D)
  %i.q = tail call noundef float @llvm.fma.f32(float %i.p, float %i.m, float f0x3FB88DC0)
  %i.r = fmul float %i.m, %i.q
  %i.s = fadd float %i.r, %i.i
  %i.t = fmul float %i.s, 4.500000e-01            ; 2 uses
  %i.u = tail call noundef float @llvm.rint.f32(float %i.t) ; 2 uses
  %i.v = fsub float %i.t, %i.u                    ; 6 uses
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float f0x39222A61, float f0x3AAF931A)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.v, float 9.618040e-03)
  %i.y = tail call noundef float @llvm.fma.f32(float %i.x, float %i.v, float f0x3D63578A)
  %i.z = tail call noundef float @llvm.fma.f32(float %i.y, float %i.v, float f0x3E75FDF0)
  %i.aa = tail call noundef float @llvm.fma.f32(float %i.z, float %i.v, float f0x3F317218)
  %i.ab = tail call noundef float @llvm.fma.f32(float %i.aa, float %i.v, float 1.000000e+00)
  %i.ac = fptosi float %i.u to i32
  %i.ad = shl i32 %i.ac, 23
  %i.ae = add i32 %i.ad, 1065353216
  %i.af = bitcast i32 %i.ae to float
  %i.ag = fmul float %i.ab, %i.af
  %i.ah = fcmp oeq float %i.a, 0.000000e+00
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.aj = select i1 %i.ah, float f0xBDCB5C20, float %i.ai
  %i.ak = fcmp ole float %i.a, f0x3C93E5EB
  %.sroa.speculated.i = select i1 %i.ak, float %i.b, float %i.aj
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.a) ; 4 uses
  %i.am = fmul float %i.al, 4.500000e+00
  %i.an = fcmp olt float %i.al, f0x00800000
  %i.ao = bitcast float %i.al to i32
  %i.ap = select i1 %i.an, i32 8388608, i32 %i.ao ; 2 uses
  %i.aq = lshr i32 %i.ap, 23
  %i.ar = add nsw i32 %i.aq, -127
  %i.as = sitofp i32 %i.ar to float
  %i.at = and i32 %i.ap, 8388607
  %i.au = or disjoint i32 %i.at, 1065353216
  %i.av = bitcast i32 %i.au to float
  %i.aw = fadd float %i.av, -1.000000e+00         ; 5 uses
  %i.ax = tail call noundef float @llvm.fma.f32(float %i.aw, float f0x3D3BF404, float f0xBE471796)
  %i.ay = tail call noundef float @llvm.fma.f32(float %i.ax, float %i.aw, float f0x3ED4B281)
  %i.az = tail call noundef float @llvm.fma.f32(float %i.ay, float %i.aw, float f0xBF356C3D)
  %i.ba = tail call noundef float @llvm.fma.f32(float %i.az, float %i.aw, float f0x3FB88DC0)
  %i.bb = fmul float %i.aw, %i.ba
  %i.bc = fadd float %i.bb, %i.as
  %i.bd = fmul float %i.bc, 4.500000e-01          ; 2 uses
  %i.be = tail call noundef float @llvm.rint.f32(float %i.bd) ; 2 uses
  %i.bf = fsub float %i.bd, %i.be                 ; 6 uses
  %i.bg = tail call noundef float @llvm.fma.f32(float %i.bf, float f0x39222A61, float f0x3AAF931A)
  %i.bh = tail call noundef float @llvm.fma.f32(float %i.bg, float %i.bf, float 9.618040e-03)
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bh, float %i.bf, float f0x3D63578A)
  %i.bj = tail call noundef float @llvm.fma.f32(float %i.bi, float %i.bf, float f0x3E75FDF0)
  %i.bk = tail call noundef float @llvm.fma.f32(float %i.bj, float %i.bf, float f0x3F317218)
  %i.bl = tail call noundef float @llvm.fma.f32(float %i.bk, float %i.bf, float 1.000000e+00)
  %i.bm = fptosi float %i.be to i32
  %i.bn = shl i32 %i.bm, 23
  %i.bo = add i32 %i.bn, 1065353216
  %i.bp = bitcast i32 %i.bo to float
  %i.bq = fmul float %i.bl, %i.bp
  %i.br = fcmp oeq float %i.a, 0.000000e+00
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bq, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.bt = select i1 %i.br, float f0xBDCB5C20, float %i.bs
  %i.bu = fcmp ole float %i.al, f0x3C93E5EB
  %.sroa.speculated.i.i = select i1 %i.bu, float %i.am, float %i.bt
  %i.bv = tail call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i, float %i.a)
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.bw = fmul float %i.a, 4.500000e+00
  %i.bx = insertelement <2 x float> poison, float %i.a, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, <float -4.000000e+00, float 1.000000e+00> ; 3 uses
  %i.ca = fcmp olt <2 x float> %i.bz, splat (float f0x00800000)
  %2 = bitcast <2 x float> %i.bz to <2 x i32>
  %3 = select <2 x i1> %i.ca, <2 x i32> splat (i32 8388608), <2 x i32> %2 ; 2 uses
  %4 = lshr <2 x i32> %3, splat (i32 23)
  %i.cb = and <2 x i32> %4, splat (i32 255)
  %5 = add nsw <2 x i32> %i.cb, splat (i32 -127)
  %6 = sitofp <2 x i32> %5 to <2 x float>
  %7 = extractelement <2 x float> %i.bz, i64 0
  %8 = fcmp oeq float %7, 0.000000e+00
  %9 = and <2 x i32> %3, splat (i32 8388607)
  %10 = or disjoint <2 x i32> %9, splat (i32 1065353216)
  %11 = bitcast <2 x i32> %10 to <2 x float>
  %12 = fadd <2 x float> %11, splat (float -1.000000e+00) ; 3 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 4 uses
  %14 = tail call noundef float @llvm.fma.f32(float %13, float f0x3D3BF404, float f0xBE471796)
  %15 = tail call noundef float @llvm.fma.f32(float %14, float %13, float f0x3ED4B281)
  %16 = tail call noundef float @llvm.fma.f32(float %15, float %13, float f0xBF356C3D)
  %17 = tail call noundef float @llvm.fma.f32(float %16, float %13, float f0x3FB88DC0)
  %i.cc = extractelement <2 x float> %12, i64 1   ; 4 uses
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float f0x3D3BF404, float f0xBE471796)
  %i.ce = tail call noundef float @llvm.fma.f32(float %i.cd, float %i.cc, float f0x3ED4B281)
  %i.cf = tail call noundef float @llvm.fma.f32(float %i.ce, float %i.cc, float f0xBF356C3D)
  %i.cg = tail call noundef float @llvm.fma.f32(float %i.cf, float %i.cc, float f0x3FB88DC0)
  %i.ch = insertelement <2 x float> poison, float %17, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fmul <2 x float> %12, %i.ci
  %i.ck = fadd <2 x float> %i.cj, %6
  %i.cl = fmul <2 x float> %i.ck, splat (float 4.500000e-01) ; 3 uses
  %i.cm = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.cl) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.cl, %i.cm
  %i.cn = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.co = tail call noundef float @llvm.fma.f32(float %i.cn, float f0x39222A61, float f0x3AAF931A)
  %i.cp = tail call noundef float @llvm.fma.f32(float %i.co, float %i.cn, float 9.618040e-03)
  %i.cq = tail call noundef float @llvm.fma.f32(float %i.cp, float %i.cn, float f0x3D63578A)
  %i.cr = tail call noundef float @llvm.fma.f32(float %i.cq, float %i.cn, float f0x3E75FDF0)
  %i.cs = tail call noundef float @llvm.fma.f32(float %i.cr, float %i.cn, float f0x3F317218)
  %i.ct = tail call noundef float @llvm.fma.f32(float %i.cs, float %i.cn, float 1.000000e+00)
  %i.cu = fptosi <2 x float> %i.cm to <2 x i32>
  %i.cv = shl <2 x i32> %i.cu, splat (i32 23)
  %i.cw = add <2 x i32> %i.cv, splat (i32 1065353216) ; 2 uses
  %bc = bitcast <2 x i32> %i.cw to <2 x float>
  %i.cx = extractelement <2 x float> %bc, i64 0
  %i.cy = fmul float %i.ct, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.da = fmul float %i.cz, -2.500000e-01
  %i.db = select i1 %8, float f0x3CCB5C20, float %i.da
  %foldExtExtBinop32 = fsub <2 x float> %i.cl, %i.cm
  %i.dc = extractelement <2 x float> %foldExtExtBinop32, i64 1 ; 6 uses
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.dc, float f0x39222A61, float f0x3AAF931A)
  %i.de = tail call noundef float @llvm.fma.f32(float %i.dd, float %i.dc, float 9.618040e-03)
  %i.df = tail call noundef float @llvm.fma.f32(float %i.de, float %i.dc, float f0x3D63578A)
  %i.dg = tail call noundef float @llvm.fma.f32(float %i.df, float %i.dc, float f0x3E75FDF0)
  %i.dh = tail call noundef float @llvm.fma.f32(float %i.dg, float %i.dc, float f0x3F317218)
  %i.di = tail call noundef float @llvm.fma.f32(float %i.dh, float %i.dc, float 1.000000e+00)
  %bc34 = bitcast <2 x i32> %i.cw to <2 x float>
  %i.dj = extractelement <2 x float> %bc34, i64 1
  %i.dk = fmul float %i.di, %i.dj
  %i.dl = fcmp oeq float %i.a, 0.000000e+00
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dk, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.dn = select i1 %i.dl, float f0xBDCB5C20, float %i.dm
  %i.do = fcmp olt float %i.a, f0xBB93E5EB
  %i.dp = fcmp ole float %i.a, f0x3C93E5EB
  %.sroa.speculated8.i = select i1 %i.dp, float %i.bw, float %i.dn
  %.sroa.speculated.i17 = select i1 %i.do, float %i.db, float %.sroa.speculated8.i
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.dq = fcmp olt float %i.a, 0.000000e+00
  %..i.i = select i1 %i.dq, float 0.000000e+00, float %i.a ; 3 uses
  %i.dr = fcmp olt float %..i.i, f0x00800000
  %i.ds = bitcast float %..i.i to i32
  %i.dt = select i1 %i.dr, i32 8388608, i32 %i.ds ; 2 uses
  %i.du = lshr i32 %i.dt, 23
  %i.dv = and i32 %i.du, 255
  %i.dw = add nsw i32 %i.dv, -127
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = and i32 %i.dt, 8388607
  %i.dz = or disjoint i32 %i.dy, 1065353216
  %i.ea = bitcast i32 %i.dz to float
  %i.eb = fadd float %i.ea, -1.000000e+00         ; 5 uses
  %i.ec = tail call noundef float @llvm.fma.f32(float %i.eb, float f0x3D3BF404, float f0xBE471796)
  %i.ed = tail call noundef float @llvm.fma.f32(float %i.ec, float %i.eb, float f0x3ED4B281)
  %i.ee = tail call noundef float @llvm.fma.f32(float %i.ed, float %i.eb, float f0xBF356C3D)
  %i.ef = tail call noundef float @llvm.fma.f32(float %i.ee, float %i.eb, float f0x3FB88DC0)
  %i.eg = fmul float %i.eb, %i.ef
  %i.eh = fadd float %i.eg, %i.dx
  %i.ei = fmul float %i.eh, f0x3EE8BA2E           ; 2 uses
  %i.ej = tail call noundef float @llvm.rint.f32(float %i.ei) ; 2 uses
  %i.ek = fsub float %i.ei, %i.ej                 ; 6 uses
  %i.el = tail call noundef float @llvm.fma.f32(float %i.ek, float f0x39222A61, float f0x3AAF931A)
  %i.em = tail call noundef float @llvm.fma.f32(float %i.el, float %i.ek, float 9.618040e-03)
  %i.en = tail call noundef float @llvm.fma.f32(float %i.em, float %i.ek, float f0x3D63578A)
  %i.eo = tail call noundef float @llvm.fma.f32(float %i.en, float %i.ek, float f0x3E75FDF0)
  %i.ep = tail call noundef float @llvm.fma.f32(float %i.eo, float %i.ek, float f0x3F317218)
  %i.eq = tail call noundef float @llvm.fma.f32(float %i.ep, float %i.ek, float 1.000000e+00)
  %i.er = fptosi float %i.ej to i32
  %i.es = shl i32 %i.er, 23
  %i.et = add i32 %i.es, 1065353216
  %i.eu = bitcast i32 %i.et to float
  %i.ev = fmul float %i.eq, %i.eu
  %i.ew = fcmp oeq float %..i.i, 0.000000e+00
  %.sroa.speculated.i.i18 = select i1 %i.ew, float 0.000000e+00, float %i.ev
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.ex = fcmp olt float %i.a, 0.000000e+00
  %..i.i19 = select i1 %i.ex, float 0.000000e+00, float %i.a ; 3 uses
  %i.ey = fcmp olt float %..i.i19, f0x00800000
  %i.ez = bitcast float %..i.i19 to i32
  %i.fa = select i1 %i.ey, i32 8388608, i32 %i.ez ; 2 uses
  %i.fb = lshr i32 %i.fa, 23
  %i.fc = and i32 %i.fb, 255
  %i.fd = add nsw i32 %i.fc, -127
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = and i32 %i.fa, 8388607
  %i.fg = or disjoint i32 %i.ff, 1065353216
  %i.fh = bitcast i32 %i.fg to float
  %i.fi = fadd float %i.fh, -1.000000e+00         ; 5 uses
  %i.fj = tail call noundef float @llvm.fma.f32(float %i.fi, float f0x3D3BF404, float f0xBE471796)
  %i.fk = tail call noundef float @llvm.fma.f32(float %i.fj, float %i.fi, float f0x3ED4B281)
  %i.fl = tail call noundef float @llvm.fma.f32(float %i.fk, float %i.fi, float f0xBF356C3D)
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fl, float %i.fi, float f0x3FB88DC0)
  %i.fn = fmul float %i.fi, %i.fm
  %i.fo = fadd float %i.fn, %i.fe
  %i.fp = fmul float %i.fo, f0x3EB6DB6E           ; 2 uses
  %i.fq = tail call noundef float @llvm.rint.f32(float %i.fp) ; 2 uses
  %i.fr = fsub float %i.fp, %i.fq                 ; 6 uses
  %i.fs = tail call noundef float @llvm.fma.f32(float %i.fr, float f0x39222A61, float f0x3AAF931A)
  %i.ft = tail call noundef float @llvm.fma.f32(float %i.fs, float %i.fr, float 9.618040e-03)
  %i.fu = tail call noundef float @llvm.fma.f32(float %i.ft, float %i.fr, float f0x3D63578A)
  %i.fv = tail call noundef float @llvm.fma.f32(float %i.fu, float %i.fr, float f0x3E75FDF0)
  %i.fw = tail call noundef float @llvm.fma.f32(float %i.fv, float %i.fr, float f0x3F317218)
  %i.fx = tail call noundef float @llvm.fma.f32(float %i.fw, float %i.fr, float 1.000000e+00)
  %i.fy = fptosi float %i.fq to i32
  %i.fz = shl i32 %i.fy, 23
  %i.ga = add i32 %i.fz, 1065353216
  %i.gb = bitcast i32 %i.ga to float
  %i.gc = fmul float %i.fx, %i.gb
  %i.gd = fcmp oeq float %..i.i19, 0.000000e+00
  %.sroa.speculated.i.i20 = select i1 %i.gd, float 0.000000e+00, float %i.gc
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.ge = fmul float %i.a, 4.000000e+00
  %i.gf = fcmp olt float %i.a, f0x00800000
  %i.gg = bitcast float %i.a to i32
  %i.gh = select i1 %i.gf, i32 8388608, i32 %i.gg ; 2 uses
  %i.gi = lshr i32 %i.gh, 23
  %i.gj = and i32 %i.gi, 255
  %i.gk = add nsw i32 %i.gj, -127
  %i.gl = sitofp i32 %i.gk to float
  %i.gm = and i32 %i.gh, 8388607
  %i.gn = or disjoint i32 %i.gm, 1065353216
  %i.go = bitcast i32 %i.gn to float
  %i.gp = fadd float %i.go, -1.000000e+00         ; 5 uses
  %i.gq = tail call noundef float @llvm.fma.f32(float %i.gp, float f0x3D3BF404, float f0xBE471796)
  %i.gr = tail call noundef float @llvm.fma.f32(float %i.gq, float %i.gp, float f0x3ED4B281)
  %i.gs = tail call noundef float @llvm.fma.f32(float %i.gr, float %i.gp, float f0xBF356C3D)
  %i.gt = tail call noundef float @llvm.fma.f32(float %i.gs, float %i.gp, float f0x3FB88DC0)
  %i.gu = fmul float %i.gp, %i.gt
  %i.gv = fadd float %i.gu, %i.gl
  %i.gw = fmul float %i.gv, 4.500000e-01          ; 2 uses
  %i.gx = tail call noundef float @llvm.rint.f32(float %i.gw) ; 2 uses
  %i.gy = fsub float %i.gw, %i.gx                 ; 6 uses
  %i.gz = tail call noundef float @llvm.fma.f32(float %i.gy, float f0x39222A61, float f0x3AAF931A)
  %i.ha = tail call noundef float @llvm.fma.f32(float %i.gz, float %i.gy, float 9.618040e-03)
  %i.hb = tail call noundef float @llvm.fma.f32(float %i.ha, float %i.gy, float f0x3D63578A)
  %i.hc = tail call noundef float @llvm.fma.f32(float %i.hb, float %i.gy, float f0x3E75FDF0)
  %i.hd = tail call noundef float @llvm.fma.f32(float %i.hc, float %i.gy, float f0x3F317218)
  %i.he = tail call noundef float @llvm.fma.f32(float %i.hd, float %i.gy, float 1.000000e+00)
  %i.hf = fptosi float %i.gx to i32
  %i.hg = shl i32 %i.hf, 23
  %i.hh = add i32 %i.hg, 1065353216
  %i.hi = bitcast i32 %i.hh to float
  %i.hj = fmul float %i.he, %i.hi
  %i.hk = fcmp oeq float %i.a, 0.000000e+00
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hj, float 1.111500e+00, float -1.115000e-01)
  %i.hm = select i1 %i.hk, float -1.115000e-01, float %i.hl
  %i.hn = fcmp ole float %i.a, 2.282500e-02
  %.sroa.speculated.i21 = select i1 %i.hn, float %i.ge, float %i.hm
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.ho = tail call noundef float @log10f(float noundef %i.a) #47
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float 5.000000e-01, float 1.000000e+00)
  %i.hq = fcmp oge float %i.a, f0x3C23D70A
  %.sroa.speculated.i22 = select i1 %i.hq, float %i.hp, float 0.000000e+00
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.hr = tail call noundef float @log10f(float noundef %i.a) #47
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float 4.000000e-01, float 1.000000e+00)
  %i.ht = fcmp oge float %i.a, f0x3B4F3E37
  %.sroa.speculated.i23 = select i1 %i.ht, float %i.hs, float 0.000000e+00
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.hu = tail call noundef float @llvm.fabs.f32(float %i.a) ; 3 uses
  %i.hv = fmul float %i.a, 1.292000e+01
  %i.hw = fcmp olt float %i.hu, f0x00800000
  %i.hx = bitcast float %i.hu to i32
  %i.hy = select i1 %i.hw, i32 8388608, i32 %i.hx ; 2 uses
  %i.hz = lshr i32 %i.hy, 23
  %i.ia = add nsw i32 %i.hz, -127
  %i.ib = sitofp i32 %i.ia to float
  %i.ic = and i32 %i.hy, 8388607
  %i.id = or disjoint i32 %i.ic, 1065353216
  %i.ie = bitcast i32 %i.id to float
  %i.if = fadd float %i.ie, -1.000000e+00         ; 5 uses
  %i.ig = tail call noundef float @llvm.fma.f32(float %i.if, float f0x3D3BF404, float f0xBE471796)
  %i.ih = tail call noundef float @llvm.fma.f32(float %i.ig, float %i.if, float f0x3ED4B281)
  %i.ii = tail call noundef float @llvm.fma.f32(float %i.ih, float %i.if, float f0xBF356C3D)
  %i.ij = tail call noundef float @llvm.fma.f32(float %i.ii, float %i.if, float f0x3FB88DC0)
  %i.ik = fmul float %i.if, %i.ij
  %i.il = fadd float %i.ik, %i.ib
  %i.im = fmul float %i.il, f0x3ED55555           ; 2 uses
  %i.in = tail call noundef float @llvm.rint.f32(float %i.im) ; 2 uses
  %i.io = fsub float %i.im, %i.in                 ; 6 uses
  %i.ip = tail call noundef float @llvm.fma.f32(float %i.io, float f0x39222A61, float f0x3AAF931A)
  %i.iq = tail call noundef float @llvm.fma.f32(float %i.ip, float %i.io, float 9.618040e-03)
  %i.ir = tail call noundef float @llvm.fma.f32(float %i.iq, float %i.io, float f0x3D63578A)
  %i.is = tail call noundef float @llvm.fma.f32(float %i.ir, float %i.io, float f0x3E75FDF0)
  %i.it = tail call noundef float @llvm.fma.f32(float %i.is, float %i.io, float f0x3F317218)
  %i.iu = tail call noundef float @llvm.fma.f32(float %i.it, float %i.io, float 1.000000e+00)
  %i.iv = fptosi float %i.in to i32
  %i.iw = shl i32 %i.iv, 23
  %i.ix = add i32 %i.iw, 1065353216
  %i.iy = bitcast i32 %i.ix to float
  %i.iz = fmul float %i.iu, %i.iy
  %i.ja = fcmp oeq float %i.a, 0.000000e+00
  %i.jb = tail call float @llvm.fmuladd.f32(float %i.iz, float 1.055000e+00, float -5.500000e-02)
  %i.jc = select i1 %i.ja, float -5.500000e-02, float %i.jb
  %i.jd = tail call noundef float @llvm.copysign.f32(float %i.jc, float %i.a)
  %i.je = fcmp ole float %i.hu, 3.130800e-03
  %.sroa.speculated.i24 = select i1 %i.je, float %i.hv, float %i.jd
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.jf = fmul float %i.a, 2.030000e-02           ; 2 uses
  %i.jg = fcmp olt float %i.jf, 0.000000e+00
  %..i.i25 = select i1 %i.jg, float 0.000000e+00, float %i.jf ; 3 uses
  %i.jh = fcmp olt float %..i.i25, f0x00800000
  %i.ji = bitcast float %..i.i25 to i32
  %i.jj = select i1 %i.jh, i32 8388608, i32 %i.ji ; 2 uses
  %i.jk = lshr i32 %i.jj, 23
  %i.jl = and i32 %i.jk, 255
end_hunk_1
begin_hunk_2_@_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE11EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_:bb.a
  %i.x = insertelement <2 x float> %i.w, float %i.v, i64 1
  %i.y = fmul <2 x float> %i.i, %i.x
  %i.z = fadd <2 x float> %i.y, %i.q
  %i.aa = fmul <2 x float> %i.z, splat (float 4.500000e-01) ; 3 uses
  %i.ab = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.aa) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.aa, %i.ab
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ad = tail call noundef float @llvm.fma.f32(float %i.ac, float f0x39222A61, float f0x3AAF931A)
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float %i.ac, float 9.618040e-03)
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float %i.ac, float f0x3D63578A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ac, float f0x3E75FDF0)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ac, float f0x3F317218)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ac, float 1.000000e+00)
  %i.aj = fmul <2 x float> %i.b, splat (float 4.500000e+00)
  %foldExtExtBinop7 = fsub <2 x float> %i.aa, %i.ab
  %i.ak = extractelement <2 x float> %foldExtExtBinop7, i64 1 ; 6 uses
  %i.al = tail call noundef float @llvm.fma.f32(float %i.ak, float f0x39222A61, float f0x3AAF931A)
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float %i.ak, float 9.618040e-03)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.ak, float f0x3D63578A)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.ak, float f0x3E75FDF0)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.ak, float f0x3F317218)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.ak, float 1.000000e+00)
  %i.ar = fptosi <2 x float> %i.ab to <2 x i32>
  %i.as = shl <2 x i32> %i.ar, splat (i32 23)
  %i.at = add <2 x i32> %i.as, splat (i32 1065353216)
  %i.au = bitcast <2 x i32> %i.at to <2 x float>
  %i.av = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.aq, i64 1
  %i.ax = fmul <2 x float> %i.aw, %i.au
  %i.ay = fcmp oeq <2 x float> %i.a, zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.ba = select <2 x i1> %i.ay, <2 x float> splat (float f0xBDCB5C20), <2 x float> %i.az
  %i.bb = fcmp ole <2 x float> %i.b, splat (float f0x3C93E5EB)
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.aj, <2 x float> %i.ba
  %i.bd = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.bc, <2 x float> %i.a)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !76 ; 3 uses
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf) ; 4 uses
  %i.bh = fmul float %i.bg, 4.500000e+00
  %i.bi = fcmp olt float %i.bg, f0x00800000
  %i.bj = bitcast float %i.bg to i32
  %i.bk = select i1 %i.bi, i32 8388608, i32 %i.bj ; 2 uses
  %i.bl = lshr i32 %i.bk, 23
  %i.bm = add nsw i32 %i.bl, -127
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = and i32 %i.bk, 8388607
  %i.bp = or disjoint i32 %i.bo, 1065353216
  %i.bq = bitcast i32 %i.bp to float
  %i.br = fadd float %i.bq, -1.000000e+00         ; 5 uses
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float f0x3D3BF404, float f0xBE471796)
  %i.bt = tail call noundef float @llvm.fma.f32(float %i.bs, float %i.br, float f0x3ED4B281)
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.br, float f0xBF356C3D)
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.bu, float %i.br, float f0x3FB88DC0)
  %i.bw = fmul float %i.br, %i.bv
  %i.bx = fadd float %i.bw, %i.bn
  %i.by = fmul float %i.bx, 4.500000e-01          ; 2 uses
  %i.bz = tail call noundef float @llvm.rint.f32(float %i.by) ; 2 uses
  %i.ca = fsub float %i.by, %i.bz                 ; 6 uses
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float f0x39222A61, float f0x3AAF931A)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.ca, float 9.618040e-03)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.ca, float f0x3D63578A)
  %i.ce = tail call noundef float @llvm.fma.f32(float %i.cd, float %i.ca, float f0x3E75FDF0)
  %i.cf = tail call noundef float @llvm.fma.f32(float %i.ce, float %i.ca, float f0x3F317218)
  %i.cg = tail call noundef float @llvm.fma.f32(float %i.cf, float %i.ca, float 1.000000e+00)
  %i.ch = fptosi float %i.bz to i32
  %i.ci = shl i32 %i.ch, 23
  %i.cj = add i32 %i.ci, 1065353216
  %i.ck = bitcast i32 %i.cj to float
  %i.cl = fmul float %i.cg, %i.ck
  %i.cm = fcmp oeq float %i.bf, 0.000000e+00
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cl, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.co = select i1 %i.cm, float f0xBDCB5C20, float %i.cn
  %i.cp = fcmp ole float %i.bg, f0x3C93E5EB
  %.sroa.speculated.i.i.i.i4 = select i1 %i.cp, float %i.bh, float %i.co
  %i.cq = tail call noundef float @llvm.copysign.f32(float %.sroa.speculated.i.i.i.i4, float %i.bf)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.bd, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cq, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE12EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 7 uses
  %i.b = fmul <2 x float> %i.a, splat (float -4.000000e+00) ; 3 uses
  %i.c = fcmp olt <2 x float> %i.b, splat (float f0x00800000)
  %i.d = bitcast <2 x float> %i.b to <2 x i32>
  %i.e = select <2 x i1> %i.c, <2 x i32> splat (i32 8388608), <2 x i32> %i.d ; 2 uses
  %i.f = and <2 x i32> %i.e, splat (i32 8388607)
  %i.g = or disjoint <2 x i32> %i.f, splat (i32 1065353216)
  %i.h = bitcast <2 x i32> %i.g to <2 x float>
  %i.i = fadd <2 x float> %i.h, splat (float -1.000000e+00) ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0   ; 4 uses
  %i.k = tail call noundef float @llvm.fma.f32(float %i.j, float f0x3D3BF404, float f0xBE471796)
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float %i.j, float f0x3ED4B281)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.j, float f0xBF356C3D)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.j, float f0x3FB88DC0)
  %i.o = lshr <2 x i32> %i.e, splat (i32 23)
  %i.p = and <2 x i32> %i.o, splat (i32 255)
  %i.q = add nsw <2 x i32> %i.p, splat (i32 -127)
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = extractelement <2 x float> %i.i, i64 1   ; 4 uses
  %i.t = tail call noundef float @llvm.fma.f32(float %i.s, float f0x3D3BF404, float f0xBE471796)
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float %i.s, float f0x3ED4B281)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.s, float f0xBF356C3D)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.s, float f0x3FB88DC0)
  %i.x = insertelement <2 x float> poison, float %i.n, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.w, i64 1
  %i.z = fmul <2 x float> %i.i, %i.y
  %i.aa = fadd <2 x float> %i.z, %i.r
  %i.ab = fmul <2 x float> %i.aa, splat (float 4.500000e-01) ; 3 uses
  %i.ac = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ab) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ab, %i.ac
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.ae = tail call noundef float @llvm.fma.f32(float %i.ad, float f0x39222A61, float f0x3AAF931A)
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float %i.ad, float 9.618040e-03)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ad, float f0x3D63578A)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ad, float f0x3E75FDF0)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ad, float f0x3F317218)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ad, float 1.000000e+00)
  %i.ak = fcmp olt <2 x float> %i.a, splat (float f0x00800000)
  %i.al = bitcast <2 x float> %i.a to <2 x i32>
  %i.am = select <2 x i1> %i.ak, <2 x i32> splat (i32 8388608), <2 x i32> %i.al ; 2 uses
  %i.an = and <2 x i32> %i.am, splat (i32 8388607)
  %i.ao = or disjoint <2 x i32> %i.an, splat (i32 1065353216)
  %i.ap = bitcast <2 x i32> %i.ao to <2 x float>
  %i.aq = fadd <2 x float> %i.ap, splat (float -1.000000e+00) ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0 ; 4 uses
  %i.as = tail call noundef float @llvm.fma.f32(float %i.ar, float f0x3D3BF404, float f0xBE471796)
  %i.at = tail call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float f0x3ED4B281)
  %i.au = tail call noundef float @llvm.fma.f32(float %i.at, float %i.ar, float f0xBF356C3D)
  %i.av = tail call noundef float @llvm.fma.f32(float %i.au, float %i.ar, float f0x3FB88DC0)
  %i.aw = lshr <2 x i32> %i.am, splat (i32 23)
  %i.ax = and <2 x i32> %i.aw, splat (i32 255)
  %i.ay = add nsw <2 x i32> %i.ax, splat (i32 -127)
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  %i.ba = extractelement <2 x float> %i.aq, i64 1 ; 4 uses
  %i.bb = tail call noundef float @llvm.fma.f32(float %i.ba, float f0x3D3BF404, float f0xBE471796)
  %i.bc = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.ba, float f0x3ED4B281)
  %i.bd = tail call noundef float @llvm.fma.f32(float %i.bc, float %i.ba, float f0xBF356C3D)
  %i.be = tail call noundef float @llvm.fma.f32(float %i.bd, float %i.ba, float f0x3FB88DC0)
  %i.bf = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fmul <2 x float> %i.aq, %i.bg
  %i.bi = fadd <2 x float> %i.bh, %i.az
  %i.bj = fmul <2 x float> %i.bi, splat (float 4.500000e-01) ; 3 uses
  %i.bk = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.bj) ; 3 uses
  %foldExtExtBinop9 = fsub <2 x float> %i.bj, %i.bk
  %i.bl = extractelement <2 x float> %foldExtExtBinop9, i64 0 ; 6 uses
  %i.bm = tail call noundef float @llvm.fma.f32(float %i.bl, float f0x39222A61, float f0x3AAF931A)
  %i.bn = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bl, float 9.618040e-03)
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bn, float %i.bl, float f0x3D63578A)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float %i.bl, float f0x3E75FDF0)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bl, float f0x3F317218)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bl, float 1.000000e+00)
  %foldExtExtBinop11 = fsub <2 x float> %i.ab, %i.ac
  %i.bs = extractelement <2 x float> %foldExtExtBinop11, i64 1 ; 6 uses
  %i.bt = tail call noundef float @llvm.fma.f32(float %i.bs, float f0x39222A61, float f0x3AAF931A)
  %i.bu = tail call noundef float @llvm.fma.f32(float %i.bt, float %i.bs, float 9.618040e-03)
  %i.bv = tail call noundef float @llvm.fma.f32(float %i.bu, float %i.bs, float f0x3D63578A)
  %i.bw = tail call noundef float @llvm.fma.f32(float %i.bv, float %i.bs, float f0x3E75FDF0)
  %i.bx = tail call noundef float @llvm.fma.f32(float %i.bw, float %i.bs, float f0x3F317218)
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float %i.bs, float 1.000000e+00)
  %i.bz = fptosi <2 x float> %i.ac to <2 x i32>
  %i.ca = shl <2 x i32> %i.bz, splat (i32 23)
  %i.cb = add <2 x i32> %i.ca, splat (i32 1065353216)
  %i.cc = bitcast <2 x i32> %i.cb to <2 x float>
  %i.cd = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 1
  %i.cf = fmul <2 x float> %i.ce, %i.cc
  %i.cg = fcmp oeq <2 x float> %i.b, zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.ci = fmul <2 x float> %i.ch, splat (float -2.500000e-01)
  %i.cj = select <2 x i1> %i.cg, <2 x float> splat (float f0x3CCB5C20), <2 x float> %i.ci
  %i.ck = fmul <2 x float> %i.a, splat (float 4.500000e+00)
  %foldExtExtBinop13 = fsub <2 x float> %i.bj, %i.bk
  %i.cl = extractelement <2 x float> %foldExtExtBinop13, i64 1 ; 6 uses
  %i.cm = tail call noundef float @llvm.fma.f32(float %i.cl, float f0x39222A61, float f0x3AAF931A)
  %i.cn = tail call noundef float @llvm.fma.f32(float %i.cm, float %i.cl, float 9.618040e-03)
  %i.co = tail call noundef float @llvm.fma.f32(float %i.cn, float %i.cl, float f0x3D63578A)
  %i.cp = tail call noundef float @llvm.fma.f32(float %i.co, float %i.cl, float f0x3E75FDF0)
  %i.cq = tail call noundef float @llvm.fma.f32(float %i.cp, float %i.cl, float f0x3F317218)
  %i.cr = tail call noundef float @llvm.fma.f32(float %i.cq, float %i.cl, float 1.000000e+00)
  %i.cs = fptosi <2 x float> %i.bk to <2 x i32>
  %i.ct = shl <2 x i32> %i.cs, splat (i32 23)
  %i.cu = add <2 x i32> %i.ct, splat (i32 1065353216)
  %i.cv = bitcast <2 x i32> %i.cu to <2 x float>
  %i.cw = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cr, i64 1
  %i.cy = fmul <2 x float> %i.cx, %i.cv
  %i.cz = fcmp oeq <2 x float> %i.a, zeroinitializer
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> splat (float f0x3F8CB5C2), <2 x float> splat (float f0xBDCB5C20))
  %i.db = select <2 x i1> %i.cz, <2 x float> splat (float f0xBDCB5C20), <2 x float> %i.da
  %i.dc = fcmp olt <2 x float> %i.a, splat (float f0xBB93E5EB)
  %i.dd = fcmp ole <2 x float> %i.a, splat (float f0x3C93E5EB)
  %i.de = select <2 x i1> %i.dd, <2 x float> %i.ck, <2 x float> %i.db
  %i.df = select <2 x i1> %i.dc, <2 x float> %i.cj, <2 x float> %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !76 ; 5 uses
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.dj, <float -4.000000e+00, float 1.000000e+00> ; 3 uses
  %i.dl = fcmp olt <2 x float> %i.dk, splat (float f0x00800000)
  %i.dm = bitcast <2 x float> %i.dk to <2 x i32>
  %i.dn = select <2 x i1> %i.dl, <2 x i32> splat (i32 8388608), <2 x i32> %i.dm ; 2 uses
  %1 = lshr <2 x i32> %i.dn, splat (i32 23)
  %2 = and <2 x i32> %1, splat (i32 255)
  %3 = add nsw <2 x i32> %2, splat (i32 -127)
  %4 = sitofp <2 x i32> %3 to <2 x float>
  %i.do = extractelement <2 x float> %i.dk, i64 0
  %5 = fcmp oeq float %i.do, 0.000000e+00
  %6 = fmul float %i.dh, 4.500000e+00
  %7 = and <2 x i32> %i.dn, splat (i32 8388607)
  %8 = or disjoint <2 x i32> %7, splat (i32 1065353216)
  %9 = bitcast <2 x i32> %8 to <2 x float>
  %10 = fadd <2 x float> %9, splat (float -1.000000e+00) ; 3 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 4 uses
  %12 = tail call noundef float @llvm.fma.f32(float %11, float f0x3D3BF404, float f0xBE471796)
  %13 = tail call noundef float @llvm.fma.f32(float %12, float %11, float f0x3ED4B281)
  %i.dp = tail call noundef float @llvm.fma.f32(float %13, float %11, float f0xBF356C3D)
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.dp, float %11, float f0x3FB88DC0)
  %14 = extractelement <2 x float> %10, i64 1     ; 4 uses
  %i.dr = tail call noundef float @llvm.fma.f32(float %14, float f0x3D3BF404, float f0xBE471796)
  %15 = tail call noundef float @llvm.fma.f32(float %i.dr, float %14, float f0x3ED4B281)
  %16 = tail call noundef float @llvm.fma.f32(float %15, float %14, float f0xBF356C3D)
  %17 = tail call noundef float @llvm.fma.f32(float %16, float %14, float f0x3FB88DC0)
  %18 = insertelement <2 x float> poison, float %i.dq, i64 0
  %19 = insertelement <2 x float> %18, float %17, i64 1
  %20 = fmul <2 x float> %10, %19
  %21 = fadd <2 x float> %20, %4
  %i.ds = fmul <2 x float> %21, splat (float 4.500000e-01) ; 3 uses
  %i.dt = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ds) ; 3 uses
  %foldExtExtBinop15 = fsub <2 x float> %i.ds, %i.dt
  %i.du = extractelement <2 x float> %foldExtExtBinop15, i64 0 ; 6 uses
  %i.dv = tail call noundef float @llvm.fma.f32(float %i.du, float f0x39222A61, float f0x3AAF931A)
  %i.dw = tail call noundef float @llvm.fma.f32(float %i.dv, float %i.du, float 9.618040e-03)
  %i.dx = tail call noundef float @llvm.fma.f32(float %i.dw, float %i.du, float f0x3D63578A)
  %i.dy = tail call noundef float @llvm.fma.f32(float %i.dx, float %i.du, float f0x3E75FDF0)
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %i.du, float f0x3F317218)
  %i.ea = tail call noundef float @llvm.fma.f32(float %i.dz, float %i.du, float 1.000000e+00)
  %i.eb = fptosi <2 x float> %i.dt to <2 x i32>
  %i.ec = shl <2 x i32> %i.eb, splat (i32 23)
  %i.ed = add <2 x i32> %i.ec, splat (i32 1065353216) ; 2 uses
  %bc = bitcast <2 x i32> %i.ed to <2 x float>
  %i.ee = extractelement <2 x float> %bc, i64 0
  %i.ef = fmul float %i.ea, %i.ee
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.eh = fmul float %i.eg, -2.500000e-01
  %i.ei = select i1 %5, float f0x3CCB5C20, float %i.eh
  %foldExtExtBinop17 = fsub <2 x float> %i.ds, %i.dt
  %i.ej = extractelement <2 x float> %foldExtExtBinop17, i64 1 ; 6 uses
  %i.ek = tail call noundef float @llvm.fma.f32(float %i.ej, float f0x39222A61, float f0x3AAF931A)
  %i.el = tail call noundef float @llvm.fma.f32(float %i.ek, float %i.ej, float 9.618040e-03)
  %i.em = tail call noundef float @llvm.fma.f32(float %i.el, float %i.ej, float f0x3D63578A)
  %i.en = tail call noundef float @llvm.fma.f32(float %i.em, float %i.ej, float f0x3E75FDF0)
  %i.eo = tail call noundef float @llvm.fma.f32(float %i.en, float %i.ej, float f0x3F317218)
  %i.ep = tail call noundef float @llvm.fma.f32(float %i.eo, float %i.ej, float 1.000000e+00)
  %bc19 = bitcast <2 x i32> %i.ed to <2 x float>
  %i.eq = extractelement <2 x float> %bc19, i64 1
  %i.er = fmul float %i.ep, %i.eq
  %i.es = fcmp oeq float %i.dh, 0.000000e+00
  %i.et = tail call float @llvm.fmuladd.f32(float %i.er, float f0x3F8CB5C2, float f0xBDCB5C20)
  %i.eu = select i1 %i.es, float f0xBDCB5C20, float %i.et
  %i.ev = fcmp olt float %i.dh, f0xBB93E5EB
  %i.ew = fcmp ole float %i.dh, f0x3C93E5EB
  %.sroa.speculated8.i.i.i5 = select i1 %i.ew, float %6, float %i.eu
  %.sroa.speculated.i.i.i6 = select i1 %i.ev, float %i.ei, float %.sroa.speculated8.i.i.i5
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.df, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.speculated.i.i.i6, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE4EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 2 uses
  %i.b = fcmp olt <2 x float> %i.a, zeroinitializer
  %i.c = select <2 x i1> %i.b, <2 x float> zeroinitializer, <2 x float> %i.a ; 3 uses
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x00800000)
  %i.e = bitcast <2 x float> %i.c to <2 x i32>
  %i.f = select <2 x i1> %i.d, <2 x i32> splat (i32 8388608), <2 x i32> %i.e ; 2 uses
  %i.g = and <2 x i32> %i.f, splat (i32 8388607)
  %i.h = or disjoint <2 x i32> %i.g, splat (i32 1065353216)
  %i.i = bitcast <2 x i32> %i.h to <2 x float>
  %i.j = fadd <2 x float> %i.i, splat (float -1.000000e+00) ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0x3D3BF404, float f0xBE471796)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.k, float f0x3ED4B281)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.k, float f0xBF356C3D)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.k, float f0x3FB88DC0)
  %i.p = lshr <2 x i32> %i.f, splat (i32 23)
  %i.q = and <2 x i32> %i.p, splat (i32 255)
  %i.r = add nsw <2 x i32> %i.q, splat (i32 -127)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float f0x3D3BF404, float f0xBE471796)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.t, float f0x3ED4B281)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.t, float f0xBF356C3D)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.t, float f0x3FB88DC0)
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = fmul <2 x float> %i.j, %i.z
  %i.ab = fadd <2 x float> %i.aa, %i.s
  %i.ac = fmul <2 x float> %i.ab, splat (float f0x3EE8BA2E) ; 3 uses
  %i.ad = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ac) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ac, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float f0x39222A61, float f0x3AAF931A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ae, float 9.618040e-03)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ae, float f0x3D63578A)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ae, float f0x3E75FDF0)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ae, float f0x3F317218)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.ae, float 1.000000e+00)
  %foldExtExtBinop9 = fsub <2 x float> %i.ac, %i.ad
  %i.al = extractelement <2 x float> %foldExtExtBinop9, i64 1 ; 6 uses
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float f0x39222A61, float f0x3AAF931A)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.al, float 9.618040e-03)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.al, float f0x3D63578A)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.al, float f0x3E75FDF0)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.al, float f0x3F317218)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.aq, float %i.al, float 1.000000e+00)
  %i.as = fptosi <2 x float> %i.ad to <2 x i32>
  %i.at = shl <2 x i32> %i.as, splat (i32 23)
  %i.au = add <2 x i32> %i.at, splat (i32 1065353216)
  %i.av = bitcast <2 x i32> %i.au to <2 x float>
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ar, i64 1
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fcmp oeq <2 x float> %i.c, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !76 ; 2 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %..i.i.i.i5 = select i1 %i.bd, float 0.000000e+00, float %i.bc ; 3 uses
  %i.be = fcmp olt float %..i.i.i.i5, f0x00800000
  %i.bf = bitcast float %..i.i.i.i5 to i32
  %i.bg = select i1 %i.be, i32 8388608, i32 %i.bf ; 2 uses
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = and i32 %i.bh, 255
  %i.bj = add nsw i32 %i.bi, -127
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = and i32 %i.bg, 8388607
  %i.bm = or disjoint i32 %i.bl, 1065353216
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd float %i.bn, -1.000000e+00         ; 5 uses
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float f0x3D3BF404, float f0xBE471796)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bo, float f0x3ED4B281)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bo, float f0xBF356C3D)
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bo, float f0x3FB88DC0)
  %i.bt = fmul float %i.bo, %i.bs
  %i.bu = fadd float %i.bt, %i.bk
  %i.bv = fmul float %i.bu, f0x3EE8BA2E           ; 2 uses
  %i.bw = tail call noundef float @llvm.rint.f32(float %i.bv) ; 2 uses
  %i.bx = fsub float %i.bv, %i.bw                 ; 6 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float f0x39222A61, float f0x3AAF931A)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %i.bx, float 9.618040e-03)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %i.bx, float f0x3D63578A)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.bx, float f0x3E75FDF0)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.bx, float f0x3F317218)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.bx, float 1.000000e+00)
  %i.ce = fptosi float %i.bw to i32
  %i.cf = shl i32 %i.ce, 23
  %i.cg = add i32 %i.cf, 1065353216
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = fmul float %i.cd, %i.ch
  %i.cj = fcmp oeq float %..i.i.i.i5, 0.000000e+00
  %.sroa.speculated.i.i.i.i6 = select i1 %i.cj, float 0.000000e+00, float %i.ci
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.ba, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.speculated.i.i.i.i6, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN3tev8ituth27315transferRgbImplILNS0_9ETransferE5EfEEN7nanogui5ArrayIT0_Lm3EEENSt3__117integral_constantIS2_XT_EEERKS6_(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !76 ; 2 uses
  %i.b = fcmp olt <2 x float> %i.a, zeroinitializer
  %i.c = select <2 x i1> %i.b, <2 x float> zeroinitializer, <2 x float> %i.a ; 3 uses
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x00800000)
  %i.e = bitcast <2 x float> %i.c to <2 x i32>
  %i.f = select <2 x i1> %i.d, <2 x i32> splat (i32 8388608), <2 x i32> %i.e ; 2 uses
  %i.g = and <2 x i32> %i.f, splat (i32 8388607)
  %i.h = or disjoint <2 x i32> %i.g, splat (i32 1065353216)
  %i.i = bitcast <2 x i32> %i.h to <2 x float>
  %i.j = fadd <2 x float> %i.i, splat (float -1.000000e+00) ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0x3D3BF404, float f0xBE471796)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.l, float %i.k, float f0x3ED4B281)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.m, float %i.k, float f0xBF356C3D)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.n, float %i.k, float f0x3FB88DC0)
  %i.p = lshr <2 x i32> %i.f, splat (i32 23)
  %i.q = and <2 x i32> %i.p, splat (i32 255)
  %i.r = add nsw <2 x i32> %i.q, splat (i32 -127)
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = extractelement <2 x float> %i.j, i64 1   ; 4 uses
  %i.u = tail call noundef float @llvm.fma.f32(float %i.t, float f0x3D3BF404, float f0xBE471796)
  %i.v = tail call noundef float @llvm.fma.f32(float %i.u, float %i.t, float f0x3ED4B281)
  %i.w = tail call noundef float @llvm.fma.f32(float %i.v, float %i.t, float f0xBF356C3D)
  %i.x = tail call noundef float @llvm.fma.f32(float %i.w, float %i.t, float f0x3FB88DC0)
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.x, i64 1
  %i.aa = fmul <2 x float> %i.j, %i.z
  %i.ab = fadd <2 x float> %i.aa, %i.s
  %i.ac = fmul <2 x float> %i.ab, splat (float f0x3EB6DB6E) ; 3 uses
  %i.ad = tail call <2 x float> @llvm.rint.v2f32(<2 x float> %i.ac) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.ac, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %i.ae, float f0x39222A61, float f0x3AAF931A)
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float %i.ae, float 9.618040e-03)
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.ae, float f0x3D63578A)
  %i.ai = tail call noundef float @llvm.fma.f32(float %i.ah, float %i.ae, float f0x3E75FDF0)
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float %i.ae, float f0x3F317218)
  %i.ak = tail call noundef float @llvm.fma.f32(float %i.aj, float %i.ae, float 1.000000e+00)
  %foldExtExtBinop9 = fsub <2 x float> %i.ac, %i.ad
  %i.al = extractelement <2 x float> %foldExtExtBinop9, i64 1 ; 6 uses
  %i.am = tail call noundef float @llvm.fma.f32(float %i.al, float f0x39222A61, float f0x3AAF931A)
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.al, float 9.618040e-03)
  %i.ao = tail call noundef float @llvm.fma.f32(float %i.an, float %i.al, float f0x3D63578A)
  %i.ap = tail call noundef float @llvm.fma.f32(float %i.ao, float %i.al, float f0x3E75FDF0)
  %i.aq = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.al, float f0x3F317218)
  %i.ar = tail call noundef float @llvm.fma.f32(float %i.aq, float %i.al, float 1.000000e+00)
  %i.as = fptosi <2 x float> %i.ad to <2 x i32>
  %i.at = shl <2 x i32> %i.as, splat (i32 23)
  %i.au = add <2 x i32> %i.at, splat (i32 1065353216)
  %i.av = bitcast <2 x i32> %i.au to <2 x float>
  %i.aw = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ar, i64 1
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = fcmp oeq <2 x float> %i.c, zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !76 ; 2 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  %..i.i.i.i5 = select i1 %i.bd, float 0.000000e+00, float %i.bc ; 3 uses
  %i.be = fcmp olt float %..i.i.i.i5, f0x00800000
  %i.bf = bitcast float %..i.i.i.i5 to i32
  %i.bg = select i1 %i.be, i32 8388608, i32 %i.bf ; 2 uses
  %i.bh = lshr i32 %i.bg, 23
  %i.bi = and i32 %i.bh, 255
  %i.bj = add nsw i32 %i.bi, -127
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = and i32 %i.bg, 8388607
  %i.bm = or disjoint i32 %i.bl, 1065353216
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd float %i.bn, -1.000000e+00         ; 5 uses
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bo, float f0x3D3BF404, float f0xBE471796)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bp, float %i.bo, float f0x3ED4B281)
  %i.br = tail call noundef float @llvm.fma.f32(float %i.bq, float %i.bo, float f0xBF356C3D)
  %i.bs = tail call noundef float @llvm.fma.f32(float %i.br, float %i.bo, float f0x3FB88DC0)
  %i.bt = fmul float %i.bo, %i.bs
  %i.bu = fadd float %i.bt, %i.bk
  %i.bv = fmul float %i.bu, f0x3EB6DB6E           ; 2 uses
  %i.bw = tail call noundef float @llvm.rint.f32(float %i.bv) ; 2 uses
  %i.bx = fsub float %i.bv, %i.bw                 ; 6 uses
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bx, float f0x39222A61, float f0x3AAF931A)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.by, float %i.bx, float 9.618040e-03)
  %i.ca = tail call noundef float @llvm.fma.f32(float %i.bz, float %i.bx, float f0x3D63578A)
  %i.cb = tail call noundef float @llvm.fma.f32(float %i.ca, float %i.bx, float f0x3E75FDF0)
  %i.cc = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.bx, float f0x3F317218)
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cc, float %i.bx, float 1.000000e+00)
  %i.ce = fptosi float %i.bw to i32
  %i.cf = shl i32 %i.ce, 23
  %i.cg = add i32 %i.cf, 1065353216
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = fmul float %i.cd, %i.ch
  %i.cj = fcmp oeq float %..i.i.i.i5, 0.000000e+00
end_hunk_2
