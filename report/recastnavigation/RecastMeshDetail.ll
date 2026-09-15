Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL13completeFacetP9rcContextPKfiPiRiiS4_i:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %_ZL14updateLeftFacePiiii.exit173

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0104.in = phi ptr [ %i.c, %bb.b ], [ %i.k, %bb.d ]
  %.0103.in = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.d ]
  %.0103 = load i32, ptr %.0103.in, align 4, !tbaa !68 ; 15 uses
  %.0104 = load i32, ptr %.0104.in, align 4, !tbaa !68 ; 16 uses
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e
  %i.m = mul nsw i32 %.0104, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = mul nsw i32 %.0103, 3
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = zext i32 %.0103 to i64
  %i.v = zext i32 %.0104 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZL12circumCirclePKfS0_S0_PfRf.exit
  %i.w = icmp slt i32 %.3, %2
  br i1 %i.w, label %bb.x, label %._crit_edge.thread

bb.f:                                             ; preds = %.lr.ph, %_ZL12circumCirclePKfS0_S0_PfRf.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL12circumCirclePKfS0_S0_PfRf.exit ] ; 9 uses
  %.0102208 = phi i32 [ %2, %.lr.ph ], [ %.3, %_ZL12circumCirclePKfS0_S0_PfRf.exit ] ; 5 uses
  %.0183207 = phi float [ -1.000000e+00, %.lr.ph ], [ %.1, %_ZL12circumCirclePKfS0_S0_PfRf.exit ] ; 8 uses
  %i.x = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hz, %_ZL12circumCirclePKfS0_S0_PfRf.exit ] ; 7 uses
  %i.y = icmp eq i64 %indvars.iv, %i.v
  %i.z = icmp eq i64 %indvars.iv, %i.u
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond, label %_ZL12circumCirclePKfS0_S0_PfRf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.ab = load float, ptr %i.r, align 4, !tbaa !62 ; 3 uses
  %i.ac = load float, ptr %i.o, align 4, !tbaa !62 ; 5 uses
  %i.ad = load float, ptr %i.s, align 4, !tbaa !62 ; 4 uses
  %i.ae = load float, ptr %i.t, align 4, !tbaa !62 ; 6 uses
  %i.af = load float, ptr %i.aa, align 4, !tbaa !62 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.aa, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !62 ; 5 uses
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ad, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.ac, i64 0 ; 2 uses
  %i.al = insertelement <2 x float> %i.ak, float %i.ae, i64 1 ; 2 uses
  %i.am = fsub <2 x float> %i.aj, %i.al           ; 9 uses
  %i.an = insertelement <2 x float> poison, float %i.ab, i64 0 ; 2 uses
  %i.ao = insertelement <2 x float> %i.an, float %i.ah, i64 1
  %i.ap = fsub <2 x float> %i.ao, %i.al           ; 15 uses
  %i.aq = extractelement <2 x float> %i.am, i64 0 ; 7 uses
  %i.ar = fneg float %i.aq
  %i.as = extractelement <2 x float> %i.am, i64 1 ; 6 uses
  %i.at = fmul float %i.as, %i.ar
  %i.au = extractelement <2 x float> %i.ap, i64 0 ; 3 uses
  %i.av = extractelement <2 x float> %i.ap, i64 1 ; 4 uses
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.av, float %i.at) ; 6 uses
  %i.ax = fcmp ogt float %i.aw, f0x3727C5AC
  br i1 %i.ax, label %bb.h, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = fcmp olt float %.0183207, 0.000000e+00
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = shufflevector <2 x float> %i.am, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bb = fmul <2 x float> %i.ba, %i.ba
  %i.bc = fsub <2 x float> %i.am, %i.ap
  %i.bd = fsub float 0.000000e+00, %i.as
  %i.be = fmul nnan float %i.aw, 2.000000e+00
  %i.bf = fsub float 0.000000e+00, %i.aq
  %i.bg = shufflevector <2 x float> %i.ap, <2 x float> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bg, <2 x float> %i.bb) ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> %i.ap, float %i.bf, i64 0
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.bk)
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = insertelement <2 x float> %i.ap, float %i.bd, i64 1
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bl)
  %i.bp = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x float> %i.bo, %i.bq           ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1
  %i.bt = fsub float 0.000000e+00, %i.bs          ; 2 uses
  %i.bu = extractelement <2 x float> %i.br, i64 0
  %i.bv = fsub float 0.000000e+00, %i.bu          ; 2 uses
  %i.bw = fmul float %i.bv, %i.bv
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bw)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bx)
  %i.by = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.ac, i64 1
  %i.ca = fadd <2 x float> %i.bz, %i.br
  br label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.j:                                             ; preds = %bb.h
  %i.cb = extractelement <2 x float> %i.x, i64 1
  %i.cc = fsub float %i.af, %i.cb                 ; 2 uses
  %i.cd = extractelement <2 x float> %i.x, i64 0
  %i.ce = fsub float %i.ah, %i.cd                 ; 2 uses
  %i.cf = fmul float %i.ce, %i.ce
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cf)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.cg) ; 2 uses
  %i.ch = fmul float %.0183207, 1.001000e+00
  %i.ci = fcmp ogt float %sqrt.i, %i.ch
  br i1 %i.ci, label %_ZL12circumCirclePKfS0_S0_PfRf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = fmul float %.0183207, 9.990000e-01
  %i.ck = fcmp olt float %sqrt.i, %i.cj
  br i1 %i.ck, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cl = fcmp ogt float %i.aw, f0x358637BD
  %i.cm = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.ac, i64 1 ; 2 uses
  br i1 %i.cl, label %bb.m, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.m:                                             ; preds = %bb.l
  %i.co = shufflevector <2 x float> %i.am, <2 x float> %i.ap, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.co
  %i.cq = fsub <2 x float> %i.am, %i.ap
  %i.cr = fsub float 0.000000e+00, %i.as
  %i.cs = fmul nnan float %i.aw, 2.000000e+00
  %i.ct = fsub float 0.000000e+00, %i.aq
  %i.cu = shufflevector <2 x float> %i.ap, <2 x float> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cu, <2 x float> %i.cp) ; 2 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x float> %i.ap, float %i.ct, i64 0
  %i.cy = fmul <2 x float> %i.cw, %i.cx
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer, <2 x float> %i.cy)
  %i.da = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.db = insertelement <2 x float> %i.ap, float %i.cr, i64 1
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.db, <2 x float> %i.cz)
  %i.dd = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de           ; 3 uses
  %i.dg = extractelement <2 x float> %i.df, i64 1
  %i.dh = fsub float 0.000000e+00, %i.dg          ; 2 uses
  %i.di = extractelement <2 x float> %i.df, i64 0
  %i.dj = fsub float 0.000000e+00, %i.di          ; 2 uses
  %i.dk = fmul float %i.dj, %i.dj
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dk)
  %sqrt.i.i109 = tail call noundef float @llvm.sqrt.f32(float %i.dl)
  %i.dm = fadd <2 x float> %i.cn, %i.df
  br label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.n:                                             ; preds = %bb.k
  %i.dn = load i32, ptr %4, align 4, !tbaa !68    ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.n
  %wide.trip.count.i = zext nneg i32 %i.dn to i64 ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.ah, i64 1
  %i.dr = insertelement <2 x float> %i.ak, float %i.af, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !68 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !68 ; 3 uses
  %i.dw = icmp eq i32 %i.dt, %.0104
  %i.dx = zext i32 %i.dt to i64
  %i.dy = icmp eq i64 %indvars.iv, %i.dx
  %or.cond.i = or i1 %i.dw, %i.dy
  %i.dz = icmp eq i32 %i.dv, %.0104
  %i.ea = zext i32 %i.dv to i64
  %i.eb = icmp eq i64 %indvars.iv, %i.ea
  %i.ec = or i1 %i.dz, %i.eb
  %or.cond33.i = select i1 %or.cond.i, i1 true, i1 %i.ec
  br i1 %or.cond33.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = mul nsw i32 %i.dt, 3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ee ; 2 uses
  %i.eg = mul nsw i32 %i.dv, 3
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eh ; 2 uses
  %.val.i = load float, ptr %i.ef, align 4, !tbaa !62 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ef, i64 8
  %.val34.i = load float, ptr %i.ej, align 4, !tbaa !62 ; 2 uses
  %.val35.i = load float, ptr %i.ei, align 4, !tbaa !62
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  %.val36.i = load float, ptr %i.ek, align 4, !tbaa !62
  %8 = insertelement <2 x float> poison, float %.val35.i, i64 0
  %9 = insertelement <2 x float> %8, float %.val36.i, i64 1
  %i.el = insertelement <2 x float> poison, float %.val.i, i64 0 ; 2 uses
  %10 = insertelement <2 x float> %i.el, float %.val34.i, i64 1 ; 2 uses
  %i.em = fsub <2 x float> %9, %10                ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fsub <2 x float> %i.dr, %i.en
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %12 = fsub <2 x float> %i.dq, %11
  %13 = fneg <2 x float> %i.eo
  %14 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %15 = fmul <2 x float> %14, %13
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %12, <2 x float> %15) ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0 ; 2 uses
  %i.es = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.et = fmul float %i.er, %i.es
  %i.eu = fcmp olt float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ev = fsub float %.val.i, %i.ac
  %i.ew = fsub float %.val34.i, %i.ae
  %i.ex = fneg float %i.ev
  %i.ey = fmul float %i.av, %i.ex
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ew, float %i.ey) ; 2 uses
  %i.fa = fadd float %i.er, %i.ez
  %i.fb = fsub float %i.fa, %i.es
  %i.fc = fmul float %i.ez, %i.fb
  %i.fd = fcmp uge float %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.r, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i112, label %bb.o

.lr.ph.i112:                                      ; preds = %bb.r
  %i.fe = fsub float %i.af, %i.ab
  %i.ff = fsub float %i.ah, %i.ad
  %i.fg = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.ah, i64 1
  %i.fi = insertelement <2 x float> %i.an, float %i.af, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i112
  %indvars.iv.i114 = phi i64 [ 0, %.lr.ph.i112 ], [ %indvars.iv.next.i126, %bb.v ] ; 2 uses
  %.idx.i115 = shl nuw nsw i64 %indvars.iv.i114, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i115 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !68 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !68 ; 3 uses
  %i.fn = icmp eq i32 %i.fk, %.0103
  %i.fo = zext i32 %i.fk to i64
  %i.fp = icmp eq i64 %indvars.iv, %i.fo
  %or.cond.i116 = or i1 %i.fn, %i.fp
  %i.fq = icmp eq i32 %i.fm, %.0103
  %i.fr = zext i32 %i.fm to i64
  %i.fs = icmp eq i64 %indvars.iv, %i.fr
  %i.ft = or i1 %i.fq, %i.fs
  %or.cond33.i117 = select i1 %or.cond.i116, i1 true, i1 %i.ft
  br i1 %or.cond33.i117, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = mul nsw i32 %i.fk, 3
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fv ; 2 uses
  %i.fx = mul nsw i32 %i.fm, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fy ; 2 uses
  %.val.i118 = load float, ptr %i.fw, align 4, !tbaa !62 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fw, i64 8
  %.val34.i119 = load float, ptr %i.ga, align 4, !tbaa !62 ; 2 uses
  %.val35.i120 = load float, ptr %i.fz, align 4, !tbaa !62
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  %.val36.i121 = load float, ptr %i.gb, align 4, !tbaa !62
  %16 = insertelement <2 x float> poison, float %.val35.i120, i64 0
  %17 = insertelement <2 x float> %16, float %.val36.i121, i64 1
  %i.gc = insertelement <2 x float> poison, float %.val.i118, i64 0 ; 2 uses
  %18 = insertelement <2 x float> %i.gc, float %.val34.i119, i64 1 ; 2 uses
  %i.gd = fsub <2 x float> %17, %18               ; 2 uses
  %i.ge = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fsub <2 x float> %i.fi, %i.ge
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %20 = fsub <2 x float> %i.fh, %19
  %21 = fneg <2 x float> %i.gf
  %22 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %23 = fmul <2 x float> %22, %21
  %i.gg = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %20, <2 x float> %23) ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gj = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = fcmp olt float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gm = fsub float %.val.i118, %i.ab
  %i.gn = fsub float %.val34.i119, %i.ad
  %i.go = fneg float %i.gm
  %i.gp = fmul float %i.ff, %i.go
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.gn, float %i.gp) ; 2 uses
  %i.gr = fadd float %i.gi, %i.gq
  %i.gs = fsub float %i.gr, %i.gj
  %i.gt = fmul float %i.gq, %i.gs
  %i.gu = fcmp uge float %i.gt, 0.000000e+00
  br i1 %i.gu, label %bb.v, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i114, 1 ; 2 uses
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %wide.trip.count.i
  br i1 %exitcond.not.i127, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.v, %bb.n
  %i.gv = fcmp ogt float %i.aw, f0x358637BD
  %i.gw = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.gx = insertelement <2 x float> %i.gw, float %i.ac, i64 1 ; 2 uses
  br i1 %i.gv, label %bb.w, label %_ZL12circumCirclePKfS0_S0_PfRf.exit

bb.w:                                             ; preds = %.thread
  %i.gy = fmul float %i.as, %i.as
  %i.gz = fmul float %i.av, %i.av
  %i.ha = fsub <2 x float> %i.am, %i.ap
  %i.hb = fsub float 0.000000e+00, %i.as
  %i.hc = fmul nnan float %i.aw, 2.000000e+00
  %i.hd = fsub float 0.000000e+00, %i.aq
  %i.he = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.gy)
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.gz)
  %i.hg = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> %i.ap, float %i.hd, i64 0
  %i.hj = fmul <2 x float> %i.hh, %i.hi
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> zeroinitializer, <2 x float> %i.hj)
  %i.hl = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = insertelement <2 x float> %i.ap, float %i.hb, i64 1
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.hn, <2 x float> %i.hk)
  %i.hp = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fdiv <2 x float> %i.ho, %i.hq           ; 3 uses
  %i.hs = extractelement <2 x float> %i.hr, i64 1
  %i.ht = fsub float 0.000000e+00, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x float> %i.hr, i64 0
  %i.hv = fsub float 0.000000e+00, %i.hu          ; 2 uses
  %i.hw = fmul float %i.hv, %i.hv
  %i.hx = tail call noundef float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.hw)
  %sqrt.i.i129 = tail call noundef float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fadd <2 x float> %i.gx, %i.hr
  br label %_ZL12circumCirclePKfS0_S0_PfRf.exit

_ZL12circumCirclePKfS0_S0_PfRf.exit:              ; preds = %bb.q, %bb.u, %bb.w, %.thread, %bb.m, %bb.l, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi float [ %.0183207, %bb.f ], [ %.0183207, %bb.g ], [ %.0183207, %bb.j ], [ %.0183207, %bb.u ], [ 0.000000e+00, %bb.l ], [ %sqrt.i.i129, %bb.w ], [ 0.000000e+00, %.thread ], [ %sqrt.i.i, %bb.i ], [ %sqrt.i.i109, %bb.m ], [ %.0183207, %bb.q ]
  %.3 = phi i32 [ %.0102208, %bb.f ], [ %.0102208, %bb.g ], [ %.0102208, %bb.j ], [ %.0102208, %bb.u ], [ %i.az, %bb.l ], [ %i.az, %bb.w ], [ %i.az, %.thread ], [ %i.az, %bb.i ], [ %i.az, %bb.m ], [ %.0102208, %bb.q ] ; 17 uses
  %i.hz = phi <2 x float> [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.j ], [ %i.x, %bb.u ], [ %i.cn, %bb.l ], [ %i.hy, %bb.w ], [ %i.gx, %.thread ], [ %i.ca, %bb.i ], [ %i.dm, %bb.m ], [ %i.x, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

bb.x:                                             ; preds = %._crit_edge
  %i.ia = load i32, ptr %6, align 4, !tbaa !68    ; 2 uses
  %i.ib = load i32, ptr %i.c, align 4, !tbaa !68  ; 2 uses
  %i.ic = icmp ne i32 %i.ib, %.0104
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !68 ; 2 uses
  %i.if = icmp ne i32 %i.ie, %.0103
  %or.cond14.i.not199 = select i1 %i.ic, i1 true, i1 %i.if
  %brmerge = or i1 %i.f, %or.cond14.i.not199
  br i1 %brmerge, label %._crit_edge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.ia, ptr %i.d, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit

._crit_edge.i:                                    ; preds = %bb.x
  %i.ig = icmp eq i32 %i.ie, %.0104
  %i.ih = icmp eq i32 %i.ib, %.0103
  %or.cond.i131 = and i1 %i.ih, %i.ig
  br i1 %or.cond.i131, label %bb.z, label %_ZL14updateLeftFacePiiii.exit

bb.z:                                             ; preds = %._crit_edge.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !68
  %i.ik = icmp eq i32 %i.ij, -1
  br i1 %i.ik, label %bb.aa, label %_ZL14updateLeftFacePiiii.exit

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ia, ptr %i.ii, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit

_ZL14updateLeftFacePiiii.exit:                    ; preds = %bb.y, %._crit_edge.i, %bb.z, %bb.aa
  %i.il = load i32, ptr %4, align 4, !tbaa !68    ; 6 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.preheader.i, label %_ZL8findEdgePKiiii.exit.thread.thread

.lr.ph.preheader.i:                               ; preds = %_ZL14updateLeftFacePiiii.exit
  %wide.trip.count.i133 = zext nneg i32 %i.il to i64 ; 2 uses
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %bb.ae, %.lr.ph.preheader.i
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i137, %bb.ae ] ; 3 uses
  %.idx.i136 = shl nuw nsw i64 %indvars.iv.i135, 4
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i136 ; 3 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !68 ; 2 uses
  %i.ip = icmp eq i32 %i.io, %.3
  br i1 %i.ip, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i134
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !68
  %i.is = icmp eq i32 %i.ir, %.0104
  br i1 %i.is, label %_ZL8findEdgePKiiii.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i134
  %i.it = icmp eq i32 %i.io, %.0104
  br i1 %i.it, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !68
  %i.iw = icmp eq i32 %i.iv, %.3
  br i1 %i.iw, label %_ZL8findEdgePKiiii.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next.i137, %wide.trip.count.i133
  br i1 %exitcond.not.i138, label %_ZL8findEdgePKiiii.exit.thread.loopexit, label %.lr.ph.i134

_ZL8findEdgePKiiii.exit:                          ; preds = %bb.ad, %bb.ab
  %i.ix = trunc i64 %indvars.iv.i135 to i32       ; 2 uses
  %i.iy = icmp eq i32 %i.ix, -1
  %.pre216 = load i32, ptr %6, align 4, !tbaa !68 ; 3 uses
  br i1 %i.iy, label %_ZL8findEdgePKiiii.exit.thread, label %bb.ak

_ZL8findEdgePKiiii.exit.thread.loopexit:          ; preds = %bb.ae
  %.pre = load i32, ptr %6, align 4, !tbaa !68
  br label %_ZL8findEdgePKiiii.exit.thread

_ZL8findEdgePKiiii.exit.thread:                   ; preds = %_ZL8findEdgePKiiii.exit.thread.loopexit, %_ZL8findEdgePKiiii.exit
  %i.iz = phi i32 [ %.pre, %_ZL8findEdgePKiiii.exit.thread.loopexit ], [ %.pre216, %_ZL8findEdgePKiiii.exit ] ; 2 uses
  %.not.i = icmp slt i32 %i.il, %5
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.af

_ZL8findEdgePKiiii.exit.thread.thread:            ; preds = %_ZL14updateLeftFacePiiii.exit
  %i.ja = load i32, ptr %6, align 4, !tbaa !68
  %.not.i187 = icmp slt i32 %i.il, %5
  br i1 %.not.i187, label %_ZL8findEdgePKiiii.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZL8findEdgePKiiii.exit.thread.thread, %_ZL8findEdgePKiiii.exit.thread
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %i.il, i32 noundef %5) #7
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

.lr.ph.i.i:                                       ; preds = %_ZL8findEdgePKiiii.exit.thread, %bb.aj
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.aj ], [ 0, %_ZL8findEdgePKiiii.exit.thread ] ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.i ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !68 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, %.3
  br i1 %i.jd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !68
  %i.jg = icmp eq i32 %i.jf, %.0104
  br i1 %i.jg, label %_ZL8findEdgePKiiii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %i.jh = icmp eq i32 %i.jc, %.0104
  br i1 %i.jh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !68
  %i.jk = icmp eq i32 %i.jj, %.3
  br i1 %i.jk, label %_ZL8findEdgePKiiii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i133
  br i1 %exitcond.not.i.i, label %_ZL8findEdgePKiiii.exit.thread.i, label %.lr.ph.i.i

_ZL8findEdgePKiiii.exit.i:                        ; preds = %bb.ai, %bb.ag
  %i.jl = and i64 %indvars.iv.i.i, 4294967295
  %i.jm = icmp eq i64 %i.jl, 4294967295
  br i1 %i.jm, label %_ZL8findEdgePKiiii.exit.thread.i, label %_ZL7addEdgeP9rcContextPiRiiiiii.exitthread-pre-split

_ZL8findEdgePKiiii.exit.thread.i:                 ; preds = %bb.aj, %_ZL8findEdgePKiiii.exit.thread.thread, %_ZL8findEdgePKiiii.exit.i
  %i.jn = phi i32 [ %i.ja, %_ZL8findEdgePKiiii.exit.thread.thread ], [ %i.iz, %_ZL8findEdgePKiiii.exit.i ], [ %i.iz, %bb.aj ]
  %i.jo = shl nsw i32 %i.il, 2
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jp ; 4 uses
end_hunk_0
