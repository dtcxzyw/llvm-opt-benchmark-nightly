Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btHingeConstraint?download=true
inline.NumInlined: 753
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN17btHingeConstraint32getInfo2InternalUsingFrameOffsetEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_:bb.a
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.az, <2 x float> %i.ax)
  %i.bb = shufflevector <3 x float> %i.at, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bc = load <2 x float>, ptr %i.ap, align 4, !tbaa !12, !noalias !119 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.q, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.be = load <2 x float>, ptr %i.t, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = load <3 x float>, ptr %i.w, align 8, !tbaa !12, !noalias !120 ; 5 uses
  %i.bh = load float, ptr %i.w, align 8, !tbaa !12, !noalias !120
  %i.bi = load <2 x float>, ptr %i.y, align 4, !tbaa !12, !noalias !120 ; 2 uses
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 1, i32 3>
  %i.bk = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x float> %i.bd, <2 x float> %i.be, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bl)
  %i.bp = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bq = load <2 x float>, ptr %3, align 4, !tbaa !12, !noalias !118 ; 3 uses
  %i.br = load float, ptr %i.z, align 4, !tbaa !12, !noalias !118
  %i.bs = fmul float %i.br, %i.af
  %i.bt = extractelement <2 x float> %i.bq, i64 0
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.bt, float %i.bs)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.ab, float %i.bu) ; 4 uses
  %i.bw = load <2 x float>, ptr %2, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0
  %i.by = load <2 x float>, ptr %i.r, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.bz = load float, ptr %i.s, align 4, !tbaa !12, !noalias !117
  %i.ca = load <2 x float>, ptr %i.c, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.cb = load float, ptr %i.d, align 4, !tbaa !12, !noalias !117
  %i.cc = insertelement <2 x float> poison, float %i.h, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <2 x float> %i.bw, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cf)
  %i.ck = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = shufflevector <2 x float> %i.ca, <2 x float> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.cj)
  %i.co = extractelement <2 x float> %i.ca, i64 0
  %i.cp = fmul float %i.co, %i.n
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.l, float %i.bx, float %i.cp)
  %i.cr = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.cb, float %i.cq) ; 4 uses
  %i.cs = shufflevector <2 x float> %i.bw, <2 x float> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <3 x float> %i.bg, <3 x float> %i.at, <2 x i32> <i32 1, i32 4>
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %i.cv = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.au, i64 1
  %i.cx = shufflevector <2 x float> %i.bw, <2 x float> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cx, <2 x float> %i.cu)
  %i.cz = shufflevector <3 x float> %i.bg, <3 x float> %i.at, <2 x i32> <i32 2, i32 5>
  %i.da = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x float> %i.da, float %i.ab, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.db, <2 x float> %i.cy)
  %i.dd = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.ao, i64 1 ; 2 uses
  %i.df = fadd <2 x float> %i.de, %i.dc           ; 3 uses
  %shift = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.df
  %i.dg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30, !nonnull !31, !align !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 452
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !49 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36, !nonnull !31, !align !32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 452
  %i.do = load float, ptr %i.dn, align 4, !tbaa !49 ; 3 uses
  %i.dp = fcmp olt float %i.dk, f0x34000000
  %i.dq = fcmp olt float %i.do, f0x34000000
  %i.dr = or i1 %i.dp, %i.dq                      ; 2 uses
  %i.ds = fadd float %i.dk, %i.do                 ; 2 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  %i.du = fdiv float %i.do, %i.ds
  %storemerge = select i1 %i.dt, float %i.du, float 5.000000e-01 ; 5 uses
  %i.dv = fsub float 1.000000e+00, %storemerge    ; 4 uses
  %i.dw = fmul float %i.cr, %storemerge
  %i.dx = fmul float %i.bv, %i.dv
  %i.dy = load <2 x float>, ptr %i.aj, align 4, !tbaa !12, !noalias !118 ; 3 uses
  %i.dz = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.af, i64 1 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.by, <2 x float> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.ec = fmul <2 x float> %i.ea, %i.eb
  %i.ed = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ad, i64 1 ; 2 uses
  %i.ef = shufflevector <2 x float> %i.bd, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ah, i64 1 ; 2 uses
  %i.ej = insertelement <2 x float> %i.dy, float %i.bz, i64 0
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eg) ; 5 uses
  %i.el = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.dv, i64 1 ; 3 uses
  %i.en = fmul <2 x float> %i.ek, %i.em           ; 2 uses
  %i.eo = load <2 x float>, ptr %i.al, align 4, !tbaa !12, !noalias !118 ; 3 uses
  %i.ep = shufflevector <2 x float> %i.dy, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.ep, <2 x float> %i.ba)
  %i.er = fadd <2 x float> %i.eq, %i.bc           ; 3 uses
  %i.es = load <2 x float>, ptr %i.u, align 4, !tbaa !12, !noalias !117 ; 4 uses
  %i.et = load float, ptr %i.v, align 4, !tbaa !12, !noalias !117
  %i.eu = extractelement <2 x float> %i.es, i64 0
  %i.ev = fmul float %i.h, %i.eu
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.f, float %i.bf, float %i.ev)
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.et, float %i.ew)
  %i.ey = shufflevector <2 x float> %i.es, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.ez = fmul <2 x float> %i.ea, %i.ey
  %i.fa = shufflevector <2 x float> %i.be, <2 x float> %i.as, <2 x i32> <i32 0, i32 2>
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fc = shufflevector <2 x float> %i.es, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.fc, <2 x float> %i.fb) ; 5 uses
  %i.fe = shufflevector <2 x float> %i.by, <2 x float> %i.es, <2 x i32> <i32 1, i32 3>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.fe, <2 x float> %i.bo)
  %i.fg = fadd <2 x float> %i.ff, %i.bi           ; 3 uses
  %foldExtExtBinop804 = fsub <2 x float> %i.er, %i.fg ; 2 uses
  %i.fh = extractelement <2 x float> %foldExtExtBinop804, i64 0 ; 2 uses
  %foldExtExtBinop806 = fsub <2 x float> %i.er, %i.fg
  %i.fi = extractelement <2 x float> %foldExtExtBinop806, i64 1 ; 3 uses
  %i.fj = fmul <2 x float> %i.fd, %i.em           ; 2 uses
  %i.fk = fadd float %i.dw, %i.dx                 ; 3 uses
  %shift808 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop809 = fadd <2 x float> %i.en, %shift808 ; 3 uses
  %shift811 = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop812 = fadd <2 x float> %i.fj, %shift811 ; 2 uses
  %i.fl = extractelement <2 x float> %foldExtExtBinop812, i64 0 ; 2 uses
  %.sroa.0.0.vec.insert.i302 = insertelement <2 x float> poison, float %i.fk, i64 0
  %.sroa.0.4.vec.insert.i303 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i302, <2 x float> %foldExtExtBinop809, <2 x i32> <i32 0, i32 2>
  %.sroa.3.12.vec.insert.i304831 = insertelement <2 x float> %foldExtExtBinop812, float 0.000000e+00, i64 1
  %foldExtExtBinop814 = fmul <2 x float> %foldExtExtBinop809, %foldExtExtBinop809
  %i.fm = extractelement <2 x float> %foldExtExtBinop814, i64 0
  %i.fn = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.fm)
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fn)
  %i.fp = fcmp olt float %i.fo, f0x34000000
  %i.fq = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %storemerge, i64 1
  br i1 %i.fp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.fs = extractelement <2 x float> %i.fd, i64 0
  %i.ft = fmul float %i.fs, 0.000000e+00
  %i.fu = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fv = insertelement <2 x float> %i.fu, float %i.cr, i64 0
  %i.fw = fmul <2 x float> %i.fv, zeroinitializer
  %i.fx = insertelement <2 x float> %i.ek, float %i.bv, i64 0
  %i.fy = fadd <2 x float> %i.fw, %i.fx
  %i.fz = extractelement <2 x float> %i.fd, i64 1
  %i.ga = fadd float %i.ft, %i.fz
  %.sroa.3.12.vec.insert.i319 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ga, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.15.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i319, %bb.b ], [ %.sroa.3.12.vec.insert.i304831, %bb.a ] ; 2 uses
  %.sroa.0769.0 = phi <2 x float> [ %i.fy, %bb.b ], [ %.sroa.0.4.vec.insert.i303, %bb.a ] ; 4 uses
  %.0649 = phi float [ 0.000000e+00, %bb.b ], [ %storemerge, %bb.a ] ; 7 uses
  %.0648 = phi float [ 1.000000e+00, %bb.b ], [ %i.dv, %bb.a ] ; 4 uses
  %i.gb = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ], [ %i.em, %bb.a ] ; 3 uses
  %i.gc = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.b ], [ %i.fr, %bb.a ] ; 2 uses
  %.sroa.0769.0.vec.extract771 = extractelement <2 x float> %.sroa.0769.0, i64 0 ; 3 uses
  %foldExtExtBinop816 = fmul <2 x float> %.sroa.0769.0, %.sroa.0769.0
  %i.gd = extractelement <2 x float> %foldExtExtBinop816, i64 1
  %i.ge = tail call float @llvm.fmuladd.f32(float %.sroa.0769.0.vec.extract771, float %.sroa.0769.0.vec.extract771, float %i.gd)
  %.sroa.15.8.vec.extract786 = extractelement <2 x float> %.sroa.15.0, i64 0 ; 2 uses
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.8.vec.extract786, float %.sroa.15.8.vec.extract786, float %i.ge)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gf)
  %i.gg = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.gh = shl i32 %i.b, 1
  %i.gi = fsub <2 x float> %i.df, %i.de           ; 2 uses
  %i.gj = fsub <2 x float> %i.er, %i.bc           ; 3 uses
  %i.gk = fsub <2 x float> %i.fg, %i.bi           ; 3 uses
  %i.gl = shufflevector <2 x float> %.sroa.0769.0, <2 x float> %.sroa.15.0, <2 x i32> <i32 1, i32 2>
  %i.gm = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x float> %i.gl, %i.gn           ; 12 uses
  %i.gp = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gr = fmul float %.sroa.0769.0.vec.extract771, %i.gg ; 8 uses
  %.sroa.0769.0.vec.insert = insertelement <2 x float> poison, float %i.gr, i64 0 ; 3 uses
  %i.gs = shufflevector <2 x float> %.sroa.0769.0.vec.insert, <2 x float> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gt = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.gv = fmul <2 x float> %i.gt, %i.gu
  %i.gw = shufflevector <2 x float> %.sroa.0769.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gw, <2 x float> %i.gv)
  %i.gy = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <2 x i32> <i32 1, i32 3>
  %i.gz = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.gz, <2 x float> %i.gx) ; 3 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x float> %i.go, %i.hb           ; 2 uses
  %i.hd = fsub <2 x float> %i.gj, %i.hc           ; 3 uses
  %i.he = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul <2 x float> %i.go, %i.he           ; 2 uses
  %i.hg = fmul <2 x float> %i.gw, %i.ha           ; 3 uses
  %i.hh = fsub <2 x float> %i.hf, %i.hc           ; 2 uses
  %i.hi = fsub <2 x float> %i.gk, %i.hf           ; 3 uses
  %i.hj = fsub <2 x float> %i.gi, %i.hg           ; 3 uses
  %i.hk = fmul <2 x float> %i.gp, %i.hh
  %i.hl = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = fsub <2 x float> %i.hl, %i.hm
  %i.ho = fmul <2 x float> %i.gb, %i.hn           ; 2 uses
  %i.hp = fadd <2 x float> %i.hi, %i.hk           ; 8 uses
  %i.hq = fmul <2 x float> %i.gq, %i.hh
  %i.hr = fadd <2 x float> %i.hj, %i.ho           ; 5 uses
  %i.hs = fsub <2 x float> %i.hj, %i.ho           ; 5 uses
  %i.ht = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <2 x i32> <i32 0, i32 3>
  %i.hu = fsub <2 x float> %i.hd, %i.hq           ; 8 uses
  %i.hv = extractelement <2 x float> %i.hd, i64 0
  %i.hw = fmul float %.0649, %i.hv
  %i.hx = extractelement <2 x float> %i.hd, i64 1
  %i.hy = fmul float %.0649, %i.hx
  %i.hz = fmul <2 x float> %i.gc, %i.hj
  %i.ia = extractelement <2 x float> %i.hi, i64 0
  %i.ib = fmul float %.0648, %i.ia
  %i.ic = extractelement <2 x float> %i.hi, i64 1
  %i.id = fmul float %.0648, %i.ic
  %i.ie = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hz) ; 3 uses
  %i.if = fadd float %i.ib, %i.hw                 ; 3 uses
  %i.ig = fadd float %i.id, %i.hy                 ; 3 uses
  %i.ih = fmul float %i.if, %i.if
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.ih)
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %i.ig, float %i.ig, float %i.ii) ; 2 uses
  %i.ik = fcmp ogt float %i.ij, f0x34000000
  br i1 %i.ik, label %bb.d, label %.preheader663

bb.d:                                             ; preds = %bb.c
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ij)
  %i.il = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.im = fmul float %i.ie, %i.il
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = fmul float %i.if, %i.il
  %.sroa.0697.4.vec.insert = insertelement <2 x float> %i.in, float %i.io, i64 1
  %i.ip = fmul float %i.ig, %i.il
  br label %.preheader663

.preheader663:                                    ; preds = %bb.c, %bb.d
  %.sink = phi float [ %i.ip, %bb.d ], [ %i.ex, %bb.c ] ; 7 uses
  %.sroa.0697.0 = phi <2 x float> [ %.sroa.0697.4.vec.insert, %bb.d ], [ %i.cn, %bb.c ] ; 6 uses
  %i.iq = extractelement <2 x float> %i.go, i64 1 ; 6 uses
  %i.ir = extractelement <2 x float> %.sroa.0697.0, i64 0 ; 4 uses
  %i.is = extractelement <2 x float> %i.hr, i64 0
  %i.it = extractelement <2 x float> %i.hs, i64 1
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !61 ; 13 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !62 ; 15 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = fneg <2 x float> %.sroa.0697.0          ; 7 uses
  %i.ja = fneg float %.sink                       ; 5 uses
  %i.jb = fmul <2 x float> %i.go, %i.iz
  %i.jc = fmul float %i.gr, %i.ja
  %i.jd = insertelement <2 x float> %.sroa.0769.0.vec.insert, float %.sink, i64 1
  %i.je = shufflevector <2 x float> %.sroa.0697.0, <2 x float> %i.go, <2 x i32> <i32 1, i32 2>
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.jb) ; 6 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jh = extractelement <2 x float> %i.iz, i64 1 ; 2 uses
  %i.ji = fmul float %i.is, %i.ja
  %foldExtExtBinop821 = fmul <2 x float> %i.hp, %i.iz
  %6 = shufflevector <2 x float> %.sroa.0697.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jj = insertelement <2 x float> %6, float %.sink, i64 0 ; 2 uses
  %i.jk = shufflevector <2 x float> %foldExtExtBinop821, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jl = insertelement <2 x float> %i.jk, float %i.ji, i64 1
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.jj, <2 x float> %i.jl)
  store <2 x float> %i.jm, ptr %i.iv, align 4, !tbaa !12
  %7 = fmul float %i.it, %i.ja
  %foldExtExtBinop823 = fmul <2 x float> %i.hu, %i.iz
  %8 = shufflevector <2 x float> %foldExtExtBinop823, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %9 = insertelement <2 x float> %8, float %7, i64 1
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.jj, <2 x float> %9)
  %11 = fneg <2 x float> %10
  %12 = shufflevector <2 x float> %i.hp, <2 x float> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.jn = extractelement <2 x float> %i.jf, i64 1 ; 4 uses
  %13 = shufflevector <2 x float> %i.hu, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  %.sroa.0697.4.vec.extract705 = extractelement <2 x float> %.sroa.0697.0, i64 1 ; 3 uses
  %14 = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.ir, float %i.jc) ; 6 uses
  %.sroa.0.4.vec.insert.i398 = insertelement <2 x float> %i.jg, float %14, i64 1
  %15 = fneg float %i.jn                          ; 3 uses
  %16 = shufflevector <2 x float> %i.hp, <2 x float> %i.hu, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %17 = shufflevector <2 x float> %i.iz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %18 = insertelement <4 x float> poison, float %15, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %20 = shufflevector <4 x float> %17, <4 x float> %19, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %21 = fmul <4 x float> %16, %20
  %22 = shufflevector <2 x float> %i.hr, <2 x float> %i.hs, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.jo = insertelement <2 x float> %6, float %14, i64 1
  %23 = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %24 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %23, <4 x float> %21) ; 6 uses
  %25 = extractelement <4 x float> %24, i64 0
  store float %25, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !12
  store <2 x float> %11, ptr %i.ix, align 4, !tbaa !12
  %26 = extractelement <4 x float> %24, i64 2
  %27 = fneg float %26
  store float %27, ptr %i.iy, align 4, !tbaa !12
  %.sroa.3.12.vec.insert.i414 = insertelement <2 x float> %i.jg, float %14, i64 0
  %28 = fneg <2 x float> %.sroa.3.12.vec.insert.i414 ; 6 uses
  %i.jp = fmul <2 x float> %12, %28
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.jf, <2 x float> %i.jp) ; 3 uses
  %29 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %30 = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %24, <2 x i32> <i32 5, i32 1> ; 3 uses
  %31 = fmul <2 x float> %13, %28
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.jf, <2 x float> %31) ; 3 uses
  %.sroa.3.12.vec.insert.i419 = insertelement <2 x float> %29, float 0.000000e+00, i64 1 ; 3 uses
  br i1 %i.dr, label %bb.e, label %.preheader662

bb.e:                                             ; preds = %.preheader663
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.js = load i8, ptr %i.jr, align 4, !tbaa !56, !range !34, !noundef !31
  %.not = icmp eq i8 %i.js, 0
  br i1 %.not, label %.preheader662, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jt = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fmul <2 x float> %i.jt, %32
  %33 = extractelement <4 x float> %24, i64 3
  %i.jv = fmul float %.0648, %33
  %.sroa.19.8.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i419, float %i.jv, i64 0
  %i.jw = insertelement <2 x float> poison, float %.0649, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jx, %i.jq
  %34 = extractelement <4 x float> %24, i64 1
  %i.jz = fmul float %.0649, %34
  %.sroa.16.8.vec.insert = insertelement <2 x float> %30, float %i.jz, i64 0
  br label %.preheader662

.preheader662:                                    ; preds = %bb.f, %bb.e, %.preheader663
  %.sroa.16.0 = phi <2 x float> [ %30, %bb.e ], [ %.sroa.16.8.vec.insert, %bb.f ], [ %30, %.preheader663 ]
  %.sroa.0747.0 = phi <2 x float> [ %i.jq, %bb.e ], [ %i.jy, %bb.f ], [ %i.jq, %.preheader663 ]
  %.sroa.19.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i419, %bb.e ], [ %.sroa.19.8.vec.insert, %bb.f ], [ %.sroa.3.12.vec.insert.i419, %.preheader663 ]
  %.sroa.0713.0 = phi <2 x float> [ %32, %bb.e ], [ %i.ju, %bb.f ], [ %32, %.preheader663 ]
  %i.ka = sext i32 %i.b to i64                    ; 6 uses
  %i.kb = shl nsw i64 %i.ka, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.iv, i64 %i.kb ; 2 uses
  store <2 x float> %.sroa.0747.0, ptr %scevgep, align 4, !tbaa !12
  %.sroa.16.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.16.0.vec.extract761 = extractelement <2 x float> %.sroa.16.0, i64 0
  store float %.sroa.16.0.vec.extract761, ptr %.sroa.16.0.scevgep.sroa_idx, align 4, !tbaa !12
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.ka
  %i.kd = fneg <2 x float> %.sroa.0713.0
  store <2 x float> %i.kd, ptr %i.kc, align 4, !tbaa !12
  %.sroa.19.8.vec.extract744 = extractelement <2 x float> %.sroa.19.0, i64 0
  %i.ke = fneg float %.sroa.19.8.vec.extract744
  %i.kf = add nsw i64 %i.ka, 2                    ; 2 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.kf
  store float %i.ke, ptr %i.kg, align 4, !tbaa !12
  %i.kh = fneg <2 x float> %i.go                  ; 6 uses
  %i.ki = shufflevector <2 x float> %i.hp, <2 x float> %i.hr, <2 x i32> <i32 1, i32 2>
  %i.kj = fmul <2 x float> %i.ki, %i.kh
  %i.kk = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kl = insertelement <2 x float> %i.kk, float %i.gr, i64 1 ; 2 uses
  %i.km = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.kl, <2 x float> %i.kj) ; 3 uses
  %i.kn = fneg float %i.gr                        ; 3 uses
  %i.ko = shufflevector <2 x float> %i.hu, <2 x float> %i.hs, <2 x i32> <i32 1, i32 3>
  %i.kp = fmul <2 x float> %i.ko, %i.kh
  %i.kq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.kl, <2 x float> %i.kp) ; 2 uses
  %i.kr = shufflevector <2 x float> %i.hp, <2 x float> %i.hu, <2 x i32> <i32 0, i32 2>
  %i.ks = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.kr, %i.kt
  %i.kv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ht, <2 x float> %i.gt, <2 x float> %i.ku) ; 4 uses
  %i.kw = insertelement <2 x float> %i.kv, float 0.000000e+00, i64 1 ; 2 uses
  %i.kx = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.kv, <2 x i32> <i32 3, i32 1> ; 2 uses
  br i1 %i.dr, label %bb.g, label %.preheader661

bb.g:                                             ; preds = %.preheader662
  %i.ky = fmul <2 x float> %i.gq, %i.kq
  %i.kz = extractelement <2 x float> %i.kv, i64 1
  %i.la = fmul float %.0648, %i.kz
  %.sroa.19.8.vec.insert738 = insertelement <2 x float> %i.kx, float %i.la, i64 0
  %i.lb = extractelement <2 x float> %i.km, i64 0
  %i.lc = fmul float %.0649, %i.lb
  %.sroa.0747.0.vec.insert752 = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.ld = extractelement <2 x float> %i.km, i64 1
  %i.le = fmul float %.0649, %i.ld
  %.sroa.0747.4.vec.insert759 = insertelement <2 x float> %.sroa.0747.0.vec.insert752, float %i.le, i64 1
  %i.lf = extractelement <2 x float> %i.kv, i64 0
  %i.lg = fmul float %.0649, %i.lf
  %.sroa.16.8.vec.insert766 = insertelement <2 x float> %i.kw, float %i.lg, i64 0
  br label %.preheader661

.preheader661:                                    ; preds = %bb.g, %.preheader662
  %.sroa.16.1 = phi <2 x float> [ %.sroa.16.8.vec.insert766, %bb.g ], [ %i.kw, %.preheader662 ]
  %.sroa.0747.1 = phi <2 x float> [ %.sroa.0747.4.vec.insert759, %bb.g ], [ %i.km, %.preheader662 ]
  %.sroa.19.1 = phi <2 x float> [ %.sroa.19.8.vec.insert738, %bb.g ], [ %i.kx, %.preheader662 ]
  %.sroa.0713.1 = phi <2 x float> [ %i.ky, %bb.g ], [ %i.kq, %.preheader662 ]
  %i.lh = sext i32 %i.gh to i64                   ; 6 uses
  %i.li = shl nsw i64 %i.lh, 2                    ; 2 uses
  %scevgep680 = getelementptr i8, ptr %i.iv, i64 %i.li ; 2 uses
  store <2 x float> %.sroa.0747.1, ptr %scevgep680, align 4, !tbaa !12
  %.sroa.16.0.scevgep680.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep680, i64 8
  %.sroa.16.0.vec.extract763 = extractelement <2 x float> %.sroa.16.1, i64 0
  store float %.sroa.16.0.vec.extract763, ptr %.sroa.16.0.scevgep680.sroa_idx, align 4, !tbaa !12
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.lh
  %i.lk = fneg <2 x float> %.sroa.0713.1
  store <2 x float> %i.lk, ptr %i.lj, align 4, !tbaa !12
  %.sroa.19.8.vec.extract746 = extractelement <2 x float> %.sroa.19.1, i64 0
  %i.ll = fneg float %.sroa.19.8.vec.extract746
  %i.lm = add nsw i64 %i.lh, 2                    ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.lm
  store float %i.ll, ptr %i.ln, align 4, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !63
  %i.lq = and i32 %i.lp, 8
  %.not263 = icmp eq i32 %i.lq, 0
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not263, ptr %i.ls, ptr %i.lr
  %i.lt = load float, ptr %.in, align 4, !tbaa !12 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !35, !range !34, !noundef !31
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %.preheader661._crit_edge, label %.preheader660

.preheader661._crit_edge:                         ; preds = %.preheader661
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.h

.preheader660:                                    ; preds = %.preheader661
  %i.lx = load float, ptr %1, align 8, !tbaa !65
  %i.ly = fmul float %i.lt, %i.lx                 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !66 ; 4 uses
  store <2 x float> %.sroa.0697.0, ptr %i.ma, align 4, !tbaa !12
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store float %.sink, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !12
  %scevgep684 = getelementptr i8, ptr %i.ma, i64 %i.kb ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i398, ptr %scevgep684, align 4, !tbaa !12
  %.sroa.8.0.scevgep684.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep684, i64 8
  %i.mb = extractelement <2 x float> %i.jf, i64 0 ; 2 uses
  store float %i.mb, ptr %.sroa.8.0.scevgep684.sroa_idx, align 4, !tbaa !12
  %scevgep686 = getelementptr i8, ptr %i.ma, i64 %i.li ; 2 uses
  store <2 x float> %i.gs, ptr %scevgep686, align 4, !tbaa !12
  %.sroa.15.0.scevgep686.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep686, i64 8
  store float %i.iq, ptr %.sroa.15.0.scevgep686.sroa_idx, align 4, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !67 ; 9 uses
  %35 = extractelement <2 x float> %i.iz, i64 0
  store float %35, ptr %i.md, align 4, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store float %i.jh, ptr %i.me, align 4, !tbaa !12
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store float %i.ja, ptr %i.mf, align 4, !tbaa !12
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.ka
  store float %15, ptr %i.mg, align 4, !tbaa !12
  %i.mh = getelementptr [4 x i8], ptr %i.md, i64 %i.ka
  %i.mi = getelementptr i8, ptr %i.mh, i64 4
  %i.mj = extractelement <2 x float> %28, i64 0
  store float %i.mj, ptr %i.mi, align 4, !tbaa !12
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.kf
  %i.ml = extractelement <2 x float> %28, i64 1
  store float %i.ml, ptr %i.mk, align 4, !tbaa !12
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.lh
  store float %i.kn, ptr %i.mm, align 4, !tbaa !12
  %i.mn = getelementptr [4 x i8], ptr %i.md, i64 %i.lh
  %i.mo = getelementptr i8, ptr %i.mn, i64 4
  %i.mp = extractelement <2 x float> %i.kh, i64 0
  store float %i.mp, ptr %i.mo, align 4, !tbaa !12
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.lm
  %i.mr = extractelement <2 x float> %i.kh, i64 1
  store float %i.mr, ptr %i.mq, align 4, !tbaa !12
  %i.ms = fmul float %i.fh, %.sroa.0697.4.vec.extract705
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.dg, float %i.ms)
  %i.mu = tail call noundef float @llvm.fmuladd.f32(float %.sink, float %i.fi, float %i.mt)
  %i.mv = fmul float %i.mu, %i.ly
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !64 ; 4 uses
  store float %i.mv, ptr %i.mx, align 4, !tbaa !12
  %i.my = fmul float %i.fh, %14
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.dg, float %i.my)
  %i.na = tail call noundef float @llvm.fmuladd.f32(float %i.mb, float %i.fi, float %i.mz)
  %i.nb = fmul float %i.na, %i.ly
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.ka
  store float %i.nb, ptr %i.nc, align 4, !tbaa !12
  %foldExtExtBinop829 = fmul <2 x float> %foldExtExtBinop804, %i.go
  %i.nd = extractelement <2 x float> %foldExtExtBinop829, i64 0
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.dg, float %i.nd)
  %i.nf = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.fi, float %i.ne)
  %i.ng = fmul float %i.nf, %i.ly
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.lh
  store float %i.ng, ptr %i.nh, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %.preheader661._crit_edge, %.preheader660
  %i.ni = phi ptr [ %.pre, %.preheader661._crit_edge ], [ %i.mx, %.preheader660 ] ; 2 uses
  %i.nj = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.nk = shl nsw i32 %i.b, 2                     ; 3 uses
  %i.nl = sext i32 %i.nj to i64                   ; 3 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.nl
  store float %i.ir, ptr %i.nm, align 4, !tbaa !12
  %i.nn = add nsw i32 %i.nj, 1
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.no
  store float %.sroa.0697.4.vec.extract705, ptr %i.np, align 4, !tbaa !12
  %i.nq = add nsw i32 %i.nj, 2
  %i.nr = sext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.nr
  store float %.sink, ptr %i.ns, align 4, !tbaa !12
  %i.nt = sext i32 %i.nk to i64                   ; 3 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.nt
  store float %i.jn, ptr %i.nu, align 4, !tbaa !12
  %i.nv = or disjoint i32 %i.nk, 1
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.nw
  store float %14, ptr %i.nx, align 4, !tbaa !12
  %i.ny = or disjoint i32 %i.nk, 2
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.nz
  %i.ob = extractelement <2 x float> %i.jf, i64 0 ; 2 uses
  store float %i.ob, ptr %i.oa, align 4, !tbaa !12
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.nl
  %36 = extractelement <2 x float> %i.iz, i64 0
  store float %36, ptr %i.oc, align 4, !tbaa !12
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.no
  store float %i.jh, ptr %i.od, align 4, !tbaa !12
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.nr
  store float %i.ja, ptr %i.oe, align 4, !tbaa !12
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.nt
  store float %15, ptr %i.of, align 4, !tbaa !12
  %i.og = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.nw
  %i.oh = extractelement <2 x float> %28, i64 0
  store float %i.oh, ptr %i.og, align 4, !tbaa !12
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.nz
  %i.oj = extractelement <2 x float> %28, i64 1
  store float %i.oj, ptr %i.oi, align 4, !tbaa !12
  %i.ok = load float, ptr %1, align 8, !tbaa !65
  %i.ol = fmul float %i.lt, %i.ok                 ; 2 uses
  %i.om = extractelement <2 x float> %i.ek, i64 1 ; 2 uses
  %i.on = fneg float %i.om
  %i.oo = extractelement <2 x float> %i.fd, i64 0 ; 2 uses
  %i.op = fmul float %i.oo, %i.on
  %i.oq = extractelement <2 x float> %i.fd, i64 1 ; 2 uses
  %i.or = extractelement <2 x float> %i.ek, i64 0 ; 2 uses
  %i.os = tail call float @llvm.fmuladd.f32(float %i.or, float %i.oq, float %i.op) ; 2 uses
  %i.ot = fneg float %i.oq
  %i.ou = fmul float %i.cr, %i.ot
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.oo, float %i.bv, float %i.ou) ; 2 uses
  %i.ow = fneg float %i.bv
  %i.ox = fmul float %i.or, %i.ow
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.om, float %i.ox) ; 2 uses
  %i.oz = fmul float %i.ov, %.sroa.0697.4.vec.extract705
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.os, float %i.ir, float %i.oz)
  %i.pb = tail call noundef float @llvm.fmuladd.f32(float %i.oy, float %.sink, float %i.pa)
  %i.pc = fmul float %i.pb, %i.ol
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nl
  store float %i.pc, ptr %i.pe, align 4, !tbaa !12
  %i.pf = fmul float %i.ov, %14
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.os, float %i.jn, float %i.pf)
  %i.ph = tail call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.ob, float %i.pg)
  %i.pi = fmul float %i.ph, %i.ol
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.nt
  store float %i.pi, ptr %i.pj, align 4, !tbaa !12
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.pl = load i8, ptr %i.pk, align 4, !tbaa !56, !range !34, !noundef !31
  %.not264 = icmp eq i8 %i.pl, 0                  ; 3 uses
  br i1 %.not264, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !68
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.pp = load float, ptr %i.po, align 4, !tbaa !29
  %i.pq = fmul float %i.pn, %i.pp                 ; 2 uses
  %i.pr = fcmp ogt float %i.pq, 0.000000e+00
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !57, !range !34, !noundef !31
  %i.pu = trunc nuw i8 %i.pt to i1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 761
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !57, !range !34, !noundef !31
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %.thread, %bb.i
  %i.py = phi i1 [ %i.pu, %.thread ], [ true, %bb.i ]
  %.0254654 = phi i1 [ %i.pr, %.thread ], [ false, %bb.i ] ; 3 uses
  %.0255653 = phi float [ %i.pq, %.thread ], [ 0.000000e+00, %bb.i ]
  %i.pz = load i32, ptr %i.a, align 8, !tbaa !60
  %i.qa = mul nsw i32 %i.pz, 5                    ; 3 uses
  %i.qb = sext i32 %i.qa to i64                   ; 11 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.qb
  store float %i.gr, ptr %i.qc, align 4, !tbaa !12
  %i.qd = add nsw i32 %i.qa, 1
  %i.qe = sext i32 %i.qd to i64                   ; 2 uses
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.qe
  %i.qg = extractelement <2 x float> %i.go, i64 0 ; 3 uses
  store float %i.qg, ptr %i.qf, align 4, !tbaa !12
  %i.qh = add nsw i32 %i.qa, 2
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.qi
  store float %i.iq, ptr %i.qj, align 4, !tbaa !12
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.qb
  store float %i.kn, ptr %i.qk, align 4, !tbaa !12
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.qe
  %i.qm = extractelement <2 x float> %i.kh, i64 0
  store float %i.qm, ptr %i.ql, align 4, !tbaa !12
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.qi
  %i.qo = extractelement <2 x float> %i.kh, i64 1
  store float %i.qo, ptr %i.qn, align 4, !tbaa !12
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.qq = tail call noundef float @_ZNK14btAngularLimit6getLowEv(ptr noundef nonnull align 4 dereferenceable(29) %i.qp) ; 2 uses
  %i.qr = tail call noundef float @_ZNK14btAngularLimit7getHighEv(ptr noundef nonnull align 4 dereferenceable(29) %i.qp) ; 2 uses
  %i.qs = fcmp une float %i.qq, %i.qr             ; 2 uses
  %or.cond268.not = or i1 %.not264, %i.qs
  %spec.select = select i1 %or.cond268.not, i1 %i.py, i1 false
  %i.qt = load ptr, ptr %i.pd, align 8, !tbaa !64 ; 2 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qb
  store float 0.000000e+00, ptr %i.qu, align 4, !tbaa !12
  %i.qv = load i32, ptr %i.lo, align 4, !tbaa !63 ; 2 uses
  %i.qw = and i32 %i.qv, 2
  %.not265 = icmp eq i32 %i.qw, 0
  br i1 %.not265, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.qz = phi float [ %i.qy, %bb.k ], [ %i.lt, %bb.j ] ; 2 uses
  br i1 %spec.select, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ra = and i32 %i.qv, 4
  %.not266 = icmp eq i32 %i.ra, 0
  br i1 %.not266, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.rc = load float, ptr %i.rb, align 8, !tbaa !70
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !71
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.qb
  store float %i.rc, ptr %i.rf, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.rh = load float, ptr %i.rg, align 8, !tbaa !50
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.rj = load float, ptr %i.ri, align 8, !tbaa !72
  %i.rk = load float, ptr %1, align 8, !tbaa !65
  %i.rl = fmul float %i.qz, %i.rk
  %i.rm = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %i.rh, float noundef %i.qq, float noundef %i.qr, float noundef %i.rj, float noundef %i.rl)
  %i.rn = load float, ptr %i.ri, align 8, !tbaa !72
  %i.ro = fmul float %i.rm, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !29
  %i.rr = load ptr, ptr %i.pd, align 8, !tbaa !64 ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %i.qb ; 2 uses
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !12
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.ro, float %i.rq, float %i.rt)
  store float %i.ru, ptr %i.rs, align 4, !tbaa !12
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !73
  %i.rx = fneg float %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !74
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.rz, i64 %i.qb
  store float %i.rx, ptr %i.sa, align 4, !tbaa !12
  %i.sb = load float, ptr %i.rv, align 4, !tbaa !73
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !75
  %i.se = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.qb
  store float %i.sb, ptr %i.se, align 4, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.sf = phi ptr [ %i.rr, %bb.o ], [ %i.qt, %bb.l ]
  br i1 %.not264, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.sg = load float, ptr %1, align 8, !tbaa !65
  %i.sh = fmul float %i.qz, %i.sg
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.qb ; 7 uses
  %i.sj = load float, ptr %i.si, align 4, !tbaa !12
  %i.sk = tail call float @llvm.fmuladd.f32(float %i.sh, float %.0255653, float %i.sj)
  store float %i.sk, ptr %i.si, align 4, !tbaa !12
  %i.sl = load i32, ptr %i.lo, align 4, !tbaa !63
  %i.sm = and i32 %i.sl, 1
  %.not267 = icmp eq i32 %i.sm, 0
  br i1 %.not267, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.so = load float, ptr %i.sn, align 8, !tbaa !76
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !71
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sq, i64 %i.qb
  store float %i.so, ptr %i.sr, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !74
  %i.su = getelementptr inbounds [4 x i8], ptr %i.st, i64 %i.qb
  br i1 %i.qs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %. = select i1 %.0254654, float 0.000000e+00, float f0xFF7FFFFF
  %.802 = select i1 %.0254654, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink801 = phi float [ %., %bb.t ], [ f0xFF7FFFFF, %bb.s ]
  %.sink798 = phi float [ %.802, %bb.t ], [ f0x7F7FFFFF, %bb.s ]
  store float %.sink801, ptr %i.su, align 4, !tbaa !12
  %.sink800.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink800 = load ptr, ptr %.sink800.in, align 8, !tbaa !75
  %i.sv = getelementptr inbounds [4 x i8], ptr %.sink800, i64 %i.qb
  store float %.sink798, ptr %i.sv, align 4, !tbaa !12
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.sx = load float, ptr %i.sw, align 8, !tbaa !15 ; 3 uses
  %i.sy = fcmp ogt float %i.sx, 0.000000e+00
  br i1 %i.sy, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.pre791 = load float, ptr %i.si, align 4, !tbaa !12
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.sz = load float, ptr %4, align 4, !tbaa !12
  %i.ta = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !12
  %i.tc = fmul float %i.qg, %i.tb
  %i.td = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.gr, float %i.tc)
  %i.te = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.tf = load float, ptr %i.te, align 4, !tbaa !12
  %i.tg = tail call noundef float @llvm.fmuladd.f32(float %i.tf, float %i.iq, float %i.td)
  %i.th = load float, ptr %5, align 4, !tbaa !12
  %i.ti = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !12
  %i.tk = fmul float %i.qg, %i.tj
  %i.tl = tail call float @llvm.fmuladd.f32(float %i.th, float %i.gr, float %i.tk)
  %i.tm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !12
  %i.to = tail call noundef float @llvm.fmuladd.f32(float %i.tn, float %i.iq, float %i.tl)
  %i.tp = fsub float %i.tg, %i.to                 ; 4 uses
  %.pre792 = load float, ptr %i.si, align 4, !tbaa !12 ; 6 uses
  br i1 %.0254654, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.tq = fcmp olt float %i.tp, 0.000000e+00
  br i1 %i.tq, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
end_hunk_0
