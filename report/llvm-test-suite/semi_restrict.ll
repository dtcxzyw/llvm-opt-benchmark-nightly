Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/semi_restrict?download=true
begin_hunk_0_@hypre_SemiRestrict:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not365 = icmp eq i32 %i.h, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge410
  %i.aw = phi i1 [ true, %bb.a ], [ false, %._crit_edge410 ]
  %.0328411 = phi i1 [ false, %bb.a ], [ true, %._crit_edge410 ]
  br i1 %.0328411, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.ay = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.j, ptr noundef %i.ax, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.ba = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.az) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1340.in = phi ptr [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.1340 = load ptr, ptr %.1340.in, align 8, !tbaa !27
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader378, label %._crit_edge410

.preheader378:                                    ; preds = %bb.e, %._crit_edge
  %i.bd = phi i32 [ %i.lz, %._crit_edge ], [ %i.bb, %bb.e ]
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %._crit_edge ], [ 0, %bb.e ] ; 4 uses
  %.0326408 = phi i64 [ %indvars.iv, %._crit_edge ], [ 0, %bb.e ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv440
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader378
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %.0326408, %.preheader378 ] ; 8 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %.not = icmp eq i32 %i.bh, %i.bf
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !36

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %.1340, align 8, !tbaa !60
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !61 ; 2 uses
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %indvars.iv ; 9 uses
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bp, i64 %indvars.iv ; 6 uses
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv440 ; 5 uses
  %i.bu = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 4 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !65
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !66 ; 4 uses
  br i1 %.not365, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = sub nsw i32 %i.ch, %i.cj                ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cm = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.cn = add nuw nsw i32 %i.ck, 1
  %i.co = mul nsw i32 %i.cm, %i.cn
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cp = phi i32 [ %i.co, %bb.i ], [ 0, %bb.h ]
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.cr = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cs = sub nsw i32 %i.cq, %i.cr                ; 2 uses
  %i.ct = add nsw i32 %i.cp, %i.ce
  %i.cu = add nuw nsw i32 %i.cs, 1
  %i.cv = mul nsw i32 %i.cu, %i.ct
  %.inv = icmp slt i32 %i.cs, 0
  %i.cw = select i1 %.inv, i32 0, i32 %i.cv
  %i.cx = add nsw i32 %i.cw, %i.cd
  %i.cy = sext i32 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cz
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.db = load i32, ptr %i.by, align 4, !tbaa !7
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink456.in = phi ptr [ %i.de, %bb.k ], [ %i.by, %bb.j ]
  %.0330 = phi ptr [ %i.dd, %bb.k ], [ %i.da, %bb.j ] ; 3 uses
  %.0330468 = ptrtoaddr ptr %.0330 to i64
  %.sink456 = load i32, ptr %.sink456.in, align 4, !tbaa !7
  %i.df = sext i32 %.sink456 to i64               ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.di = ptrtoaddr ptr %i.dh to i64
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm ; 4 uses
  %i.do = load i32, ptr %i.o, align 4, !tbaa !7
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !7
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = sub nsw i32 %i.ds, %i.du                ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, -1                  ; 2 uses
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = load i32, ptr %i.an, align 4, !tbaa !7
  %i.dy = add nuw nsw i32 %i.dv, 1
  %i.dz = mul nsw i32 %i.dx, %i.dy
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ea = phi i32 [ %i.dz, %bb.m ], [ 0, %bb.l ]
  %i.eb = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ec = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.ed = sub nsw i32 %i.eb, %i.ec                ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ef = add nsw i32 %i.ea, %i.dp
  %i.eg = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.ef
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 0
  %i.ej = add i32 %i.ei, %i.do
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.en = load i32, ptr %i.aj, align 4, !tbaa !7
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.ep = add nuw nsw i32 %i.dv, 1
  %i.eq = mul nsw i32 %i.eo, %i.ep
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.er = phi i32 [ %i.eq, %bb.o ], [ 0, %bb.n ]
  %i.es = add nsw i32 %i.er, %i.en
  %i.et = mul nsw i32 %i.es, %i.eg
  %i.eu = select i1 %i.ee, i32 %i.et, i32 0
  %i.ev = add i32 %i.eu, %i.em
  %i.ew = sext i32 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ew ; 2 uses
  %i.ey = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 2 uses
  %4 = ptrtoaddr ptr %i.ey to i64
  %i.ez = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv440
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !56
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fq = shl nsw i64 %i.df, 3
  %i.fr = shl nsw i64 %i.ek, 3
  %i.fs = shl nsw i64 %i.ew, 3
  %invariant.op.a = add i64 %i.bv, %i.fq
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv437 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next438, %.critedge ] ; 2 uses
  %i.ft = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %indvars.iv437 ; 5 uses
  %i.fv = call i32 @hypre_StructMapFineToCoarse(ptr noundef %i.fu, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.fw = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.fu, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.fy = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.fz = sub i32 %i.fx, %i.fy
  %i.ga = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %i.gb = load i32, ptr %i.fh, align 4, !tbaa !7  ; 2 uses
  %i.gc = sub i32 %i.ga, %i.gb
  %i.gd = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.ge = sub nsw i32 %i.gd, %i.gb                ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, -1                  ; 2 uses
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gg = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.gh = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.gi = sub nsw i32 %i.gg, %i.gh
  %i.gj = add nuw nsw i32 %i.ge, 1
  %i.gk = mul nsw i32 %i.gi, %i.gj
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.gl = phi i32 [ %i.gk, %bb.r ], [ 0, %bb.q ]
  %i.gm = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.gn = sub i32 %i.gm, %i.fy                    ; 2 uses
  %i.go = icmp sgt i32 %i.gn, -1                  ; 2 uses
  %i.gp = add nsw i32 %i.gc, %i.gl
  %i.gq = add i32 %i.gn, 1                        ; 2 uses
  %i.gr = mul nsw i32 %i.gq, %i.gp
  %i.gs = select i1 %i.go, i32 %i.gr, i32 0
  %i.gt = add nsw i32 %i.fz, %i.gs
  %i.gu = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.gv = load i32, ptr %i.bq, align 4, !tbaa !7  ; 2 uses
  %i.gw = sub i32 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = load i32, ptr %i.dt, align 4, !tbaa !7  ; 2 uses
  %i.ha = sub i32 %i.gy, %i.gz
  %i.hb = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.hc = sub nsw i32 %i.hb, %i.gz                ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, -1                  ; 2 uses
  br i1 %i.hd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %i.hg = load i32, ptr %i.fl, align 4, !tbaa !7
  %i.hh = sub nsw i32 %i.hf, %i.hg
  %i.hi = add nuw nsw i32 %i.hc, 1
  %i.hj = mul nsw i32 %i.hh, %i.hi
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.hk = phi i32 [ %i.hj, %bb.t ], [ 0, %bb.s ]
  %i.hl = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.hm = sub nsw i32 %i.hl, %i.gv                ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, -1                  ; 2 uses
  %i.ho = add nsw i32 %i.ha, %i.hk
  %i.hp = add nuw nsw i32 %i.hm, 1                ; 3 uses
  %i.hq = mul nsw i32 %i.hp, %i.ho
  %i.hr = select i1 %i.hn, i32 %i.hq, i32 0
  %i.hs = add nsw i32 %i.gw, %i.hr
  %i.ht = load i32, ptr %i.bt, align 4, !tbaa !7  ; 2 uses
  %i.hu = sub i32 %i.fx, %i.ht
  %i.hv = load i32, ptr %i.fm, align 4, !tbaa !7  ; 2 uses
  %i.hw = sub i32 %i.ga, %i.hv
  %i.hx = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.hy = sub nsw i32 %i.hx, %i.hv                ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, -1                  ; 2 uses
  br i1 %i.hz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ia = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.ib = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = add nuw nsw i32 %i.hy, 1
  %i.ie = mul nsw i32 %i.ic, %i.id
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.if = phi i32 [ %i.ie, %bb.v ], [ 0, %bb.u ]
  %i.ig = load i32, ptr %i.fn, align 4, !tbaa !7
  %i.ih = sub i32 %i.ig, %i.ht                    ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, -1                  ; 2 uses
  %i.ij = add nsw i32 %i.hw, %i.if
  %i.ik = add i32 %i.ih, 1                        ; 2 uses
  %i.il = mul nsw i32 %i.ik, %i.ij
  %i.im = select i1 %i.ii, i32 %i.il, i32 0
  %i.in = add nsw i32 %i.hu, %i.im
  %i.io = select i1 %i.go, i32 %i.gq, i32 0       ; 3 uses
  %i.ip = add nuw nsw i32 %i.ge, 1
  %i.iq = mul nsw i32 %i.io, %i.ip
  %i.ir = select i1 %i.gf, i32 %i.iq, i32 0
  %i.is = load i32, ptr %i.l, align 4, !tbaa !7   ; 3 uses
  br i1 %i.hn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.it = load i32, ptr %i.as, align 8, !tbaa !7
  %i.iu = mul nsw i32 %i.it, %i.hp
  %i.iv = load i32, ptr %i.at, align 4, !tbaa !7
  %i.iw = mul nsw i32 %i.iv, %i.hp
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ix = phi i32 [ %i.iu, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.iy = phi i32 [ %i.iw, %bb.x ], [ 0, %bb.w ]
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !7   ; 7 uses
  %i.ja = load i32, ptr %i.au, align 4, !tbaa !7  ; 5 uses
  %i.jb = load i32, ptr %i.av, align 4, !tbaa !7  ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.preheader376.lr.ph, label %.critedge

.preheader376.lr.ph:                              ; preds = %bb.y
  %i.jd = select i1 %i.ii, i32 %i.ik, i32 0       ; 3 uses
  %i.je = add nuw nsw i32 %i.hy, 1
  %i.jf = mul nsw i32 %i.jd, %i.je
  %i.jg = select i1 %i.hz, i32 %i.jf, i32 0
  %i.jh = add nuw nsw i32 %i.hc, 1
  %i.ji = mul nsw i32 %i.iy, %i.jh
  %i.jj = select i1 %i.hd, i32 %i.ji, i32 0
  %factor.op.mul396 = mul i32 %i.iz, %i.is
  %i.jk = icmp sgt i32 %i.ja, 0
  %i.jl = sub i32 %i.io, %i.iz
  %i.jm = sub i32 %i.ix, %factor.op.mul396
  %i.jn = sub i32 %i.jd, %i.iz
  %i.jo = mul i32 %i.ja, %i.io
  %i.jp = sub i32 %i.ir, %i.jo
  %i.jq = mul i32 %i.ja, %i.ix
  %i.jr = sub i32 %i.jj, %i.jq
  %i.js = mul i32 %i.ja, %i.jd
  %i.jt = sub i32 %i.jg, %i.js
  %i.ju = icmp sgt i32 %i.iz, 0
  %or.cond457 = and i1 %i.jk, %i.ju
  br i1 %or.cond457, label %.preheader376.us.preheader, label %.critedge

.preheader376.us.preheader:                       ; preds = %.preheader376.lr.ph
  %i.jv = sext i32 %i.is to i64
  %i.jw = zext nneg i32 %i.iz to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.iz, 9
  %ident.check.not = icmp eq i32 %i.is, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.jw, 2147483646              ; 6 uses
  %i.jx = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.jw
  br label %.preheader376.us

.preheader376.us:                                 ; preds = %.preheader376.us.preheader, %._crit_edge390.split.us.us
  %.1319404.us = phi i32 [ %i.lv, %._crit_edge390.split.us.us ], [ 0, %.preheader376.us.preheader ]
  %.0331403.us = phi i32 [ %i.lu, %._crit_edge390.split.us.us ], [ %i.in, %.preheader376.us.preheader ]
  %.0333402.us = phi i32 [ %i.lt, %._crit_edge390.split.us.us ], [ %i.hs, %.preheader376.us.preheader ]
  %.0336401.us = phi i32 [ %i.ls, %._crit_edge390.split.us.us ], [ %i.gt, %.preheader376.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader376.us
  %.1321389.us.us = phi i32 [ 0, %.preheader376.us ], [ %i.lr, %._crit_edge.us.us ]
  %.1332388.us.us = phi i32 [ %.0331403.us, %.preheader376.us ], [ %i.lq, %._crit_edge.us.us ]
  %.1334387.us.us = phi i32 [ %.0333402.us, %.preheader376.us ], [ %i.lp, %._crit_edge.us.us ]
  %.1337386.us.us = phi i32 [ %.0336401.us, %.preheader376.us ], [ %i.lo, %._crit_edge.us.us ]
  %i.jy = sext i32 %.1332388.us.us to i64         ; 5 uses
  %i.jz = sext i32 %.1334387.us.us to i64         ; 5 uses
  %i.ka = sext i32 %.1337386.us.us to i64         ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us
  %5 = add nsw i64 %i.jz, %i.dm
  %i.kb = shl nsw i64 %5, 3
  %i.kc = add i64 %i.kb, %i.di                    ; 3 uses
  %6 = add i64 %i.kc, %i.fs
  %i.kd = add nsw i64 %i.jy, %i.fc
  %7 = shl nsw i64 %i.kd, 3
  %i.ke = add i64 %7, %4                          ; 5 uses
  %i.kf = sub i64 %6, %i.ke
  %diff.check = icmp ugt i64 %i.kf, -16
  %8 = add i64 %i.kc, %i.fr
  %9 = sub i64 %8, %i.ke
  %diff.check469 = icmp ugt i64 %9, -16
  %conflict.rdx = or i1 %diff.check, %diff.check469
  %10 = sub i64 %i.kc, %i.ke
  %diff.check470 = icmp ugt i64 %10, -16
  %conflict.rdx471 = or i1 %conflict.rdx, %diff.check470
  %i.kg = shl nsw i64 %i.ka, 3                    ; 2 uses
  %.reass = add i64 %i.kg, %invariant.op.a
  %i.kh = sub i64 %.reass, %i.ke
  %diff.check472 = icmp ugt i64 %i.kh, -16
  %conflict.rdx473 = or i1 %conflict.rdx471, %diff.check472
  %11 = add i64 %i.kg, %.0330468
  %12 = sub i64 %11, %i.ke
  %diff.check474 = icmp ugt i64 %12, -16
  %conflict.rdx475 = or i1 %conflict.rdx473, %diff.check474
  br i1 %conflict.rdx475, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ki = add nsw i64 %n.vec, %i.ka               ; 2 uses
  %i.kj = add nsw i64 %n.vec, %i.jz               ; 2 uses
  %i.kk = add nsw i64 %n.vec, %i.jy               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fd, i64 %i.jy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.kl = add i64 %index, %i.ka                   ; 2 uses
  %i.km = add i64 %index, %i.jz                   ; 3 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.km
  %wide.load = load <2 x double>, ptr %i.kn, align 8, !tbaa !69
  %i.ko = getelementptr inbounds [8 x i8], ptr %.0330, i64 %i.kl
  %wide.load476 = load <2 x double>, ptr %i.ko, align 8, !tbaa !69
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.km
  %wide.load477 = load <2 x double>, ptr %i.kp, align 8, !tbaa !69
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.kl
  %wide.load478 = load <2 x double>, ptr %i.kq, align 8, !tbaa !69
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.km
  %wide.load479 = load <2 x double>, ptr %i.kr, align 8, !tbaa !69
  %i.ks = fmul <2 x double> %wide.load478, %wide.load479
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load476, <2 x double> %wide.load477, <2 x double> %i.ks)
  %i.ku = fadd <2 x double> %wide.load, %i.kt
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.ku, ptr %gep, align 8, !tbaa !69
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv428.ph = phi i64 [ %i.ka, %vector.memcheck ], [ %i.ka, %.preheader.us.us ], [ %i.ki, %middle.block ]
  %indvars.iv426.ph = phi i64 [ %i.jz, %vector.memcheck ], [ %i.jz, %.preheader.us.us ], [ %i.kj, %middle.block ]
  %indvars.iv424.ph = phi i64 [ %i.jy, %vector.memcheck ], [ %i.jy, %.preheader.us.us ], [ %i.kk, %middle.block ]
  %.1323383.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.jx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %scalar.ph ], [ %indvars.iv428.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph ], [ %indvars.iv426.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv424 = phi i64 [ %indvars.iv.next425, %scalar.ph ], [ %indvars.iv424.ph, %scalar.ph.preheader ] ; 2 uses
  %.1323383.us.us = phi i32 [ %i.lk, %scalar.ph ], [ %.1323383.us.us.ph, %scalar.ph.preheader ]
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv426
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !69
  %i.ky = getelementptr inbounds [8 x i8], ptr %.0330, i64 %indvars.iv428
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !69
  %i.la = getelementptr inbounds [8 x i8], ptr %i.el, i64 %indvars.iv426
  %i.lb = load double, ptr %i.la, align 8, !tbaa !69
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %indvars.iv428
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !69
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv426
  %i.lf = load double, ptr %i.le, align 8, !tbaa !69
  %i.lg = fmul double %i.ld, %i.lf
  %i.lh = call double @llvm.fmuladd.f64(double %i.kz, double %i.lb, double %i.lg)
  %i.li = fadd double %i.kx, %i.lh
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv424
  store double %i.li, ptr %i.lj, align 8, !tbaa !69
  %indvars.iv.next429 = add nsw i64 %indvars.iv428, 1 ; 2 uses
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, %i.jv ; 2 uses
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %i.lk = add nuw nsw i32 %.1323383.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.lk, %i.iz
  br i1 %exitcond.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !38

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next429.lcssa = phi i64 [ %i.ki, %middle.block ], [ %indvars.iv.next429, %scalar.ph ]
  %indvars.iv.next427.lcssa = phi i64 [ %i.kj, %middle.block ], [ %indvars.iv.next427, %scalar.ph ]
  %indvars.iv.next425.lcssa = phi i64 [ %i.kk, %middle.block ], [ %indvars.iv.next425, %scalar.ph ]
  %i.ll = trunc nsw i64 %indvars.iv.next429.lcssa to i32
  %i.lm = trunc nsw i64 %indvars.iv.next427.lcssa to i32
  %i.ln = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  %i.lo = add nsw i32 %i.jl, %i.ll                ; 2 uses
  %i.lp = add nsw i32 %i.jm, %i.lm                ; 2 uses
  %i.lq = add nsw i32 %i.jn, %i.ln                ; 2 uses
  %i.lr = add nuw nsw i32 %.1321389.us.us, 1      ; 2 uses
  %exitcond435.not = icmp eq i32 %i.lr, %i.ja
  br i1 %exitcond435.not, label %._crit_edge390.split.us.us, label %.preheader.us.us, !llvm.loop !39

._crit_edge390.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.ls = add nsw i32 %i.jp, %i.lo
  %i.lt = add nsw i32 %i.jr, %i.lp
  %i.lu = add nsw i32 %i.jt, %i.lq
  %i.lv = add nuw nsw i32 %.1319404.us, 1         ; 2 uses
  %exitcond436.not = icmp eq i32 %i.lv, %i.jb
  br i1 %exitcond436.not, label %.critedge, label %.preheader376.us, !llvm.loop !40

.critedge:                                        ; preds = %._crit_edge390.split.us.us, %.preheader376.lr.ph, %bb.y
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.lw = load i32, ptr %i.fe, align 8, !tbaa !56
  %i.lx = sext i32 %i.lw to i64
  %i.ly = icmp slt i64 %indvars.iv.next438, %i.lx
  br i1 %i.ly, label %bb.q, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.lz = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next441, %i.ma
  br i1 %i.mb, label %.preheader378, label %._crit_edge410, !llvm.loop !42

._crit_edge410:                                   ; preds = %._crit_edge, %bb.e
  br i1 %i.aw, label %bb.b, label %bb.z, !llvm.loop !43

bb.z:                                             ; preds = %._crit_edge410
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !72
  %i.me = shl nsw i32 %i.md, 2
  %i.mf = call i32 @hypre_IncFLOPCount(i32 noundef %i.me) #4 ; 0 uses
  %i.mg = load i32, ptr %i.d, align 8, !tbaa !13
  %i.mh = call i32 @hypre_EndTiming(i32 noundef %i.mg) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SemiRestrictDestroy(ptr noundef %0) local_unnamed_addr #0 !guid !73 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.a) #4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.d) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.g) #4 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -6120467787974614858}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !9, i64 0}
!11 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !9, i64 0}
!12 = !{!"", !10, i64 0, !6, i64 8, !11, i64 16, !5, i64 24, !5, i64 36, !6, i64 48}
!13 = !{!12, !6, i64 48}
end_hunk_0
