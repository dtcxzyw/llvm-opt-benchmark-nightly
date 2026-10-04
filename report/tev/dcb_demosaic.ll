Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dcb_demosaic?download=true
inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw10fbdd_greenEv:bb.a
  %i.z = lshr i32 %i.m, %i.y
  %i.aa = and i32 %i.z, 1                         ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 5                ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ad = and i32 %i.ab, 1
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = shl nuw nsw i32 %i.ae, 1
  %i.ag = lshr i32 %i.m, %i.af
  %i.ah = and i32 %i.ag, 3
  %i.ai = load i16, ptr %i.b, align 2, !tbaa !77
  %i.aj = zext i16 %i.ai to i32
  %i.ak = zext nneg i32 %i.ah to i64              ; 5 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.o, i64 %i.ak ; 5 uses
  %i.al = mul i32 %.016651967, %i.aj
  %i.am = add i32 %i.al, 5
  %i.an = add i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %invariant.gep2035 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.r
  %invariant.gep2037 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.q
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ar = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.as = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aw = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ax = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ay = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ba = load ptr, ptr %i.a, align 8             ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread2030
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %.thread2030 ] ; 14 uses
  %.016641957 = phi i32 [ %i.ab, %.lr.ph ], [ %i.pl, %.thread2030 ]
  %i.bb = sub nsw i64 %indvars.iv, %i.p           ; 13 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !80 ; 2 uses
  %i.bf = sub nsw i64 %indvars.iv, %i.t
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !80 ; 2 uses
  %gep2032 = getelementptr [8 x i8], ptr %invariant.gep2031, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %gep2032, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !80 ; 2 uses
  %i.bl = add nuw nsw i64 %indvars.iv, 1          ; 12 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !80 ; 18 uses
  %i.bp = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 26
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !80 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 -38
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !80 ; 2 uses
  %i.bu = add nsw i64 %indvars.iv, -1             ; 9 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !80 ; 24 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 -22
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 42
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !80 ; 2 uses
  %i.cc = add nuw nsw i64 %indvars.iv, %i.p       ; 13 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !80 ; 2 uses
  %gep2034 = getelementptr [8 x i8], ptr %invariant.gep2033, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %gep2034, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !80 ; 2 uses
  %i.ci = sub nsw i64 %indvars.iv, %i.s
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !80 ; 2 uses
  %i.cm = sub nsw i64 %indvars.iv, %i.r
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cm
  %i.cn = load i16, ptr %gep, align 2, !tbaa !80
  %i.co = sub nsw i64 %indvars.iv, %i.q
  %gep1960 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.co
  %i.cp = load i16, ptr %gep1960, align 2, !tbaa !80
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ak
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep1962 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.cs = load i16, ptr %gep1962, align 2, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.ak
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !80
  %i.cw = getelementptr i8, ptr %i.bp, i64 -16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.ak
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !80
  %i.cz = getelementptr i8, ptr %i.bp, i64 -32
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ak
  %i.db = load i16, ptr %i.da, align 2, !tbaa !80
  %gep2036 = getelementptr [8 x i8], ptr %invariant.gep2035, i64 %indvars.iv
  %i.dc = load i16, ptr %gep2036, align 2, !tbaa !80
  %gep2038 = getelementptr [8 x i8], ptr %invariant.gep2037, i64 %indvars.iv
  %i.dd = load i16, ptr %gep2038, align 2, !tbaa !80
  %i.de = zext i16 %i.cf to i32
  %i.df = insertelement <4 x i16> poison, i16 %i.be, i64 0
  %i.dg = insertelement <4 x i16> %i.df, i16 %i.bo, i64 1
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.bx, i64 2
  %i.di = insertelement <4 x i16> %i.dh, i16 %i.cf, i64 3
  %i.dj = zext <4 x i16> %i.di to <4 x i32>
  %i.dk = zext i16 %i.bx to i32
  %i.dl = zext i16 %i.bo to i32
  %i.dm = zext i16 %i.be to i32
  %i.dn = zext i16 %i.ch to i32
  %i.do = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.dp = insertelement <4 x i16> %i.do, i16 %i.br, i64 1
  %i.dq = insertelement <4 x i16> %i.dp, i16 %i.bz, i64 2
  %i.dr = insertelement <4 x i16> %i.dq, i16 %i.ch, i64 3
  %i.ds = zext <4 x i16> %i.dr to <4 x i32>       ; 2 uses
  %i.dt = zext i16 %i.bz to i32
  %i.du = zext i16 %i.br to i32
  %i.dv = zext i16 %i.bi to i32
  %i.dw = sub nsw <4 x i32> %i.dj, %i.ds
  %i.dx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dw, i1 true)
  %i.dy = add nuw nsw <4 x i32> %i.dx, splat (i32 1)
  %i.dz = zext i16 %i.cl to i32
  %i.ea = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %i.eb = insertelement <4 x i16> %i.ea, i16 %i.bt, i64 1
  %i.ec = insertelement <4 x i16> %i.eb, i16 %i.cb, i64 2
  %i.ed = insertelement <4 x i16> %i.ec, i16 %i.cl, i64 3
  %i.ee = zext <4 x i16> %i.ed to <4 x i32>
  %i.ef = zext i16 %i.cb to i32
  %i.eg = zext i16 %i.bt to i32
  %i.eh = zext i16 %i.bk to i32
  %i.ei = sub nsw <4 x i32> %i.ds, %i.ee
  %i.ej = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ei, i1 true)
  %i.ek = add nuw nsw <4 x i32> %i.dy, %i.ej
  %i.el = uitofp nneg <4 x i32> %i.ek to <4 x float> ; 4 uses
  %i.em = extractelement <4 x float> %i.el, i64 0
  %i.en = fdiv float 1.000000e+00, %i.em          ; 2 uses
  %i.eo = extractelement <4 x float> %i.el, i64 1
  %i.ep = fdiv float 1.000000e+00, %i.eo          ; 2 uses
  %i.eq = extractelement <4 x float> %i.el, i64 2
  %i.er = fdiv float 1.000000e+00, %i.eq          ; 2 uses
  %i.es = extractelement <4 x float> %i.el, i64 3
  %i.et = fdiv float 1.000000e+00, %i.es          ; 2 uses
  %i.eu = add nuw nsw i32 %i.dv, %i.dm
  %i.ev = mul nuw nsw i32 %i.eu, 23
  %i.ew = shl nuw nsw i32 %i.dz, 1
  %i.ex = add nuw nsw i32 %i.ew, %i.ev
  %i.ey = zext i16 %i.cn to i32                   ; 2 uses
  %i.ez = zext i16 %i.cp to i32
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = shl nsw i32 %i.fa, 3
  %i.fc = add nsw i32 %i.ex, %i.fb
  %i.fd = zext i16 %i.cr to i32                   ; 4 uses
  %i.fe = sub nsw i32 %i.fd, %i.ey
  %i.ff = mul nsw i32 %i.fe, 40
  %i.fg = add nsw i32 %i.fc, %i.ff
  %i.fh = add nuw nsw i32 %i.du, %i.dl
  %i.fi = mul nuw nsw i32 %i.fh, 23
  %i.fj = shl nuw nsw i32 %i.ef, 1
  %i.fk = add nuw nsw i32 %i.fj, %i.fi
  %i.fl = zext i16 %i.cs to i32                   ; 2 uses
  %i.fm = zext i16 %i.cv to i32
  %i.fn = sub nsw i32 %i.fl, %i.fm
  %i.fo = shl nsw i32 %i.fn, 3
  %i.fp = sub nsw i32 %i.fd, %i.fl
  %i.fq = mul nsw i32 %i.fp, 40
  %i.fr = add nsw i32 %i.fk, %i.fq
  %i.fs = add nsw i32 %i.fr, %i.fo
  %i.ft = add nuw nsw i32 %i.dt, %i.dk
  %i.fu = mul nuw nsw i32 %i.ft, 23
  %i.fv = shl nuw nsw i32 %i.eg, 1
  %i.fw = add nuw nsw i32 %i.fu, %i.fv
  %i.fx = zext i16 %i.cy to i32                   ; 2 uses
  %i.fy = zext i16 %i.db to i32
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = shl nsw i32 %i.fz, 3
  %i.gb = sub nsw i32 %i.fd, %i.fx
  %i.gc = mul nsw i32 %i.gb, 40
  %i.gd = add nsw i32 %i.fw, %i.gc
  %i.ge = add nsw i32 %i.gd, %i.ga
  %i.gf = add nuw nsw i32 %i.dn, %i.de
  %i.gg = mul nuw nsw i32 %i.gf, 23
  %i.gh = shl nuw nsw i32 %i.eh, 1
  %i.gi = add nuw nsw i32 %i.gg, %i.gh
  %i.gj = zext i16 %i.dc to i32                   ; 2 uses
  %i.gk = zext i16 %i.dd to i32
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = shl nsw i32 %i.gl, 3
  %i.gn = sub nsw i32 %i.fd, %i.gj
  %i.go = mul nsw i32 %i.gn, 40
  %i.gp = add nsw i32 %i.gi, %i.go
  %i.gq = add nsw i32 %i.gp, %i.gm
  %i.gr = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.ge, i64 1
  %i.gt = insertelement <4 x i32> %i.gs, i32 %i.fs, i64 2
  %i.gu = insertelement <4 x i32> %i.gt, i32 %i.fg, i64 3
  %i.gv = sitofp <4 x i32> %i.gu to <4 x float>
  %i.gw = fdiv <4 x float> %i.gv, splat (float 4.800000e+01)
  %i.gx = fptosi <4 x float> %i.gw to <4 x i32>   ; 3 uses
  %i.gy = icmp ugt <4 x i32> %i.gx, splat (i32 65534)
  %i.gz = icmp slt <4 x i32> %i.gx, zeroinitializer
  %i.ha = select <4 x i1> %i.gz, <4 x float> zeroinitializer, <4 x float> splat (float 6.553500e+04)
  %i.hb = uitofp <4 x i32> %i.gx to <4 x float>
  %1 = select <4 x i1> %i.gy, <4 x float> %i.ha, <4 x float> %i.hb ; 4 uses
  %i.hc = extractelement <4 x float> %1, i64 2
  %2 = fmul float %i.ep, %i.hc
  %i.hd = extractelement <4 x float> %1, i64 3
  %3 = tail call float @llvm.fmuladd.f32(float %i.en, float %i.hd, float %2)
  %i.he = extractelement <4 x float> %1, i64 1
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.er, float %i.he, float %3)
  %4 = extractelement <4 x float> %1, i64 0
  %i.hg = tail call float @llvm.fmuladd.f32(float %i.et, float %4, float %i.hf)
  %i.hh = fadd float %i.en, %i.ep
  %i.hi = fadd float %i.hh, %i.er
  %i.hj = fadd float %i.hi, %i.et
  %i.hk = fdiv float %i.hg, %i.hj
  %i.hl = fptosi float %i.hk to i32
  %i.hm = tail call i32 @llvm.smax.i32(i32 %i.hl, i32 0) ; 2 uses
  %i.hn = tail call i32 @llvm.umin.i32(i32 %i.hm, i32 65535)
  %i.ho = trunc nuw i32 %i.hn to i16              ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !80
  %gep2040 = getelementptr [8 x i8], ptr %invariant.gep2039, i64 %i.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %gep2040, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !80 ; 4 uses
  %i.hs = sub nsw i64 %i.bl, %i.p
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !80 ; 8 uses
  %i.hw = add nsw i64 %i.bu, %i.p                 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !80 ; 18 uses
  %i.ia = sub nsw i64 %i.bu, %i.p                 ; 4 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !80 ; 17 uses
  %i.ie = load i16, ptr %i.bd, align 2, !tbaa !80 ; 2 uses
  %i.if = load i16, ptr %i.ce, align 2, !tbaa !80 ; 2 uses
  %. = tail call i16 @llvm.umin.i16(i16 %i.ie, i16 %i.if) ; 3 uses
  %i.ig = icmp ult i16 %i.bo, %.                  ; 4 uses
  br i1 %i.ig, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bb
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !80
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cc
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !80
  %.1686 = tail call i16 @llvm.umin.i16(i16 %i.ij, i16 %i.im)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.in = phi i16 [ %.1686, %bb.d ], [ %i.bo, %bb.c ]
  %i.io = icmp ult i16 %i.bx, %i.in
  br i1 %i.io, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bl
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !80
  %i.is = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bb
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !80
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cc
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !80
  %.1687 = tail call i16 @llvm.umin.i16(i16 %i.iu, i16 %i.ix)
  %spec.select1881 = tail call i16 @llvm.umin.i16(i16 %i.ir, i16 %.1687)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.iy = phi i16 [ %spec.select1881, %bb.f ], [ %i.bx, %bb.e ]
  %i.iz = icmp ult i16 %i.id, %i.iy
  br i1 %i.iz, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bu
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !80 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bl
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !80 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bb
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !80
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.cc
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !80
  %.1689 = tail call i16 @llvm.umin.i16(i16 %i.ji, i16 %i.jl) ; 2 uses
  %i.jm = icmp ult i16 %i.jf, %.1689
  br i1 %i.jm, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %spec.select1882 = tail call i16 @llvm.umin.i16(i16 %i.jc, i16 %i.jf)
  br label %bb.j

.thread:                                          ; preds = %bb.h
  %spec.select1883 = tail call i16 @llvm.umin.i16(i16 %i.jc, i16 %.1689)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.g
  %i.jn = phi i16 [ %spec.select1882, %bb.i ], [ %i.id, %bb.g ], [ %spec.select1883, %.thread ]
  %i.jo = icmp ult i16 %i.hz, %i.jn
  br i1 %i.jo, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ia
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !80 ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bu
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !80 ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bl
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !80 ; 3 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bb
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !80
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.cc
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !80
  %.1693 = tail call i16 @llvm.umin.i16(i16 %i.ka, i16 %i.kd) ; 3 uses
  %minmaxop = tail call i16 @llvm.umin.i16(i16 %i.jx, i16 %.1693)
  %i.ke = tail call i16 @llvm.umin.i16(i16 %minmaxop, i16 %i.ju)
  %i.kf = icmp ult i16 %i.jr, %i.ke
  br i1 %i.kf, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kg = icmp ult i16 %i.jx, %.1693
  br i1 %i.kg, label %bb.m, label %.thread1818

bb.m:                                             ; preds = %bb.l
  %spec.select1886 = tail call i16 @llvm.umin.i16(i16 %i.ju, i16 %i.jx)
  br label %bb.n

.thread1818:                                      ; preds = %bb.l
  %spec.select1887 = tail call i16 @llvm.umin.i16(i16 %i.ju, i16 %.1693)
  br label %bb.n

bb.n:                                             ; preds = %.thread1818, %bb.m, %bb.k, %bb.j
  %i.kh = phi i16 [ %spec.select1886, %bb.m ], [ %i.hz, %bb.j ], [ %i.jr, %bb.k ], [ %spec.select1887, %.thread1818 ]
  %i.ki = icmp ult i16 %i.hv, %i.kh
  br i1 %i.ki, label %.thread2022, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hw
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !80 ; 3 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ia
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !80 ; 3 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bu
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !80 ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bl
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !80 ; 4 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bb
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !80
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cc
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !80
  %.1701 = tail call i16 @llvm.umin.i16(i16 %i.kx, i16 %i.la) ; 4 uses
  %i.lb = icmp ult i16 %i.ku, %.1701
  %minmaxop1945 = tail call i16 @llvm.umin.i16(i16 %i.ku, i16 %.1701)
  %i.lc = tail call i16 @llvm.umin.i16(i16 %minmaxop1945, i16 %i.kr)
  %i.ld = icmp ult i16 %i.ko, %i.lc
  br i1 %i.ld, label %.thread2021, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..1701 = tail call i16 @llvm.umin.i16(i16 %i.ku, i16 %.1701)
  %spec.select1891 = tail call i16 @llvm.umin.i16(i16 %i.kr, i16 %..1701)
  %i.le = icmp ult i16 %i.kl, %spec.select1891    ; 2 uses
  %.mux2042 = select i1 %i.le, i16 %i.kl, i16 %i.ko
  br i1 %i.le, label %.thread2022, label %bb.q

.thread2021:                                      ; preds = %bb.o
  %spec.select = tail call i16 @llvm.umin.i16(i16 %i.kl, i16 %i.ko)
  br label %.thread2022

bb.q:                                             ; preds = %bb.p
  br i1 %i.lb, label %bb.r, label %.thread1826

bb.r:                                             ; preds = %bb.q
  %spec.select1894 = tail call i16 @llvm.umin.i16(i16 %i.kr, i16 %i.ku)
  br label %.thread2022

.thread1826:                                      ; preds = %bb.q
  %spec.select1895 = tail call i16 @llvm.umin.i16(i16 %i.kr, i16 %.1701)
  br label %.thread2022

.thread2022:                                      ; preds = %.thread2021, %bb.p, %.thread1826, %bb.r, %bb.n
  %i.lf = phi i16 [ %spec.select1894, %bb.r ], [ %i.hv, %bb.n ], [ %.mux2042, %bb.p ], [ %spec.select, %.thread2021 ], [ %spec.select1895, %.thread1826 ]
  %i.lg = icmp ult i16 %i.hr, %i.lf
  br i1 %i.lg, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %.thread2022
  br i1 %i.ig, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !80
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cc
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !80
  %.1718 = tail call i16 @llvm.umin.i16(i16 %i.lj, i16 %i.lm)
  br label %bb.u

end_hunk_0
