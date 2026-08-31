Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableContactConstraint?download=true
inline.NumInlined: 377
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK34btDeformableRigidContactConstraint10getSplitVaEv:bb.a
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN34btDeformableRigidContactConstraint15solveConstraintERK19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { <2 x float>, <2 x float> } %i.e(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.g = extractvalue { <2 x float>, <2 x float> } %i.f, 0 ; 2 uses
  %i.h = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { <2 x float>, <2 x float> } %i.k(ptr noundef nonnull align 8 dereferenceable(40) %0) ; 2 uses
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0 ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.l, 1
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.g
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop290 = fsub <2 x float> %i.m, %i.g
  %i.p = extractelement <2 x float> %foldExtExtBinop290, i64 1 ; 2 uses
  %foldExtExtBinop292 = fsub <2 x float> %i.n, %i.h
  %i.q = extractelement <2 x float> %foldExtExtBinop292, i64 0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.t = load <2 x float>, ptr %i.r, align 4, !tbaa !40 ; 3 uses
  %i.u = extractelement <2 x float> %i.t, i64 1   ; 4 uses
  %i.v = fmul float %i.u, %i.p
  %i.w = extractelement <2 x float> %i.t, i64 0   ; 4 uses
  %i.x = tail call float @llvm.fmuladd.f32(float %i.o, float %i.w, float %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !40 ; 5 uses
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.z, float %i.x)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.ab, align 8, !tbaa !40 ; 3 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.ae = fmul float %i.u, %i.ad
  %i.af = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.w, float %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !40 ; 3 uses
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.z, float %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !117 ; 4 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.al, float %i.aa) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load float, ptr %i.an, align 8, !tbaa !119 ; 5 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00      ; 2 uses
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !120
  %i.as = fdiv float %i.ao, %i.ar
  %i.at = fadd float %i.am, %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0232 = phi float [ %i.at, %bb.b ], [ %i.am, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.av = load i32, ptr %i.au, align 4, !tbaa !121
  %.not = icmp eq i32 %i.av, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !122
  %i.ay = fmul float %i.ao, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !120
  %i.bb = fdiv float %i.ay, %i.ba
  %i.bc = fadd float %.0232, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi float [ %i.bc, %bb.d ], [ %.0232, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !102 ; 17 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = fmul float %i.af, %i.al
  %i.bg = fmul float %i.ad, %i.al
  %i.bh = fmul float %i.ai, %i.al
  %i.bi = fadd float %i.o, %i.bf
  %i.bj = fadd float %i.p, %i.bg
  %i.bk = fadd float %i.q, %i.bh
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !120
  %i.bn = fdiv float %i.ao, %i.bm                 ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.t, %i.bp
  %i.br = fmul float %i.z, %i.bn
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.br, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0206.0 = phi <2 x float> [ %i.bq, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.7.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.0206.0.vec.extract = extractelement <2 x float> %.sroa.0206.0, i64 0
  %i.bs = fadd float %i.bi, %.sroa.0206.0.vec.extract ; 2 uses
  %.sroa.0206.4.vec.extract = extractelement <2 x float> %.sroa.0206.0, i64 1
  %i.bt = fadd float %i.bj, %.sroa.0206.4.vec.extract ; 2 uses
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.0, i64 0
  %i.bu = fadd float %i.bk, %.sroa.7.8.vec.extract ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 84
  %i.by = load <2 x float>, ptr %i.be, align 4, !tbaa !40 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bw, align 4, !tbaa !40 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.bv, align 4, !tbaa !40 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !40 ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ch = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ci, <2 x float> %i.cf)
  %i.ck = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cl = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> %i.cj) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.cp = load float, ptr %i.co, align 4, !tbaa !40 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 100
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !40 ; 3 uses
  %i.cs = fmul float %i.bt, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.bs, float %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !40 ; 3 uses
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.bu, float %i.ct) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !122
  %i.da = fmul float %i.ao, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dc = load float, ptr %i.db, align 4, !tbaa !120
  %i.dd = fdiv float %i.da, %i.dc                 ; 3 uses
  %i.de = fmul float %i.w, %i.dd                  ; 2 uses
  %i.df = fmul float %i.dd, %i.u                  ; 2 uses
  %i.dg = fmul float %i.z, %i.dd                  ; 2 uses
  %i.dh = fmul float %i.cr, %i.df
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.de, float %i.dh)
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.dg, float %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.ce, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.de, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = fadd <2 x float> %i.cn, %i.ds           ; 2 uses
  store <2 x float> %i.dt, ptr %2, align 8, !tbaa !40
  %i.du = fadd float %i.dj, %i.cw
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dv = phi float [ %i.du, %bb.h ], [ %i.cw, %bb.g ]
  %i.dw = phi <2 x float> [ %i.dt, %bb.h ], [ %i.cn, %bb.g ]
  %i.dx = fmul float %.1, %i.w                    ; 2 uses
  %i.dy = fmul float %.1, %i.u                    ; 2 uses
  %i.dz = fmul float %i.z, %.1                    ; 2 uses
  %i.ea = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = shufflevector <2 x float> %i.by, <2 x float> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.ed = fmul <2 x float> %i.eb, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ef, <2 x float> %i.ed)
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ei, <2 x float> %i.eg) ; 6 uses
  %i.ek = fmul float %i.dy, %i.cr
  %i.el = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dx, float %i.ek)
  %i.em = tail call noundef float @llvm.fmuladd.f32(float %i.cv, float %i.dz, float %i.el) ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.eo = fsub <2 x float> %i.dw, %i.ej           ; 5 uses
  %i.ep = fsub float %i.dv, %i.em                 ; 3 uses
  %.sroa.3.12.vec.insert.i85 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  %i.eq = fcmp ogt float %.1, 0.000000e+00
  br i1 %i.eq, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 1, ptr %i.er, align 8, !tbaa !106
  %i.es = fmul float %.1, %.1                     ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sroa.5165.0.copyload = load float, ptr %.sroa.5165.0..sroa_idx, align 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bd, i64 140 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.ew = extractelement <2 x float> %i.ej, i64 1
  %i.ex = extractelement <2 x float> %i.ej, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bd, i64 148 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bd, i64 156 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bd, i64 164 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bd, i64 172 ; 3 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !40
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 176 ; 3 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !40
  %i.fi = fmul float %i.ew, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.ff, float %i.ex, float %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bd, i64 180 ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !40
  %i.fm = tail call noundef float @llvm.fmuladd.f32(float %i.fl, float %i.em, float %i.fj)
  %i.fn = load <2 x float>, ptr %i.eu, align 4, !tbaa !40 ; 2 uses
  %i.fo = load <2 x float>, ptr %i.fa, align 4, !tbaa !40 ; 2 uses
  %i.fp = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 1, i32 3>
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ft = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fr)
  %i.fv = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fd, i64 1
  %i.fx = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fu)
  %i.ga = fsub <2 x float> %i.ac, %i.fz           ; 3 uses
  store <2 x float> %i.ga, ptr %i.ab, align 8, !tbaa !40
  %i.gb = fsub float %i.ai, %i.fm                 ; 4 uses
  store float %i.gb, ptr %i.ah, align 8, !tbaa !40
  %i.gc = load float, ptr %i.ey, align 4, !tbaa !40
  %i.gd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.ge = load float, ptr %i.fe, align 4, !tbaa !40
  %i.gf = load float, ptr %i.fg, align 4, !tbaa !40
  %i.gg = extractelement <2 x float> %i.eo, i64 1
  %i.gh = fmul float %i.gg, %i.gf
  %i.gi = extractelement <2 x float> %i.eo, i64 0
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gi, float %i.gh)
  %i.gk = load float, ptr %i.fk, align 4, !tbaa !40
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.ep, float %i.gj)
  %i.gm = load <2 x float>, ptr %i.et, align 8    ; 3 uses
  %i.gn = load <2 x float>, ptr %i.eu, align 4, !tbaa !40 ; 2 uses
  %i.go = load <2 x float>, ptr %i.fa, align 4, !tbaa !40 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = shufflevector <2 x float> %i.gn, <2 x float> %i.go, <2 x i32> <i32 1, i32 3>
  %i.gr = fmul <2 x float> %i.gp, %i.gq
  %i.gs = shufflevector <2 x float> %i.gn, <2 x float> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gt = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gt, <2 x float> %i.gr)
  %i.gv = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gd, i64 1
  %i.gx = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gy, <2 x float> %i.gu)
  %i.ha = fsub <2 x float> %i.gm, %i.gz           ; 4 uses
  store <2 x float> %i.ha, ptr %i.et, align 8, !tbaa !40
  %i.hb = fsub float %.sroa.5165.0.copyload, %i.gl ; 6 uses
  store float %i.hb, ptr %.sroa.5165.0..sroa_idx, align 8, !tbaa !40
  %i.hc = load float, ptr %i.r, align 4, !tbaa !40
  %i.hd = load float, ptr %i.s, align 4, !tbaa !40
  %i.he = extractelement <2 x float> %i.ga, i64 1 ; 3 uses
  %i.hf = fmul float %i.he, %i.hd
  %i.hg = extractelement <2 x float> %i.ga, i64 0 ; 3 uses
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hc, float %i.hf)
  %i.hi = load float, ptr %i.y, align 4, !tbaa !40
  %i.hj = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.hi, float %i.hh)
  %i.hk = fcmp olt float %i.hj, 0.000000e+00
  br i1 %i.hk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.er, align 8, !tbaa !106
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.hl, align 8, !tbaa !11
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.hm = fmul float %i.he, %i.he
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.hg, float %i.hm)
  %i.ho = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.hn) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ho) ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bd, i64 132
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !123 ; 4 uses
  %i.hr = fmul float %sqrt.i.i, %i.hq
  %foldExtExtBinop294 = fmul <2 x float> %i.ha, %i.ha
  %i.hs = extractelement <2 x float> %foldExtExtBinop294, i64 1
  %i.ht = extractelement <2 x float> %i.ha, i64 0 ; 2 uses
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hs)
  %i.hv = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.hu) ; 2 uses
  %sqrt.i.i98 = tail call float @llvm.sqrt.f32(float %i.hv) ; 2 uses
  %i.hw = fcmp olt float %i.hr, %sqrt.i.i98
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.hw, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.hx, align 8, !tbaa !11
  %i.hy = fcmp ule float %i.hv, f0x34000000
  %i.hz = fcmp olt float %sqrt.i.i98, f0x34000000
  %i.ia = or i1 %i.hy, %i.hz
  br i1 %i.ia, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.et, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.ib = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ic = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ib)
  %i.id = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.hb, float %i.ic)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.id)
  %i.ie = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.if = fmul float %.sroa.0.0.vec.extract.i, %i.ie
  %i.ig = fmul float %.sroa.0.4.vec.extract.i, %i.ie
  %i.ih = fmul float %i.hb, %i.ie
  %i.ii = fcmp ogt float %i.ho, f0x34000000
  %.0.i104 = select i1 %i.ii, float %sqrt.i.i, float 0.000000e+00 ; 3 uses
  %i.ij = fmul float %.0.i104, %i.if
  %i.ik = fmul float %.0.i104, %i.ig
  %i.il = fmul float %.0.i104, %i.ih
  %i.im = fmul float %i.hq, %i.ij                 ; 2 uses
  %i.in = fmul float %i.hq, %i.ik                 ; 2 uses
  %i.io = fmul float %i.hq, %i.il                 ; 2 uses
  %.sroa.0.0.vec.insert.i110 = insertelement <2 x float> poison, float %i.im, i64 0
  %.sroa.0.4.vec.insert.i111 = insertelement <2 x float> %.sroa.0.0.vec.insert.i110, float %i.in, i64 1
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.io, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i111, ptr %i.et, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i112, ptr %.sroa.5165.0..sroa_idx, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ip = phi float [ %i.io, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.iq = phi float [ %i.in, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.ir = phi float [ %i.im, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.is = load float, ptr %i.fe, align 4, !tbaa !40, !noalias !124 ; 3 uses
  %i.it = load float, ptr %i.fa, align 4, !tbaa !40, !noalias !124 ; 3 uses
  %i.iu = load float, ptr %i.eu, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.iv = fneg float %i.it
  %i.iw = extractelement <2 x float> %i.gm, i64 0
  %i.ix = fsub float %i.iw, %i.ir                 ; 2 uses
  %i.iy = extractelement <2 x float> %i.gm, i64 1
  %i.iz = fsub float %i.iy, %i.iq                 ; 2 uses
  %i.ja = fsub float %.sroa.5165.0.copyload, %i.ip ; 2 uses
  %i.jb = load <2 x float>, ptr %i.fb, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.jc = load <2 x float>, ptr %i.fg, align 4, !tbaa !40, !noalias !124 ; 4 uses
  %i.jd = fneg <2 x float> %i.jc                  ; 2 uses
  %i.je = fneg float %i.is
  %i.jf = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jg = insertelement <2 x float> %i.jf, float %i.is, i64 1 ; 2 uses
  %i.jh = fneg <2 x float> %i.jg
  %i.ji = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jj = insertelement <2 x float> %i.ji, float %i.it, i64 1 ; 2 uses
  %i.jk = fmul <2 x float> %i.jj, %i.jd
  %i.jl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.jg, <2 x float> %i.jk) ; 3 uses
  %i.jm = extractelement <2 x float> %i.jb, i64 0 ; 2 uses
  %i.jn = fmul float %i.jm, %i.je
  %i.jo = extractelement <2 x float> %i.jc, i64 0
  %i.jp = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.jo, float %i.jn) ; 2 uses
  %i.jq = load <2 x float>, ptr %i.ev, align 4, !tbaa !40, !noalias !124 ; 6 uses
  %i.jr = extractelement <2 x float> %i.jq, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop296 = fmul <2 x float> %i.jq, %shift
  %i.js = extractelement <2 x float> %foldExtExtBinop296, i64 0
  %i.jt = extractelement <2 x float> %i.jl, i64 0
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.jt, float %i.js)
  %i.jv = extractelement <2 x float> %i.jq, i64 1
  %i.jw = tail call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.jp, float %i.ju)
  %i.jx = fdiv float 1.000000e+00, %i.jw          ; 4 uses
  %i.jy = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ka = fmul <2 x float> %i.jl, %i.jz
  %i.kb = fmul <2 x float> %i.jq, %i.jh
  %i.kc = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = insertelement <2 x float> %i.kc, float %i.iu, i64 1 ; 2 uses
  %i.ke = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.jc, <2 x float> %i.kb)
  %i.kf = fmul <2 x float> %i.ke, %i.jz
  %i.kg = fneg <2 x float> %i.jb
  %i.kh = fmul <2 x float> %i.kd, %i.kg
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jq, <2 x float> %i.jj, <2 x float> %i.kh)
  %i.kj = fmul <2 x float> %i.ki, %i.jz
  %i.kk = fmul float %i.jp, %i.jx
  %i.kl = extractelement <2 x float> %i.jd, i64 0
  %i.km = fmul float %i.iu, %i.kl
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.jr, float %i.is, float %i.km)
  %i.ko = fmul float %i.kn, %i.jx
  %i.kp = fmul float %i.jr, %i.iv
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.jm, float %i.kp)
  %i.kr = fmul float %i.kq, %i.jx
  %i.ks = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.kt, %i.kf
  %i.kv = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kw, <2 x float> %i.ku)
  %i.ky = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.kz, <2 x float> %i.kx)
  %i.lb = fmul float %i.iz, %i.ko
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.ix, float %i.lb)
  %i.ld = tail call noundef float @llvm.fmuladd.f32(float %i.kr, float %i.ja, float %i.lc)
  %.sroa.3.12.vec.insert.i122 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ld, i64 0
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store i8 1, ptr %i.hx, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.k
  %.sroa.0167.0 = phi <2 x float> [ zeroinitializer, %bb.k ], [ %i.la, %bb.p ], [ %i.eo, %bb.q ] ; 4 uses
  %.sroa.11176.0 = phi <2 x float> [ zeroinitializer, %bb.k ], [ %.sroa.3.12.vec.insert.i122, %bb.p ], [ %.sroa.3.12.vec.insert.i85, %bb.q ]
  %.sroa.0167.0.vec.extract169 = extractelement <2 x float> %.sroa.0167.0, i64 0 ; 2 uses
  %i.le = fadd <2 x float> %i.ej, %.sroa.0167.0
  %.sroa.11176.8.vec.extract178 = extractelement <2 x float> %.sroa.11176.0, i64 0 ; 3 uses
  %i.lf = fadd float %i.em, %.sroa.11176.8.vec.extract178
  %.sroa.3.12.vec.insert.i127 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lf, i64 0
  store <2 x float> %i.le, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i127, ptr %i.cx, align 8, !tbaa !19
  %i.lg = load ptr, ptr %0, align 8, !tbaa !9
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.lj = load ptr, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 272
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !39
  switch i32 %i.ll, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146 [
    i32 2, label %bb.s
    i32 64, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.lm = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 112
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(744) %i.lj, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ln)
  br label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit146

bb.t:                                             ; preds = %bb.r
  %i.lo = load ptr, ptr %i.a, align 8, !tbaa !102 ; 9 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 240
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !62 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 376
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !41 ; 4 uses
  %i.lt = load float, ptr %2, align 8, !tbaa !40
  %i.lu = load float, ptr %i.r, align 8, !tbaa !40
  %i.lv = load float, ptr %i.en, align 4, !tbaa !40
  %i.lw = load float, ptr %i.s, align 4, !tbaa !40
  %i.lx = fmul float %i.lv, %i.lw
  %i.ly = call float @llvm.fmuladd.f32(float %i.lt, float %i.lu, float %i.lx)
  %i.lz = load float, ptr %i.cx, align 8, !tbaa !40
  %i.ma = load float, ptr %i.y, align 8, !tbaa !40
  %i.mb = call noundef float @llvm.fmuladd.f32(float %i.lz, float %i.ma, float %i.ly) ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 628
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !44 ; 4 uses
  %i.me = icmp sgt i32 %i.md, -6                  ; 3 uses
  br i1 %i.me, label %.lr.ph.i, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit

.lr.ph.i:                                         ; preds = %bb.t
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ls, i64 256
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !62 ; 6 uses
  %i.mh = add i32 %i.md, 5                        ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.mh, i32 0) ; 3 uses
  %i.mi = add nuw i32 %smax.i, 1
  %wide.trip.count.i = zext i32 %i.mi to i64      ; 3 uses
  %min.iters.check = icmp slt i32 %i.mh, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.mj = zext nneg i32 %smax.i to i64
  %i.mk = shl nuw nsw i64 %i.mj, 2
  %i.ml = add nuw nsw i64 %i.mk, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mg, i64 %i.ml
  %scevgep241 = getelementptr i8, ptr %i.lq, i64 %i.ml
  %bound0 = icmp ult ptr %i.mg, %scevgep241
  %bound1 = icmp ult ptr %i.lq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %index ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load = load <4 x float>, ptr %i.mm, align 4, !tbaa !40, !alias.scope !127
  %wide.load242 = load <4 x float>, ptr %i.mn, align 4, !tbaa !40, !alias.scope !127
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %wide.load243 = load <4 x float>, ptr %i.mo, align 4, !tbaa !40, !alias.scope !130, !noalias !127
  %wide.load244 = load <4 x float>, ptr %i.mp, align 4, !tbaa !40, !alias.scope !130, !noalias !127
  %i.mq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load243)
  %i.mr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load242, <4 x float> %broadcast.splat, <4 x float> %wide.load244)
  store <4 x float> %i.mq, ptr %i.mo, align 4, !tbaa !40, !alias.scope !130, !noalias !127
  store <4 x float> %i.mr, ptr %i.mp, align 4, !tbaa !40, !alias.scope !130, !noalias !127
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11btMultiBody22applyDeltaVeeMultiDof2EPKff.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.mt = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.mu = and i64 %i.mt, 1
  %lcmp.mod.not.not = icmp eq i64 %i.mu, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv.i.ph
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !40
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.i.ph ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN38btDeformableFaceRigidContactConstraint17applySplitImpulseERK9btVector3:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN37btDeformableFaceNodeContactConstraintC2ERKN10btSoftBody25DeformableFaceNodeContactERK19btContactSolverInfo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 9), (16, 96)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(128) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV29btDeformableContactConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV37btDeformableFaceNodeContactConstraint, i64 16), ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !167
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
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
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call { <2 x float>, <2 x float> } %i.i(ptr noundef nonnull align 8 dereferenceable(96) %0) ; 2 uses
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.j, 0
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.j, 1
  %foldExtExtBinop = fsub <2 x float> %i.l, %i.f
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !168  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.u = load float, ptr %i.t, align 4, !tbaa !40 ; 3 uses
  %i.v = fmul float %i.m, %i.u
  %i.w = load <2 x float>, ptr %i.p, align 4, !tbaa !40 ; 3 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = insertelement <2 x float> poison, float %i.u, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.ab = fsub <2 x float> %i.k, %i.e             ; 3 uses
  %i.ac = fmul <2 x float> %i.ab, %i.z
  %foldExtExtBinop170 = fmul <2 x float> %i.ab, %i.w
  %i.ad = extractelement <2 x float> %foldExtExtBinop170, i64 1
  %i.ae = extractelement <2 x float> %i.ab, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.x, float %i.ad)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.s, float %i.af) ; 4 uses
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.w, %i.ai
  %i.ak = fmul float %i.s, %i.ag
  %i.al = fmul <2 x float> %i.z, %i.aj            ; 3 uses
  %i.am = fmul float %i.u, %i.ak                  ; 3 uses
  %i.an = fsub <2 x float> %i.ac, %i.al           ; 2 uses
  %i.ao = fsub float %i.v, %i.am                  ; 2 uses
  %.sroa.3.12.vec.insert.i18 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  %i.ap = load <2 x float>, ptr %i.aa, align 8    ; 3 uses
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.sroa.5100.0.copyload = load float, ptr %.sroa.5100.0..sroa_idx, align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !171
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112 ; 3 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !173 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink168 = phi float [ %i.aw, %bb.b ], [ %i.at, %bb.a ] ; 2 uses
  %.pn149.in = phi ptr [ %i.av, %bb.b ], [ %i.as, %bb.a ]
  %i.ax = fmul float %i.am, %.sink168
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %.sink168, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.al, %i.ba
  %i.bc = load <2 x float>, ptr %i.ay, align 8, !tbaa !40
  %i.bd = fsub <2 x float> %i.bc, %i.bb           ; 3 uses
  store <2 x float> %i.bd, ptr %i.ay, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bf = load float, ptr %i.be, align 8, !tbaa !40
  %i.bg = fsub float %i.bf, %i.ax                 ; 4 uses
  store float %i.bg, ptr %i.be, align 8, !tbaa !40
  %.pn149 = load float, ptr %.pn149.in, align 4, !tbaa !40 ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.an, %i.bi
  %i.bk = fsub <2 x float> %i.ap, %i.bj           ; 4 uses
  store <2 x float> %i.bk, ptr %i.aa, align 8, !tbaa !40
  %.pn = fmul float %i.ao, %.pn149
  %storemerge = fsub float %.sroa.5100.0.copyload, %.pn ; 6 uses
  store float %storemerge, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !40
  %i.bl = load float, ptr %i.p, align 4, !tbaa !40
  %i.bm = load float, ptr %i.q, align 4, !tbaa !40
  %i.bn = extractelement <2 x float> %i.bd, i64 1 ; 3 uses
  %i.bo = fmul float %i.bn, %i.bm
  %i.bp = extractelement <2 x float> %i.bd, i64 0 ; 3 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bl, float %i.bo)
  %i.br = load float, ptr %i.r, align 4, !tbaa !40
  %i.bs = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.br, float %i.bq)
  %i.bt = fcmp ogt float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bu, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bv = fmul float %i.bn, %i.bn
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bv)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bw) ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bx) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.bz = load float, ptr %i.by, align 4, !tbaa !179 ; 4 uses
  %i.ca = fmul float %sqrt.i.i, %i.bz
  %foldExtExtBinop172 = fmul <2 x float> %i.bk, %i.bk
  %i.cb = extractelement <2 x float> %foldExtExtBinop172, i64 1
  %i.cc = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cb)
  %i.ce = tail call noundef float @llvm.fmuladd.f32(float %storemerge, float %storemerge, float %i.cd) ; 2 uses
  %sqrt.i.i41 = tail call float @llvm.sqrt.f32(float %i.ce) ; 2 uses
  %i.cf = fcmp olt float %i.ca, %sqrt.i.i41
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cf, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.cg, align 8, !tbaa !11
  %i.ch = fcmp ule float %i.ce, f0x34000000
  %i.ci = fcmp olt float %sqrt.i.i41, f0x34000000
  %i.cj = or i1 %i.ch, %i.ci
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.aa, align 8 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.ck = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.cl = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %storemerge, float %storemerge, float %i.cl)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cm)
  %i.cn = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.co = fmul float %.sroa.0.0.vec.extract.i, %i.cn
  %i.cp = fmul float %.sroa.0.4.vec.extract.i, %i.cn
  %i.cq = fmul float %storemerge, %i.cn
  %i.cr = fcmp ogt float %i.bx, f0x34000000
  %.0.i47 = select i1 %i.cr, float %sqrt.i.i, float 0.000000e+00 ; 3 uses
  %i.cs = fmul float %.0.i47, %i.co
  %i.ct = fmul float %.0.i47, %i.cp
  %i.cu = fmul float %.0.i47, %i.cq
  %i.cv = fmul float %i.bz, %i.cs                 ; 2 uses
  %i.cw = fmul float %i.bz, %i.ct                 ; 2 uses
  %i.cx = fmul float %i.bz, %i.cu                 ; 2 uses
  %.sroa.0.0.vec.insert.i53 = insertelement <2 x float> poison, float %i.cv, i64 0
  %.sroa.0.4.vec.insert.i54 = insertelement <2 x float> %.sroa.0.0.vec.insert.i53, float %i.cw, i64 1
  %.sroa.3.12.vec.insert.i55 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i54, ptr %i.aa, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i55, ptr %.sroa.5100.0..sroa_idx, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cy = phi float [ %i.cx, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.cz = phi float [ %i.cw, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.da = phi float [ %i.cv, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.db = load float, ptr %i.as, align 8, !tbaa !173
  %i.dc = fdiv float -1.000000e+00, %i.db         ; 3 uses
  %i.dd = extractelement <2 x float> %i.ap, i64 0
  %i.de = fsub float %i.da, %i.dd
  %i.df = extractelement <2 x float> %i.ap, i64 1
  %i.dg = fsub float %i.cz, %i.df
  %i.dh = fsub float %i.cy, %.sroa.5100.0.copyload
  %i.di = fmul float %i.dc, %i.de
  %i.dj = fmul float %i.dc, %i.dg
  %i.dk = fmul float %i.dc, %i.dh
  %.sroa.0.0.vec.insert.i.i63 = insertelement <2 x float> poison, float %i.di, i64 0
  %.sroa.0.4.vec.insert.i.i64 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i63, float %i.dj, i64 1
  %.sroa.3.12.vec.insert.i.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i8 1, ptr %i.cg, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %.sroa.0102.0 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %.sroa.0.4.vec.insert.i.i64, %bb.i ], [ %i.an, %bb.j ]
  %.sroa.11.0 = phi <2 x float> [ zeroinitializer, %bb.d ], [ %.sroa.3.12.vec.insert.i.i65, %bb.i ], [ %.sroa.3.12.vec.insert.i18, %bb.j ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = fmul float %i.ag, %i.ag
  %i.dn = fadd <2 x float> %i.al, %.sroa.0102.0
  %.sroa.11.8.vec.extract114 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.do = fadd float %i.am, %.sroa.11.8.vec.extract114
  %.sroa.3.12.vec.insert.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.do, i64 0
  store <2 x float> %i.dn, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i70, ptr %i.dl, align 8, !tbaa !19
  %i.dp = load ptr, ptr %0, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret float %i.dm
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
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !40 ; 3 uses
  %i.bw = fmul float %i.l, %i.bv
  %i.bx = fmul float %i.n, %i.bv
  %i.by = fmul float %i.o, %i.bv
  %i.bz = load float, ptr %i.aj, align 4, !tbaa !40
  %i.ca = fsub float %i.bz, %i.bw
  store float %i.ca, ptr %i.aj, align 4, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !40
  %i.cd = fsub float %i.cc, %i.bx
  store float %i.cd, ptr %i.cb, align 4, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !40
  %i.cg = fsub float %i.cf, %i.by
  store float %i.cg, ptr %i.ce, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN32btDeformableNodeAnchorConstraintD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK32btDeformableNodeAnchorConstraint5getDvEPKN10btSoftBody4NodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN32btDeformableNodeAnchorConstraint19setPenetrationScaleEf(ptr noundef nonnull align 8 dereferenceable(48) %0, float noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
end_hunk_1
