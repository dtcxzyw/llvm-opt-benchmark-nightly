Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/lexer?download=true
inline.NumInlined: 123
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5Lexer9ReadTokenEv:bb.a
  br i1 %i.e, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = icmp samesign ult i8 %i.c, 13
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  switch i8 %i.c, label %.loopexit [
    i8 0, label %bb.bw
    i8 10, label %bb.v
  ]

bb.g:                                             ; preds = %bb.e
  switch i8 %i.c, label %.loopexit [
    i8 13, label %bb.w
    i8 35, label %bb.aa
  ]

bb.h:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i8 %i.c, 59
  br i1 %i.g, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  switch i8 %i.c, label %bb.ab [
    i8 47, label %.loopexit
    i8 58, label %bb.ad
  ]

bb.j:                                             ; preds = %bb.h
  %i.h = icmp samesign ult i8 %i.c, 62
  br i1 %i.h, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not164 = icmp eq i8 %i.c, 61
  br i1 %.not164, label %bb.ae, label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.i = add nsw i8 %i.c, -65
  %or.cond4 = icmp ult i8 %i.i, 26
  br i1 %or.cond4, label %bb.ab, label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.j = icmp ult i8 %i.c, 106
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.k = icmp samesign ult i8 %i.c, 99
  br i1 %i.k, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  switch i8 %i.c, label %bb.ab [
    i8 96, label %.loopexit
    i8 98, label %bb.af
  ]

bb.p:                                             ; preds = %bb.n
  switch i8 %i.c, label %bb.ab [
    i8 100, label %bb.ag
    i8 105, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.m
  %i.l = icmp ult i8 %i.c, 115
  br i1 %i.l, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  switch i8 %i.c, label %bb.ab [
    i8 112, label %bb.ai
    i8 114, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.q
  %i.m = icmp ult i8 %i.c, 123
  br i1 %i.m, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.n = icmp eq i8 %i.c, 115
  br i1 %i.n, label %bb.ak, label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.o = icmp eq i8 %i.c, 124
  br i1 %i.o, label %bb.al, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.o, %bb.i, %bb.f, %bb.u, %bb.l, %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.v:                                             ; preds = %bb.f
  br label %bb.bw

bb.w:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %bb.bw, label %.thread

.preheader:                                       ; preds = %bb.b, %.preheader
  %.3 = phi ptr [ %i.t, %.preheader ], [ %.0148, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 8 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19    ; 4 uses
  %.not167.not = icmp eq i8 %i.u, 32
  br i1 %.not167.not, label %.preheader, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.v = icmp ult i8 %i.u, 13
  br i1 %i.v, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.w = icmp eq i8 %i.u, 10
  br i1 %i.w, label %bb.bw, label %.thread

bb.z:                                             ; preds = %bb.x
  switch i8 %i.u, label %.thread [
    i8 13, label %bb.am
    i8 35, label %bb.ao
  ]

bb.aa:                                            ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.ap

bb.ab:                                            ; preds = %bb.r, %bb.p, %bb.o, %bb.i, %bb.l, %bb.bu, %bb.bs, %bb.br, %bb.bk, %bb.bi, %bb.bh, %bb.ac, %bb.t
  %.0148385 = phi ptr [ %.0148, %bb.i ], [ %.0148384, %bb.ac ], [ %.0148, %bb.l ], [ %.0148, %bb.o ], [ %.0148, %bb.bk ], [ %.0148, %bb.br ], [ %.0148, %bb.p ], [ %.0148, %bb.bs ], [ %.0148, %bb.bh ], [ %.0148, %bb.r ], [ %.0148, %bb.bi ], [ %.0148, %bb.bu ], [ %.0148, %bb.t ]
  %.5 = phi ptr [ %.0148, %bb.i ], [ %.6, %bb.ac ], [ %.0148, %bb.l ], [ %.0148, %bb.o ], [ %i.dr, %bb.bk ], [ %i.ep, %bb.br ], [ %.0148, %bb.p ], [ %i.ev, %bb.bs ], [ %i.dc, %bb.bh ], [ %.0148, %bb.r ], [ %i.di, %bb.bi ], [ %i.fd, %bb.bu ], [ %.0148, %bb.t ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bt, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab
  %.0148384 = phi ptr [ %.0148385, %bb.ab ], [ %.0148, %bb.be ], [ %.0148, %bb.ay ], [ %.0148, %bb.aq ], [ %.0148, %bb.af ], [ %.0148, %bb.bo ], [ %.0148, %bb.bl ], [ %.0148, %bb.bf ], [ %.0148, %bb.az ], [ %.0148, %bb.ar ], [ %.0148, %bb.ag ], [ %.0148, %bb.bp ], [ %.0148, %bb.bm ], [ %.0148, %bb.bg ], [ %.0148, %bb.ba ], [ %.0148, %bb.as ], [ %.0148, %bb.ah ], [ %.0148, %bb.bb ], [ %.0148, %bb.at ], [ %.0148, %bb.ai ], [ %.0148, %bb.bc ], [ %.0148, %bb.au ], [ %.0148, %bb.aj ], [ %.0148, %bb.bt ], [ %.0148, %bb.bq ], [ %.0148, %bb.bn ], [ %.0148, %bb.bj ], [ %.0148, %bb.bd ], [ %.0148, %bb.av ], [ %.0148, %bb.ak ] ; 2 uses
  %.6 = phi ptr [ %i.aa, %bb.ab ], [ %i.ct, %bb.be ], [ %i.cb, %bb.ay ], [ %i.bh, %bb.aq ], [ %i.ai, %bb.af ], [ %i.eg, %bb.bo ], [ %i.dx, %bb.bl ], [ %i.cw, %bb.bf ], [ %i.ce, %bb.az ], [ %i.bk, %bb.ar ], [ %i.al, %bb.ag ], [ %i.ej, %bb.bp ], [ %i.ea, %bb.bm ], [ %i.cz, %bb.bg ], [ %i.ch, %bb.ba ], [ %i.bn, %bb.as ], [ %i.ao, %bb.ah ], [ %i.ck, %bb.bb ], [ %i.bq, %bb.at ], [ %i.ar, %bb.ai ], [ %i.cn, %bb.bc ], [ %i.bt, %bb.au ], [ %i.au, %bb.aj ], [ %i.fb, %bb.bt ], [ %i.em, %bb.bq ], [ %i.ed, %bb.bn ], [ %i.do, %bb.bj ], [ %i.cq, %bb.bd ], [ %i.bw, %bb.av ], [ %i.ax, %bb.ak ] ; 2 uses
  %.0141 = phi i8 [ %i.ab, %bb.ab ], [ %i.cu, %bb.be ], [ %i.cc, %bb.ay ], [ %i.bi, %bb.aq ], [ %i.aj, %bb.af ], [ %i.eh, %bb.bo ], [ %i.dy, %bb.bl ], [ %i.cx, %bb.bf ], [ %i.cf, %bb.az ], [ %i.bl, %bb.ar ], [ %i.am, %bb.ag ], [ %i.ek, %bb.bp ], [ %i.eb, %bb.bm ], [ %i.da, %bb.bg ], [ %i.ci, %bb.ba ], [ %i.bo, %bb.as ], [ %i.ap, %bb.ah ], [ %i.cl, %bb.bb ], [ %i.br, %bb.at ], [ %i.as, %bb.ai ], [ %i.co, %bb.bc ], [ %i.bu, %bb.au ], [ %i.av, %bb.aj ], [ %i.fc, %bb.bt ], [ %i.en, %bb.bq ], [ %i.ee, %bb.bn ], [ %i.dp, %bb.bj ], [ %i.cr, %bb.bd ], [ %i.bx, %bb.av ], [ %i.ay, %bb.ak ]
  %i.ac = zext i8 %.0141 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = and i8 %i.ae, 64
  %.not166 = icmp eq i8 %i.af, 0
  br i1 %.not166, label %.thread, label %bb.ab

bb.ad:                                            ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.ae:                                            ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  br label %.thread

bb.af:                                            ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 117
  br i1 %i.ak, label %bb.aq, label %bb.ac

bb.ag:                                            ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = icmp eq i8 %i.am, 101
  br i1 %i.an, label %bb.ar, label %bb.ac

bb.ah:                                            ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 110
  br i1 %i.aq, label %bb.as, label %bb.ac

bb.ai:                                            ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19  ; 2 uses
  %i.at = icmp eq i8 %i.as, 111
  br i1 %i.at, label %bb.at, label %bb.ac

bb.aj:                                            ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 117
  br i1 %i.aw, label %bb.au, label %bb.ac

bb.ak:                                            ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 117
  br i1 %i.az, label %bb.av, label %bb.ac

bb.al:                                            ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %.0148, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  switch i8 %i.bb, label %.thread [
    i8 64, label %bb.aw
    i8 124, label %bb.ax
  ]

bb.am:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !19
  %i.be = icmp eq i8 %i.bd, 10
  br i1 %i.be, label %bb.bw, label %.thread

bb.an:                                            ; preds = %bb.ap
  %spec.select = select i1 %.2, i32 0, i32 7
  br label %.thread

bb.ao:                                            ; preds = %bb.ap, %bb.z
  %.8 = phi ptr [ %i.t, %bb.z ], [ %.9, %bb.ap ]
  %.1146 = phi ptr [ %i.t, %bb.z ], [ %.2147, %bb.ap ]
  %.1 = phi i1 [ false, %bb.z ], [ %.2, %bb.ap ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aa, %bb.ao
  %.9 = phi ptr [ %i.bf, %bb.ao ], [ %i.x, %bb.aa ] ; 2 uses
  %.2147 = phi ptr [ %.1146, %bb.ao ], [ %i.x, %bb.aa ] ; 2 uses
  %.1142 = phi i8 [ %i.bg, %bb.ao ], [ %i.y, %bb.aa ]
  %.2 = phi i1 [ %.1, %bb.ao ], [ true, %bb.aa ]  ; 2 uses
  switch i8 %.1142, label %bb.ao [
    i8 0, label %bb.an
    i8 10, label %bb.bv
  ]

bb.aq:                                            ; preds = %bb.af
  %i.bh = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 105
  br i1 %i.bj, label %bb.ay, label %bb.ac

bb.ar:                                            ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19  ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 102
  br i1 %i.bm, label %bb.az, label %bb.ac

bb.as:                                            ; preds = %bb.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 99
  br i1 %i.bp, label %bb.ba, label %bb.ac

bb.at:                                            ; preds = %bb.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !19  ; 2 uses
  %i.bs = icmp eq i8 %i.br, 111
  br i1 %i.bs, label %bb.bb, label %bb.ac

bb.au:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19  ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 108
  br i1 %i.bv, label %bb.bc, label %bb.ac

bb.av:                                            ; preds = %bb.ak
  %i.bw = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19  ; 2 uses
  %i.by = icmp eq i8 %i.bx, 98
  br i1 %i.by, label %bb.bd, label %bb.ac

bb.aw:                                            ; preds = %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  br label %.thread

bb.ax:                                            ; preds = %bb.al
  %i.ca = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  br label %.thread

bb.ay:                                            ; preds = %bb.aq
  %i.cb = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19  ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 108
  br i1 %i.cd, label %bb.be, label %bb.ac

bb.az:                                            ; preds = %bb.ar
  %i.ce = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19  ; 2 uses
  %i.cg = icmp eq i8 %i.cf, 97
  br i1 %i.cg, label %bb.bf, label %bb.ac

bb.ba:                                            ; preds = %bb.as
  %i.ch = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !19  ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 108
  br i1 %i.cj, label %bb.bg, label %bb.ac

bb.bb:                                            ; preds = %bb.at
  %i.ck = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !19  ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 108
  br i1 %i.cm, label %bb.bh, label %bb.ac

bb.bc:                                            ; preds = %bb.au
  %i.cn = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !19  ; 2 uses
  %i.cp = icmp eq i8 %i.co, 101
  br i1 %i.cp, label %bb.bi, label %bb.ac

bb.bd:                                            ; preds = %bb.av
  %i.cq = getelementptr inbounds nuw i8, ptr %.0148, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !19  ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 110
  br i1 %i.cs, label %bb.bj, label %bb.ac

bb.be:                                            ; preds = %bb.ay
  %i.ct = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !19  ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 100
  br i1 %i.cv, label %bb.bk, label %bb.ac

bb.bf:                                            ; preds = %bb.az
  %i.cw = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !19  ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 117
  br i1 %i.cy, label %bb.bl, label %bb.ac

bb.bg:                                            ; preds = %bb.ba
  %i.cz = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !19  ; 2 uses
  %i.db = icmp eq i8 %i.da, 117
  br i1 %i.db, label %bb.bm, label %bb.ac

bb.bh:                                            ; preds = %bb.bb
  %i.dc = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  %i.dh = and i8 %i.dg, 64
  %.not158 = icmp eq i8 %i.dh, 0
  br i1 %.not158, label %.thread, label %bb.ab

bb.bi:                                            ; preds = %bb.bc
  %i.di = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19
  %i.dn = and i8 %i.dm, 64
  %.not157 = icmp eq i8 %i.dn, 0
  br i1 %.not157, label %.thread, label %bb.ab

bb.bj:                                            ; preds = %bb.bd
  %i.do = getelementptr inbounds nuw i8, ptr %.0148, i64 4 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19  ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 105
  br i1 %i.dq, label %bb.bn, label %bb.ac

bb.bk:                                            ; preds = %bb.be
  %i.dr = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !19
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = and i8 %i.dv, 64
  %.not163 = icmp eq i8 %i.dw, 0
  br i1 %.not163, label %.thread, label %bb.ab

bb.bl:                                            ; preds = %bb.bf
  %i.dx = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !19  ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 108
  br i1 %i.dz, label %bb.bo, label %bb.ac

bb.bm:                                            ; preds = %bb.bg
  %i.ea = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19  ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 100
  br i1 %i.ec, label %bb.bp, label %bb.ac

bb.bn:                                            ; preds = %bb.bj
  %i.ed = getelementptr inbounds nuw i8, ptr %.0148, i64 5 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !19  ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 110
  br i1 %i.ef, label %bb.bq, label %bb.ac

bb.bo:                                            ; preds = %bb.bl
  %i.eg = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !19  ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 116
  br i1 %i.ei, label %bb.br, label %bb.ac

bb.bp:                                            ; preds = %bb.bm
  %i.ej = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !19  ; 2 uses
  %i.el = icmp eq i8 %i.ek, 101
  br i1 %i.el, label %bb.bs, label %bb.ac

bb.bq:                                            ; preds = %bb.bn
  %i.em = getelementptr inbounds nuw i8, ptr %.0148, i64 6 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !19  ; 2 uses
  %i.eo = icmp eq i8 %i.en, 106
  br i1 %i.eo, label %bb.bt, label %bb.ac

bb.br:                                            ; preds = %bb.bo
  %i.ep = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !19
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !19
  %i.eu = and i8 %i.et, 64
  %.not161 = icmp eq i8 %i.eu, 0
  br i1 %.not161, label %.thread, label %bb.ab

bb.bs:                                            ; preds = %bb.bp
  %i.ev = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 3 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !19
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZZN5Lexer9ReadTokenEvE4yybm, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !19
  %i.fa = and i8 %i.ez, 64
  %.not160 = icmp eq i8 %i.fa, 0
  br i1 %.not160, label %.thread, label %bb.ab

bb.bt:                                            ; preds = %bb.bq
  %i.fb = getelementptr inbounds nuw i8, ptr %.0148, i64 7 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.fc, 97
  br i1 %.not, label %bb.bu, label %bb.ac
end_hunk_0
