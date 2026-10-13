Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@ImageCrop:bb.a
  %unroll_iter = and i64 %i.av, -2
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv84.epil.init = phi i64 [ %i.ar, %.lr.ph ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod100 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ay = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv.epil.init
  %i.az = mul nsw i64 %indvars.iv84.epil.init, %i.as
  %i.ba = add nsw i64 %i.az, %i.at
  %i.bb = mul nsw i64 %i.ba, %i.au
  %i.bc = getelementptr inbounds i8, ptr %.pre, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.bc, i64 %i.aq, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %GetPixelDataSize.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre90, %GetPixelDataSize.exit.._crit_edge_crit_edge ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.ao, %.epil.preheader ]
  tail call void @free(ptr noundef %.pre) #52
  store ptr %i.ah, ptr %0, align 8
  store i32 %.pre-phi, ptr %i.c, align 8
  %i.bd = fptosi float %.sroa.16.12.vec.extract71 to i32
  store i32 %i.bd, ptr %i.f, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv84 = phi i64 [ %i.ar, %.lr.ph.new ], [ %indvars.iv.next85.1, %bb.k ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.be = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv
  %i.bf = mul nsw i64 %indvars.iv84, %i.as
  %i.bg = add nsw i64 %i.bf, %i.at
  %i.bh = mul nsw i64 %i.bg, %i.au
  %i.bi = getelementptr inbounds i8, ptr %.pre, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bi, i64 %i.aq, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.aq ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %i.bj = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv.next
  %i.bk = mul nsw i64 %indvars.iv.next85, %i.as
  %i.bl = add nsw i64 %i.bk, %i.at
  %i.bm = mul nsw i64 %i.bl, %i.au
  %i.bn = getelementptr inbounds i8, ptr %.pre, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bn, i64 %i.aq, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.aq ; 2 uses
  %indvars.iv.next85.1 = add nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.k

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFormat(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 40 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i32 %1, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %.not = icmp eq i32 %i.k, %1
  br i1 %.not, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.k, 14
  %i.m = icmp slt i32 %1, 14
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %.preheader.i, label %bb.aj

.preheader.i:                                     ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = mul nsw i32 %i.g, %i.d                   ; 3 uses
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 4
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #53 ; 27 uses
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %.lr.ph.i, label %LoadImageDataNormalized.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 18 uses
  %.0159174.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.t ] ; 23 uses
  switch i32 %i.k, label %bb.t [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 5, label %bb.i
    i32 3, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 4, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1
  %i.u = uitofp i8 %i.t to float
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.w = fdiv float %i.u, 2.550000e+02
  %i.x = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.y, ptr %i.v, align 4
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.z = sext i32 %.0159174.i to i64
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = uitofp i8 %i.ab to float
  %i.ad = fdiv float %i.ac, 2.550000e+02          ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store float %i.ad, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.ad, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %i.aa, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = fdiv float %i.aj, 2.550000e+02
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store float %i.ak, ptr %i.al, align 4
  %i.am = add nsw i32 %.0159174.i, 2
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i32                   ; 4 uses
  %i.aq = lshr i32 %i.ap, 11
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.at = lshr i32 %i.ap, 6
  %i.au = and i32 %i.at, 31
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = lshr i32 %i.ap, 1
  %i.ax = and i32 %i.aw, 31
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = and i32 %i.ap, 1
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, float 0.000000e+00, float 1.000000e+00
  %i.bc = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.av, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ay, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = fmul <4 x float> %i.bf, <float f0x3D042108, float f0x3D042108, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.bg, ptr %i.as, align 4
  br label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32                   ; 3 uses
  %i.bk = lshr i32 %i.bj, 11
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.bn = lshr i32 %i.bj, 5
  %i.bo = and i32 %i.bn, 63
  %i.bp = uitofp nneg i32 %i.bo to float
  %i.bq = and i32 %i.bj, 31
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bl, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.br, i64 2
  %i.bv = fmul nnan <4 x float> %i.bu, <float f0x3D042108, float f0x3C820821, float f0x3D042108, float 1.000000e+00>
  store <4 x float> %i.bv, ptr %i.bm, align 4
  br label %bb.t

bb.k:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bx = load i16, ptr %i.bw, align 2
  %2 = zext i16 %i.bx to i32                      ; 4 uses
  %3 = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.by = lshr i32 %2, 12
  %i.bz = lshr i32 %2, 8
  %i.ca = lshr i32 %2, 4
  %i.cb = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.bz, i64 1
  %i.cd = insertelement <4 x i32> %i.cc, i32 %i.ca, i64 2
  %i.ce = insertelement <4 x i32> %i.cd, i32 %2, i64 3
  %i.cf = and <4 x i32> %i.ce, <i32 -1, i32 15, i32 15, i32 15>
  %i.cg = uitofp nneg <4 x i32> %i.cf to <4 x float>
  %i.ch = fmul nnan <4 x float> %i.cg, splat (float f0x3D888889)
  store <4 x float> %i.ch, ptr %3, align 4
  br label %bb.t

bb.l:                                             ; preds = %bb.f
  %i.ci = sext i32 %.0159174.i to i64
  %i.cj = getelementptr inbounds i8, ptr %i.a, i64 %i.ci ; 4 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = uitofp i8 %i.ck to float
  %i.cm = fdiv float %i.cl, 2.550000e+02
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.cm, ptr %i.cn, align 4
  %i.co = getelementptr i8, ptr %i.cj, i64 1
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = uitofp i8 %i.cp to float
  %i.cr = fdiv float %i.cq, 2.550000e+02
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store float %i.cr, ptr %i.cs, align 4
  %i.ct = getelementptr i8, ptr %i.cj, i64 2
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = uitofp i8 %i.cu to float
  %i.cw = fdiv float %i.cv, 2.550000e+02
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cw, ptr %i.cx, align 4
  %i.cy = getelementptr i8, ptr %i.cj, i64 3
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = uitofp i8 %i.cz to float
  %i.db = fdiv float %i.da, 2.550000e+02
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store float %i.db, ptr %i.dc, align 4
  %i.dd = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.m:                                             ; preds = %bb.f
  %i.de = sext i32 %.0159174.i to i64
  %i.df = getelementptr inbounds i8, ptr %i.a, i64 %i.de ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = uitofp i8 %i.dg to float
  %i.di = fdiv float %i.dh, 2.550000e+02
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr i8, ptr %i.df, i64 1
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = uitofp i8 %i.dl to float
  %i.dn = fdiv float %i.dm, 2.550000e+02
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store float %i.dn, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %i.df, i64 2
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = uitofp i8 %i.dq to float
  %i.ds = fdiv float %i.dr, 2.550000e+02
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float %i.ds, ptr %i.dt, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store float 1.000000e+00, ptr %i.du, align 4
  %i.dv = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.n:                                             ; preds = %bb.f
  %i.dw = sext i32 %.0159174.i to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store <2 x float> zeroinitializer, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store float 1.000000e+00, ptr %i.eb, align 4
  %i.ec = add nsw i32 %.0159174.i, 1
  br label %bb.t

bb.o:                                             ; preds = %bb.f
  %i.ed = sext i32 %.0159174.i to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ed ; 3 uses
  %i.ef = load float, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store float %i.ef, ptr %i.eg, align 4
  %i.eh = getelementptr i8, ptr %i.ee, i64 4
  %i.ei = load float, ptr %i.eh, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store float %i.ei, ptr %i.ej, align 4
  %i.ek = getelementptr i8, ptr %i.ee, i64 8
  %i.el = load float, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.en = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.el, i64 0
  store <2 x float> %i.en, ptr %i.em, align 4
  %i.eo = add nsw i32 %.0159174.i, 3
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.ep = sext i32 %.0159174.i to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ep
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.es = load <4 x float>, ptr %i.eq, align 4
  store <4 x float> %i.es, ptr %i.er, align 4
  %i.et = add nsw i32 %.0159174.i, 4
  br label %bb.t

bb.q:                                             ; preds = %bb.f
  %i.eu = sext i32 %.0159174.i to i64
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2            ; 2 uses
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  %i.ey = lshr i32 %i.ex, 10
  %i.ez = and i32 %i.ey, 31                       ; 2 uses
  %i.fa = shl nuw nsw i32 %i.ex, 13               ; 2 uses
  %i.fb = and i32 %i.fa, 8380416                  ; 3 uses
  %i.fc = uitofp nneg i32 %i.fb to float
  %i.fd = bitcast float %i.fc to i32              ; 2 uses
  %i.fe = lshr i32 %i.fd, 23
  %.signext.i.i = sext i16 %i.ew to i32
  %i.ff = and i32 %.signext.i.i, -2147483648
  %.not.i.i = icmp eq i32 %i.ez, 0                ; 2 uses
  %i.fg = shl nuw nsw i32 %i.ez, 23
  %i.fh = add nuw nsw i32 %i.fg, 939524096
  %i.fi = or disjoint i32 %i.fh, %i.fb
  %i.fj = select i1 %.not.i.i, i32 0, i32 %i.fi
  %i.fk = or disjoint i32 %i.fj, %i.ff
  %i.fl = icmp ne i32 %i.fb, 0
  %i.fm = and i1 %.not.i.i, %i.fl
  %i.fn = and i32 %i.fd, 2139095040
  %i.fo = add nsw i32 %i.fn, -310378496
  %i.fp = sub nsw i32 150, %i.fe
  %i.fq = shl i32 %i.fa, %i.fp
  %i.fr = and i32 %i.fq, 8380416
  %i.fs = or disjoint i32 %i.fr, %i.fo
  %i.ft = select i1 %i.fm, i32 %i.fs, i32 0
  %i.fu = or i32 %i.fk, %i.ft
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 3 uses
  store i32 %i.fu, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store <2 x float> zeroinitializer, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store float 1.000000e+00, ptr %i.fx, align 4
  %i.fy = add nsw i32 %.0159174.i, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.fz = sext i32 %.0159174.i to i64
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fz ; 3 uses
  %i.gb = load i16, ptr %i.ga, align 2            ; 2 uses
  %i.gc = zext i16 %i.gb to i32                   ; 2 uses
  %i.gd = lshr i32 %i.gc, 10
  %i.ge = and i32 %i.gd, 31                       ; 2 uses
  %i.gf = shl nuw nsw i32 %i.gc, 13               ; 2 uses
  %i.gg = and i32 %i.gf, 8380416                  ; 3 uses
  %i.gh = uitofp nneg i32 %i.gg to float
  %i.gi = bitcast float %i.gh to i32              ; 2 uses
  %i.gj = lshr i32 %i.gi, 23
  %.signext.i160.i = sext i16 %i.gb to i32
  %i.gk = and i32 %.signext.i160.i, -2147483648
  %.not.i161.i = icmp eq i32 %i.ge, 0             ; 2 uses
  %i.gl = shl nuw nsw i32 %i.ge, 23
  %i.gm = add nuw nsw i32 %i.gl, 939524096
  %i.gn = or disjoint i32 %i.gm, %i.gg
  %i.go = select i1 %.not.i161.i, i32 0, i32 %i.gn
  %i.gp = or disjoint i32 %i.go, %i.gk
  %i.gq = icmp ne i32 %i.gg, 0
  %i.gr = and i1 %.not.i161.i, %i.gq
  %i.gs = and i32 %i.gi, 2139095040
  %i.gt = add nsw i32 %i.gs, -310378496
  %i.gu = sub nsw i32 150, %i.gj
  %i.gv = shl i32 %i.gf, %i.gu
  %i.gw = and i32 %i.gv, 8380416
  %i.gx = or disjoint i32 %i.gw, %i.gt
  %i.gy = select i1 %i.gr, i32 %i.gx, i32 0
  %i.gz = or i32 %i.gp, %i.gy
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.i ; 4 uses
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = getelementptr i8, ptr %i.ga, i64 2
  %i.hc = load i16, ptr %i.hb, align 2            ; 2 uses
  %i.hd = zext i16 %i.hc to i32                   ; 2 uses
  %i.he = lshr i32 %i.hd, 10
  %i.hf = and i32 %i.he, 31                       ; 2 uses
  %i.hg = shl nuw nsw i32 %i.hd, 13               ; 2 uses
  %i.hh = and i32 %i.hg, 8380416                  ; 3 uses
  %i.hi = uitofp nneg i32 %i.hh to float
  %i.hj = bitcast float %i.hi to i32              ; 2 uses
  %i.hk = lshr i32 %i.hj, 23
  %.signext.i162.i = sext i16 %i.hc to i32
  %i.hl = and i32 %.signext.i162.i, -2147483648
  %.not.i163.i = icmp eq i32 %i.hf, 0             ; 2 uses
  %i.hm = shl nuw nsw i32 %i.hf, 23
  %i.hn = add nuw nsw i32 %i.hm, 939524096
  %i.ho = or disjoint i32 %i.hn, %i.hh
  %i.hp = select i1 %.not.i163.i, i32 0, i32 %i.ho
  %i.hq = or disjoint i32 %i.hp, %i.hl
  %i.hr = icmp ne i32 %i.hh, 0
  %i.hs = and i1 %.not.i163.i, %i.hr
  %i.ht = and i32 %i.hj, 2139095040
  %i.hu = add nsw i32 %i.ht, -310378496
  %i.hv = sub nsw i32 150, %i.hk
  %i.hw = shl i32 %i.hg, %i.hv
  %i.hx = and i32 %i.hw, 8380416
  %i.hy = or disjoint i32 %i.hx, %i.hu
  %i.hz = select i1 %i.hs, i32 %i.hy, i32 0
  %i.ia = or i32 %i.hq, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr i8, ptr %i.ga, i64 4
  %i.id = load i16, ptr %i.ic, align 2            ; 2 uses
  %i.ie = zext i16 %i.id to i32                   ; 2 uses
end_hunk_0
