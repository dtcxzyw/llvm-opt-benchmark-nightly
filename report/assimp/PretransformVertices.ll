Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/PretransformVertices?download=true
inline.NumInlined: 650
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6Assimp20PretransformVertices14ApplyTransformEP6aiMeshRK12aiMatrix4x4tIfE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %.not.i = icmp ne ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ne i32 %i.e, 0
  %i.g = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load float, ptr %2, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load float, ptr %i.i, align 4            ; 3 uses
  %i.k = fmul float %i.h, %i.j                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load float, ptr %i.l, align 4            ; 4 uses
  %i.n = fmul float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.p = load float, ptr %i.o, align 4            ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.r = load float, ptr %i.q, align 4            ; 5 uses
  %i.s = fmul float %i.k, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load float, ptr %i.t, align 4            ; 6 uses
  %i.v = fneg float %i.u
  %i.w = fmul float %i.s, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load float, ptr %i.y, align 4            ; 3 uses
  %i.aa = fmul float %i.h, %i.z                   ; 2 uses
  %i.ab = fmul float %i.r, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ad = load float, ptr %i.ac, align 4          ; 6 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ad, float %i.x)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ag = load float, ptr %i.af, align 4          ; 4 uses
  %i.ah = fneg float %i.ag                        ; 3 uses
  %i.ai = fmul float %i.aa, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.p, float %i.ae)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.al = load float, ptr %i.ak, align 4          ; 3 uses
  %i.am = fmul float %i.h, %i.al                  ; 2 uses
  %i.an = fmul float %i.ag, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.u, float %i.aj)
  %i.ap = fneg float %i.m                         ; 3 uses
  %i.aq = fmul float %i.am, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ad, float %i.ao)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = fmul float %i.z, %i.at                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = fneg float %i.r                         ; 2 uses
  %i.ay = fmul float %i.au, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.aw, float %i.ar)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load float, ptr %i.ba, align 4          ; 4 uses
  %i.bc = fmul float %i.au, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.p, float %i.az)
  %i.be = fmul float %i.al, %i.at                 ; 2 uses
  %i.bf = fneg float %i.bb                        ; 3 uses
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.u, float %i.bd)
  %i.bi = fmul float %i.m, %i.be
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.aw, float %i.bh)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load float, ptr %i.bk, align 4          ; 3 uses
  %i.bm = fmul float %i.at, %i.bl                 ; 2 uses
  %i.bn = fmul float %i.bm, %i.ap
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.p, float %i.bj)
  %i.bp = fmul float %i.r, %i.bm
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.u, float %i.bo)
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load float, ptr %i.br, align 4          ; 3 uses
  %i.bt = fmul float %i.al, %i.bs                 ; 2 uses
  %i.bu = fmul float %i.bb, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ad, float %i.bq)
  %i.bw = fmul float %i.bt, %i.ah
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.aw, float %i.bv)
  %i.by = fmul float %i.bl, %i.bs                 ; 2 uses
  %i.bz = fmul float %i.ag, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.p, float %i.bx)
  %i.cb = fmul float %i.by, %i.ax
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ad, float %i.ca)
  %i.cd = fmul float %i.j, %i.bs                  ; 2 uses
  %i.ce = fmul float %i.r, %i.cd
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.aw, float %i.cc)
  %i.cg = fmul float %i.cd, %i.bf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.p, float %i.cf)
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cj = load float, ptr %i.ci, align 4          ; 3 uses
  %i.ck = fmul float %i.bl, %i.cj                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ah
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.u, float %i.ch)
  %i.cn = fmul float %i.m, %i.ck
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ad, float %i.cm)
  %i.cp = fmul float %i.j, %i.cj                  ; 2 uses
  %i.cq = fmul float %i.cp, %i.ap
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.aw, float %i.co)
  %i.cs = fmul float %i.bb, %i.cp
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.u, float %i.cr)
  %i.cu = fmul float %i.z, %i.cj                  ; 2 uses
  %i.cv = fmul float %i.cu, %i.bf
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ad, float %i.ct)
  %i.cx = fmul float %i.ag, %i.cu
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.aw, float %i.cw)
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %.not.i50 = icmp ne ptr %i.db, null
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = select i1 %.not.i50, i1 %i.de, i1 false
  br i1 %i.df, label %.lr.ph, label %.loopexit117

.lr.ph:                                           ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.dk = load ptr, ptr %i.da, align 8
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %indvars.iv ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dm, align 4          ; 2 uses
  %i.dp = load float, ptr %i.dl, align 4          ; 2 uses
  %i.dq = load float, ptr %i.dn, align 4          ; 2 uses
  %i.dr = load <8 x float>, ptr %2, align 4       ; 4 uses
  %i.ds = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <8 x float> %i.dr, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.dv = fmul <2 x float> %i.dt, %i.du
  %i.dw = shufflevector <8 x float> %i.dr, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.dx = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dy, <2 x float> %i.dv)
  %i.ea = shufflevector <8 x float> %i.dr, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.eb = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.ec, <2 x float> %i.dz)
  %i.ee = shufflevector <8 x float> %i.dr, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ef = fadd <2 x float> %i.ed, %i.ee
  %i.eg = load float, ptr %i.dg, align 4
  %i.eh = load float, ptr %i.dh, align 4
  %i.ei = fmul float %i.do, %i.eh
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.dp, float %i.ei)
  %i.ek = load float, ptr %i.di, align 4
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.dq, float %i.ej)
  %i.em = load float, ptr %i.dj, align 4
  %i.en = fadd float %i.em, %i.el
  store <2 x float> %i.ef, ptr %i.dl, align 4
  store float %i.en, ptr %i.dn, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %bb.f, label %.loopexit117, !llvm.loop !29

.loopexit117:                                     ; preds = %bb.f, %bb.e
  %i.er = phi i32 [ %i.dd, %bb.e ], [ %i.eo, %bb.f ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %.not.i51 = icmp ne ptr %i.et, null
  %i.eu = icmp ne i32 %i.er, 0                    ; 2 uses
  %i.ev = select i1 %.not.i51, i1 %i.eu, i1 false ; 2 uses
  br i1 %i.ev, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit117
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  %.not.i52 = icmp ne ptr %i.ex, null
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8
  %.not1.i = icmp ne ptr %i.ez, null
  %or.cond.i.not114 = select i1 %.not.i52, i1 %.not1.i, i1 false
  %brmerge.not = select i1 %or.cond.i.not114, i1 %i.eu, i1 false
  br i1 %brmerge.not, label %bb.h, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.h:                                             ; preds = %bb.g, %.loopexit117
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load float, ptr %i.fb, align 4          ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fg = load float, ptr %i.ff, align 4          ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.fi = load <2 x float>, ptr %2, align 4       ; 5 uses
  %i.fj = load float, ptr %i.fa, align 4          ; 3 uses
  %i.fk = load <2 x float>, ptr %i.fd, align 4    ; 3 uses
  %i.fl = load <2 x float>, ptr %i.fe, align 4    ; 5 uses
  %3 = load <2 x float>, ptr %i.fh, align 4       ; 4 uses
  %i.fm = extractelement <2 x float> %i.fi, i64 0
  %i.fn = extractelement <2 x float> %i.fl, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.fi, %i.fl
  %i.fo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fp = extractelement <2 x float> %i.fl, i64 1 ; 3 uses
  %i.fq = fmul float %i.fm, %i.fp
  %4 = extractelement <2 x float> %3, i64 0       ; 2 uses
  %i.fr = fneg float %4                           ; 2 uses
  %i.fs = fmul float %i.fq, %i.fr
  %5 = extractelement <2 x float> %3, i64 1       ; 2 uses
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fo, float %5, float %i.fs)
  %i.fu = fmul float %i.fj, %i.fp
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fg, float %i.ft)
  %i.fw = extractelement <2 x float> %i.fk, i64 0 ; 2 uses
  %i.fx = fneg float %i.fw                        ; 2 uses
  %i.fy = fmul float %i.fj, %i.fx                 ; 2 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %5, float %i.fv)
  %i.ga = fmul float %i.fc, %i.fw
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %4, float %i.fz)
  %i.gc = fneg float %i.fn
  %i.gd = fmul float %i.fc, %i.gc                 ; 2 uses
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.fg, float %i.gb) ; 2 uses
  %i.gf = fcmp oeq float %i.ge, 0.000000e+00
  br i1 %i.gf, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gg = fdiv float 1.000000e+00, %i.ge          ; 3 uses
  %i.gh = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gi = insertelement <2 x float> %i.gh, float %i.fc, i64 1 ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.gi, %i.gk
  %i.gm = fneg float %i.gg
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fp, float %i.gd)
  %i.go = fmul float %i.gn, %i.gg
  %i.gp = fneg float %i.fg
  %i.gq = fmul float %i.fc, %i.fx
  %i.gr = shufflevector <2 x float> %i.fk, <2 x float> %i.fi, <2 x i32> <i32 1, i32 3> ; 2 uses
  %6 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %6, <2 x float> %i.gl)
  %i.gt = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gm, i64 1 ; 4 uses
  %i.gv = fmul <2 x float> %i.gs, %i.gu
  %i.gw = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = fmul <2 x float> %i.gi, %i.gx
  %i.gz = shufflevector <2 x float> %i.fk, <2 x float> %i.fi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %6, <2 x float> %i.gy)
  %i.hb = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = fmul <2 x float> %i.ha, %i.hb
  %i.hd = fmul <2 x float> %i.gr, %i.gx
  %i.he = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gz, <2 x float> %i.he, <2 x float> %i.hd)
  %i.hg = fmul <2 x float> %i.hf, %i.gu
  %i.hh = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.gq, i64 1
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.fl, <2 x float> %i.hj)
  %i.hl = fmul <2 x float> %i.hk, %i.gu
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.h, %bb.i
  %storemerge23.i = phi float [ %i.go, %bb.i ], [ +qnan, %bb.h ] ; 3 uses
  %i.hm = phi <2 x float> [ %i.hg, %bb.i ], [ splat (float +qnan), %bb.h ] ; 3 uses
  %i.hn = phi <2 x float> [ %i.gv, %bb.i ], [ splat (float +qnan), %bb.h ] ; 3 uses
  %i.ho = phi <2 x float> [ %i.hc, %bb.i ], [ splat (float +qnan), %bb.h ] ; 3 uses
  %i.hp = phi <2 x float> [ %i.hl, %bb.i ], [ splat (float +qnan), %bb.h ] ; 4 uses
  br i1 %i.ev, label %.lr.ph120.preheader, label %.loopexit

.lr.ph120.preheader:                              ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %i.hq = extractelement <2 x float> %i.hp, i64 1
  %i.hr = extractelement <2 x float> %i.hp, i64 0
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ 0, %.lr.ph120.preheader ] ; 2 uses
  %i.hs = load ptr, ptr %i.es, align 8
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.hs, i64 %indvars.iv127 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hw = load float, ptr %i.hu, align 4          ; 2 uses
  %i.hx = load float, ptr %i.ht, align 4          ; 2 uses
  %i.hy = load float, ptr %i.hv, align 4          ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.ho, %i.ia
  %i.ic = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.id, <2 x float> %i.ib)
  %i.if = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.ig, <2 x float> %i.ie) ; 5 uses
  %i.ii = fmul float %i.hq, %i.hw
  %i.ij = tail call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.hx, float %i.ii)
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hy, float %i.ij) ; 4 uses
  %foldExtExtBinop140 = fmul <2 x float> %i.ih, %i.ih
  %i.il = extractelement <2 x float> %foldExtExtBinop140, i64 1
  %i.im = extractelement <2 x float> %i.ih, i64 0 ; 2 uses
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %i.im, float %i.il)
  %i.io = tail call noundef float @llvm.fmuladd.f32(float %i.ik, float %i.ik, float %i.in) ; 2 uses
  %i.ip = fcmp oeq float %i.io, 0.000000e+00
  br i1 %i.ip, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph120
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.io)
  %i.iq = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.ih, %i.is
  %i.iu = fmul float %i.ik, %i.iq
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %.lr.ph120, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.885.0 = phi float [ %i.ik, %.lr.ph120 ], [ %i.iu, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.082.0 = phi <2 x float> [ %i.ih, %.lr.ph120 ], [ %i.it, %_ZN10aiVector3tIfEdVEf.exit.i ]
  store <2 x float> %.sroa.082.0, ptr %i.ht, align 4
  store float %.sroa.885.0, ptr %i.hv, align 4
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.iv = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = icmp samesign ult i64 %indvars.iv.next128, %i.iw
  br i1 %i.ix, label %.lr.ph120, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %i.iy = phi i32 [ %i.er, %_ZN12aiMatrix3x3tIfE7InverseEv.exit ], [ %i.iv, %_ZN10aiVector3tIfE9NormalizeEv.exit ]
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8
  %.not.i58 = icmp eq ptr %i.ja, null
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8
  %.not1.i59 = icmp eq ptr %i.jc, null
  %or.cond.i60 = select i1 %.not.i58, i1 true, i1 %.not1.i59
  %.not = icmp eq i32 %i.iy, 0
  %or.cond = select i1 %or.cond.i60, i1 true, i1 %.not
  br i1 %or.cond, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.loopexit
  %i.jd = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.je = extractelement <2 x float> %i.hp, i64 0 ; 2 uses
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %_ZN10aiVector3tIfE9NormalizeEv.exit75
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %_ZN10aiVector3tIfE9NormalizeEv.exit75 ], [ 0, %.lr.ph122.preheader ] ; 3 uses
  %i.jf = load ptr, ptr %i.iz, align 8
  %i.jg = getelementptr inbounds nuw [12 x i8], ptr %i.jf, i64 %indvars.iv130 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.jj = load float, ptr %i.jh, align 4          ; 2 uses
  %i.jk = load float, ptr %i.jg, align 4          ; 2 uses
  %i.jl = load float, ptr %i.ji, align 4          ; 2 uses
  %i.jm = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jn = shufflevector <2 x float> %i.jm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.ho, %i.jn
  %i.jp = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.jq, <2 x float> %i.jo)
  %i.js = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.jt, <2 x float> %i.jr) ; 5 uses
  %i.jv = fmul float %i.jd, %i.jj
  %i.jw = tail call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.jk, float %i.jv)
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.je, float %i.jl, float %i.jw) ; 4 uses
  %foldExtExtBinop142 = fmul <2 x float> %i.ju, %i.ju
  %i.jy = extractelement <2 x float> %foldExtExtBinop142, i64 1
  %i.jz = extractelement <2 x float> %i.ju, i64 0 ; 2 uses
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.jy)
  %i.kb = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jx, float %i.ka) ; 2 uses
  %i.kc = fcmp oeq float %i.kb, 0.000000e+00
  br i1 %i.kc, label %_ZN10aiVector3tIfE9NormalizeEv.exit68, label %_ZN10aiVector3tIfEdVEf.exit.i66

_ZN10aiVector3tIfEdVEf.exit.i66:                  ; preds = %.lr.ph122
  %sqrt.i.i67 = tail call noundef float @llvm.sqrt.f32(float %i.kb)
  %i.kd = fdiv float 1.000000e+00, %sqrt.i.i67    ; 2 uses
  %i.ke = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = fmul <2 x float> %i.ju, %i.kf
  %i.kh = fmul float %i.jx, %i.kd
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit68

_ZN10aiVector3tIfE9NormalizeEv.exit68:            ; preds = %.lr.ph122, %_ZN10aiVector3tIfEdVEf.exit.i66
  %.sroa.881.0 = phi float [ %i.jx, %.lr.ph122 ], [ %i.kh, %_ZN10aiVector3tIfEdVEf.exit.i66 ]
  %.sroa.078.0 = phi <2 x float> [ %i.ju, %.lr.ph122 ], [ %i.kg, %_ZN10aiVector3tIfEdVEf.exit.i66 ]
  store <2 x float> %.sroa.078.0, ptr %i.jg, align 4
  store float %.sroa.881.0, ptr %i.ji, align 4
  %i.ki = load ptr, ptr %i.jb, align 8
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ki, i64 %indvars.iv130 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.km = load float, ptr %i.kk, align 4          ; 2 uses
  %i.kn = load float, ptr %i.kj, align 4          ; 2 uses
  %i.ko = load float, ptr %i.kl, align 4          ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.ho, %i.kq
  %i.ks = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.kt, <2 x float> %i.kr)
  %i.kv = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.kw, <2 x float> %i.ku) ; 5 uses
  %i.ky = fmul float %i.jd, %i.km
  %i.kz = tail call float @llvm.fmuladd.f32(float %storemerge23.i, float %i.kn, float %i.ky)
  %i.la = tail call float @llvm.fmuladd.f32(float %i.je, float %i.ko, float %i.kz) ; 4 uses
  %foldExtExtBinop144 = fmul <2 x float> %i.kx, %i.kx
  %i.lb = extractelement <2 x float> %foldExtExtBinop144, i64 1
  %i.lc = extractelement <2 x float> %i.kx, i64 0 ; 2 uses
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lc, float %i.lb)
  %i.le = tail call noundef float @llvm.fmuladd.f32(float %i.la, float %i.la, float %i.ld) ; 2 uses
  %i.lf = fcmp oeq float %i.le, 0.000000e+00
  br i1 %i.lf, label %_ZN10aiVector3tIfE9NormalizeEv.exit75, label %_ZN10aiVector3tIfEdVEf.exit.i73

_ZN10aiVector3tIfEdVEf.exit.i73:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit68
  %sqrt.i.i74 = tail call noundef float @llvm.sqrt.f32(float %i.le)
  %i.lg = fdiv float 1.000000e+00, %sqrt.i.i74    ; 2 uses
  %i.lh = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fmul <2 x float> %i.kx, %i.li
  %i.lk = fmul float %i.la, %i.lg
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit75

_ZN10aiVector3tIfE9NormalizeEv.exit75:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit68, %_ZN10aiVector3tIfEdVEf.exit.i73
  %.sroa.8.0 = phi float [ %i.la, %_ZN10aiVector3tIfE9NormalizeEv.exit68 ], [ %i.lk, %_ZN10aiVector3tIfEdVEf.exit.i73 ]
  %.sroa.0.0 = phi <2 x float> [ %i.kx, %_ZN10aiVector3tIfE9NormalizeEv.exit68 ], [ %i.lj, %_ZN10aiVector3tIfEdVEf.exit.i73 ]
  store <2 x float> %.sroa.0.0, ptr %i.kj, align 4
  store float %.sroa.8.0, ptr %i.kl, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ll = load i32, ptr %i.dc, align 4
  %i.lm = zext i32 %i.ll to i64
  %i.ln = icmp samesign ult i64 %indvars.iv.next131, %i.lm
  br i1 %i.ln, label %.lr.ph122, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, !llvm.loop !31

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit75, %bb.g, %.loopexit, %bb.a
  ret void
}

declare void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6Assimp20PretransformVertices14BuildWCSMeshesERSt6vectorIP6aiMeshSaIS3_EEPS3_jP6aiNode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(93) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1120 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not64 = icmp eq i32 %i.c, 0
  br i1 %.not64, label %.preheader, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1128 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 1028 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1036 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1040 ; 2 uses
end_hunk_0
