inline.NumInlined: 331
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.bc = load <2 x float>, ptr %i.ag, align 4    ; 8 uses
  %i.bd = load float, ptr %i.p, align 4           ; 5 uses
  %i.be = fmul float %i.af, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.be, %i.ad
  %i.bg = extractelement <2 x float> %i.az, i64 0
  %i.bh = fmul float %i.a, %i.bg                  ; 2 uses
  %i.bi = fmul float %i.ab, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.w, float %i.av)
  %i.bk = fmul float %i.bh, %i.ad
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.aa, float %i.bj)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.n, float %i.bl)
  %i.bn = fmul float %i.aw, %i.ba
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.e, float %i.bm)
  %foldExtExtBinop47 = fmul <2 x float> %i.az, %i.ae ; 2 uses
  %i.bp = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bq = fmul float %i.bp, %i.bb
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.w, float %i.bo)
  %foldExtExtBinop49 = fmul <2 x float> %i.ai, %foldExtExtBinop47
  %i.bs = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.n, float %i.br)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.e, float %i.bt)
  %i.bv = fmul float %i.aj, %i.be
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.w, float %i.bu)
  %i.bx = extractelement <2 x float> %i.ay, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.az, %i.ay
  %i.by = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bz = fmul float %i.ba, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aa, float %i.bw)
  %i.cb = fmul float %i.by, %i.ac
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.n, float %i.ca)
  %i.cd = fmul float %i.bd, %i.bx                 ; 2 uses
  %i.ce = fmul float %i.ab, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.e, float %i.cc)
  %i.cg = fmul float %i.cd, %i.ak
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.aa, float %i.cf)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.ay
  %i.ci = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.cj = fmul float %i.aj, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.n, float %i.ch)
  %i.cl = fmul float %i.ci, %i.bb
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.e, float %i.ck)
  %i.cn = extractelement <2 x float> %i.bc, i64 0
  %i.co = fmul float %i.bd, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.co, %i.ac
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.w, float %i.cm)
  %i.cr = fmul float %i.al, %i.co
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.cq)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.bc
  %i.ct = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ad
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.n, float %i.cs)
  %i.cw = fmul float %i.ba, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.w, float %i.cv)
  %foldExtExtBinop57 = fmul <2 x float> %i.ah, %i.bc ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cz = fmul float %i.cy, %i.bb
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.aa, float %i.cx)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.db = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.n, float %i.da) ; 2 uses
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %i.dg = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.de
  %i.dj = fneg float %i.e
  %i.dk = fneg float %i.aa
  %i.dl = fneg float %i.df                        ; 2 uses
  %i.dm = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dn = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.do = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dp, <4 x float> %i.di) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
  %i.ds = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %i.ak, i64 1
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dw = fmul <4 x float> %i.ds, %i.dv
  %i.dx = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 5> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.dr, <4 x i32> <i32 1, i32 0, i32 0, i32 4>
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> %i.dz, <4 x float> %i.dw)
  %i.eb = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.ec = fmul <4 x float> %i.eb, %i.ea
  %i.ed = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.ee = shufflevector <2 x float> %i.r, <2 x float> %i.ae, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> %i.dq, <4 x float> %i.ec)
  %i.eg = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ac, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.ej = fmul <4 x float> %i.dm, %i.ei
  %i.ek = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.ek, <4 x float> %i.ej) ; 2 uses
  %i.em = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.el, <4 x float> %i.ef)
  %i.eo = insertelement <4 x float> poison, float %i.df, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.dl, i64 1 ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.er = fmul <4 x float> %i.en, %i.eq
  %i.es = fneg float %i.n
  %i.et = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.eu = fmul <4 x float> %i.et, %i.dv
  %i.ev = insertelement <4 x float> poison, float %i.n, i64 0
  %i.ew = insertelement <4 x float> %i.do, float %i.n, i64 0
  %i.ex = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ez = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float %i.n, i64 1
  %i.fb = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fc, <4 x float> %i.eu) ; 2 uses
  %i.fe = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ff = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %i.ff, %i.fd
  %i.fh = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.a, i64 1
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fg)
  %i.fm = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fn = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.bb, i64 1
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fq = fmul <4 x float> %i.fm, %i.fp
  %i.fr = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fs = insertelement <2 x float> %i.fr, float %i.w, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ft, <4 x float> %i.fq)
  %i.fv = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fu, <4 x float> %i.fl)
  %i.fx = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.df, i64 1 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ga = fmul <4 x float> %i.fw, %i.fz
  %i.gb = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.aj, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = fmul <4 x float> %i.gd, %i.ei
  %i.gf = insertelement <4 x float> %i.dn, float %i.aj, i64 1
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.gg, <4 x float> %i.ge)
  %i.gi = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gj = fmul <4 x float> %i.ed, %i.gi
  %i.gk = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gl = insertelement <2 x float> %i.gk, float %i.a, i64 1
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.gh, <4 x float> %i.gj)
  %i.go = fmul <4 x float> %i.dr, %i.fp
  %i.gp = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.gq = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gq, <4 x float> %i.go) ; 2 uses
  %i.gs = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gr, <4 x float> %i.gn)
  %i.gu = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gv = fmul <4 x float> %i.gt, %i.gu
  %i.gw = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.bd, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gz = fmul <4 x float> %i.gy, %i.de
  %i.ha = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.hb = insertelement <4 x float> %i.ev, float %i.ba, i64 1
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %i.hc, <4 x float> %i.gz)
  %i.he = fmul <4 x float> %i.ed, %i.hd
  %i.hf = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.hg = insertelement <4 x float> %i.hf, float %i.a, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hi = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hi, <4 x float> %i.he)
  %i.hk = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

declare void @_ZN6Assimp21BlenderBMeshConverter7AddFaceEiiii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZNK6Assimp21BlenderTessellatorP2T21FindLargestMatrixElemERK12aiMatrix3x3tIfE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #11 align 2 {
.split.us.2:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4
  %i.g = load float, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 4
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load float, ptr %i.o, align 4
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load float, ptr %i.r, align 4
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.i) ; 2 uses
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.f) ; 2 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.d) ; 2 uses
  %2 = fcmp one float %i.b, 0.000000e+00
  %3 = tail call noundef float @llvm.fabs.f32(float %i.b)
  %i.z = select i1 %2, float %3, float 0.000000e+00 ; 2 uses
  %i.aa = fcmp ogt float %i.y, %i.z
  %i.ab = select i1 %i.aa, float %i.y, float %i.z ; 2 uses
  %i.ac = fcmp ogt float %i.x, %i.ab
  %i.ad = select i1 %i.ac, float %i.x, float %i.ab ; 2 uses
  %i.ae = fcmp ogt float %i.w, %i.ad
  %i.af = select i1 %i.ae, float %i.w, float %i.ad ; 2 uses
  %i.ag = fcmp ogt float %i.v, %i.af
  %i.ah = select i1 %i.ag, float %i.v, float %i.af ; 2 uses
  %i.ai = fcmp ogt float %i.u, %i.ah
  %i.aj = select i1 %i.ai, float %i.u, float %i.ah ; 2 uses
  %i.ak = fcmp ogt float %i.t, %i.aj
  %i.al = select i1 %i.ak, float %i.t, float %i.aj ; 2 uses
  %i.am = fcmp ogt float %i.q, %i.al
  %i.an = select i1 %i.am, float %i.q, float %i.al ; 2 uses
  %i.ao = fcmp ogt float %i.n, %i.an
  %i.ap = select i1 %i.ao, float %i.n, float %i.an
  ret float %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T11ScaleMatrixERK12aiMatrix3x3tIfEf(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix3x3t) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %2, float noundef %3) local_unnamed_addr #12 align 2 {
.split.us.2:
  %i.a = load <4 x float>, ptr %2, align 4
  %i.b = insertelement <4 x float> poison, float %3, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.d = fmul <4 x float> %i.c, %i.a
  store <4 x float> %i.d, ptr %0, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <4 x float>, ptr %i.e, align 4
  %i.h = fmul <4 x float> %i.c, %i.g
  store <4 x float> %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pn.us.2.2 = load float, ptr %i.i, align 4
  %i.j = fmul float %3, %.pn.us.2.2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.j, ptr %i.k, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { <2 x float>, float } @_ZNK6Assimp21BlenderTessellatorP2T35GetEigenVectorFromLargestEigenValueERK12aiMatrix3x3tIfE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load float, ptr %i.f, align 4            ; 2 uses
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = tail call noundef float @llvm.fabs.f32(float %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.p = load float, ptr %i.a, align 4
  %i.q = load float, ptr %i.c, align 4
  %i.r = load float, ptr %i.b, align 4
  %i.s = load <2 x float>, ptr %i.d, align 4      ; 3 uses
  %i.t = load float, ptr %i.e, align 4
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = tail call noundef float @llvm.fabs.f32(float %i.v) ; 2 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.z = tail call noundef float @llvm.fabs.f32(float %i.r) ; 2 uses
  %i.aa = extractelement <4 x float> %i.o, i64 0  ; 2 uses
  %2 = fcmp one float %i.aa, 0.000000e+00
  %3 = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.ab = select i1 %2, float %3, float 0.000000e+00 ; 2 uses
  %i.ac = fcmp ogt float %i.z, %i.ab
  %i.ad = select i1 %i.ac, float %i.z, float %i.ab ; 2 uses
  %i.ae = fcmp ogt float %i.y, %i.ad
  %i.af = select i1 %i.ae, float %i.y, float %i.ad ; 2 uses
  %i.ag = fcmp ogt float %i.x, %i.af
  %i.ah = select i1 %i.ag, float %i.x, float %i.af ; 2 uses
  %i.ai = fcmp ogt float %i.w, %i.ah
  %i.aj = select i1 %i.ai, float %i.w, float %i.ah ; 2 uses
  %i.ak = fcmp ogt float %i.u, %i.aj
  %i.al = select i1 %i.ak, float %i.u, float %i.aj ; 2 uses
  %i.am = fcmp ogt float %i.n, %i.al
  %i.an = select i1 %i.am, float %i.n, float %i.al ; 2 uses
  %i.ao = fcmp ogt float %i.k, %i.an
  %i.ap = select i1 %i.ao, float %i.k, float %i.an ; 2 uses
  %i.aq = fcmp ogt float %i.h, %i.ap
  %i.ar = select i1 %i.aq, float %i.h, float %i.ap
  %i.as = fdiv float 1.000000e+00, %i.ar          ; 4 uses
  %i.at = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.au = insertelement <2 x float> poison, float %i.as, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aw = fmul <2 x float> %i.at, %i.av           ; 7 uses
  %i.ax = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ay = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.o, <4 x float> %i.ay, <2 x i32> <i32 1, i32 4>
  %i.ba = fmul <2 x float> %i.az, %i.av           ; 7 uses
  %i.bb = shufflevector <2 x float> %i.ax, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.bc = fmul <2 x float> %i.bb, %i.av           ; 7 uses
  %i.bd = fmul float %i.m, %i.as                  ; 6 uses
  %i.be = fmul float %i.j, %i.as                  ; 6 uses
  %i.bf = fmul float %i.g, %i.as                  ; 6 uses
  %i.bg = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bh = fmul <2 x float> %i.bg, %i.ba
  %i.bi = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.aw, <2 x float> %i.bh)
  %i.bk = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bc, <2 x float> %i.bj) ; 3 uses
  %i.bn = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.ba
  %i.bp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.aw, <2 x float> %i.bo)
  %i.br = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bc, <2 x float> %i.bq) ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bv = fmul <2 x float> %i.bu, %i.ba
  %i.bw = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.aw, <2 x float> %i.bv)
  %i.by = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bc, <2 x float> %i.bx) ; 3 uses
  %i.cb = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.cc = fmul float %i.cb, %i.be
  %i.cd = extractelement <2 x float> %i.aw, i64 0 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bd, float %i.cc)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bf, float %i.ce) ; 3 uses
  %i.cg = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.ch = fmul float %i.cg, %i.be
  %i.ci = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bd, float %i.ch)
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bf, float %i.cj) ; 3 uses
  %i.cl = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.cm = fmul float %i.cl, %i.be
  %i.cn = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bd, float %i.cm)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.co) ; 3 uses
  %i.cq = fmul <2 x float> %i.bg, %i.bt
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bm, <2 x float> %i.cq)
  %i.cs = fmul <2 x float> %i.bn, %i.bt
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bm, <2 x float> %i.cs)
  %i.cu = fmul <2 x float> %i.bu, %i.bt
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bm, <2 x float> %i.cu)
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.ca, <2 x float> %i.cr)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.ca, <2 x float> %i.ct)
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.cv)
  %i.cz = fmul float %i.cb, %i.ck
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cf, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.cp, float %i.da)
  %i.dc = fmul float %i.cg, %i.ck
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cf, float %i.dc)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.be, float %i.cp, float %i.dd)
  %i.df = fmul float %i.cl, %i.ck
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cf, float %i.df)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.cp, float %i.dg)
  br label %bb.b

bb.b:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %bb.a
  %.099 = phi i32 [ 0, %bb.a ], [ %i.ej, %_ZN10aiVector3tIfE9NormalizeEv.exit ]
  %.sroa.068.098 = phi <2 x float> [ splat (float 1.000000e+00), %bb.a ], [ %.sroa.068.2, %_ZN10aiVector3tIfE9NormalizeEv.exit ] ; 4 uses
  %.sroa.016.097 = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.068.0.vec.extract76, %_ZN10aiVector3tIfE9NormalizeEv.exit ]
  %.sroa.518.096 = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.068.4.vec.extract87, %_ZN10aiVector3tIfE9NormalizeEv.exit ]
  %.sroa.6.095 = phi float [ 1.000000e+00, %bb.a ], [ %.sroa.1692.2, %_ZN10aiVector3tIfE9NormalizeEv.exit ] ; 3 uses
  %.sroa.068.0.vec.extract = extractelement <2 x float> %.sroa.068.098, i64 0
  %.sroa.068.4.vec.extract = extractelement <2 x float> %.sroa.068.098, i64 1
  %i.di = shufflevector <2 x float> %.sroa.068.098, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = fmul <2 x float> %i.cx, %i.di
  %i.dk = shufflevector <2 x float> %.sroa.068.098, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.dk, <2 x float> %i.dj)
  %i.dm = insertelement <2 x float> poison, float %.sroa.6.095, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.dn, <2 x float> %i.dl) ; 5 uses
  %i.dp = fmul float %i.de, %.sroa.068.4.vec.extract
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.db, float %.sroa.068.0.vec.extract, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dh, float %.sroa.6.095, float %i.dq) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.do, %i.do
  %i.ds = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dt = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.du) ; 2 uses
  %i.dw = fcmp oeq float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.b
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.dv)
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.do, %i.dz
  %i.eb = fmul float %i.dr, %i.dx
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.b, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.068.2 = phi <2 x float> [ %i.do, %bb.b ], [ %i.ea, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %.sroa.1692.2 = phi float [ %i.dr, %bb.b ], [ %i.eb, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.068.0.vec.extract76 = extractelement <2 x float> %.sroa.068.2, i64 0 ; 2 uses
  %i.ec = fsub float %.sroa.068.0.vec.extract76, %.sroa.016.097 ; 2 uses
  %.sroa.068.4.vec.extract87 = extractelement <2 x float> %.sroa.068.2, i64 1 ; 2 uses
  %i.ed = fsub float %.sroa.068.4.vec.extract87, %.sroa.518.096 ; 2 uses
  %i.ee = fsub float %.sroa.1692.2, %.sroa.6.095  ; 2 uses
  %i.ef = fmul float %i.ed, %i.ed
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.eg)
  %i.ei = fcmp olt float %i.eh, 1.000000e-16
  %i.ej = add nuw nsw i32 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ej, 100
  %or.cond = select i1 %i.ei, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %bb.c, label %bb.b, !llvm.loop !20

bb.c:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.068.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.1692.2, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA118_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(118) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA118_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(118) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8
end_hunk_0
