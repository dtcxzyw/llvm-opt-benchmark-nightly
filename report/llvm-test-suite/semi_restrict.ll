begin_hunk_0_@hypre_SemiRestrict:bb.a
  %i.bi = load ptr, ptr %.1320, align 8, !tbaa !47
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50 ; 2 uses
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %indvars.iv ; 9 uses
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !28
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bp, i64 %indvars.iv ; 6 uses
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !52
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv455.a ; 5 uses
  %i.bu = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !55 ; 4 uses
  br i1 %.not370, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cb
  %i.cd = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = sub nsw i32 %i.ch, %i.cj                ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cm = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.cn = add nuw nsw i32 %i.ck, 1
  %i.co = mul nsw i32 %i.cm, %i.cn
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cp = phi i32 [ %i.co, %bb.i ], [ 0, %bb.h ]
  %i.cq = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.cr = load i32, ptr %i.bn, align 4, !tbaa !4
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
  %i.db = load i32, ptr %i.by, align 4, !tbaa !4
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink470.in = phi ptr [ %i.de, %bb.k ], [ %i.by, %bb.j ]
  %.0333 = phi ptr [ %i.dd, %bb.k ], [ %i.da, %bb.j ] ; 3 uses
  %.0333481 = ptrtoaddr ptr %.0333 to i64
  %.sink470 = load i32, ptr %.sink470.in, align 4, !tbaa !4
  %i.df = sext i32 %.sink470 to i64               ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !40  ; 2 uses
  %i.di = ptrtoaddr ptr %i.dh to i64              ; 3 uses
  %i.dj = load ptr, ptr %i.al, align 8, !tbaa !56
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dm ; 4 uses
  %i.do = load i32, ptr %i.o, align 4, !tbaa !4
  %i.dp = load i32, ptr %i.am, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = sub nsw i32 %i.ds, %i.du                ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, -1                  ; 2 uses
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = load i32, ptr %i.an, align 4, !tbaa !4
  %i.dy = add nuw nsw i32 %i.dv, 1
  %i.dz = mul nsw i32 %i.dx, %i.dy
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ea = phi i32 [ %i.dz, %bb.m ], [ 0, %bb.l ]
  %i.eb = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ec = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.ed = sub nsw i32 %i.eb, %i.ec                ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ef = add nsw i32 %i.ea, %i.dp
  %i.eg = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.ef
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 0
  %i.ej = add i32 %i.ei, %i.do
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.en = load i32, ptr %i.aj, align 4, !tbaa !4
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.ak, align 4, !tbaa !4
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
  %i.ey = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.ez = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv455.a
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !43
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge420

.lr.ph:                                           ; preds = %bb.p
  %i.fh = ptrtoaddr ptr %i.ey to i64              ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.fr = shl nsw i64 %i.fc, 3                    ; 5 uses
  %i.fs = add i64 %i.fr, %i.fh
  %i.ft = shl nsw i64 %i.dm, 3                    ; 3 uses
  %i.fu = add i64 %i.ft, %i.di
  %i.fv = shl nsw i64 %i.ew, 3
  %i.fw = add i64 %i.fu, %i.fv
  %i.fx = add i64 %i.fr, %i.fh
  %i.fy = add i64 %i.ft, %i.di
  %i.fz = shl nsw i64 %i.ek, 3
  %i.ga = add i64 %i.fy, %i.fz
  %i.gb = add i64 %i.fr, %i.fh
  %i.gc = add i64 %i.ft, %i.di
  %i.gd = add i64 %i.fr, %i.fh
  %i.ge = shl nsw i64 %i.df, 3
  %i.gf = add i64 %i.ge, %i.bv
  %i.gg = add i64 %i.fr, %i.fh
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv452 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next453, %._crit_edge.split ] ; 2 uses
  %i.gh = load ptr, ptr %i.bk, align 8, !tbaa !52
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %indvars.iv452 ; 5 uses
  %i.gj = call i32 @hypre_StructMapFineToCoarse(ptr noundef %i.gi, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.gk = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.gi, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.gl = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.gm = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.gn = sub i32 %i.gl, %i.gm
  %i.go = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.gp = load i32, ptr %i.fi, align 4, !tbaa !4  ; 2 uses
  %i.gq = sub i32 %i.go, %i.gp
  %i.gr = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.gs = sub nsw i32 %i.gr, %i.gp                ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, -1                  ; 2 uses
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.gv = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.gw = sub nsw i32 %i.gu, %i.gv
  %i.gx = add nuw nsw i32 %i.gs, 1
  %i.gy = mul nsw i32 %i.gw, %i.gx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.gz = phi i32 [ %i.gy, %bb.r ], [ 0, %bb.q ]
  %i.ha = load i32, ptr %i.fj, align 4, !tbaa !4
  %i.hb = sub i32 %i.ha, %i.gm                    ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, -1                  ; 2 uses
  %i.hd = add nsw i32 %i.gq, %i.gz
  %i.he = add i32 %i.hb, 1                        ; 2 uses
  %i.hf = mul nsw i32 %i.he, %i.hd
  %i.hg = select i1 %i.hc, i32 %i.hf, i32 0
  %i.hh = add nsw i32 %i.gn, %i.hg
  %i.hi = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.hj = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.hk = sub i32 %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %i.ho = sub i32 %i.hm, %i.hn
  %i.hp = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.hq = sub nsw i32 %i.hp, %i.hn                ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, -1                  ; 2 uses
  br i1 %i.hr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.hv = sub nsw i32 %i.ht, %i.hu
  %i.hw = add nuw nsw i32 %i.hq, 1
  %i.hx = mul nsw i32 %i.hv, %i.hw
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.hy = phi i32 [ %i.hx, %bb.t ], [ 0, %bb.s ]
  %i.hz = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ia = sub nsw i32 %i.hz, %i.hj                ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, -1                  ; 2 uses
  %i.ic = add nsw i32 %i.ho, %i.hy
  %i.id = add nuw nsw i32 %i.ia, 1                ; 3 uses
  %i.ie = mul nsw i32 %i.id, %i.ic
  %i.if = select i1 %i.ib, i32 %i.ie, i32 0
  %i.ig = add nsw i32 %i.hk, %i.if
  %i.ih = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.ii = sub i32 %i.gl, %i.ih
  %i.ij = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.ik = sub i32 %i.go, %i.ij
  %i.il = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.im = sub nsw i32 %i.il, %i.ij                ; 3 uses
  %i.in = icmp sgt i32 %i.im, -1                  ; 2 uses
  br i1 %i.in, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.io = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.ip = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.iq = sub nsw i32 %i.io, %i.ip
  %i.ir = add nuw nsw i32 %i.im, 1
  %i.is = mul nsw i32 %i.iq, %i.ir
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.it = phi i32 [ %i.is, %bb.v ], [ 0, %bb.u ]
  %i.iu = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.iv = sub i32 %i.iu, %i.ih                    ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, -1                  ; 2 uses
  %i.ix = add nsw i32 %i.ik, %i.it
  %i.iy = add i32 %i.iv, 1                        ; 2 uses
  %i.iz = mul nsw i32 %i.iy, %i.ix
  %i.ja = select i1 %i.iw, i32 %i.iz, i32 0
  %i.jb = add nsw i32 %i.ii, %i.ja
  %i.jc = select i1 %i.hc, i32 %i.he, i32 0       ; 3 uses
  %i.jd = add nuw nsw i32 %i.gs, 1
  %i.je = mul nsw i32 %i.jc, %i.jd
  %i.jf = select i1 %i.gt, i32 %i.je, i32 0
  %i.jg = load i32, ptr %i.l, align 4, !tbaa !4   ; 3 uses
  br i1 %i.ib, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.jh = load i32, ptr %i.as, align 8, !tbaa !4
  %i.ji = mul nsw i32 %i.jh, %i.id
  %i.jj = load i32, ptr %i.at, align 4, !tbaa !4
  %i.jk = mul nsw i32 %i.jj, %i.id
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.jl = phi i32 [ %i.ji, %bb.x ], [ 0, %bb.w ]  ; 2 uses
  %i.jm = phi i32 [ %i.jk, %bb.x ], [ 0, %bb.w ]
  %i.jn = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  %i.jo = load i32, ptr %i.au, align 4, !tbaa !4  ; 6 uses
  %i.jp = load i32, ptr %i.av, align 4, !tbaa !4  ; 3 uses
  %.0315 = call i32 @llvm.smax.i32(i32 %i.jo, i32 %i.jn)
  %.1316 = call i32 @llvm.smax.i32(i32 %i.jp, i32 %.0315)
  %i.jq = icmp sgt i32 %.1316, 0
  br i1 %i.jq, label %.preheader382.lr.ph, label %._crit_edge.split

.preheader382.lr.ph:                              ; preds = %bb.y
  %i.jr = select i1 %i.iw, i32 %i.iy, i32 0       ; 3 uses
  %factor.op.mul414 = mul i32 %i.jo, %i.jr
  %factor.op.mul = mul i32 %i.jo, %i.jl
  %factor.op.mul413 = mul i32 %i.jo, %i.jc
  %i.js = add nuw nsw i32 %i.im, 1
  %i.jt = mul nsw i32 %i.jr, %i.js
  %i.ju = select i1 %i.in, i32 %i.jt, i32 0
  %i.jv = add nuw nsw i32 %i.hq, 1
  %i.jw = mul nsw i32 %i.jm, %i.jv
  %i.jx = select i1 %i.hr, i32 %i.jw, i32 0
  %4 = mul i32 %i.jn, %i.jg
  %i.jy = icmp sgt i32 %i.jp, 0
  %i.jz = icmp sgt i32 %i.jo, 0
  %5 = sub i32 %i.jc, %i.jn
  %6 = sub i32 %i.jl, %4
  %7 = sub i32 %i.jr, %i.jn
  %8 = sub i32 %i.jf, %factor.op.mul413
  %9 = sub i32 %i.jx, %factor.op.mul
  %10 = sub i32 %i.ju, %factor.op.mul414
  %brmerge.not473 = and i1 %i.jy, %i.jz
  %i.ka = icmp sgt i32 %i.jn, 0
  %or.cond = and i1 %brmerge.not473, %i.ka
  br i1 %or.cond, label %.preheader381.us.us.preheader, label %._crit_edge.split

.preheader381.us.us.preheader:                    ; preds = %.preheader382.lr.ph
  %i.kb = sext i32 %i.jg to i64
  %i.kc = zext nneg i32 %i.jn to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.jn, 9
  %ident.check.not = icmp eq i32 %i.jg, 1
  %or.cond491 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.kc, 2147483646              ; 6 uses
  %i.kd = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.kc
  br label %.preheader381.us.us

.preheader381.us.us:                              ; preds = %.preheader381.us.us.preheader, %._crit_edge395.split.us.us.us
  %.0321409.us.us = phi i32 [ %i.ly, %._crit_edge395.split.us.us.us ], [ %i.hh, %.preheader381.us.us.preheader ]
  %.0324408.us.us = phi i32 [ %i.lz, %._crit_edge395.split.us.us.us ], [ %i.ig, %.preheader381.us.us.preheader ]
  %.0330407.us.us = phi i32 [ %i.ma, %._crit_edge395.split.us.us.us ], [ %i.jb, %.preheader381.us.us.preheader ]
  %.1345406.us.us = phi i32 [ %i.mb, %._crit_edge395.split.us.us.us ], [ 0, %.preheader381.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader381.us.us
  %.1322394.us.us.us = phi i32 [ %.0321409.us.us, %.preheader381.us.us ], [ %i.lu, %._crit_edge.us.us.us ]
  %.1325393.us.us.us = phi i32 [ %.0324408.us.us, %.preheader381.us.us ], [ %i.lv, %._crit_edge.us.us.us ]
  %.1331392.us.us.us = phi i32 [ %.0330407.us.us, %.preheader381.us.us ], [ %i.lw, %._crit_edge.us.us.us ]
  %.1343391.us.us.us = phi i32 [ 0, %.preheader381.us.us ], [ %i.lx, %._crit_edge.us.us.us ]
  %i.ke = sext i32 %.1322394.us.us.us to i64      ; 5 uses
  %i.kf = sext i32 %.1325393.us.us.us to i64      ; 5 uses
  %i.kg = sext i32 %.1331392.us.us.us to i64      ; 5 uses
  br i1 %or.cond491, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.kh = shl nsw i64 %i.kg, 3                    ; 5 uses
  %i.ki = add i64 %i.fs, %i.kh
  %i.kj = shl nsw i64 %i.kf, 3                    ; 3 uses
  %i.kk = add i64 %i.fw, %i.kj
  %11 = sub i64 %i.kk, %i.ki
  %diff.check = icmp ugt i64 %11, -16
  %12 = add i64 %i.fx, %i.kh
  %i.kl = add i64 %i.ga, %i.kj
  %13 = sub i64 %i.kl, %12
  %diff.check476 = icmp ugt i64 %13, -16
  %conflict.rdx = or i1 %diff.check, %diff.check476
  %i.km = add i64 %i.gb, %i.kh
  %i.kn = add i64 %i.gc, %i.kj
  %i.ko = sub i64 %i.kn, %i.km
  %diff.check477 = icmp ugt i64 %i.ko, -16
  %conflict.rdx478 = or i1 %conflict.rdx, %diff.check477
  %14 = add i64 %i.gd, %i.kh
  %15 = shl nsw i64 %i.ke, 3                      ; 2 uses
  %16 = add i64 %i.gf, %15
  %i.kp = sub i64 %16, %14
  %diff.check479 = icmp ugt i64 %i.kp, -16
  %conflict.rdx480 = or i1 %conflict.rdx478, %diff.check479
  %17 = add i64 %i.gg, %i.kh
  %18 = add i64 %15, %.0333481
  %i.kq = sub i64 %18, %17
  %diff.check482 = icmp ugt i64 %i.kq, -16
  %conflict.rdx483 = or i1 %conflict.rdx480, %diff.check482
  br i1 %conflict.rdx483, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kr = add nsw i64 %n.vec, %i.kg               ; 2 uses
  %i.ks = add nsw i64 %n.vec, %i.kf               ; 2 uses
  %i.kt = add nsw i64 %n.vec, %i.ke               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fd, i64 %i.kg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ku = add i64 %index, %i.kf                   ; 3 uses
  %i.kv = add i64 %index, %i.ke                   ; 2 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ku
  %wide.load = load <2 x double>, ptr %i.kw, align 8, !tbaa !57
  %i.kx = getelementptr inbounds [8 x i8], ptr %.0333, i64 %i.kv
  %wide.load484 = load <2 x double>, ptr %i.kx, align 8, !tbaa !57
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.ku
  %wide.load485 = load <2 x double>, ptr %i.ky, align 8, !tbaa !57
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.kv
  %wide.load486 = load <2 x double>, ptr %i.kz, align 8, !tbaa !57
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ku
  %wide.load487 = load <2 x double>, ptr %i.la, align 8, !tbaa !57
  %i.lb = fmul <2 x double> %wide.load486, %wide.load487
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load484, <2 x double> %wide.load485, <2 x double> %i.lb)
  %i.ld = fadd <2 x double> %wide.load, %i.lc
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  store <2 x double> %i.ld, ptr %gep, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.le = icmp eq i64 %index.next, %n.vec
  br i1 %i.le, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv443.ph = phi i64 [ %i.kg, %vector.memcheck ], [ %i.kg, %.preheader.us.us.us ], [ %i.kr, %middle.block ]
  %indvars.iv441.ph = phi i64 [ %i.kf, %vector.memcheck ], [ %i.kf, %.preheader.us.us.us ], [ %i.ks, %middle.block ]
  %indvars.iv439.ph = phi i64 [ %i.ke, %vector.memcheck ], [ %i.ke, %.preheader.us.us.us ], [ %i.kt, %middle.block ]
  %.1341385.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.kd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv443 = phi i64 [ %indvars.iv.next444, %scalar.ph ], [ %indvars.iv443.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv441 = phi i64 [ %indvars.iv.next442, %scalar.ph ], [ %indvars.iv441.ph, %scalar.ph.preheader ] ; 4 uses
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %scalar.ph ], [ %indvars.iv439.ph, %scalar.ph.preheader ] ; 3 uses
  %.1341385.us.us.us = phi i32 [ %i.lt, %scalar.ph ], [ %.1341385.us.us.us.ph, %scalar.ph.preheader ]
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %indvars.iv441
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !57
  %i.lh = getelementptr inbounds [8 x i8], ptr %.0333, i64 %indvars.iv439
  %i.li = load double, ptr %i.lh, align 8, !tbaa !57
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.el, i64 %indvars.iv441
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !57
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %indvars.iv439
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !57
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %indvars.iv441
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !57
  %i.lp = fmul double %i.lm, %i.lo
  %i.lq = call double @llvm.fmuladd.f64(double %i.li, double %i.lk, double %i.lp)
  %i.lr = fadd double %i.lg, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv443
  store double %i.lr, ptr %i.ls, align 8, !tbaa !57
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, 1 ; 2 uses
  %indvars.iv.next442 = add nsw i64 %indvars.iv441, %i.kb ; 2 uses
  %indvars.iv.next444 = add nsw i64 %indvars.iv443, 1 ; 2 uses
  %i.lt = add nuw nsw i32 %.1341385.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.lt, %i.jn
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !62

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next440.lcssa = phi i64 [ %i.kt, %middle.block ], [ %indvars.iv.next440, %scalar.ph ]
  %indvars.iv.next442.lcssa = phi i64 [ %i.ks, %middle.block ], [ %indvars.iv.next442, %scalar.ph ]
  %indvars.iv.next444.lcssa = phi i64 [ %i.kr, %middle.block ], [ %indvars.iv.next444, %scalar.ph ]
  %19 = trunc nsw i64 %indvars.iv.next444.lcssa to i32
  %20 = trunc nsw i64 %indvars.iv.next442.lcssa to i32
  %21 = trunc nsw i64 %indvars.iv.next440.lcssa to i32
  %i.lu = add nsw i32 %5, %21                     ; 2 uses
  %i.lv = add nsw i32 %6, %20                     ; 2 uses
  %i.lw = add nsw i32 %7, %19                     ; 2 uses
  %i.lx = add nuw nsw i32 %.1343391.us.us.us, 1   ; 2 uses
  %exitcond450.not = icmp eq i32 %i.lx, %i.jo
  br i1 %exitcond450.not, label %._crit_edge395.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !63

._crit_edge395.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ly = add nsw i32 %8, %i.lu
  %i.lz = add nsw i32 %9, %i.lv
  %i.ma = add nsw i32 %10, %i.lw
  %i.mb = add nuw nsw i32 %.1345406.us.us, 1      ; 2 uses
  %exitcond451.not = icmp eq i32 %i.mb, %i.jp
  br i1 %exitcond451.not, label %._crit_edge.split, label %.preheader381.us.us, !llvm.loop !64

._crit_edge.split:                                ; preds = %._crit_edge395.split.us.us.us, %.preheader382.lr.ph, %bb.y
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.mc = load i32, ptr %i.fe, align 8, !tbaa !43
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp slt i64 %indvars.iv.next453, %i.md
  br i1 %i.me, label %bb.q, label %._crit_edge420.loopexit, !llvm.loop !65

._crit_edge420.loopexit:                          ; preds = %._crit_edge.split
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !43
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit, %bb.p
  %i.mf = phi i32 [ %.pre, %._crit_edge420.loopexit ], [ %i.bd, %bb.p ] ; 2 uses
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455.a, 1 ; 2 uses
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next456, %i.mg
  br i1 %i.mh, label %.preheader383, label %._crit_edge423, !llvm.loop !66

._crit_edge423:                                   ; preds = %._crit_edge420, %bb.e
  br i1 %i.aw, label %bb.b, label %bb.z, !llvm.loop !67

bb.z:                                             ; preds = %._crit_edge423
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !68
  %i.mk = shl nsw i32 %i.mj, 2
  %i.ml = call i32 @hypre_IncFLOPCount(i32 noundef %i.mk) #4 ; 0 uses
  %i.mm = load i32, ptr %i.d, align 8, !tbaa !8
  %i.mn = call i32 @hypre_EndTiming(i32 noundef %i.mm) #4 ; 0 uses
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
define dso_local noundef i32 @hypre_SemiRestrictDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.a) #4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.d) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
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
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 48}
!9 = !{!"", !10, i64 0, !5, i64 8, !12, i64 16, !6, i64 24, !6, i64 36, !5, i64 48}
!10 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !11, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"hypre_StructVector_struct", !5, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !5, i64 32, !5, i64 36, !18, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!15 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!16 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!20, !21, i64 24}
!20 = !{!"hypre_StructMatrix_struct", !5, i64 0, !15, i64 8, !21, i64 16, !21, i64 24, !5, i64 32, !16, i64 40, !17, i64 48, !5, i64 56, !5, i64 60, !22, i64 64, !5, i64 72, !18, i64 80, !6, i64 88, !5, i64 112, !24, i64 120, !5, i64 128}
!21 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!22 = !{!"p2 int", !23, i64 0}
!23 = !{!"any p2 pointer", !11, i64 0}
!24 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !11, i64 0}
!27 = !{!22, !22, i64 0}
!28 = !{!14, !16, i64 16}
!29 = !{!9, !10, i64 0}
!30 = !{!9, !5, i64 8}
!31 = !{!12, !12, i64 0}
!32 = !{!9, !12, i64 16}
!33 = !{!34, !18, i64 0}
!34 = !{!"hypre_StructStencil_struct", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!35 = !{!36, !18, i64 16}
!36 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !16, i64 8, !18, i64 16, !37, i64 24, !5, i64 32, !38, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!37 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!38 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!39 = !{!36, !16, i64 8}
!40 = !{!14, !17, i64 24}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS23hypre_CommHandle_struct", !11, i64 0}
!43 = !{!44, !5, i64 8}
!44 = !{!"hypre_BoxArray_struct", !38, i64 0, !5, i64 8, !5, i64 12}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !49, i64 0}
!48 = !{!"hypre_BoxArrayArray_struct", !49, i64 0, !5, i64 8}
!49 = !{!"p2 _ZTS21hypre_BoxArray_struct", !23, i64 0}
!50 = !{!16, !16, i64 0}
!51 = !{!20, !16, i64 40}
!52 = !{!44, !38, i64 0}
!53 = !{!20, !17, i64 48}
!54 = !{!20, !22, i64 64}
!55 = !{!18, !18, i64 0}
!56 = !{!14, !18, i64 40}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !6, i64 0}
!59 = distinct !{!59, !46, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = distinct !{!62, !46, !60}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !46}
!68 = !{!14, !5, i64 72}
end_hunk_0
