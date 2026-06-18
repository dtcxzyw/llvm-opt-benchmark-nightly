inline.NumInlined: 1
begin_hunk_0_@hypre_PointRelax:bb.a
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv1389 ; 5 uses
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv1389 ; 5 uses
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 2 uses
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv1389
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !27
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bd
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj ; 4 uses
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv1389
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cp ; 4 uses
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !82 ; 2 uses
  %i.cs = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv1389
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cv ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !58
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge1203

.lr.ph:                                           ; preds = %.lr.ph1206
  %i.da = ptrtoaddr ptr %i.cr to i64              ; 2 uses
  %i.db = ptrtoaddr ptr %i.cl to i64
  %i.dc = ptrtoaddr ptr %i.cd to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dp = shl nsw i64 %i.cv, 3                    ; 2 uses
  %i.dq = add i64 %i.dp, %i.da
  %i.dr = add i64 %i.dp, %i.da
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv1386 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1387, %._crit_edge.split ] ; 2 uses
  %i.ds = load ptr, ptr %i.bt, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv1386 ; 4 uses
  %i.du = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.dt, ptr noundef %i.ax, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !4  ; 3 uses
  %i.dw = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 3 uses
  %i.ea = load i32, ptr %i.dd, align 4, !tbaa !4  ; 2 uses
  %i.eb = sub i32 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.ed = load i32, ptr %i.df, align 4, !tbaa !4
  %i.ee = sub nsw i32 %i.ed, %i.ea                ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, -1                  ; 2 uses
  br i1 %i.ef, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.eh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.ei = sub nsw i32 %i.eg, %i.eh
  %i.ej = add nuw nsw i32 %i.ee, 1
  %i.ek = mul nsw i32 %i.ei, %i.ej
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.el = phi i32 [ %i.ek, %bb.i ], [ 0, %bb.h ]
  %i.em = load i32, ptr %i.de, align 4, !tbaa !4
  %i.en = sub nsw i32 %i.em, %i.dw                ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1                  ; 2 uses
  %i.ep = add nsw i32 %i.eb, %i.el
  %i.eq = add nuw nsw i32 %i.en, 1                ; 3 uses
  %i.er = mul nsw i32 %i.eq, %i.ep
  %i.es = select i1 %i.eo, i32 %i.er, i32 0
  %i.et = add nsw i32 %i.dx, %i.es
  %i.eu = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.ev = sub i32 %i.dv, %i.eu
  %i.ew = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.ex = sub i32 %i.dz, %i.ew
  %i.ey = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.ez = sub nsw i32 %i.ey, %i.ew                ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, -1                  ; 2 uses
  br i1 %i.fa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fb = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.fc = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = add nuw nsw i32 %i.ez, 1
  %i.ff = mul nsw i32 %i.fd, %i.fe
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.fg = phi i32 [ %i.ff, %bb.k ], [ 0, %bb.j ]
  %i.fh = load i32, ptr %i.di, align 4, !tbaa !4
  %i.fi = sub nsw i32 %i.fh, %i.eu                ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1                  ; 2 uses
  %i.fk = add nsw i32 %i.ex, %i.fg
  %i.fl = add nuw nsw i32 %i.fi, 1                ; 3 uses
  %i.fm = mul nsw i32 %i.fl, %i.fk
  %i.fn = select i1 %i.fj, i32 %i.fm, i32 0
  %i.fo = add nsw i32 %i.ev, %i.fn
  %i.fp = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.fq = sub i32 %i.dv, %i.fp
  %i.fr = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.fs = sub i32 %i.dz, %i.fr
  %i.ft = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.fu = sub nsw i32 %i.ft, %i.fr                ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, -1                  ; 2 uses
  br i1 %i.fv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fw = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.fx = load i32, ptr %i.do, align 4, !tbaa !4
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = add nuw nsw i32 %i.fu, 1
  %i.ga = mul nsw i32 %i.fy, %i.fz
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.gb = phi i32 [ %i.ga, %bb.m ], [ 0, %bb.l ]
  %i.gc = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.gd = sub nsw i32 %i.gc, %i.fp                ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1                  ; 2 uses
  %i.gf = add nsw i32 %i.fs, %i.gb
  %i.gg = add nuw nsw i32 %i.gd, 1                ; 3 uses
  %i.gh = mul nsw i32 %i.gg, %i.gf
  %i.gi = select i1 %i.ge, i32 %i.gh, i32 0
  %i.gj = add nsw i32 %i.fq, %i.gi
  %i.gk = load i32, ptr %i.ax, align 4, !tbaa !4  ; 3 uses
  br i1 %i.eo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gl = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.gm = mul nsw i32 %i.gl, %i.eq
  %i.gn = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.go = mul nsw i32 %i.gn, %i.eq
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gp = phi i32 [ %i.gm, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gq = phi i32 [ %i.go, %bb.o ], [ 0, %bb.n ]
  %i.gr = add nuw nsw i32 %i.ee, 1
  %i.gs = mul nsw i32 %i.gq, %i.gr
  %i.gt = select i1 %i.ef, i32 %i.gs, i32 0
  br i1 %i.fj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gu = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.gv = mul nsw i32 %i.gu, %i.fl
  %i.gw = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.gx = mul nsw i32 %i.gw, %i.fl
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.gy = phi i32 [ %i.gv, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.gz = phi i32 [ %i.gx, %bb.q ], [ 0, %bb.p ]
  %i.ha = add nuw nsw i32 %i.ez, 1
  %i.hb = mul nsw i32 %i.gz, %i.ha
  %i.hc = select i1 %i.fa, i32 %i.hb, i32 0
  br i1 %i.ge, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hd = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.he = mul nsw i32 %i.hd, %i.gg
  %i.hf = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.hg = mul nsw i32 %i.hf, %i.gg
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hh = phi i32 [ %i.he, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.hi = phi i32 [ %i.hg, %bb.s ], [ 0, %bb.r ]
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  %i.hk = load i32, ptr %i.bk, align 4, !tbaa !4  ; 6 uses
  %i.hl = load i32, ptr %i.bl, align 4, !tbaa !4  ; 3 uses
  %.01034 = call i32 @llvm.smax.i32(i32 %i.hk, i32 %i.hj)
  %.11035 = call i32 @llvm.smax.i32(i32 %i.hl, i32 %.01034)
  %i.hm = icmp sgt i32 %.11035, 0
  br i1 %i.hm, label %.preheader1166.lr.ph, label %._crit_edge.split

.preheader1166.lr.ph:                             ; preds = %bb.t
  %factor.op.mul1197 = mul i32 %i.hk, %i.hh
  %factor.op.mul = mul i32 %i.hk, %i.gy
  %factor.op.mul1196 = mul i32 %i.hk, %i.gp
  %factor.op.mul1195 = mul i32 %i.gk, %i.hj       ; 3 uses
  %i.hn = add nuw nsw i32 %i.fu, 1
  %i.ho = mul nsw i32 %i.hi, %i.hn
  %i.hp = select i1 %i.fv, i32 %i.ho, i32 0
  %4 = icmp slt i32 %i.hl, 1
  %5 = icmp slt i32 %i.hj, 1
  %i.hq = sub i32 %i.gp, %factor.op.mul1195
  %i.hr = sub i32 %i.gy, %factor.op.mul1195
  %i.hs = sub i32 %i.hh, %factor.op.mul1195
  %i.ht = sub i32 %i.gt, %factor.op.mul1196
  %i.hu = sub i32 %i.hc, %factor.op.mul
  %i.hv = sub i32 %i.hp, %factor.op.mul1197
  %6 = icmp slt i32 %i.hk, 1
  %or.cond.not1556 = or i1 %4, %6
  %brmerge = or i1 %or.cond.not1556, %5
  br i1 %brmerge, label %._crit_edge.split, label %.preheader1165.us.us.preheader

.preheader1165.us.us.preheader:                   ; preds = %.preheader1166.lr.ph
  %i.hw = sext i32 %i.gk to i64                   ; 9 uses
  %i.hx = zext nneg i32 %i.hj to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.hj, 1
  %ident.check.not = icmp eq i32 %i.gk, 1
  %or.cond1604 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.hx, 2147483646              ; 6 uses
  %i.hy = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.hx
  br label %.preheader1165.us.us

.preheader1165.us.us:                             ; preds = %.preheader1165.us.us.preheader, %._crit_edge1178.split.us.us.us
  %.09251192.us.us = phi i32 [ %i.jv, %._crit_edge1178.split.us.us.us ], [ %i.et, %.preheader1165.us.us.preheader ]
  %.09311191.us.us = phi i32 [ %i.jw, %._crit_edge1178.split.us.us.us ], [ %i.fo, %.preheader1165.us.us.preheader ]
  %.09371190.us.us = phi i32 [ %i.jx, %._crit_edge1178.split.us.us.us ], [ %i.gj, %.preheader1165.us.us.preheader ]
  %.110031189.us.us = phi i32 [ %i.jy, %._crit_edge1178.split.us.us.us ], [ 0, %.preheader1165.us.us.preheader ]
  br label %.preheader1164.us.us.us

.preheader1164.us.us.us:                          ; preds = %._crit_edge.us.us.us, %.preheader1165.us.us
  %.19261177.us.us.us = phi i32 [ %.09251192.us.us, %.preheader1165.us.us ], [ %i.jr, %._crit_edge.us.us.us ]
  %.19321176.us.us.us = phi i32 [ %.09311191.us.us, %.preheader1165.us.us ], [ %i.js, %._crit_edge.us.us.us ]
  %.19381175.us.us.us = phi i32 [ %.09371190.us.us, %.preheader1165.us.us ], [ %i.jt, %._crit_edge.us.us.us ]
  %.19951174.us.us.us = phi i32 [ 0, %.preheader1165.us.us ], [ %i.ju, %._crit_edge.us.us.us ]
  %i.hz = sext i32 %.19261177.us.us.us to i64     ; 5 uses
  %i.ia = sext i32 %.19321176.us.us.us to i64     ; 5 uses
  %i.ib = sext i32 %.19381175.us.us.us to i64     ; 5 uses
  br i1 %or.cond1604, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader1164.us.us.us
  %i.ic = shl nsw i64 %i.ib, 3                    ; 2 uses
  %i.id = add i64 %i.dq, %i.ic
  %i.ie = add nsw i64 %i.cp, %i.ia
  %i.if = shl nsw i64 %i.ie, 3
  %i.ig = add i64 %i.if, %i.db
  %i.ih = sub i64 %i.id, %i.ig
  %diff.check = icmp ult i64 %i.ih, 16
  %i.ii = add i64 %i.dr, %i.ic
  %i.ij = add nsw i64 %i.cj, %i.hz
  %i.ik = shl nsw i64 %i.ij, 3
  %i.il = add i64 %i.ik, %i.dc
  %i.im = sub i64 %i.ii, %i.il
  %diff.check1504 = icmp ult i64 %i.im, 16
  %conflict.rdx = or i1 %diff.check, %diff.check1504
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.in = add nsw i64 %n.vec, %i.ib               ; 2 uses
  %i.io = add nsw i64 %n.vec, %i.ia               ; 2 uses
  %i.ip = add nsw i64 %n.vec, %i.hz               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.cq, i64 %i.ia
  %invariant.gep1649 = getelementptr [8 x i8], ptr %i.ck, i64 %i.hz
  %invariant.gep1651 = getelementptr [8 x i8], ptr %i.cw, i64 %i.ib
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !84
  %gep1650 = getelementptr [8 x i8], ptr %invariant.gep1649, i64 %index
  %wide.load1505 = load <2 x double>, ptr %gep1650, align 8, !tbaa !84
  %i.iq = fdiv <2 x double> %wide.load, %wide.load1505
  %gep1652 = getelementptr [8 x i8], ptr %invariant.gep1651, i64 %index
  store <2 x double> %i.iq, ptr %gep1652, align 8, !tbaa !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1164.us.us.us, %middle.block
  %indvars.iv1377.ph = phi i64 [ %i.ib, %vector.memcheck ], [ %i.ib, %.preheader1164.us.us.us ], [ %i.in, %middle.block ] ; 3 uses
  %indvars.iv1375.ph = phi i64 [ %i.ia, %vector.memcheck ], [ %i.ia, %.preheader1164.us.us.us ], [ %i.io, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.hz, %vector.memcheck ], [ %i.hz, %.preheader1164.us.us.us ], [ %i.ip, %middle.block ] ; 3 uses
  %.19871168.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader1164.us.us.us ], [ %i.hy, %middle.block ] ; 4 uses
  %i.is = sub i32 %i.hj, %.19871168.us.us.us.ph
  %.neg = add i32 %.19871168.us.us.us.ph, 1
  %xtraiter = and i32 %i.is, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.it = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv1375.ph
  %i.iu = load double, ptr %i.it, align 8, !tbaa !84
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv.ph
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !84
  %i.ix = fdiv double %i.iu, %i.iw
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv1377.ph
  store double %i.ix, ptr %i.iy, align 8, !tbaa !84
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.hw ; 2 uses
  %indvars.iv.next1376.prol = add nsw i64 %indvars.iv1375.ph, %i.hw ; 2 uses
  %indvars.iv.next1378.prol = add nsw i64 %indvars.iv1377.ph, %i.hw ; 2 uses
  %i.iz = add nuw nsw i32 %.19871168.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa1624.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next1376.lcssa1623.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next1376.prol, %scalar.ph.prol ]
  %indvars.iv.next1378.lcssa1622.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next1378.prol, %scalar.ph.prol ]
  %indvars.iv1377.unr = phi i64 [ %indvars.iv1377.ph, %scalar.ph.preheader ], [ %indvars.iv.next1378.prol, %scalar.ph.prol ]
  %indvars.iv1375.unr = phi i64 [ %indvars.iv1375.ph, %scalar.ph.preheader ], [ %indvars.iv.next1376.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.19871168.us.us.us.unr = phi i32 [ %.19871168.us.us.us.ph, %scalar.ph.preheader ], [ %i.iz, %scalar.ph.prol ]
  %i.ja = icmp eq i32 %i.hj, %.neg
  br i1 %i.ja, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1377 = phi i64 [ %indvars.iv.next1378.1, %scalar.ph ], [ %indvars.iv1377.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv1375 = phi i64 [ %indvars.iv.next1376.1, %scalar.ph ], [ %indvars.iv1375.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.19871168.us.us.us = phi i32 [ %i.jn, %scalar.ph ], [ %.19871168.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv1375
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !84
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.je = load double, ptr %i.jd, align 8, !tbaa !84
  %i.jf = fdiv double %i.jc, %i.je
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv1377
  store double %i.jf, ptr %i.jg, align 8, !tbaa !84
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.hw ; 2 uses
  %indvars.iv.next1376 = add nsw i64 %indvars.iv1375, %i.hw ; 2 uses
  %indvars.iv.next1378 = add nsw i64 %indvars.iv1377, %i.hw ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv.next1376
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !84
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !84
  %i.jl = fdiv double %i.ji, %i.jk
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv.next1378
  store double %i.jl, ptr %i.jm, align 8, !tbaa !84
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.hw ; 2 uses
  %indvars.iv.next1376.1 = add nsw i64 %indvars.iv.next1376, %i.hw ; 2 uses
  %indvars.iv.next1378.1 = add nsw i64 %indvars.iv.next1378, %i.hw ; 2 uses
  %i.jn = add nuw nsw i32 %.19871168.us.us.us, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jn, %i.hj
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !88

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ip, %middle.block ], [ %indvars.iv.next.lcssa1624.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next1376.lcssa = phi i64 [ %i.io, %middle.block ], [ %indvars.iv.next1376.lcssa1623.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next1376.1, %scalar.ph ]
  %indvars.iv.next1378.lcssa = phi i64 [ %i.in, %middle.block ], [ %indvars.iv.next1378.lcssa1622.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next1378.1, %scalar.ph ]
  %i.jo = trunc nsw i64 %indvars.iv.next1378.lcssa to i32
  %i.jp = trunc nsw i64 %indvars.iv.next1376.lcssa to i32
  %i.jq = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.jr = add nsw i32 %i.hq, %i.jq                ; 2 uses
  %i.js = add nsw i32 %i.hr, %i.jp                ; 2 uses
  %i.jt = add nsw i32 %i.hs, %i.jo                ; 2 uses
  %i.ju = add nuw nsw i32 %.19951174.us.us.us, 1  ; 2 uses
  %exitcond1384.not = icmp eq i32 %i.ju, %i.hk
  br i1 %exitcond1384.not, label %._crit_edge1178.split.us.us.us, label %.preheader1164.us.us.us, !llvm.loop !89

._crit_edge1178.split.us.us.us:                   ; preds = %._crit_edge.us.us.us
  %i.jv = add nsw i32 %i.ht, %i.jr
  %i.jw = add nsw i32 %i.hu, %i.js
  %i.jx = add nsw i32 %i.hv, %i.jt
  %i.jy = add nuw nsw i32 %.110031189.us.us, 1    ; 2 uses
  %exitcond1385.not = icmp eq i32 %i.jy, %i.hl
  br i1 %exitcond1385.not, label %._crit_edge.split, label %.preheader1165.us.us, !llvm.loop !90

._crit_edge.split:                                ; preds = %._crit_edge1178.split.us.us.us, %.preheader1166.lr.ph, %bb.t
  %indvars.iv.next1387 = add nuw nsw i64 %indvars.iv1386, 1 ; 2 uses
  %i.jz = load i32, ptr %i.cx, align 8, !tbaa !58
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i64 %indvars.iv.next1387, %i.ka
  br i1 %i.kb, label %bb.h, label %._crit_edge1203.loopexit, !llvm.loop !91

._crit_edge1203.loopexit:                         ; preds = %._crit_edge.split
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !53
  br label %._crit_edge1203

._crit_edge1203:                                  ; preds = %._crit_edge1203.loopexit, %.lr.ph1206
  %i.kc = phi i32 [ %.pre, %._crit_edge1203.loopexit ], [ %i.bq, %.lr.ph1206 ] ; 2 uses
  %indvars.iv.next1390 = add nuw nsw i64 %indvars.iv1389, 1 ; 2 uses
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next1390, %i.kd
  br i1 %i.ke, label %.lr.ph1206, label %._crit_edge1207, !llvm.loop !92

._crit_edge1207:                                  ; preds = %._crit_edge1203, %bb.g
  br i1 %i.bm, label %bb.g, label %bb.u, !llvm.loop !93

bb.u:                                             ; preds = %._crit_edge1207
  %i.kf = fcmp une double %i.h, 1.000000e+00
  br i1 %i.kf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kg = call i32 @hypre_StructScale(double noundef %i.h, ptr noundef %3) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.kh = srem i32 1, %i.j                        ; 2 uses
  %i.ki = xor i32 %i.kh, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.e
  %.0977 = phi i32 [ %i.kh, %bb.w ], [ 0, %bb.e ]
  %.0975 = phi i32 [ %i.ki, %bb.w ], [ 0, %bb.e ] ; 3 uses
  %i.kj = icmp slt i32 %.0975, %i.d
  br i1 %i.kj, label %.lr.ph1328, label %._crit_edge1329

.lr.ph1328:                                       ; preds = %bb.x
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@hypre_PointRelax:bb.a
  %i.lj = getelementptr inbounds [12 x i8], ptr %i.n, i64 %i.lg ; 4 uses
  %i.lk = call i32 @hypre_StructCopy(ptr noundef %3, ptr noundef %i.p) #8 ; 0 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 7 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 7 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge1323
  %i.lp = phi i1 [ true, %bb.y ], [ false, %._crit_edge1323 ]
  %.19801324 = phi i1 [ false, %bb.y ], [ true, %._crit_edge1323 ]
  br i1 %.19801324, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lq = load ptr, ptr %i.kk, align 8, !tbaa !82
  %i.lr = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.li, ptr noundef %i.lq, ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.lt = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.ls) #8 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5.in = phi ptr [ %i.lm, %bb.ab ], [ %i.ll, %bb.aa ]
  %.5 = load ptr, ptr %.5.in, align 8, !tbaa !65  ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.5, i64 8 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !53 ; 2 uses
  %i.lw = icmp sgt i32 %i.lv, 0
  br i1 %i.lw, label %.lr.ph1322, label %._crit_edge1323

.lr.ph1322:                                       ; preds = %bb.ac, %._crit_edge1319
  %i.lx = phi i32 [ %i.adp, %._crit_edge1319 ], [ %i.lv, %bb.ac ]
  %indvars.iv1433 = phi i64 [ %indvars.iv.next1434, %._crit_edge1319 ], [ 0, %bb.ac ] ; 11 uses
  %i.ly = load ptr, ptr %.5, align 8, !tbaa !56
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv1433
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !57 ; 2 uses
  %i.mb = load ptr, ptr %i.kl, align 8, !tbaa !79
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !61
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.mc, i64 %indvars.iv1433 ; 6 uses
  %i.me = load ptr, ptr %i.km, align 8, !tbaa !68
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !61
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.mf, i64 %indvars.iv1433 ; 5 uses
  %i.mh = load ptr, ptr %i.kn, align 8, !tbaa !68
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !61
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.mi, i64 %indvars.iv1433 ; 5 uses
  %i.mk = load ptr, ptr %i.ko, align 8, !tbaa !68
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !61
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.ml, i64 %indvars.iv1433 ; 5 uses
  %i.mn = load ptr, ptr %i.kp, align 8, !tbaa !82 ; 2 uses
  %i.mo = load ptr, ptr %i.kq, align 8, !tbaa !83
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %indvars.iv1433
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.mr ; 6 uses
  %i.mt = load ptr, ptr %i.kr, align 8, !tbaa !82 ; 6 uses
  %i.mu = load ptr, ptr %i.ks, align 8, !tbaa !83
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv1433
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !4
  %i.mx = sext i32 %i.mw to i64                   ; 3 uses
  %i.my = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.mx ; 14 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 2 uses
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !58
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph1318, label %._crit_edge1319

.lr.ph1318:                                       ; preds = %.lr.ph1322
  %i.nc = ptrtoaddr ptr %i.mt to i64
  %i.nd = ptrtoaddr ptr %i.mn to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.md, i64 12 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.nu = shl nsw i64 %i.mx, 3                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.mt, i64 %i.nu
  %scevgep1513 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep1514 = getelementptr i8, ptr %scevgep1513, i64 %i.nu
  %scevgep1540 = getelementptr i8, ptr %i.mt, i64 %i.nu
  %scevgep1542 = getelementptr i8, ptr %i.mt, i64 8
  %scevgep1543 = getelementptr i8, ptr %scevgep1542, i64 %i.nu
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1318, %._crit_edge1311.split
  %indvars.iv1430 = phi i64 [ 0, %.lr.ph1318 ], [ %indvars.iv.next1431, %._crit_edge1311.split ] ; 2 uses
  %i.nv = load ptr, ptr %i.ma, align 8, !tbaa !61
  %i.nw = getelementptr inbounds nuw [24 x i8], ptr %i.nv, i64 %indvars.iv1430 ; 4 uses
  %i.nx = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.nw, ptr noundef %i.lj, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.ny = load i32, ptr %i.nw, align 4, !tbaa !4  ; 5 uses
  %i.nz = load i32, ptr %i.mg, align 4, !tbaa !4  ; 2 uses
  %i.oa = sub i32 %i.ny, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !4  ; 5 uses
  %i.od = load i32, ptr %i.ne, align 4, !tbaa !4  ; 2 uses
  %i.oe = sub i32 %i.oc, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 7 uses
  %i.og = load i32, ptr %i.ng, align 4, !tbaa !4
  %i.oh = sub nsw i32 %i.og, %i.od                ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, -1                  ; 2 uses
  br i1 %i.oi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.oj = load i32, ptr %i.of, align 4, !tbaa !4
  %i.ok = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.ol = sub nsw i32 %i.oj, %i.ok
  %i.om = add nuw nsw i32 %i.oh, 1
  %i.on = mul nsw i32 %i.ol, %i.om
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.oo = phi i32 [ %i.on, %bb.ae ], [ 0, %bb.ad ]
  %i.op = load i32, ptr %i.nf, align 4, !tbaa !4
  %i.oq = sub nsw i32 %i.op, %i.nz                ; 2 uses
  %i.or = icmp sgt i32 %i.oq, -1                  ; 2 uses
  %i.os = add nsw i32 %i.oe, %i.oo
  %i.ot = add nuw nsw i32 %i.oq, 1                ; 3 uses
  %i.ou = mul nsw i32 %i.ot, %i.os
  %i.ov = select i1 %i.or, i32 %i.ou, i32 0
  %i.ow = add nsw i32 %i.oa, %i.ov
  %i.ox = load i32, ptr %i.mm, align 4, !tbaa !4  ; 2 uses
  %i.oy = sub nsw i32 %i.ny, %i.ox                ; 3 uses
  %i.oz = load i32, ptr %i.ni, align 4, !tbaa !4  ; 2 uses
  %i.pa = sub nsw i32 %i.oc, %i.oz                ; 3 uses
  %i.pb = load i32, ptr %i.nl, align 4, !tbaa !4
  %i.pc = sub nsw i32 %i.pb, %i.oz                ; 3 uses
  %i.pd = icmp sgt i32 %i.pc, -1                  ; 6 uses
  br i1 %i.pd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.pe = load i32, ptr %i.of, align 4, !tbaa !4
  %i.pf = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.pg = sub nsw i32 %i.pe, %i.pf
  %i.ph = add nuw nsw i32 %i.pc, 1
  %i.pi = mul nsw i32 %i.pg, %i.ph
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.pj = phi i32 [ %i.pi, %bb.ag ], [ 0, %bb.af ]
  %i.pk = load i32, ptr %i.nk, align 4, !tbaa !4
  %i.pl = sub nsw i32 %i.pk, %i.ox                ; 2 uses
  %i.pm = icmp sgt i32 %i.pl, -1                  ; 6 uses
  %i.pn = add nsw i32 %i.pj, %i.pa
  %i.po = add nuw nsw i32 %i.pl, 1                ; 9 uses
  %i.pp = mul nsw i32 %i.po, %i.pn
  %i.pq = select i1 %i.pm, i32 %i.pp, i32 0
  %i.pr = add nsw i32 %i.pq, %i.oy
  %i.ps = load i32, ptr %i.lj, align 4, !tbaa !4  ; 9 uses
  br i1 %i.or, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pt = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.pu = mul nsw i32 %i.pt, %i.ot
  %i.pv = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.pw = mul nsw i32 %i.pv, %i.ot
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.px = phi i32 [ %i.pu, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.py = phi i32 [ %i.pw, %bb.ai ], [ 0, %bb.ah ]
  %i.pz = add nuw nsw i32 %i.oh, 1
  %i.qa = mul nsw i32 %i.py, %i.pz
  %i.qb = select i1 %i.oi, i32 %i.qa, i32 0
  br i1 %i.pm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.qc = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.qd = mul nsw i32 %i.qc, %i.po
  %i.qe = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.qf = mul nsw i32 %i.qe, %i.po
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.qg = phi i32 [ %i.qd, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.qh = phi i32 [ %i.qf, %bb.ak ], [ 0, %bb.aj ]
  %i.qi = add nuw nsw i32 %i.pc, 1                ; 5 uses
  %i.qj = load i32, ptr %i.b, align 4, !tbaa !4   ; 24 uses
  %i.qk = load i32, ptr %i.kt, align 4, !tbaa !4  ; 14 uses
  %i.ql = load i32, ptr %i.ku, align 4, !tbaa !4  ; 7 uses
  %.01022 = call i32 @llvm.smax.i32(i32 %i.qk, i32 %i.qj)
  %.11023 = call i32 @llvm.smax.i32(i32 %i.ql, i32 %.01022)
  %i.qm = icmp sgt i32 %.11023, 0                 ; 3 uses
  br i1 %i.qm, label %.preheader1161.lr.ph, label %.preheader1163

.preheader1161.lr.ph:                             ; preds = %bb.al
  %factor.op.mul1234 = mul i32 %i.qk, %i.qg
  %factor.op.mul1233 = mul i32 %i.qk, %i.px
  %factor.op.mul1232 = mul i32 %i.ps, %i.qj       ; 2 uses
  %i.qn = mul nsw i32 %i.qh, %i.qi
  %i.qo = select i1 %i.pd, i32 %i.qn, i32 0
  %7 = icmp slt i32 %i.ql, 1
  %8 = icmp slt i32 %i.qj, 1
  %i.qp = sub i32 %i.px, %factor.op.mul1232
  %i.qq = sub i32 %i.qg, %factor.op.mul1232
  %i.qr = sub i32 %i.qb, %factor.op.mul1233
  %i.qs = sub i32 %i.qo, %factor.op.mul1234
  %9 = icmp slt i32 %i.qk, 1
  %or.cond1543.not1559 = or i1 %7, %9
  %brmerge1545 = or i1 %or.cond1543.not1559, %8
  br i1 %brmerge1545, label %.preheader1163, label %.preheader1157.us.us.preheader

.preheader1157.us.us.preheader:                   ; preds = %.preheader1161.lr.ph
  %i.qt = sext i32 %i.ps to i64                   ; 10 uses
  %i.qu = zext nneg i32 %i.qj to i64              ; 2 uses
  %min.iters.check1590 = icmp ugt i32 %i.qj, 7
  %ident.check1586.not = icmp eq i32 %i.ps, 1
  %or.cond1605 = select i1 %min.iters.check1590, i1 %ident.check1586.not, i1 false
  %n.vec1593 = and i64 %i.qu, 2147483644          ; 5 uses
  %i.qv = trunc nuw nsw i64 %n.vec1593 to i32
  %cmp.n1600 = icmp eq i64 %n.vec1593, %i.qu
  br label %.preheader1157.us.us

.preheader1157.us.us:                             ; preds = %.preheader1157.us.us.preheader, %._crit_edge1219.split.us.us.us
  %.39341229.us.us = phi i32 [ %i.sj, %._crit_edge1219.split.us.us.us ], [ %i.ow, %.preheader1157.us.us.preheader ]
  %.09631228.us.us = phi i32 [ %i.sk, %._crit_edge1219.split.us.us.us ], [ %i.pr, %.preheader1157.us.us.preheader ]
  %.310051227.us.us = phi i32 [ %i.sl, %._crit_edge1219.split.us.us.us ], [ 0, %.preheader1157.us.us.preheader ]
  br label %.preheader1154.us.us.us

.preheader1154.us.us.us:                          ; preds = %._crit_edge1213.us.us.us, %.preheader1157.us.us
  %.49351218.us.us.us = phi i32 [ %.39341229.us.us, %.preheader1157.us.us ], [ %i.sg, %._crit_edge1213.us.us.us ]
  %.19641217.us.us.us = phi i32 [ %.09631228.us.us, %.preheader1157.us.us ], [ %i.sh, %._crit_edge1213.us.us.us ]
  %.39971216.us.us.us = phi i32 [ 0, %.preheader1157.us.us ], [ %i.si, %._crit_edge1213.us.us.us ]
  %i.qw = sext i32 %.49351218.us.us.us to i64     ; 5 uses
  %i.qx = sext i32 %.19641217.us.us.us to i64     ; 5 uses
  br i1 %or.cond1605, label %vector.memcheck1587, label %scalar.ph1589.preheader

vector.memcheck1587:                              ; preds = %.preheader1154.us.us.us
  %i.qy = add nsw i64 %i.mx, %i.qx
  %i.qz = shl nsw i64 %i.qy, 3
  %i.ra = add i64 %i.qz, %i.nc
  %i.rb = add nsw i64 %i.mr, %i.qw
  %i.rc = shl nsw i64 %i.rb, 3
  %i.rd = add i64 %i.rc, %i.nd
  %i.re = sub i64 %i.ra, %i.rd
  %diff.check1588 = icmp ult i64 %i.re, 32
  br i1 %diff.check1588, label %scalar.ph1589.preheader, label %vector.ph1591

vector.ph1591:                                    ; preds = %vector.memcheck1587
  %i.rf = add nsw i64 %n.vec1593, %i.qx           ; 2 uses
  %i.rg = add nsw i64 %n.vec1593, %i.qw           ; 2 uses
  %invariant.gep1653 = getelementptr [8 x i8], ptr %i.ms, i64 %i.qw
  %invariant.gep1655 = getelementptr [8 x i8], ptr %i.my, i64 %i.qx
  br label %vector.body1594

vector.body1594:                                  ; preds = %vector.body1594, %vector.ph1591
  %index1595 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1598, %vector.body1594 ] ; 3 uses
  %gep1654 = getelementptr [8 x i8], ptr %invariant.gep1653, i64 %index1595 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %gep1654, i64 16
  %wide.load1596 = load <2 x double>, ptr %gep1654, align 8, !tbaa !84
  %wide.load1597 = load <2 x double>, ptr %i.rh, align 8, !tbaa !84
  %gep1656 = getelementptr [8 x i8], ptr %invariant.gep1655, i64 %index1595 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %gep1656, i64 16
  store <2 x double> %wide.load1596, ptr %gep1656, align 8, !tbaa !84
  store <2 x double> %wide.load1597, ptr %i.ri, align 8, !tbaa !84
  %index.next1598 = add nuw i64 %index1595, 4     ; 2 uses
  %i.rj = icmp eq i64 %index.next1598, %n.vec1593
  br i1 %i.rj, label %middle.block1599, label %vector.body1594, !llvm.loop !96

middle.block1599:                                 ; preds = %vector.body1594
  br i1 %cmp.n1600, label %._crit_edge1213.us.us.us, label %scalar.ph1589.preheader

scalar.ph1589.preheader:                          ; preds = %vector.memcheck1587, %.preheader1154.us.us.us, %middle.block1599
  %indvars.iv1394.ph = phi i64 [ %i.qx, %vector.memcheck1587 ], [ %i.qx, %.preheader1154.us.us.us ], [ %i.rf, %middle.block1599 ] ; 2 uses
  %indvars.iv1392.ph = phi i64 [ %i.qw, %vector.memcheck1587 ], [ %i.qw, %.preheader1154.us.us.us ], [ %i.rg, %middle.block1599 ] ; 2 uses
  %.39891209.us.us.us.ph = phi i32 [ 0, %vector.memcheck1587 ], [ 0, %.preheader1154.us.us.us ], [ %i.qv, %middle.block1599 ] ; 4 uses
  %i.rk = sub i32 %i.qj, %.39891209.us.us.us.ph
  %xtraiter1628 = and i32 %i.rk, 3                ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol

scalar.ph1589.prol:                               ; preds = %scalar.ph1589.preheader, %scalar.ph1589.prol
  %indvars.iv1394.prol = phi i64 [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ], [ %indvars.iv1394.ph, %scalar.ph1589.preheader ] ; 2 uses
  %indvars.iv1392.prol = phi i64 [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ], [ %indvars.iv1392.ph, %scalar.ph1589.preheader ] ; 2 uses
  %.39891209.us.us.us.prol = phi i32 [ %i.ro, %scalar.ph1589.prol ], [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph1589.prol ], [ 0, %scalar.ph1589.preheader ]
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %indvars.iv1392.prol
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !84
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1394.prol
  store double %i.rm, ptr %i.rn, align 8, !tbaa !84
  %indvars.iv.next1393.prol = add nsw i64 %indvars.iv1392.prol, %i.qt ; 3 uses
  %indvars.iv.next1395.prol = add nsw i64 %indvars.iv1394.prol, %i.qt ; 3 uses
  %i.ro = add nuw nsw i32 %.39891209.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1628
  br i1 %prol.iter.cmp.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol, !llvm.loop !97

scalar.ph1589.prol.loopexit:                      ; preds = %scalar.ph1589.prol, %scalar.ph1589.preheader
  %indvars.iv.next1393.lcssa1609.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %indvars.iv.next1395.lcssa1608.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1394.unr = phi i64 [ %indvars.iv1394.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1392.unr = phi i64 [ %indvars.iv1392.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %.39891209.us.us.us.unr = phi i32 [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ], [ %i.ro, %scalar.ph1589.prol ]
  %i.rp = sub i32 %.39891209.us.us.us.ph, %i.qj
  %i.rq = icmp ugt i32 %i.rp, -4
  br i1 %i.rq, label %._crit_edge1213.us.us.us, label %scalar.ph1589

scalar.ph1589:                                    ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589
  %indvars.iv1394 = phi i64 [ %indvars.iv.next1395.3, %scalar.ph1589 ], [ %indvars.iv1394.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %indvars.iv1392 = phi i64 [ %indvars.iv.next1393.3, %scalar.ph1589 ], [ %indvars.iv1392.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %.39891209.us.us.us = phi i32 [ %i.sd, %scalar.ph1589 ], [ %.39891209.us.us.us.unr, %scalar.ph1589.prol.loopexit ]
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %indvars.iv1392
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !84
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1394
  store double %i.rs, ptr %i.rt, align 8, !tbaa !84
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, %i.qt ; 2 uses
  %indvars.iv.next1395 = add nsw i64 %indvars.iv1394, %i.qt ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %indvars.iv.next1393
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !84
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv.next1395
  store double %i.rv, ptr %i.rw, align 8, !tbaa !84
  %indvars.iv.next1393.1 = add nsw i64 %indvars.iv.next1393, %i.qt ; 2 uses
  %indvars.iv.next1395.1 = add nsw i64 %indvars.iv.next1395, %i.qt ; 2 uses
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %indvars.iv.next1393.1
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !84
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv.next1395.1
  store double %i.ry, ptr %i.rz, align 8, !tbaa !84
  %indvars.iv.next1393.2 = add nsw i64 %indvars.iv.next1393.1, %i.qt ; 2 uses
  %indvars.iv.next1395.2 = add nsw i64 %indvars.iv.next1395.1, %i.qt ; 2 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %indvars.iv.next1393.2
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !84
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv.next1395.2
  store double %i.sb, ptr %i.sc, align 8, !tbaa !84
  %indvars.iv.next1393.3 = add nsw i64 %indvars.iv.next1393.2, %i.qt ; 2 uses
  %indvars.iv.next1395.3 = add nsw i64 %indvars.iv.next1395.2, %i.qt ; 2 uses
  %i.sd = add nuw nsw i32 %.39891209.us.us.us, 4  ; 2 uses
  %exitcond1399.not.3 = icmp eq i32 %i.sd, %i.qj
  br i1 %exitcond1399.not.3, label %._crit_edge1213.us.us.us, label %scalar.ph1589, !llvm.loop !99

._crit_edge1213.us.us.us:                         ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589, %middle.block1599
  %indvars.iv.next1393.lcssa = phi i64 [ %i.rg, %middle.block1599 ], [ %indvars.iv.next1393.lcssa1609.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1393.3, %scalar.ph1589 ]
  %indvars.iv.next1395.lcssa = phi i64 [ %i.rf, %middle.block1599 ], [ %indvars.iv.next1395.lcssa1608.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1395.3, %scalar.ph1589 ]
  %i.se = trunc nsw i64 %indvars.iv.next1395.lcssa to i32
  %i.sf = trunc nsw i64 %indvars.iv.next1393.lcssa to i32
  %i.sg = add nsw i32 %i.qp, %i.sf                ; 2 uses
  %i.sh = add nsw i32 %i.qq, %i.se                ; 2 uses
  %i.si = add nuw nsw i32 %.39971216.us.us.us, 1  ; 2 uses
  %exitcond1400.not = icmp eq i32 %i.si, %i.qk
  br i1 %exitcond1400.not, label %._crit_edge1219.split.us.us.us, label %.preheader1154.us.us.us, !llvm.loop !100

._crit_edge1219.split.us.us.us:                   ; preds = %._crit_edge1213.us.us.us
  %i.sj = add nsw i32 %i.qr, %i.sg
  %i.sk = add nsw i32 %i.qs, %i.sh
  %i.sl = add nuw nsw i32 %.310051227.us.us, 1    ; 2 uses
  %exitcond1401.not = icmp eq i32 %i.sl, %i.ql
  br i1 %exitcond1401.not, label %.preheader1163, label %.preheader1157.us.us, !llvm.loop !101

.preheader1163:                                   ; preds = %._crit_edge1219.split.us.us.us, %.preheader1161.lr.ph, %bb.al
  br i1 %i.kv, label %.lr.ph1283, label %._crit_edge1284

.lr.ph1283:                                       ; preds = %.preheader1163
  %i.sm = mul i32 %i.po, %i.qi
  %i.sn = mul i32 %i.ps, %i.qj                    ; 3 uses
  %i.so = icmp slt i32 %i.ql, 1
  %i.sp = icmp slt i32 %i.qk, 1
  %i.sq = icmp slt i32 %i.qj, 1
  %i.sr = sext i32 %i.ps to i64                   ; 9 uses
  %i.ss = add i32 %i.qj, -1
  %i.st = zext i32 %i.ss to i64
  %i.su = shl nuw nsw i64 %i.st, 3                ; 3 uses
  %scevgep1544 = getelementptr i8, ptr %scevgep1543, i64 %i.su
  %i.sv = zext i32 %i.qj to i64                   ; 2 uses
  %brmerge1548 = or i1 %i.so, %i.sp
  %brmerge1483 = or i1 %brmerge1548, %i.sq
  %min.iters.check1566 = icmp ugt i32 %i.qj, 5
  %ident.check1538.not = icmp eq i32 %i.ps, 1
  %or.cond1606 = select i1 %min.iters.check1566, i1 %ident.check1538.not, i1 false
  %n.vec1569 = and i64 %i.sv, 2147483644          ; 6 uses
  %i.sw = trunc nuw nsw i64 %n.vec1569 to i32
  %cmp.n1580 = icmp eq i64 %n.vec1569, %i.sv
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1283, %.loopexit1160
  %indvars.iv1416 = phi i64 [ 0, %.lr.ph1283 ], [ %indvars.iv.next1417, %.loopexit1160 ] ; 4 uses
  %.not1113 = icmp eq i64 %indvars.iv1416, %i.lc
  br i1 %.not1113, label %.loopexit1160, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sx = load ptr, ptr %i.kw, align 8, !tbaa !80 ; 3 uses
  %i.sy = load ptr, ptr %i.kx, align 8, !tbaa !81
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %indvars.iv1433
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !27
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv1416
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !4
  %i.td = sext i32 %i.tc to i64                   ; 2 uses
  %i.te = getelementptr inbounds [8 x i8], ptr %i.sx, i64 %i.td ; 4 uses
  %i.tf = load ptr, ptr %i.kk, align 8, !tbaa !82 ; 3 uses
  %i.tg = load ptr, ptr %i.ky, align 8, !tbaa !83
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv1433
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = sext i32 %i.ti to i64                   ; 2 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.tf, i64 %i.tj
  %i.tl = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv1416 ; 3 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !4
  %i.tp = load i32, ptr %i.nn, align 4, !tbaa !4
  %i.tq = load i32, ptr %i.no, align 4, !tbaa !4  ; 2 uses
  %i.tr = sub nsw i32 %i.tp, %i.tq                ; 4 uses
  %i.ts = icmp sgt i32 %i.tr, -1                  ; 3 uses
  br i1 %i.ts, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !4
  %i.tv = add nuw nsw i32 %i.tr, 1
  %i.tw = mul nsw i32 %i.tu, %i.tv
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.tx = phi i32 [ %i.tw, %bb.ao ], [ 0, %bb.an ]
  %i.ty = load i32, ptr %i.nm, align 4, !tbaa !4
  %i.tz = load i32, ptr %i.mj, align 4, !tbaa !4  ; 2 uses
  %i.ua = sub nsw i32 %i.ty, %i.tz                ; 2 uses
  %i.ub = icmp sgt i32 %i.ua, -1                  ; 3 uses
  %i.uc = add nsw i32 %i.tx, %i.to
  %i.ud = add nuw nsw i32 %i.ua, 1                ; 4 uses
  %i.ue = mul nsw i32 %i.ud, %i.uc
  %i.uf = select i1 %i.ub, i32 %i.ue, i32 0
  %i.ug = add i32 %i.uf, %i.tm
  %i.uh = sext i32 %i.ug to i64                   ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.tk, i64 %i.uh ; 4 uses
  %i.uj = load i32, ptr %i.md, align 4, !tbaa !4  ; 2 uses
  %i.uk = sub i32 %i.ny, %i.uj
  %i.ul = load i32, ptr %i.np, align 4, !tbaa !4  ; 2 uses
  %i.um = sub i32 %i.oc, %i.ul
  %i.un = load i32, ptr %i.nr, align 4, !tbaa !4
  %i.uo = sub nsw i32 %i.un, %i.ul                ; 3 uses
  %i.up = icmp sgt i32 %i.uo, -1                  ; 2 uses
  br i1 %i.up, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.uq = load i32, ptr %i.of, align 4, !tbaa !4
  %i.ur = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.us = sub nsw i32 %i.uq, %i.ur
  %i.ut = add nuw nsw i32 %i.uo, 1
  %i.uu = mul nsw i32 %i.us, %i.ut
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.uv = phi i32 [ %i.uu, %bb.aq ], [ 0, %bb.ap ]
  %i.uw = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.ux = sub nsw i32 %i.uw, %i.uj                ; 2 uses
  %i.uy = icmp sgt i32 %i.ux, -1                  ; 2 uses
  %i.uz = add nsw i32 %i.um, %i.uv
  %i.va = add nuw nsw i32 %i.ux, 1                ; 3 uses
  %i.vb = mul nsw i32 %i.va, %i.uz
  %i.vc = select i1 %i.uy, i32 %i.vb, i32 0
  %i.vd = add nsw i32 %i.uk, %i.vc
  %i.ve = sub i32 %i.ny, %i.tz
  %i.vf = sub i32 %i.oc, %i.tq
  br i1 %i.ts, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.vg = load i32, ptr %i.of, align 4, !tbaa !4
  %i.vh = load i32, ptr %i.nt, align 4, !tbaa !4
  %i.vi = sub nsw i32 %i.vg, %i.vh
  %i.vj = add nuw nsw i32 %i.tr, 1
  %i.vk = mul nsw i32 %i.vi, %i.vj
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.vl = phi i32 [ %i.vk, %bb.as ], [ 0, %bb.ar ]
  %i.vm = add nsw i32 %i.vf, %i.vl
  %i.vn = mul nsw i32 %i.vm, %i.ud
  %i.vo = select i1 %i.ub, i32 %i.vn, i32 0
  %i.vp = add nsw i32 %i.ve, %i.vo
  br i1 %i.pd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.vq = load i32, ptr %i.of, align 4, !tbaa !4
  %i.vr = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.vs = sub nsw i32 %i.vq, %i.vr
  %i.vt = mul nsw i32 %i.vs, %i.qi
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.vu = phi i32 [ %i.vt, %bb.au ], [ 0, %bb.at ]
  %i.vv = add nsw i32 %i.vu, %i.pa
  %i.vw = mul nsw i32 %i.vv, %i.po
  %i.vx = select i1 %i.pm, i32 %i.vw, i32 0
  %i.vy = add nsw i32 %i.vx, %i.oy
  br i1 %i.uy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.vz = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.wa = mul nsw i32 %i.vz, %i.va
  %i.wb = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.wc = mul nsw i32 %i.wb, %i.va
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.wd = phi i32 [ %i.wa, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.we = phi i32 [ %i.wc, %bb.aw ], [ 0, %bb.av ]
  %i.wf = add nuw nsw i32 %i.uo, 1
  %i.wg = mul nsw i32 %i.we, %i.wf
  %i.wh = select i1 %i.up, i32 %i.wg, i32 0
  br i1 %i.ub, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.wi = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.wj = mul nsw i32 %i.wi, %i.ud
  %i.wk = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.wl = mul nsw i32 %i.wk, %i.ud
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.wm = phi i32 [ %i.wj, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %i.wn = phi i32 [ %i.wl, %bb.ay ], [ 0, %bb.ax ]
  %i.wo = add nuw nsw i32 %i.tr, 1
  %i.wp = mul nsw i32 %i.wn, %i.wo
  %i.wq = select i1 %i.ts, i32 %i.wp, i32 0
  br i1 %i.pm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.wr = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.ws = mul nsw i32 %i.wr, %i.po
  %i.wt = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.wu = mul i32 %i.sm, %i.wt
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.wv = phi i32 [ %i.ws, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.ww = phi i32 [ %i.wu, %bb.ba ], [ 0, %bb.az ]
  br i1 %i.qm, label %.preheader1156.lr.ph, label %.loopexit1160

.preheader1156.lr.ph:                             ; preds = %bb.bb
  %i.wx = mul i32 %i.qk, %i.wv
  %i.wy = mul i32 %i.qk, %i.wm
  %i.wz = mul i32 %i.qk, %i.wd
  %i.xa = select i1 %i.pd, i32 %i.ww, i32 0
  %i.xb = sub i32 %i.wd, %i.sn
  %i.xc = sub i32 %i.wm, %i.sn
  %i.xd = sub i32 %i.wv, %i.sn
  %i.xe = sub i32 %i.wh, %i.wz
  %i.xf = sub i32 %i.wq, %i.wy
  %i.xg = sub i32 %i.xa, %i.wx
  br i1 %brmerge1483, label %.loopexit1160, label %.preheader1153.us.us.preheader

.preheader1153.us.us.preheader:                   ; preds = %.preheader1156.lr.ph
  %i.xh = shl nsw i64 %i.td, 3                    ; 2 uses
  %scevgep1546 = getelementptr i8, ptr %i.sx, i64 %i.xh
  %scevgep1548 = getelementptr i8, ptr %i.sx, i64 8
  %scevgep1549 = getelementptr i8, ptr %scevgep1548, i64 %i.su
  %scevgep1550 = getelementptr i8, ptr %scevgep1549, i64 %i.xh
  %i.xi = add nsw i64 %i.tj, %i.uh
  %i.xj = shl nsw i64 %i.xi, 3                    ; 2 uses
  %scevgep1552 = getelementptr i8, ptr %i.tf, i64 %i.xj
  %scevgep1554 = getelementptr i8, ptr %i.tf, i64 8
  %scevgep1555 = getelementptr i8, ptr %scevgep1554, i64 %i.su
  %scevgep1556 = getelementptr i8, ptr %scevgep1555, i64 %i.xj
  br label %.preheader1153.us.us

.preheader1153.us.us:                             ; preds = %.preheader1153.us.us.preheader, %._crit_edge1252.split.us.us.us
  %.39281267.us.us = phi i32 [ %i.zk, %._crit_edge1252.split.us.us.us ], [ %i.vd, %.preheader1153.us.us.preheader ]
  %.39401266.us.us = phi i32 [ %i.zl, %._crit_edge1252.split.us.us.us ], [ %i.vp, %.preheader1153.us.us.preheader ]
  %.39661265.us.us = phi i32 [ %i.zm, %._crit_edge1252.split.us.us.us ], [ %i.vy, %.preheader1153.us.us.preheader ]
  %.510071264.us.us = phi i32 [ %i.zn, %._crit_edge1252.split.us.us.us ], [ 0, %.preheader1153.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge1244.us.us.us, %.preheader1153.us.us
  %.49291251.us.us.us = phi i32 [ %.39281267.us.us, %.preheader1153.us.us ], [ %i.zg, %._crit_edge1244.us.us.us ]
  %.49411250.us.us.us = phi i32 [ %.39401266.us.us, %.preheader1153.us.us ], [ %i.zh, %._crit_edge1244.us.us.us ]
  %.49671249.us.us.us = phi i32 [ %.39661265.us.us, %.preheader1153.us.us ], [ %i.zi, %._crit_edge1244.us.us.us ]
end_hunk_1
begin_hunk_2_@hypre_PointRelax:bb.a
  %i.xv = getelementptr inbounds nuw i8, ptr %gep1662, i64 16 ; 2 uses
  %wide.load1576 = load <2 x double>, ptr %gep1662, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %wide.load1577 = load <2 x double>, ptr %i.xv, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %i.xw = fneg <2 x double> %wide.load1572
  %i.xx = fneg <2 x double> %wide.load1573
  %i.xy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> %wide.load1574, <2 x double> %wide.load1576)
  %i.xz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xx, <2 x double> %wide.load1575, <2 x double> %wide.load1577)
  store <2 x double> %i.xy, ptr %gep1662, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  store <2 x double> %i.xz, ptr %i.xv, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %index.next1578 = add nuw i64 %index1571, 4     ; 2 uses
  %i.ya = icmp eq i64 %index.next1578, %n.vec1569
  br i1 %i.ya, label %middle.block1579, label %vector.body1570, !llvm.loop !110

middle.block1579:                                 ; preds = %vector.body1570
  br i1 %cmp.n1580, label %._crit_edge1244.us.us.us, label %scalar.ph1565.preheader

scalar.ph1565.preheader:                          ; preds = %vector.memcheck1539, %.preheader.us.us.us, %middle.block1579
  %indvars.iv1406.ph = phi i64 [ %i.xm, %vector.memcheck1539 ], [ %i.xm, %.preheader.us.us.us ], [ %i.xq, %middle.block1579 ] ; 3 uses
  %indvars.iv1404.ph = phi i64 [ %i.xl, %vector.memcheck1539 ], [ %i.xl, %.preheader.us.us.us ], [ %i.xr, %middle.block1579 ] ; 3 uses
  %indvars.iv1402.ph = phi i64 [ %i.xk, %vector.memcheck1539 ], [ %i.xk, %.preheader.us.us.us ], [ %i.xs, %middle.block1579 ] ; 3 uses
  %.59911239.us.us.us.ph = phi i32 [ 0, %vector.memcheck1539 ], [ 0, %.preheader.us.us.us ], [ %i.sw, %middle.block1579 ] ; 4 uses
  %i.yb = sub i32 %i.qj, %.59911239.us.us.us.ph
  %.neg1636 = add i32 %.59911239.us.us.us.ph, 1
  %xtraiter1630 = and i32 %i.yb, 1
  %lcmp.mod1631.not = icmp eq i32 %xtraiter1630, 0
  br i1 %lcmp.mod1631.not, label %scalar.ph1565.prol.loopexit, label %scalar.ph1565.prol

scalar.ph1565.prol:                               ; preds = %scalar.ph1565.preheader
  %i.yc = getelementptr inbounds [8 x i8], ptr %i.te, i64 %indvars.iv1402.ph
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !84
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %indvars.iv1404.ph
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !84
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1406.ph ; 2 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !84
  %i.yi = fneg double %i.yd
  %i.yj = call double @llvm.fmuladd.f64(double %i.yi, double %i.yf, double %i.yh)
  store double %i.yj, ptr %i.yg, align 8, !tbaa !84
  %indvars.iv.next1403.prol = add nsw i64 %indvars.iv1402.ph, %i.sr ; 2 uses
  %indvars.iv.next1405.prol = add nsw i64 %indvars.iv1404.ph, %i.sr ; 2 uses
  %indvars.iv.next1407.prol = add nsw i64 %indvars.iv1406.ph, %i.sr ; 2 uses
  %i.yk = add nuw nsw i32 %.59911239.us.us.us.ph, 1
  br label %scalar.ph1565.prol.loopexit

scalar.ph1565.prol.loopexit:                      ; preds = %scalar.ph1565.prol, %scalar.ph1565.preheader
  %indvars.iv.next1403.lcssa1613.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1403.prol, %scalar.ph1565.prol ]
  %indvars.iv.next1405.lcssa1612.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1405.prol, %scalar.ph1565.prol ]
  %indvars.iv.next1407.lcssa1611.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1407.prol, %scalar.ph1565.prol ]
  %indvars.iv1406.unr = phi i64 [ %indvars.iv1406.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1407.prol, %scalar.ph1565.prol ]
  %indvars.iv1404.unr = phi i64 [ %indvars.iv1404.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1405.prol, %scalar.ph1565.prol ]
  %indvars.iv1402.unr = phi i64 [ %indvars.iv1402.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1403.prol, %scalar.ph1565.prol ]
  %.59911239.us.us.us.unr = phi i32 [ %.59911239.us.us.us.ph, %scalar.ph1565.preheader ], [ %i.yk, %scalar.ph1565.prol ]
  %i.yl = icmp eq i32 %i.qj, %.neg1636
  br i1 %i.yl, label %._crit_edge1244.us.us.us, label %scalar.ph1565

scalar.ph1565:                                    ; preds = %scalar.ph1565.prol.loopexit, %scalar.ph1565
  %indvars.iv1406 = phi i64 [ %indvars.iv.next1407.1, %scalar.ph1565 ], [ %indvars.iv1406.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %indvars.iv1404 = phi i64 [ %indvars.iv.next1405.1, %scalar.ph1565 ], [ %indvars.iv1404.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %indvars.iv1402 = phi i64 [ %indvars.iv.next1403.1, %scalar.ph1565 ], [ %indvars.iv1402.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %.59911239.us.us.us = phi i32 [ %i.zc, %scalar.ph1565 ], [ %.59911239.us.us.us.unr, %scalar.ph1565.prol.loopexit ]
  %i.ym = getelementptr inbounds [8 x i8], ptr %i.te, i64 %indvars.iv1402
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !84
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %indvars.iv1404
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !84
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1406 ; 2 uses
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !84
  %i.ys = fneg double %i.yn
  %i.yt = call double @llvm.fmuladd.f64(double %i.ys, double %i.yp, double %i.yr)
  store double %i.yt, ptr %i.yq, align 8, !tbaa !84
  %indvars.iv.next1403 = add nsw i64 %indvars.iv1402, %i.sr ; 2 uses
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, %i.sr ; 2 uses
  %indvars.iv.next1407 = add nsw i64 %indvars.iv1406, %i.sr ; 2 uses
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.te, i64 %indvars.iv.next1403
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !84
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.ui, i64 %indvars.iv.next1405
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !84
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv.next1407 ; 2 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !84
  %i.za = fneg double %i.yv
  %i.zb = call double @llvm.fmuladd.f64(double %i.za, double %i.yx, double %i.yz)
  store double %i.zb, ptr %i.yy, align 8, !tbaa !84
  %indvars.iv.next1403.1 = add nsw i64 %indvars.iv.next1403, %i.sr ; 2 uses
  %indvars.iv.next1405.1 = add nsw i64 %indvars.iv.next1405, %i.sr ; 2 uses
  %indvars.iv.next1407.1 = add nsw i64 %indvars.iv.next1407, %i.sr ; 2 uses
  %i.zc = add nuw nsw i32 %.59911239.us.us.us, 2  ; 2 uses
  %exitcond1413.not.1 = icmp eq i32 %i.zc, %i.qj
  br i1 %exitcond1413.not.1, label %._crit_edge1244.us.us.us, label %scalar.ph1565, !llvm.loop !111

._crit_edge1244.us.us.us:                         ; preds = %scalar.ph1565.prol.loopexit, %scalar.ph1565, %middle.block1579
  %indvars.iv.next1403.lcssa = phi i64 [ %i.xs, %middle.block1579 ], [ %indvars.iv.next1403.lcssa1613.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1403.1, %scalar.ph1565 ]
  %indvars.iv.next1405.lcssa = phi i64 [ %i.xr, %middle.block1579 ], [ %indvars.iv.next1405.lcssa1612.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1405.1, %scalar.ph1565 ]
  %indvars.iv.next1407.lcssa = phi i64 [ %i.xq, %middle.block1579 ], [ %indvars.iv.next1407.lcssa1611.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1407.1, %scalar.ph1565 ]
  %i.zd = trunc nsw i64 %indvars.iv.next1407.lcssa to i32
  %i.ze = trunc nsw i64 %indvars.iv.next1405.lcssa to i32
  %i.zf = trunc nsw i64 %indvars.iv.next1403.lcssa to i32
  %i.zg = add nsw i32 %i.xb, %i.zf                ; 2 uses
  %i.zh = add nsw i32 %i.xc, %i.ze                ; 2 uses
  %i.zi = add nsw i32 %i.xd, %i.zd                ; 2 uses
  %i.zj = add nuw nsw i32 %.59991248.us.us.us, 1  ; 2 uses
  %exitcond1414.not = icmp eq i32 %i.zj, %i.qk
  br i1 %exitcond1414.not, label %._crit_edge1252.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !112

._crit_edge1252.split.us.us.us:                   ; preds = %._crit_edge1244.us.us.us
  %i.zk = add nsw i32 %i.xe, %i.zg
  %i.zl = add nsw i32 %i.xf, %i.zh
  %i.zm = add nsw i32 %i.xg, %i.zi
  %i.zn = add nuw nsw i32 %.510071264.us.us, 1    ; 2 uses
  %exitcond1415.not = icmp eq i32 %i.zn, %i.ql
  br i1 %exitcond1415.not, label %.loopexit1160, label %.preheader1153.us.us, !llvm.loop !113

.loopexit1160:                                    ; preds = %._crit_edge1252.split.us.us.us, %.preheader1156.lr.ph, %bb.bb, %bb.am
  %indvars.iv.next1417 = add nuw nsw i64 %indvars.iv1416, 1 ; 2 uses
  %exitcond1419.not = icmp eq i64 %indvars.iv.next1417, %wide.trip.count
  br i1 %exitcond1419.not, label %._crit_edge1284, label %bb.am, !llvm.loop !114

._crit_edge1284:                                  ; preds = %.loopexit1160, %.preheader1163
  %i.zo = load ptr, ptr %i.kw, align 8, !tbaa !80 ; 3 uses
  %i.zp = load ptr, ptr %i.kx, align 8, !tbaa !81
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv1433
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !27
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.kz
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !4
  %i.zu = sext i32 %i.zt to i64                   ; 2 uses
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %i.zu ; 4 uses
  %i.zw = load i32, ptr %i.md, align 4, !tbaa !4  ; 2 uses
  %i.zx = sub i32 %i.ny, %i.zw
  %i.zy = load i32, ptr %i.np, align 4, !tbaa !4  ; 2 uses
  %i.zz = sub i32 %i.oc, %i.zy
  %i.aaa = load i32, ptr %i.nr, align 4, !tbaa !4
  %i.aab = sub nsw i32 %i.aaa, %i.zy              ; 3 uses
  %i.aac = icmp sgt i32 %i.aab, -1                ; 2 uses
  br i1 %i.aac, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge1284
  %i.aad = load i32, ptr %i.of, align 4, !tbaa !4
  %i.aae = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.aaf = sub nsw i32 %i.aad, %i.aae
  %i.aag = add nuw nsw i32 %i.aab, 1
  %i.aah = mul nsw i32 %i.aaf, %i.aag
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1284, %bb.bc
  %i.aai = phi i32 [ %i.aah, %bb.bc ], [ 0, %._crit_edge1284 ]
  %i.aaj = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.aak = sub nsw i32 %i.aaj, %i.zw              ; 2 uses
  %i.aal = icmp sgt i32 %i.aak, -1                ; 2 uses
  %i.aam = add nsw i32 %i.zz, %i.aai
  %i.aan = add nuw nsw i32 %i.aak, 1              ; 3 uses
  %i.aao = mul nsw i32 %i.aan, %i.aam
  %i.aap = select i1 %i.aal, i32 %i.aao, i32 0
  %i.aaq = add nsw i32 %i.zx, %i.aap
  br i1 %i.pd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aar = load i32, ptr %i.of, align 4, !tbaa !4
  %i.aas = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.aat = sub nsw i32 %i.aar, %i.aas
  %i.aau = mul nsw i32 %i.aat, %i.qi
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.aav = phi i32 [ %i.aau, %bb.be ], [ 0, %bb.bd ]
  %i.aaw = add nsw i32 %i.aav, %i.pa
  %i.aax = mul nsw i32 %i.aaw, %i.po
  %i.aay = select i1 %i.pm, i32 %i.aax, i32 0
  %i.aaz = add nsw i32 %i.aay, %i.oy
  br i1 %i.aal, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aba = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.abb = mul nsw i32 %i.aba, %i.aan
  %i.abc = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.abd = mul nsw i32 %i.abc, %i.aan
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.abe = phi i32 [ %i.abb, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.abf = phi i32 [ %i.abd, %bb.bg ], [ 0, %bb.bf ]
  %i.abg = add nuw nsw i32 %i.aab, 1
  %i.abh = mul nsw i32 %i.abf, %i.abg
  %i.abi = select i1 %i.aac, i32 %i.abh, i32 0
  br i1 %i.pm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.abj = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.abk = mul nsw i32 %i.abj, %i.po
  %i.abl = load i32, ptr %i.lo, align 4, !tbaa !4
  %i.abm = mul i32 %i.po, %i.qi
  %i.abn = mul i32 %i.abm, %i.abl
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.abo = phi i32 [ %i.abk, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %i.abp = phi i32 [ %i.abn, %bb.bi ], [ 0, %bb.bh ]
  br i1 %i.qm, label %.preheader1158.lr.ph, label %._crit_edge1311.split

.preheader1158.lr.ph:                             ; preds = %bb.bj
  %factor.op.mul1310 = mul i32 %i.abo, %i.qk
  %factor.op.mul1309 = mul i32 %i.abe, %i.qk
  %factor.op.mul1308 = mul i32 %i.ps, %i.qj       ; 2 uses
  %i.abq = select i1 %i.pd, i32 %i.abp, i32 0
  %10 = icmp slt i32 %i.ql, 1
  %11 = icmp slt i32 %i.qj, 1
  %i.abr = sub i32 %i.abe, %factor.op.mul1308
  %i.abs = sub i32 %i.abo, %factor.op.mul1308
  %i.abt = sub i32 %i.abi, %factor.op.mul1309
  %i.abu = sub i32 %i.abq, %factor.op.mul1310
  %12 = icmp slt i32 %i.qk, 1
  %or.cond1551.not1562 = or i1 %10, %12
  %brmerge1553 = or i1 %or.cond1551.not1562, %11
  br i1 %brmerge1553, label %._crit_edge1311.split, label %.preheader1155.us.us.preheader

.preheader1155.us.us.preheader:                   ; preds = %.preheader1158.lr.ph
  %i.abv = sext i32 %i.ps to i64                  ; 6 uses
  %i.abw = add nsw i32 %i.qj, -1
  %i.abx = zext i32 %i.abw to i64
  %i.aby = shl nuw nsw i64 %i.abx, 3              ; 2 uses
  %scevgep1515 = getelementptr i8, ptr %scevgep1514, i64 %i.aby
  %i.abz = shl nsw i64 %i.zu, 3                   ; 2 uses
  %scevgep1517 = getelementptr i8, ptr %i.zo, i64 %i.abz
  %scevgep1519 = getelementptr i8, ptr %i.zo, i64 8
  %i.aca = getelementptr i8, ptr %scevgep1519, i64 %i.abz
  %scevgep1520 = getelementptr i8, ptr %i.aca, i64 %i.aby
  %i.acb = zext nneg i32 %i.qj to i64             ; 2 uses
  %min.iters.check1523 = icmp ugt i32 %i.qj, 1
  %ident.check1510.not = icmp eq i32 %i.ps, 1
  %or.cond1607 = select i1 %min.iters.check1523, i1 %ident.check1510.not, i1 false
  %n.vec1526 = and i64 %i.acb, 2147483646         ; 5 uses
  %i.acc = trunc nuw nsw i64 %n.vec1526 to i32
  %cmp.n1533 = icmp eq i64 %n.vec1526, %i.acb
  br label %.preheader1155.us.us

.preheader1155.us.us:                             ; preds = %.preheader1155.us.us.preheader, %._crit_edge1295.split.us.us.us
  %.61305.us.us = phi i32 [ %i.adj, %._crit_edge1295.split.us.us.us ], [ %i.aaq, %.preheader1155.us.us.preheader ]
  %.69691304.us.us = phi i32 [ %i.adk, %._crit_edge1295.split.us.us.us ], [ %i.aaz, %.preheader1155.us.us.preheader ]
  %.710091303.us.us = phi i32 [ %i.adl, %._crit_edge1295.split.us.us.us ], [ 0, %.preheader1155.us.us.preheader ]
  br label %.preheader1152.us.us.us

.preheader1152.us.us.us:                          ; preds = %._crit_edge1289.us.us.us, %.preheader1155.us.us
  %.71294.us.us.us = phi i32 [ %.61305.us.us, %.preheader1155.us.us ], [ %i.adg, %._crit_edge1289.us.us.us ]
  %.79701293.us.us.us = phi i32 [ %.69691304.us.us, %.preheader1155.us.us ], [ %i.adh, %._crit_edge1289.us.us.us ]
  %.710011292.us.us.us = phi i32 [ 0, %.preheader1155.us.us ], [ %i.adi, %._crit_edge1289.us.us.us ]
  %i.acd = sext i32 %.71294.us.us.us to i64       ; 5 uses
  %i.ace = sext i32 %.79701293.us.us.us to i64    ; 5 uses
  br i1 %or.cond1607, label %vector.memcheck1511, label %scalar.ph1522.preheader

vector.memcheck1511:                              ; preds = %.preheader1152.us.us.us
  %i.acf = shl nsw i64 %i.ace, 3                  ; 2 uses
  %scevgep1512 = getelementptr i8, ptr %scevgep, i64 %i.acf
  %scevgep1516 = getelementptr i8, ptr %scevgep1515, i64 %i.acf
  %i.acg = shl nsw i64 %i.acd, 3                  ; 2 uses
  %scevgep1518 = getelementptr i8, ptr %scevgep1517, i64 %i.acg
  %scevgep1521 = getelementptr i8, ptr %scevgep1520, i64 %i.acg
  %bound0 = icmp ult ptr %scevgep1512, %scevgep1521
  %bound1 = icmp ult ptr %scevgep1518, %scevgep1516
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph1522.preheader, label %vector.ph1524

vector.ph1524:                                    ; preds = %vector.memcheck1511
  %i.ach = add nsw i64 %n.vec1526, %i.ace         ; 2 uses
  %i.aci = add nsw i64 %n.vec1526, %i.acd         ; 2 uses
  %invariant.gep1663 = getelementptr [8 x i8], ptr %i.zv, i64 %i.acd
  %invariant.gep1665 = getelementptr [8 x i8], ptr %i.my, i64 %i.ace
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1524
  %index1528 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1531, %vector.body1527 ] ; 3 uses
  %gep1664 = getelementptr [8 x i8], ptr %invariant.gep1663, i64 %index1528
  %wide.load1529 = load <2 x double>, ptr %gep1664, align 8, !tbaa !84, !alias.scope !115
  %gep1666 = getelementptr [8 x i8], ptr %invariant.gep1665, i64 %index1528 ; 2 uses
  %wide.load1530 = load <2 x double>, ptr %gep1666, align 8, !tbaa !84, !alias.scope !118, !noalias !115
  %i.acj = fdiv <2 x double> %wide.load1530, %wide.load1529
  store <2 x double> %i.acj, ptr %gep1666, align 8, !tbaa !84, !alias.scope !118, !noalias !115
  %index.next1531 = add nuw i64 %index1528, 2     ; 2 uses
  %i.ack = icmp eq i64 %index.next1531, %n.vec1526
  br i1 %i.ack, label %middle.block1532, label %vector.body1527, !llvm.loop !120

middle.block1532:                                 ; preds = %vector.body1527
  br i1 %cmp.n1533, label %._crit_edge1289.us.us.us, label %scalar.ph1522.preheader

scalar.ph1522.preheader:                          ; preds = %vector.memcheck1511, %.preheader1152.us.us.us, %middle.block1532
  %indvars.iv1422.ph = phi i64 [ %i.ace, %vector.memcheck1511 ], [ %i.ace, %.preheader1152.us.us.us ], [ %i.ach, %middle.block1532 ] ; 3 uses
  %indvars.iv1420.ph = phi i64 [ %i.acd, %vector.memcheck1511 ], [ %i.acd, %.preheader1152.us.us.us ], [ %i.aci, %middle.block1532 ] ; 3 uses
  %.79931285.us.us.us.ph = phi i32 [ 0, %vector.memcheck1511 ], [ 0, %.preheader1152.us.us.us ], [ %i.acc, %middle.block1532 ] ; 4 uses
  %i.acl = sub i32 %i.qj, %.79931285.us.us.us.ph
  %.neg1637 = add i32 %.79931285.us.us.us.ph, 1
  %xtraiter1633 = and i32 %i.acl, 1
  %lcmp.mod1634.not = icmp eq i32 %xtraiter1633, 0
  br i1 %lcmp.mod1634.not, label %scalar.ph1522.prol.loopexit, label %scalar.ph1522.prol

scalar.ph1522.prol:                               ; preds = %scalar.ph1522.preheader
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %indvars.iv1420.ph
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !84
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1422.ph ; 2 uses
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !84
  %i.acq = fdiv double %i.acp, %i.acn
  store double %i.acq, ptr %i.aco, align 8, !tbaa !84
  %indvars.iv.next1421.prol = add nsw i64 %indvars.iv1420.ph, %i.abv ; 2 uses
  %indvars.iv.next1423.prol = add nsw i64 %indvars.iv1422.ph, %i.abv ; 2 uses
  %i.acr = add nuw nsw i32 %.79931285.us.us.us.ph, 1
  br label %scalar.ph1522.prol.loopexit

scalar.ph1522.prol.loopexit:                      ; preds = %scalar.ph1522.prol, %scalar.ph1522.preheader
  %indvars.iv.next1421.lcssa1618.unr = phi i64 [ poison, %scalar.ph1522.preheader ], [ %indvars.iv.next1421.prol, %scalar.ph1522.prol ]
  %indvars.iv.next1423.lcssa1617.unr = phi i64 [ poison, %scalar.ph1522.preheader ], [ %indvars.iv.next1423.prol, %scalar.ph1522.prol ]
  %indvars.iv1422.unr = phi i64 [ %indvars.iv1422.ph, %scalar.ph1522.preheader ], [ %indvars.iv.next1423.prol, %scalar.ph1522.prol ]
  %indvars.iv1420.unr = phi i64 [ %indvars.iv1420.ph, %scalar.ph1522.preheader ], [ %indvars.iv.next1421.prol, %scalar.ph1522.prol ]
  %.79931285.us.us.us.unr = phi i32 [ %.79931285.us.us.us.ph, %scalar.ph1522.preheader ], [ %i.acr, %scalar.ph1522.prol ]
  %i.acs = icmp eq i32 %i.qj, %.neg1637
  br i1 %i.acs, label %._crit_edge1289.us.us.us, label %scalar.ph1522

scalar.ph1522:                                    ; preds = %scalar.ph1522.prol.loopexit, %scalar.ph1522
  %indvars.iv1422 = phi i64 [ %indvars.iv.next1423.1, %scalar.ph1522 ], [ %indvars.iv1422.unr, %scalar.ph1522.prol.loopexit ] ; 2 uses
  %indvars.iv1420 = phi i64 [ %indvars.iv.next1421.1, %scalar.ph1522 ], [ %indvars.iv1420.unr, %scalar.ph1522.prol.loopexit ] ; 2 uses
  %.79931285.us.us.us = phi i32 [ %i.add, %scalar.ph1522 ], [ %.79931285.us.us.us.unr, %scalar.ph1522.prol.loopexit ]
  %i.act = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %indvars.iv1420
  %i.acu = load double, ptr %i.act, align 8, !tbaa !84
  %i.acv = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv1422 ; 2 uses
  %i.acw = load double, ptr %i.acv, align 8, !tbaa !84
  %i.acx = fdiv double %i.acw, %i.acu
  store double %i.acx, ptr %i.acv, align 8, !tbaa !84
  %indvars.iv.next1421 = add nsw i64 %indvars.iv1420, %i.abv ; 2 uses
  %indvars.iv.next1423 = add nsw i64 %indvars.iv1422, %i.abv ; 2 uses
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.zv, i64 %indvars.iv.next1421
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !84
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.my, i64 %indvars.iv.next1423 ; 2 uses
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !84
  %i.adc = fdiv double %i.adb, %i.acz
  store double %i.adc, ptr %i.ada, align 8, !tbaa !84
  %indvars.iv.next1421.1 = add nsw i64 %indvars.iv.next1421, %i.abv ; 2 uses
  %indvars.iv.next1423.1 = add nsw i64 %indvars.iv.next1423, %i.abv ; 2 uses
  %i.add = add nuw nsw i32 %.79931285.us.us.us, 2 ; 2 uses
  %exitcond1427.not.1 = icmp eq i32 %i.add, %i.qj
  br i1 %exitcond1427.not.1, label %._crit_edge1289.us.us.us, label %scalar.ph1522, !llvm.loop !121

._crit_edge1289.us.us.us:                         ; preds = %scalar.ph1522.prol.loopexit, %scalar.ph1522, %middle.block1532
  %indvars.iv.next1421.lcssa = phi i64 [ %i.aci, %middle.block1532 ], [ %indvars.iv.next1421.lcssa1618.unr, %scalar.ph1522.prol.loopexit ], [ %indvars.iv.next1421.1, %scalar.ph1522 ]
  %indvars.iv.next1423.lcssa = phi i64 [ %i.ach, %middle.block1532 ], [ %indvars.iv.next1423.lcssa1617.unr, %scalar.ph1522.prol.loopexit ], [ %indvars.iv.next1423.1, %scalar.ph1522 ]
  %i.ade = trunc nsw i64 %indvars.iv.next1423.lcssa to i32
  %i.adf = trunc nsw i64 %indvars.iv.next1421.lcssa to i32
  %i.adg = add nsw i32 %i.abr, %i.adf             ; 2 uses
  %i.adh = add nsw i32 %i.abs, %i.ade             ; 2 uses
  %i.adi = add nuw nsw i32 %.710011292.us.us.us, 1 ; 2 uses
  %exitcond1428.not = icmp eq i32 %i.adi, %i.qk
  br i1 %exitcond1428.not, label %._crit_edge1295.split.us.us.us, label %.preheader1152.us.us.us, !llvm.loop !122

._crit_edge1295.split.us.us.us:                   ; preds = %._crit_edge1289.us.us.us
  %i.adj = add nsw i32 %i.abt, %i.adg
  %i.adk = add nsw i32 %i.abu, %i.adh
  %i.adl = add nuw nsw i32 %.710091303.us.us, 1   ; 2 uses
  %exitcond1429.not = icmp eq i32 %i.adl, %i.ql
  br i1 %exitcond1429.not, label %._crit_edge1311.split, label %.preheader1155.us.us, !llvm.loop !123

._crit_edge1311.split:                            ; preds = %._crit_edge1295.split.us.us.us, %.preheader1158.lr.ph, %bb.bj
  %indvars.iv.next1431 = add nuw nsw i64 %indvars.iv1430, 1 ; 2 uses
  %i.adm = load i32, ptr %i.mz, align 8, !tbaa !58
  %i.adn = sext i32 %i.adm to i64
  %i.ado = icmp slt i64 %indvars.iv.next1431, %i.adn
  br i1 %i.ado, label %bb.ad, label %._crit_edge1319.loopexit, !llvm.loop !124

._crit_edge1319.loopexit:                         ; preds = %._crit_edge1311.split
  %.pre1436 = load i32, ptr %i.lu, align 8, !tbaa !53
  br label %._crit_edge1319

._crit_edge1319:                                  ; preds = %._crit_edge1319.loopexit, %.lr.ph1322
  %i.adp = phi i32 [ %.pre1436, %._crit_edge1319.loopexit ], [ %i.lx, %.lr.ph1322 ] ; 2 uses
  %indvars.iv.next1434 = add nuw nsw i64 %indvars.iv1433, 1 ; 2 uses
  %i.adq = sext i32 %i.adp to i64
  %i.adr = icmp slt i64 %indvars.iv.next1434, %i.adq
  br i1 %i.adr, label %.lr.ph1322, label %._crit_edge1323, !llvm.loop !125

._crit_edge1323:                                  ; preds = %._crit_edge1319, %bb.ac
  br i1 %i.lp, label %bb.z, label %bb.bk, !llvm.loop !126

bb.bk:                                            ; preds = %._crit_edge1323
  br i1 %i.la, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ads = call i32 @hypre_StructScale(double noundef %i.lb, ptr noundef %3) #8 ; 0 uses
  %i.adt = call i32 @hypre_StructAxpy(double noundef %i.h, ptr noundef %i.p, ptr noundef %3) #8 ; 0 uses
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.adu = call i32 @hypre_StructCopy(ptr noundef %i.p, ptr noundef %3) #8 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.adv = add nsw i32 %.19781325, 1
  %i.adw = srem i32 %i.adv, %i.j                  ; 2 uses
  %i.adx = icmp eq i32 %i.adw, 0
  %i.ady = zext i1 %i.adx to i32
  %i.adz = add nsw i32 %.19761326, %i.ady         ; 3 uses
  %i.aea = icmp slt i32 %i.adz, %i.d
  br i1 %i.aea, label %bb.y, label %._crit_edge1329, !llvm.loop !127

._crit_edge1329:                                  ; preds = %bb.bn, %bb.x
  %.1976.lcssa = phi i32 [ %.0975, %bb.x ], [ %i.adz, %bb.bn ]
  store i32 %.1976.lcssa, ptr %i.aj, align 8, !tbaa !75
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aec = load i32, ptr %i.aeb, align 8, !tbaa !74
  %i.aed = call i32 @hypre_IncFLOPCount(i32 noundef %i.aec) #8 ; 0 uses
  %i.aee = load i32, ptr %i.u, align 4, !tbaa !18
  %i.aef = call i32 @hypre_EndTiming(i32 noundef %i.aee) #8 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1329, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

end_hunk_2
