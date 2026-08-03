inline.NumInlined: 377
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN34btDeformableRigidContactConstraint15solveConstraintERK19btContactSolverInfo:bb.a
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.g
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop292 = fsub <2 x float> %i.m, %i.g
  %i.p = extractelement <2 x float> %foldExtExtBinop292, i64 1 ; 2 uses
  %foldExtExtBinop294 = fsub <2 x float> %i.n, %i.h
  %i.q = extractelement <2 x float> %foldExtExtBinop294, i64 0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !40 ; 5 uses
  %i.v = fmul float %i.u, %i.p
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !40 ; 5 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 8, !tbaa !40 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ad = fmul float %i.u, %i.ac
  %i.ae = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.s, float %i.ad)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !40 ; 3 uses
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.y, float %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !117 ; 4 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ak, float %i.z) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load float, ptr %i.am, align 8, !tbaa !119 ; 5 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00      ; 2 uses
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !120
  %i.ar = fdiv float %i.an, %i.aq
  %i.as = fadd float %i.al, %i.ar
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0232 = phi float [ %i.as, %bb.b ], [ %i.al, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 4, !tbaa !121
  %.not = icmp eq i32 %i.au, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load float, ptr %i.av, align 4, !tbaa !122
  %i.ax = fmul float %i.an, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !120
  %i.ba = fdiv float %i.ax, %i.az
  %i.bb = fadd float %.0232, %i.ba
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi float [ %i.bb, %bb.d ], [ %.0232, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !102 ; 17 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = fmul float %i.ae, %i.ak
  %i.bf = fmul float %i.ac, %i.ak
  %i.bg = fmul float %i.ah, %i.ak
  %i.bh = fadd float %i.o, %i.be
  %i.bi = fadd float %i.p, %i.bf
  %i.bj = fadd float %i.q, %i.bg
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !120
  %i.bm = fdiv float %i.an, %i.bl                 ; 3 uses
  %i.bn = fmul float %i.s, %i.bm
  %i.bo = fmul float %i.bm, %i.u
  %i.bp = fmul float %i.y, %i.bm
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bn, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.bo, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bp, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0206.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.7.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.0206.0.vec.extract = extractelement <2 x float> %.sroa.0206.0, i64 0
  %i.bq = fadd float %i.bh, %.sroa.0206.0.vec.extract ; 2 uses
  %.sroa.0206.4.vec.extract = extractelement <2 x float> %.sroa.0206.0, i64 1
  %i.br = fadd float %i.bi, %.sroa.0206.4.vec.extract ; 2 uses
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.0, i64 0
  %i.bs = fadd float %i.bj, %.sroa.7.8.vec.extract ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 68
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 84
  %i.bw = load <2 x float>, ptr %i.bd, align 4, !tbaa !40 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bu, align 4, !tbaa !40 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bt, align 4, !tbaa !40 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bv, align 4, !tbaa !40 ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cd)
  %i.ci = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cj = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.ch) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !40 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bc, i64 100
  %i.cp = load float, ptr %i.co, align 4, !tbaa !40 ; 3 uses
  %i.cq = fmul float %i.br, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bq, float %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !40 ; 3 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.bs, float %i.cr) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !122
  %i.cy = fmul float %i.an, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = load float, ptr %i.cz, align 4, !tbaa !120
  %i.db = fdiv float %i.cy, %i.da                 ; 3 uses
  %i.dc = fmul float %i.s, %i.db                  ; 2 uses
  %i.dd = fmul float %i.db, %i.u                  ; 2 uses
  %i.de = fmul float %i.y, %i.db                  ; 2 uses
  %i.df = fmul float %i.cp, %i.dd
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dc, float %i.df)
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.de, float %i.dg)
  %i.di = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.cc, %i.dj
  %i.dl = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dm, <2 x float> %i.dk)
  %i.do = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.dp, <2 x float> %i.dn)
  %i.dr = fadd <2 x float> %i.cl, %i.dq           ; 2 uses
  store <2 x float> %i.dr, ptr %2, align 8, !tbaa !40
  %i.ds = fadd float %i.dh, %i.cu
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dt = phi float [ %i.ds, %bb.h ], [ %i.cu, %bb.g ]
  %i.du = phi <2 x float> [ %i.dr, %bb.h ], [ %i.cl, %bb.g ]
  %i.dv = fmul float %.1, %i.s                    ; 2 uses
  %i.dw = fmul float %.1, %i.u                    ; 2 uses
  %i.dx = fmul float %i.y, %.1                    ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ed, <2 x float> %i.eb)
  %i.ef = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.eg, <2 x float> %i.ee) ; 6 uses
  %i.ei = fmul float %i.dw, %i.cp
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.dv, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dx, float %i.ej) ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.em = fsub <2 x float> %i.du, %i.eh           ; 5 uses
  %i.en = fsub float %i.dt, %i.ek                 ; 3 uses
  %.sroa.3.12.vec.insert.i85 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  %i.eo = fcmp ogt float %.1, 0.000000e+00
  br i1 %i.eo, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 1, ptr %i.ep, align 8, !tbaa !106
  %i.eq = fmul float %.1, %.1                     ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.sroa.5165.0.copyload = load float, ptr %.sroa.5165.0..sroa_idx, align 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.bc, i64 140 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.eu = extractelement <2 x float> %i.eh, i64 1
  %i.ev = extractelement <2 x float> %i.eh, i64 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bc, i64 148 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !40
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bc, i64 156 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bc, i64 164 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !40
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bc, i64 172 ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 176 ; 3 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !40
  %i.fg = fmul float %i.eu, %i.ff
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.ev, float %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bc, i64 180 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !40
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.ek, float %i.fh)
  %3 = fsub float %i.ah, %i.fk                    ; 3 uses
  %i.fl = load <2 x float>, ptr %i.es, align 4, !tbaa !40 ; 2 uses
  %i.fm = load <2 x float>, ptr %i.ey, align 4, !tbaa !40 ; 2 uses
  %i.fn = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.fp = fmul <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.fp)
  %i.ft = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fb, i64 1
  %i.fv = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fw, <2 x float> %i.fs)
  store float %3, ptr %i.ag, align 8, !tbaa !40
  %4 = fsub <2 x float> %i.ab, %i.fx              ; 3 uses
  store <2 x float> %4, ptr %i.aa, align 8, !tbaa !40
  %i.fy = load float, ptr %i.ew, align 4, !tbaa !40
  %i.fz = load float, ptr %i.fa, align 4, !tbaa !40
  %i.ga = load float, ptr %i.fc, align 4, !tbaa !40
  %i.gb = load float, ptr %i.fe, align 4, !tbaa !40
  %i.gc = extractelement <2 x float> %i.em, i64 1
  %i.gd = fmul float %i.gc, %i.gb
  %i.ge = extractelement <2 x float> %i.em, i64 0
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.ge, float %i.gd)
  %i.gg = load float, ptr %i.fi, align 4, !tbaa !40
  %i.gh = tail call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.en, float %i.gf)
  %i.gi = load <2 x float>, ptr %i.er, align 8    ; 3 uses
  %i.gj = load <2 x float>, ptr %i.es, align 4, !tbaa !40 ; 2 uses
  %i.gk = load <2 x float>, ptr %i.ey, align 4, !tbaa !40 ; 2 uses
  %i.gl = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gm = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x float> %i.gl, %i.gm
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <2 x i32> <i32 0, i32 2>
  %i.gp = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gp, <2 x float> %i.gn)
  %i.gr = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.fz, i64 1
  %i.gt = insertelement <2 x float> poison, float %i.en, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gu, <2 x float> %i.gq)
  %i.gw = fsub <2 x float> %i.gi, %i.gv           ; 4 uses
  store <2 x float> %i.gw, ptr %i.er, align 8, !tbaa !40
  %i.gx = fsub float %.sroa.5165.0.copyload, %i.gh ; 3 uses
  store float %i.gx, ptr %.sroa.5165.0..sroa_idx, align 8, !tbaa !40
  %i.gy = load float, ptr %i.r, align 4, !tbaa !40
  %i.gz = load float, ptr %i.t, align 4, !tbaa !40
  %i.ha = extractelement <2 x float> %4, i64 1    ; 3 uses
  %i.hb = fmul float %i.ha, %i.gz
  %i.hc = extractelement <2 x float> %4, i64 0    ; 3 uses
  %i.hd = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.gy, float %i.hb)
  %i.he = load float, ptr %i.x, align 4, !tbaa !40
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.he, float %i.hd)
  %i.hg = fcmp olt float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.ep, align 8, !tbaa !106
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.hh, align 8, !tbaa !11
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.hi = fmul float %i.ha, %i.ha
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bc, i64 132
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !123 ; 4 uses
  %foldExtExtBinop296 = fmul <2 x float> %i.gw, %i.gw
  %5 = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.hi)
  %i.hl = insertelement <2 x float> poison, float %3, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> %i.gw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hn = insertelement <2 x float> %foldExtExtBinop296, float %5, i64 0
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hm, <2 x float> %i.hn) ; 2 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.hp) ; 2 uses
  %i.hq = fmul float %sqrt.i.i, %i.hk
  %i.hr = extractelement <2 x float> %i.ho, i64 1
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gx, float %i.hr) ; 2 uses
  %sqrt.i.i98 = tail call float @llvm.sqrt.f32(float %i.hs) ; 2 uses
  %i.ht = fcmp olt float %i.hq, %sqrt.i.i98
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ht, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.hu, align 8, !tbaa !11
  %i.hv = fcmp ule float %i.hs, f0x34000000
  %i.hw = fcmp olt float %sqrt.i.i98, f0x34000000
  %i.hx = or i1 %i.hv, %i.hw
  br i1 %i.hx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.er, align 8 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.5165.0..sroa_idx, align 8, !tbaa !19
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.hy = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.hz = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.hy)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.ia = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.hz)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ia)
  %i.ib = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.ic = fmul float %.sroa.0.0.vec.extract.i, %i.ib
  %i.id = fmul float %.sroa.0.4.vec.extract.i, %i.ib
  %i.ie = fmul float %.sroa.8.8.vec.extract.i, %i.ib
  %i.if = fcmp ogt float %i.hp, f0x34000000
  %.0.i104 = select i1 %i.if, float %sqrt.i.i, float 0.000000e+00 ; 3 uses
  %i.ig = fmul float %.0.i104, %i.ic
  %i.ih = fmul float %.0.i104, %i.id
  %i.ii = fmul float %.0.i104, %i.ie
  %i.ij = fmul float %i.hk, %i.ig                 ; 2 uses
  %i.ik = fmul float %i.hk, %i.ih                 ; 2 uses
  %i.il = fmul float %i.hk, %i.ii                 ; 2 uses
  %.sroa.0.0.vec.insert.i110 = insertelement <2 x float> poison, float %i.ij, i64 0
  %.sroa.0.4.vec.insert.i111 = insertelement <2 x float> %.sroa.0.0.vec.insert.i110, float %i.ik, i64 1
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.il, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i111, ptr %i.er, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i112, ptr %.sroa.5165.0..sroa_idx, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.im = phi float [ %i.il, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.in = phi float [ %i.ik, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.io = phi float [ %i.ij, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.ip = load float, ptr %i.fc, align 4, !tbaa !40, !noalias !124 ; 3 uses
  %i.iq = load float, ptr %i.ey, align 4, !tbaa !40, !noalias !124 ; 3 uses
  %i.ir = load float, ptr %i.es, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.is = fneg float %i.iq
  %i.it = extractelement <2 x float> %i.gi, i64 0
  %i.iu = fsub float %i.it, %i.io                 ; 2 uses
  %i.iv = extractelement <2 x float> %i.gi, i64 1
  %i.iw = fsub float %i.iv, %i.in                 ; 2 uses
  %i.ix = fsub float %.sroa.5165.0.copyload, %i.im ; 2 uses
  %i.iy = load <2 x float>, ptr %i.ez, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.iz = load <2 x float>, ptr %i.fe, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.ja = fneg <2 x float> %i.iz                  ; 2 uses
  %i.jb = fneg float %i.ip
  %i.jc = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jd = insertelement <2 x float> %i.jc, float %i.ip, i64 1 ; 2 uses
  %i.je = fneg <2 x float> %i.jd
  %i.jf = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jg = insertelement <2 x float> %i.jf, float %i.iq, i64 1 ; 2 uses
  %i.jh = fmul <2 x float> %i.jg, %i.ja
  %i.ji = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.jd, <2 x float> %i.jh) ; 3 uses
  %i.jj = extractelement <2 x float> %i.iy, i64 0 ; 2 uses
  %i.jk = fmul float %i.jj, %i.jb
  %i.jl = extractelement <2 x float> %i.iz, i64 0
  %i.jm = tail call noundef float @llvm.fmuladd.f32(float %i.iq, float %i.jl, float %i.jk) ; 2 uses
  %i.jn = load <2 x float>, ptr %i.et, align 4, !tbaa !40, !noalias !124 ; 6 uses
  %i.jo = extractelement <2 x float> %i.jn, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop298 = fmul <2 x float> %i.jn, %shift
  %i.jp = extractelement <2 x float> %foldExtExtBinop298, i64 0
  %i.jq = extractelement <2 x float> %i.ji, i64 0
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.jq, float %i.jp)
  %i.js = extractelement <2 x float> %i.jn, i64 1
  %i.jt = tail call noundef float @llvm.fmuladd.f32(float %i.js, float %i.jm, float %i.jr)
  %i.ju = fdiv float 1.000000e+00, %i.jt          ; 4 uses
  %i.jv = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jx = fmul <2 x float> %i.ji, %i.jw
  %i.jy = fmul <2 x float> %i.jn, %i.je
  %i.jz = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ka = insertelement <2 x float> %i.jz, float %i.ir, i64 1 ; 2 uses
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.iz, <2 x float> %i.jy)
  %i.kc = fmul <2 x float> %i.kb, %i.jw
  %i.kd = fneg <2 x float> %i.iy
  %i.ke = fmul <2 x float> %i.ka, %i.kd
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jn, <2 x float> %i.jg, <2 x float> %i.ke)
  %i.kg = fmul <2 x float> %i.kf, %i.jw
  %i.kh = fmul float %i.jm, %i.ju
  %i.ki = extractelement <2 x float> %i.ja, i64 0
  %i.kj = fmul float %i.ir, %i.ki
  %i.kk = tail call noundef float @llvm.fmuladd.f32(float %i.jo, float %i.ip, float %i.kj)
  %i.kl = fmul float %i.kk, %i.ju
  %i.km = fmul float %i.jo, %i.is
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.ir, float %i.jj, float %i.km)
  %i.ko = fmul float %i.kn, %i.ju
  %i.kp = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kq, %i.kc
  %i.ks = insertelement <2 x float> poison, float %i.iu, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> %i.kt, <2 x float> %i.kr)
  %i.kv = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.kw, <2 x float> %i.ku)
  %i.ky = fmul float %i.iw, %i.kl
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kh, float %i.iu, float %i.ky)
  %i.la = tail call noundef float @llvm.fmuladd.f32(float %i.ko, float %i.ix, float %i.kz)
  %.sroa.3.12.vec.insert.i122 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.la, i64 0
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store i8 1, ptr %i.hu, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.k
  %.sroa.0167.0 = phi <2 x float> [ zeroinitializer, %bb.k ], [ %i.kx, %bb.p ], [ %i.em, %bb.q ] ; 4 uses
  %.sroa.11176.0 = phi <2 x float> [ zeroinitializer, %bb.k ], [ %.sroa.3.12.vec.insert.i122, %bb.p ], [ %.sroa.3.12.vec.insert.i85, %bb.q ]
  %.sroa.0167.0.vec.extract169 = extractelement <2 x float> %.sroa.0167.0, i64 0 ; 2 uses
  %i.lb = fadd <2 x float> %i.eh, %.sroa.0167.0
  %.sroa.11176.8.vec.extract178 = extractelement <2 x float> %.sroa.11176.0, i64 0 ; 3 uses
  %i.lc = fadd float %i.ek, %.sroa.11176.8.vec.extract178
  %.sroa.3.12.vec.insert.i127 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lc, i64 0
  store <2 x float> %i.lb, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i127, ptr %i.cv, align 8, !tbaa !19
  %i.ld = load ptr, ptr %0, align 8, !tbaa !9
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.lg = load ptr, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 272
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !39
  switch i32 %i.li, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146 [
    i32 2, label %bb.s
    i32 64, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.lj = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 112
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.lg, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.lk)
  br label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146

bb.t:                                             ; preds = %bb.r
  %i.ll = load ptr, ptr %i.a, align 8, !tbaa !102 ; 9 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 240
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !62 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 376
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !41 ; 4 uses
  %i.lq = load float, ptr %2, align 8, !tbaa !40
  %i.lr = load float, ptr %i.r, align 8, !tbaa !40
  %i.ls = load float, ptr %i.el, align 4, !tbaa !40
  %i.lt = load float, ptr %i.t, align 4, !tbaa !40
  %i.lu = fmul float %i.ls, %i.lt
  %i.lv = call float @llvm.fmuladd.f32(float %i.lq, float %i.lr, float %i.lu)
  %i.lw = load float, ptr %i.cv, align 8, !tbaa !40
  %i.lx = load float, ptr %i.x, align 8, !tbaa !40
  %i.ly = call noundef float @llvm.fmuladd.f32(float %i.lw, float %i.lx, float %i.lv) ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 628
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !44 ; 4 uses
  %i.mb = icmp sgt i32 %i.ma, -6                  ; 3 uses
  br i1 %i.mb, label %.lr.ph.i, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit

.lr.ph.i:                                         ; preds = %bb.t
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 256
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !62 ; 6 uses
  %i.me = add i32 %i.ma, 5                        ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.me, i32 0) ; 3 uses
  %i.mf = add nuw i32 %smax.i, 1
  %wide.trip.count.i = zext i32 %i.mf to i64      ; 3 uses
  %min.iters.check = icmp slt i32 %i.me, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.mg = zext nneg i32 %smax.i to i64
  %i.mh = shl nuw nsw i64 %i.mg, 2
  %i.mi = add nuw nsw i64 %i.mh, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.md, i64 %i.mi
  %scevgep241 = getelementptr i8, ptr %i.ln, i64 %i.mi
  %bound0 = icmp ult ptr %i.md, %scevgep241
  %bound1 = icmp ult ptr %i.ln, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
end_hunk_0
begin_hunk_1_@_ZNK37btDeformableFaceNodeContactConstraint5getVaEv
define dso_local { <2 x float>, <2 x float> } @_ZNK37btDeformableFaceNodeContactConstraint5getVaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK37btDeformableFaceNodeContactConstraint5getVbEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load float, ptr %i.g, align 4, !tbaa !40
  %i.j = load float, ptr %i.h, align 4, !tbaa !40 ; 2 uses
  %i.k = fmul float %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !165  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.q = load float, ptr %i.o, align 4, !tbaa !40
  %i.r = load float, ptr %i.p, align 4, !tbaa !40 ; 2 uses
  %i.s = fmul float %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.u = fadd float %i.k, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !165  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load float, ptr %i.x, align 4, !tbaa !40
  %i.aa = load float, ptr %i.y, align 4, !tbaa !40 ; 2 uses
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ad = fadd float %i.u, %i.ab
  %i.ae = load <2 x float>, ptr %i.l, align 4, !tbaa !40
  %i.af = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ag, %i.ae
  %i.ai = load <2 x float>, ptr %i.t, align 4, !tbaa !40
  %i.aj = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ak, %i.ai
  %i.am = fadd <2 x float> %i.ah, %i.al
  %i.an = load <2 x float>, ptr %i.ac, align 4, !tbaa !40
  %i.ao = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.an
  %i.ar = fadd <2 x float> %i.am, %i.aq           ; 2 uses
  %.sroa.0.0.vec.insert.i19 = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.as = shufflevector <2 x float> %.sroa.0.0.vec.insert.i19, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.at = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ar, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i22 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.as, 0
  %.fca.1.insert.i23 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i22, <2 x float> %i.at, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK37btDeformableFaceNodeContactConstraint5getDvEPKN10btSoftBody4NodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load <2 x float>, ptr %i.a, align 8, !tbaa !40
  %i.d = load <2 x float>, ptr %i.b, align 8, !tbaa !40
  %i.e = fadd <2 x float> %i.c, %i.d              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load float, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 8, !tbaa !40
  %i.j = fadd float %i.g, %i.i                    ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !171
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !165
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165
  %i.w = icmp eq ptr %i.v, %1
  %. = select i1 %i.w, i64 36, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ 32, %bb.b ], [ %., %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink
  %i.y = load float, ptr %i.x, align 4, !tbaa !40 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.e, %i.aa
  %i.ac = fmul float %i.j, %i.y
  %.sroa.3.12.vec.insert.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.4.vec.insert.i19.pn = phi <2 x float> [ %i.e, %bb.a ], [ %i.ab, %.sink.split ]
  %.sroa.3.12.vec.insert.i20.pn = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.a ], [ %.sroa.3.12.vec.insert.i10, %.sink.split ]
  %.fca.0.insert.i21.pn = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i19.pn, 0
  %.fca.1.insert.merged = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i21.pn, <2 x float> %.sroa.3.12.vec.insert.i20.pn, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN37btDeformableFaceNodeContactConstraint15solveConstraintERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0 ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0 ; 2 uses
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1
  %foldExtExtBinop = fsub <2 x float> %i.k, %i.e
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop170 = fsub <2 x float> %i.k, %i.e
  %i.n = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 2 uses
  %foldExtExtBinop172 = fsub <2 x float> %i.l, %i.f
  %i.o = extractelement <2 x float> %foldExtExtBinop172, i64 0 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !168  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !40 ; 2 uses
  %i.v = fmul float %i.n, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.m, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !40 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.y, float %i.w) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !40 ; 6 uses
  %i.ac = fmul float %i.m, %i.ab
  %i.ad = fmul float %i.n, %i.ab
  %i.ae = fmul float %i.o, %i.ab
  %i.af = fmul float %i.s, %i.z
  %i.ag = fmul float %i.u, %i.z
  %i.ah = fmul float %i.y, %i.z
  %i.ai = fmul float %i.ab, %i.af                 ; 3 uses
  %i.aj = fmul float %i.ab, %i.ag                 ; 3 uses
  %i.ak = fmul float %i.ab, %i.ah                 ; 3 uses
  %i.al = fsub float %i.ac, %i.ai                 ; 2 uses
  %i.am = fsub float %i.ad, %i.aj                 ; 2 uses
  %i.an = fsub float %i.ae, %i.ak                 ; 2 uses
  %.sroa.0.0.vec.insert.i16 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert.i17 = insertelement <2 x float> %.sroa.0.0.vec.insert.i16, float %i.am, i64 1
  %.sroa.3.12.vec.insert.i18 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %.sroa.098.0.copyload = load float, ptr %i.ao, align 8 ; 2 uses
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.sroa.499.0.copyload = load float, ptr %.sroa.499.0..sroa_idx, align 4 ; 2 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.sroa.5100.0.copyload = load float, ptr %.sroa.5100.0..sroa_idx, align 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !171
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112 ; 3 uses
  %i.as = load float, ptr %i.ar, align 8, !tbaa !173 ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink168 = phi float [ %i.av, %bb.b ], [ %i.as, %bb.a ] ; 3 uses
  %.pn149.in = phi ptr [ %i.au, %bb.b ], [ %i.ar, %bb.a ]
  %i.aw = fmul float %i.ai, %.sink168
  %i.ax = fmul float %i.aj, %.sink168
  %i.ay = fmul float %i.ak, %.sink168
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !40
  %i.bd = fsub float %i.bc, %i.ax                 ; 4 uses
  store float %i.bd, ptr %i.bb, align 4, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !40
  %3 = fsub float %i.bf, %i.ay                    ; 3 uses
  store float %3, ptr %i.be, align 8, !tbaa !40
  %i.bg = fsub float %i.ba, %i.aw                 ; 4 uses
  store float %i.bg, ptr %i.az, align 8, !tbaa !40
  %.pn149 = load float, ptr %.pn149.in, align 4, !tbaa !40 ; 3 uses
  %.pn154 = fmul float %i.al, %.pn149
  %storemerge153 = fsub float %.sroa.098.0.copyload, %.pn154 ; 2 uses
  store float %storemerge153, ptr %i.ao, align 8, !tbaa !40
  %.pn151 = fmul float %i.am, %.pn149
  %storemerge150 = fsub float %.sroa.499.0.copyload, %.pn151 ; 3 uses
  store float %storemerge150, ptr %.sroa.499.0..sroa_idx, align 4, !tbaa !40
  %.pn = fmul float %i.an, %.pn149
  %storemerge = fsub float %.sroa.5100.0.copyload, %.pn ; 3 uses
  store float %storemerge, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !40
  %i.bh = load float, ptr %i.r, align 4, !tbaa !40
  %i.bi = load float, ptr %i.t, align 4, !tbaa !40
  %i.bj = fmul float %i.bd, %i.bi
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bh, float %i.bj)
  %i.bl = load float, ptr %i.x, align 4, !tbaa !40
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %3, float %i.bl, float %i.bk)
  %i.bn = fcmp ogt float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bo, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bp = fmul float %i.bd, %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.br = load float, ptr %i.bq, align 4, !tbaa !179 ; 4 uses
  %i.bs = fmul float %storemerge150, %storemerge150
  %4 = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bp)
  %i.bt = insertelement <2 x float> poison, float %3, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %storemerge153, i64 1 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %4, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bs, i64 1
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bu, <2 x float> %i.bw) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.by) ; 2 uses
  %i.bz = fmul float %sqrt.i.i, %i.br
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %storemerge, float %storemerge, float %i.ca) ; 2 uses
  %sqrt.i.i41 = tail call float @llvm.sqrt.f32(float %i.cb) ; 2 uses
  %i.cc = fcmp olt float %i.bz, %sqrt.i.i41
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cc, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.cd, align 8, !tbaa !11
  %i.ce = fcmp ule float %i.cb, f0x34000000
  %i.cf = fcmp olt float %sqrt.i.i41, f0x34000000
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.ao, align 8 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !19
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.ch = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ci = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ch)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.ci)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cj)
  %i.ck = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.cl = fmul float %.sroa.0.0.vec.extract.i, %i.ck
  %i.cm = fmul float %.sroa.0.4.vec.extract.i, %i.ck
  %i.cn = fmul float %.sroa.8.8.vec.extract.i, %i.ck
  %i.co = fcmp ogt float %i.by, f0x34000000
  %.0.i47 = select i1 %i.co, float %sqrt.i.i, float 0.000000e+00 ; 3 uses
  %i.cp = fmul float %.0.i47, %i.cl
  %i.cq = fmul float %.0.i47, %i.cm
  %i.cr = fmul float %.0.i47, %i.cn
  %i.cs = fmul float %i.br, %i.cp                 ; 2 uses
  %i.ct = fmul float %i.br, %i.cq                 ; 2 uses
  %i.cu = fmul float %i.br, %i.cr                 ; 2 uses
  %.sroa.0.0.vec.insert.i53 = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0.4.vec.insert.i54 = insertelement <2 x float> %.sroa.0.0.vec.insert.i53, float %i.ct, i64 1
  %.sroa.3.12.vec.insert.i55 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i54, ptr %i.ao, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i55, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cv = phi float [ %i.cu, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.cw = phi float [ %i.ct, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.cx = phi float [ %i.cs, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.cy = load float, ptr %i.ar, align 8, !tbaa !173
  %i.cz = fdiv float -1.000000e+00, %i.cy         ; 3 uses
  %i.da = fsub float %i.cx, %.sroa.098.0.copyload
  %i.db = fsub float %i.cw, %.sroa.499.0.copyload
  %i.dc = fsub float %i.cv, %.sroa.5100.0.copyload
  %i.dd = fmul float %i.cz, %i.da
  %i.de = fmul float %i.cz, %i.db
  %i.df = fmul float %i.cz, %i.dc
  %.sroa.0.0.vec.insert.i.i63 = insertelement <2 x float> poison, float %i.dd, i64 0
  %.sroa.0.4.vec.insert.i.i64 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i63, float %i.de, i64 1
  %.sroa.3.12.vec.insert.i.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i8 1, ptr %i.cd, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %.sroa.0102.0 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %.sroa.0.4.vec.insert.i.i64, %bb.i ], [ %.sroa.0.4.vec.insert.i17, %bb.j ] ; 2 uses
  %.sroa.11.0 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %.sroa.3.12.vec.insert.i.i65, %bb.i ], [ %.sroa.3.12.vec.insert.i18, %bb.j ]
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = fmul float %i.z, %i.z
  %.sroa.0102.0.vec.extract106 = extractelement <2 x float> %.sroa.0102.0, i64 0
  %i.di = fadd float %i.ai, %.sroa.0102.0.vec.extract106
  %.sroa.0102.4.vec.extract110 = extractelement <2 x float> %.sroa.0102.0, i64 1
  %i.dj = fadd float %i.aj, %.sroa.0102.4.vec.extract110
  %.sroa.11.8.vec.extract114 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.dk = fadd float %i.ak, %.sroa.11.8.vec.extract114
  %.sroa.0.0.vec.insert.i68 = insertelement <2 x float> poison, float %i.di, i64 0
  %.sroa.0.4.vec.insert.i69 = insertelement <2 x float> %.sroa.0.0.vec.insert.i68, float %i.dj, i64 1
  %.sroa.3.12.vec.insert.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i69, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i70, ptr %i.dg, align 8, !tbaa !19
  %i.dl = load ptr, ptr %0, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret float %i.dh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN37btDeformableFaceNodeContactConstraint12applyImpulseERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load float, ptr %i.d, align 4, !tbaa !40 ; 3 uses
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load float, ptr %i.i, align 8, !tbaa !40 ; 3 uses
  %i.k = extractelement <2 x float> %i.f, i64 0
  %i.l = fmul float %i.k, %i.j                    ; 3 uses
  %i.m = extractelement <2 x float> %i.f, i64 1
  %i.n = fmul float %i.m, %i.j                    ; 3 uses
  %i.o = fmul float %i.h, %i.j                    ; 3 uses
  %i.p = fcmp ogt float %i.e, 0.000000e+00
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = fmul float %i.e, %i.h
  %i.r = insertelement <2 x float> poison, float %i.e, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.s, %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !40
  %i.w = fadd <2 x float> %i.t, %i.v
  store <2 x float> %i.w, ptr %i.u, align 4, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !40
  %i.z = fadd float %i.q, %i.y
  store float %i.z, ptr %i.x, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !182 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !165 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !165 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.an = load float, ptr %i.ak, align 4, !tbaa !40
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !40 ; 3 uses
  %i.as = fmul float %i.l, %i.ar
  %i.at = fmul float %i.n, %i.ar
  %i.au = fmul float %i.o, %i.ar
  %i.av = load float, ptr %i.ap, align 4, !tbaa !40
  %i.aw = fsub float %i.av, %i.as
  store float %i.aw, ptr %i.ap, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !40
  %i.az = fsub float %i.ay, %i.at
  store float %i.az, ptr %i.ax, align 4, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !40
  %i.bc = fsub float %i.bb, %i.au
  store float %i.bc, ptr %i.ba, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bd = load float, ptr %i.al, align 4, !tbaa !40
  %i.be = fcmp ogt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !40 ; 3 uses
  %i.bh = fmul float %i.l, %i.bg
  %i.bi = fmul float %i.n, %i.bg
  %i.bj = fmul float %i.o, %i.bg
  %i.bk = load float, ptr %i.ag, align 4, !tbaa !40
  %i.bl = fsub float %i.bk, %i.bh
  store float %i.bl, ptr %i.ag, align 4, !tbaa !40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 52 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !40
  %i.bo = fsub float %i.bn, %i.bi
  store float %i.bo, ptr %i.bm, align 4, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !40
  %i.br = fsub float %i.bq, %i.bj
  store float %i.br, ptr %i.bp, align 4, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bs = load float, ptr %i.am, align 4, !tbaa !40
  %i.bt = fcmp ogt float %i.bs, 0.000000e+00
end_hunk_1
