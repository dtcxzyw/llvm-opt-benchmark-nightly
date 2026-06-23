begin_hunk_0_@hypre_SemiInterp:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader547.lr.ph, label %.preheader542

.preheader547.lr.ph:                              ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader547.lr.ph, %._crit_edge
  %indvars.iv669 = phi i64 [ 0, %.preheader547.lr.ph ], [ %indvars.iv.next670, %._crit_edge ] ; 5 uses
  %.0461589 = phi i64 [ 0, %.preheader547.lr.ph ], [ %indvars.iv, %._crit_edge ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv669
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %sext = shl i64 %.0461589, 32
  %i.au = ashr exact i64 %sext, 32
  br label %bb.b

.preheader542:                                    ; preds = %._crit_edge, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not = icmp eq i32 %i.i, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j

bb.b:                                             ; preds = %bb.b, %.preheader547
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.au, %.preheader547 ] ; 5 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %.not523 = icmp eq i32 %i.br, %i.at
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not523, label %bb.c, label %bb.b, !llvm.loop !42

bb.c:                                             ; preds = %bb.b
  %i.bs = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %indvars.iv669 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  store i32 %i.bu, ptr %i.d, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  store i32 %i.bw, ptr %i.ae, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.by, ptr %i.af, align 4, !tbaa !4
  %i.bz = call i32 @hypre_StructMapCoarseToFine(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !44
  %i.cc = getelementptr inbounds [24 x i8], ptr %i.cb, i64 %indvars.iv ; 5 uses
  %i.cd = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv669 ; 5 uses
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cl ; 6 uses
  %i.cn = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv669
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cs ; 6 uses
  %i.cu = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !4
  %i.cw = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.cx = sub i32 %i.cv, %i.cw
  %i.cy = load i32, ptr %i.am, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4  ; 2 uses
  %i.db = sub i32 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = sub nsw i32 %i.de, %i.da                ; 3 uses
  %i.dg = icmp sgt i32 %i.df, -1                  ; 2 uses
  br i1 %i.dg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dh = load i32, ptr %i.an, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !4
  %i.dk = sub nsw i32 %i.dh, %i.dj
  %i.dl = add nuw nsw i32 %i.df, 1
  %i.dm = mul nsw i32 %i.dk, %i.dl
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.dn = phi i32 [ %i.dm, %bb.d ], [ 0, %bb.c ]
  %i.do = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.dp = sub nsw i32 %i.do, %i.cw                ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1                  ; 2 uses
  %i.dr = add nsw i32 %i.db, %i.dn
  %i.ds = add nuw nsw i32 %i.dp, 1                ; 3 uses
  %i.dt = mul nsw i32 %i.ds, %i.dr
  %i.du = select i1 %i.dq, i32 %i.dt, i32 0
  %i.dv = add nsw i32 %i.cx, %i.du
  %i.dw = load i32, ptr %i.d, align 4, !tbaa !4
  %i.dx = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %i.dy = sub i32 %i.dw, %i.dx
  %i.dz = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = sub i32 %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4
  %i.eg = sub nsw i32 %i.ef, %i.eb                ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, -1                  ; 2 uses
  br i1 %i.eh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ei = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = sub nsw i32 %i.ei, %i.ek
  %i.em = add nuw nsw i32 %i.eg, 1
  %i.en = mul nsw i32 %i.el, %i.em
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.eo = phi i32 [ %i.en, %bb.f ], [ 0, %bb.e ]
  %i.ep = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.eq = sub i32 %i.ep, %i.dx                    ; 2 uses
  %i.er = icmp sgt i32 %i.eq, -1                  ; 2 uses
  %i.es = add nsw i32 %i.ec, %i.eo
  %i.et = add i32 %i.eq, 1                        ; 2 uses
  %i.eu = mul nsw i32 %i.et, %i.es
  %i.ev = select i1 %i.er, i32 %i.eu, i32 0
  %i.ew = add nsw i32 %i.dy, %i.ev
  %i.ex = load i32, ptr %i.n, align 8, !tbaa !4   ; 3 uses
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ey = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.ez = mul nsw i32 %i.ey, %i.ds
  %i.fa = load i32, ptr %i.ap, align 8, !tbaa !4
  %i.fb = mul nsw i32 %i.fa, %i.ds
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.fc = phi i32 [ %i.ez, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.fd = phi i32 [ %i.fb, %bb.h ], [ 0, %bb.g ]
  %i.fe = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.ff = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.fg = load i32, ptr %i.ar, align 4, !tbaa !4  ; 3 uses
  %.0470 = call i32 @llvm.smax.i32(i32 %i.ff, i32 %i.fe)
  %.1471 = call i32 @llvm.smax.i32(i32 %i.fg, i32 %.0470)
  %i.fh = icmp sgt i32 %.1471, 0
  br i1 %i.fh, label %.preheader545.lr.ph, label %._crit_edge

.preheader545.lr.ph:                              ; preds = %bb.i
  %i.fi = select i1 %i.er, i32 %i.et, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.ff, %i.fi
  %factor.op.mul575 = mul i32 %i.ff, %i.fc
  %i.fj = add nuw nsw i32 %i.eg, 1
  %i.fk = mul nsw i32 %i.fi, %i.fj
  %i.fl = select i1 %i.eh, i32 %i.fk, i32 0
  %i.fm = add nuw nsw i32 %i.df, 1
  %i.fn = mul nsw i32 %i.fd, %i.fm
  %i.fo = select i1 %i.dg, i32 %i.fn, i32 0
  %i.fp = mul i32 %i.fe, %i.ex
  %4 = icmp slt i32 %i.fg, 1
  %5 = icmp slt i32 %i.fe, 1
  %i.fq = sub i32 %i.fc, %i.fp
  %i.fr = sub i32 %i.fi, %i.fe
  %i.fs = sub i32 %i.fo, %factor.op.mul575
  %i.ft = sub i32 %i.fl, %factor.op.mul
  %6 = icmp slt i32 %i.ff, 1
  %or.cond.not715 = or i1 %4, %6
  %brmerge = or i1 %or.cond.not715, %5
  br i1 %brmerge, label %._crit_edge, label %.preheader544.us.us.us.us.us.preheader

.preheader544.us.us.us.us.us.preheader:           ; preds = %.preheader545.lr.ph
  %i.fu = sext i32 %i.ex to i64                   ; 5 uses
  %i.fv = zext nneg i32 %i.fe to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.fe, 7
  %ident.check.not = icmp eq i32 %i.ex, 1
  %or.cond.a = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.fv, 2147483644              ; 5 uses
  %i.fw = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.fv
  br label %.preheader544.us.us.us.us.us

.preheader544.us.us.us.us.us:                     ; preds = %.preheader544.us.us.us.us.us.preheader, %._crit_edge556.split.us.us.us.us.us.us
  %.0451565.us.us.us.us.us = phi i32 [ %i.ho, %._crit_edge556.split.us.us.us.us.us.us ], [ %i.ew, %.preheader544.us.us.us.us.us.preheader ]
  %.0454564.us.us.us.us.us = phi i32 [ %i.hn, %._crit_edge556.split.us.us.us.us.us.us ], [ %i.dv, %.preheader544.us.us.us.us.us.preheader ]
  %.1488563.us.us.us.us.us = phi i32 [ %i.hp, %._crit_edge556.split.us.us.us.us.us.us ], [ 0, %.preheader544.us.us.us.us.us.preheader ]
  br label %.preheader543.us.us.us.us.us.us

.preheader543.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader544.us.us.us.us.us
  %.1452555.us.us.us.us.us.us = phi i32 [ %.0451565.us.us.us.us.us, %.preheader544.us.us.us.us.us ], [ %i.hl, %._crit_edge.us.us.us.us.us.us ]
  %.1455554.us.us.us.us.us.us = phi i32 [ %.0454564.us.us.us.us.us, %.preheader544.us.us.us.us.us ], [ %i.hk, %._crit_edge.us.us.us.us.us.us ]
  %.1484553.us.us.us.us.us.us = phi i32 [ 0, %.preheader544.us.us.us.us.us ], [ %i.hm, %._crit_edge.us.us.us.us.us.us ]
  %i.fx = sext i32 %.1452555.us.us.us.us.us.us to i64 ; 5 uses
  %i.fy = sext i32 %.1455554.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %or.cond.a, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader543.us.us.us.us.us.us
  %i.fz = add nsw i64 %i.cl, %i.fy
  %i.ga = shl nsw i64 %i.fz, 3
  %i.gb = add i64 %i.ga, %i.ch
  %i.gc = add nsw i64 %i.cs, %i.fx
  %i.gd = shl nsw i64 %i.gc, 3
  %i.ge = add i64 %i.gd, %i.co
  %i.gf = sub i64 %i.gb, %i.ge
  %diff.check = icmp ult i64 %i.gf, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gg = add nsw i64 %n.vec, %i.fy               ; 2 uses
  %i.gh = add nsw i64 %n.vec, %i.fx               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ct, i64 %i.fx
  %invariant.gep771 = getelementptr [8 x i8], ptr %i.cm, i64 %i.fy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !47
  %wide.load722 = load <2 x double>, ptr %i.gi, align 8, !tbaa !47
  %gep772 = getelementptr [8 x i8], ptr %invariant.gep771, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %gep772, i64 16
  store <2 x double> %wide.load, ptr %gep772, align 8, !tbaa !47
  store <2 x double> %wide.load722, ptr %i.gj, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader543.us.us.us.us.us.us, %middle.block
  %indvars.iv662.ph = phi i64 [ %i.fy, %vector.memcheck ], [ %i.fy, %.preheader543.us.us.us.us.us.us ], [ %i.gg, %middle.block ] ; 2 uses
  %indvars.iv660.ph = phi i64 [ %i.fx, %vector.memcheck ], [ %i.fx, %.preheader543.us.us.us.us.us.us ], [ %i.gh, %middle.block ] ; 2 uses
  %.1477549.us.us.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader543.us.us.us.us.us.us ], [ %i.fw, %middle.block ] ; 4 uses
  %i.gl = sub i32 %i.fe, %.1477549.us.us.us.us.us.us.ph
  %xtraiter = and i32 %i.gl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv662.prol = phi i64 [ %indvars.iv.next663.prol, %scalar.ph.prol ], [ %indvars.iv662.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv660.prol = phi i64 [ %indvars.iv.next661.prol, %scalar.ph.prol ], [ %indvars.iv660.ph, %scalar.ph.preheader ] ; 2 uses
  %.1477549.us.us.us.us.us.us.prol = phi i32 [ %i.gp, %scalar.ph.prol ], [ %.1477549.us.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %indvars.iv660.prol
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !47
  %i.go = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv662.prol
  store double %i.gn, ptr %i.go, align 8, !tbaa !47
  %indvars.iv.next663.prol = add nsw i64 %indvars.iv662.prol, %i.fu ; 3 uses
  %indvars.iv.next661.prol = add nsw i64 %indvars.iv660.prol, 1 ; 3 uses
  %i.gp = add nuw nsw i32 %.1477549.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !52

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next663.lcssa761.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next663.prol, %scalar.ph.prol ]
  %indvars.iv.next661.lcssa760.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next661.prol, %scalar.ph.prol ]
  %indvars.iv662.unr = phi i64 [ %indvars.iv662.ph, %scalar.ph.preheader ], [ %indvars.iv.next663.prol, %scalar.ph.prol ]
  %indvars.iv660.unr = phi i64 [ %indvars.iv660.ph, %scalar.ph.preheader ], [ %indvars.iv.next661.prol, %scalar.ph.prol ]
  %.1477549.us.us.us.us.us.us.unr = phi i32 [ %.1477549.us.us.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.gp, %scalar.ph.prol ]
  %i.gq = sub i32 %.1477549.us.us.us.us.us.us.ph, %i.fe
  %i.gr = icmp ugt i32 %i.gq, -4
  br i1 %i.gr, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv662 = phi i64 [ %indvars.iv.next663.3, %scalar.ph ], [ %indvars.iv662.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv660 = phi i64 [ %indvars.iv.next661.3, %scalar.ph ], [ %indvars.iv660.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1477549.us.us.us.us.us.us = phi i32 [ %i.hh, %scalar.ph ], [ %.1477549.us.us.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %indvars.iv660
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !47
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv662
  store double %i.gt, ptr %i.gu, align 8, !tbaa !47
  %indvars.iv.next663 = add nsw i64 %indvars.iv662, %i.fu ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv660
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !47
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next663
  store double %i.gx, ptr %i.gy, align 8, !tbaa !47
  %indvars.iv.next663.1 = add nsw i64 %indvars.iv.next663, %i.fu ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv660
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !47
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next663.1
  store double %i.hb, ptr %i.hc, align 8, !tbaa !47
  %indvars.iv.next663.2 = add nsw i64 %indvars.iv.next663.1, %i.fu ; 2 uses
  %i.hd = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv660
  %i.he = getelementptr i8, ptr %i.hd, i64 24
  %i.hf = load double, ptr %i.he, align 8, !tbaa !47
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %indvars.iv.next663.2
  store double %i.hf, ptr %i.hg, align 8, !tbaa !47
  %indvars.iv.next663.3 = add nsw i64 %indvars.iv.next663.2, %i.fu ; 2 uses
  %indvars.iv.next661.3 = add nsw i64 %indvars.iv660, 4 ; 2 uses
  %i.hh = add nuw nsw i32 %.1477549.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hh, %i.fe
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !54

._crit_edge.us.us.us.us.us.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next663.lcssa = phi i64 [ %i.gg, %middle.block ], [ %indvars.iv.next663.lcssa761.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next663.3, %scalar.ph ]
  %indvars.iv.next661.lcssa = phi i64 [ %i.gh, %middle.block ], [ %indvars.iv.next661.lcssa760.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next661.3, %scalar.ph ]
  %i.hi = trunc nsw i64 %indvars.iv.next663.lcssa to i32
  %i.hj = trunc nsw i64 %indvars.iv.next661.lcssa to i32
  %i.hk = add nsw i32 %i.fq, %i.hi                ; 2 uses
  %i.hl = add nsw i32 %i.fr, %i.hj                ; 2 uses
  %i.hm = add nuw nsw i32 %.1484553.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond667.not = icmp eq i32 %i.hm, %i.ff
  br i1 %exitcond667.not, label %._crit_edge556.split.us.us.us.us.us.us, label %.preheader543.us.us.us.us.us.us, !llvm.loop !55

._crit_edge556.split.us.us.us.us.us.us:           ; preds = %._crit_edge.us.us.us.us.us.us
  %i.hn = add nsw i32 %i.fs, %i.hk
  %i.ho = add nsw i32 %i.ft, %i.hl
  %i.hp = add nuw nsw i32 %.1488563.us.us.us.us.us, 1 ; 2 uses
  %exitcond668.not = icmp eq i32 %i.hp, %i.fg
  br i1 %exitcond668.not, label %._crit_edge, label %.preheader544.us.us.us.us.us, !llvm.loop !56

._crit_edge:                                      ; preds = %._crit_edge556.split.us.us.us.us.us.us, %.preheader545.lr.ph, %bb.i
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %i.hq = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next670, %i.hr
  br i1 %i.hs, label %.preheader547, label %.preheader542, !llvm.loop !57

bb.j:                                             ; preds = %.preheader542, %._crit_edge641
  %i.ht = phi i1 [ true, %.preheader542 ], [ false, %._crit_edge641 ]
  %.0460642 = phi i1 [ false, %.preheader542 ], [ true, %._crit_edge641 ]
  br i1 %.0460642, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hu = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.hv = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.k, ptr noundef %i.hu, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.hx = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.hw) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1444.in = phi ptr [ %i.ax, %bb.l ], [ %i.aw, %bb.k ]
  %.1444 = load ptr, ptr %.1444.in, align 8, !tbaa !25 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1444, i64 8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !60 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph640, label %._crit_edge641

.lr.ph640:                                        ; preds = %bb.m, %._crit_edge637
  %i.ib = phi i32 [ %i.sc, %._crit_edge637 ], [ %i.hz, %bb.m ]
  %indvars.iv685 = phi i64 [ %indvars.iv.next686, %._crit_edge637 ], [ 0, %bb.m ] ; 6 uses
  %i.ic = load ptr, ptr %.1444, align 8, !tbaa !63
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv685
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !64 ; 2 uses
  %i.if = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !44
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %indvars.iv685 ; 9 uses
  %i.ii = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %indvars.iv685 ; 6 uses
  %i.il = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 4 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %i.in = load ptr, ptr %i.bb, align 8, !tbaa !67
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv685
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !68 ; 4 uses
  %.pre = load i32, ptr %i.q, align 4, !tbaa !4   ; 2 uses
  %.pre688 = load i32, ptr %i.bc, align 4, !tbaa !4 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph640
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@hypre_SemiInterp:bb.a
  %i.jn = add nsw i32 %i.jm, %.pre
  %i.jo = sext i32 %i.jn to i64
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.jp
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph640
  %i.jr = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ju
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0459 = phi ptr [ %i.jq, %bb.p ], [ %i.jv, %bb.q ] ; 5 uses
  %.pn.in = phi i32 [ %i.ir, %bb.p ], [ %i.jr, %bb.q ]
  %.0459728 = ptrtoaddr ptr %.0459 to i64
  %.pn = sext i32 %.pn.in to i64                  ; 2 uses
  %.0458 = getelementptr inbounds [8 x i8], ptr %i.il, i64 %.pn ; 4 uses
  %i.jw = load ptr, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %i.jx = ptrtoaddr ptr %i.jw to i64              ; 2 uses
  %i.jy = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv685
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.kb ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ik, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.ki = sub nsw i32 %i.kf, %i.kh                ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, -1                  ; 2 uses
  br i1 %i.kj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kk = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.kl = add nuw nsw i32 %i.ki, 1
  %i.km = mul nsw i32 %i.kk, %i.kl
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.kn = phi i32 [ %i.km, %bb.s ], [ 0, %bb.r ]
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.kp = load i32, ptr %i.ik, align 4, !tbaa !4
  %i.kq = sub nsw i32 %i.ko, %i.kp                ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, -1                  ; 2 uses
  %i.ks = add nsw i32 %i.kn, %.pre688
  %i.kt = add nuw nsw i32 %i.kq, 1                ; 2 uses
  %i.ku = mul nsw i32 %i.kt, %i.ks
  %i.kv = select i1 %i.kr, i32 %i.ku, i32 0
  %i.kw = add i32 %i.kv, %.pre
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.kx ; 4 uses
  %i.kz = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.la = load i32, ptr %i.bg, align 4, !tbaa !4
  br i1 %i.kj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lb = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.lc = add nuw nsw i32 %i.ki, 1
  %i.ld = mul nsw i32 %i.lb, %i.lc
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.le = phi i32 [ %i.ld, %bb.u ], [ 0, %bb.t ]
  %i.lf = add nsw i32 %i.le, %i.la
  %i.lg = mul nsw i32 %i.lf, %i.kt
  %i.lh = select i1 %i.kr, i32 %i.lg, i32 0
  %i.li = add i32 %i.lh, %i.kz
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.lj ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !40
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph, label %._crit_edge637

.lr.ph:                                           ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.lt = shl nsw i64 %i.kb, 3                    ; 2 uses
  %i.lu = add i64 %i.lt, %i.jx
  %i.lv = add i64 %i.lt, %i.jx
  %i.lw = shl nsw i64 %.pn, 3
  %i.lx = add i64 %i.lw, %i.im
  %i.ly = mul nsw i64 %i.kx, -8
  %i.lz = mul nsw i64 %i.lj, -8
  %diff.check731 = icmp ult i64 %i.ly, 32
  %diff.check733 = icmp ult i64 %i.lz, 32
  %invariant.op = or i1 %diff.check731, %diff.check733
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %._crit_edge621
  %indvars.iv682 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next683, %._crit_edge621 ] ; 2 uses
  %i.ma = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.ma, i64 %indvars.iv682 ; 4 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !4
  store i32 %i.mc, ptr %i.c, align 4, !tbaa !4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !4
  store i32 %i.me, ptr %i.bi, align 4, !tbaa !4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !4
  store i32 %i.mg, ptr %i.bj, align 4, !tbaa !4
  %i.mh = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.d) #4 ; 0 uses
  %i.mi = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.mj = load i32, ptr %i.d, align 4, !tbaa !4
  %i.mk = load i32, ptr %i.ih, align 4, !tbaa !4  ; 2 uses
  %i.ml = sub i32 %i.mj, %i.mk
  %i.mm = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.mn = load i32, ptr %i.lo, align 4, !tbaa !4  ; 2 uses
  %i.mo = sub i32 %i.mm, %i.mn
  %i.mp = load i32, ptr %i.lq, align 4, !tbaa !4
  %i.mq = sub nsw i32 %i.mp, %i.mn                ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, -1                  ; 2 uses
  br i1 %i.mr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ms = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.mt = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.mu = sub nsw i32 %i.ms, %i.mt
  %i.mv = add nuw nsw i32 %i.mq, 1
  %i.mw = mul nsw i32 %i.mu, %i.mv
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.mx = phi i32 [ %i.mw, %bb.x ], [ 0, %bb.w ]
  %i.my = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.mz = sub i32 %i.my, %i.mk                    ; 2 uses
  %i.na = icmp sgt i32 %i.mz, -1                  ; 2 uses
  %i.nb = add nsw i32 %i.mo, %i.mx
  %i.nc = add i32 %i.mz, 1                        ; 2 uses
  %i.nd = mul nsw i32 %i.nc, %i.nb
  %i.ne = select i1 %i.na, i32 %i.nd, i32 0
  %i.nf = add nsw i32 %i.ml, %i.ne
  %i.ng = load i32, ptr %i.c, align 4, !tbaa !4
  %i.nh = load i32, ptr %i.ik, align 4, !tbaa !4  ; 2 uses
  %i.ni = sub i32 %i.ng, %i.nh
  %i.nj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.nk = load i32, ptr %i.kg, align 4, !tbaa !4  ; 2 uses
  %i.nl = sub i32 %i.nj, %i.nk
  %i.nm = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.nn = sub nsw i32 %i.nm, %i.nk                ; 3 uses
  %i.no = icmp sgt i32 %i.nn, -1                  ; 2 uses
  br i1 %i.no, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.np = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.nq = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.nr = sub nsw i32 %i.np, %i.nq
  %i.ns = add nuw nsw i32 %i.nn, 1
  %i.nt = mul nsw i32 %i.nr, %i.ns
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.nu = phi i32 [ %i.nt, %bb.z ], [ 0, %bb.y ]
  %i.nv = load i32, ptr %i.kd, align 4, !tbaa !4
  %i.nw = sub nsw i32 %i.nv, %i.nh                ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, -1                  ; 2 uses
  %i.ny = add nsw i32 %i.nl, %i.nu
  %i.nz = add nuw nsw i32 %i.nw, 1                ; 3 uses
  %i.oa = mul nsw i32 %i.nz, %i.ny
  %i.ob = select i1 %i.nx, i32 %i.oa, i32 0
  %i.oc = add nsw i32 %i.ni, %i.ob
  %i.od = select i1 %i.na, i32 %i.nc, i32 0       ; 3 uses
  %i.oe = add nuw nsw i32 %i.mq, 1
  %i.of = mul nsw i32 %i.od, %i.oe
  %i.og = select i1 %i.mr, i32 %i.of, i32 0
  %i.oh = load i32, ptr %i.n, align 8, !tbaa !4   ; 3 uses
  br i1 %i.nx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.oi = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.oj = mul nsw i32 %i.oi, %i.nz
  %i.ok = load i32, ptr %i.bn, align 8, !tbaa !4
  %i.ol = mul nsw i32 %i.ok, %i.nz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.om = phi i32 [ %i.oj, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.on = phi i32 [ %i.ol, %bb.ab ], [ 0, %bb.aa ]
  %i.oo = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.op = load i32, ptr %i.bo, align 4, !tbaa !4  ; 5 uses
  %i.oq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %.0439 = call i32 @llvm.smax.i32(i32 %i.op, i32 %i.oo)
  %.1440 = call i32 @llvm.smax.i32(i32 %i.oq, i32 %.0439)
  %i.or = icmp sgt i32 %.1440, 0
  br i1 %i.or, label %.preheader541.lr.ph, label %._crit_edge621

.preheader541.lr.ph:                              ; preds = %bb.ac
  %factor.op.mul620 = mul i32 %i.op, %i.om
  %factor.op.mul619 = mul i32 %i.op, %i.od
  %i.os = add nuw nsw i32 %i.nn, 1
  %i.ot = mul nsw i32 %i.on, %i.os
  %i.ou = select i1 %i.no, i32 %i.ot, i32 0
  %i.ov = mul i32 %i.oo, %i.oh
  %7 = icmp slt i32 %i.oq, 1
  %8 = icmp slt i32 %i.oo, 1
  %i.ow = sub i32 %i.od, %i.oo
  %i.ox = sub i32 %i.om, %i.ov
  %i.oy = sub i32 %i.og, %factor.op.mul619
  %i.oz = sub i32 %i.ou, %factor.op.mul620
  %9 = icmp slt i32 %i.op, 1
  %or.cond710.not718 = or i1 %7, %9
  %brmerge712 = or i1 %or.cond710.not718, %8
  br i1 %brmerge712, label %._crit_edge621, label %.preheader540.us.us.us.us.us.preheader

.preheader540.us.us.us.us.us.preheader:           ; preds = %.preheader541.lr.ph
  %i.pa = sext i32 %i.oh to i64                   ; 3 uses
  %i.pb = zext nneg i32 %i.oo to i64              ; 2 uses
  %min.iters.check736 = icmp ugt i32 %i.oo, 5
  %ident.check726.not = icmp eq i32 %i.oh, 1
  %or.cond756 = select i1 %min.iters.check736, i1 %ident.check726.not, i1 false
  %n.vec739 = and i64 %i.pb, 2147483644           ; 5 uses
  %i.pc = trunc nuw nsw i64 %n.vec739 to i32
  %cmp.n752 = icmp eq i64 %n.vec739, %i.pb
  br label %.preheader540.us.us.us.us.us

.preheader540.us.us.us.us.us:                     ; preds = %.preheader540.us.us.us.us.us.preheader, %._crit_edge599.split.us.us.us.us.us.us
  %.0448609.us.us.us.us.us = phi i32 [ %i.rw, %._crit_edge599.split.us.us.us.us.us.us ], [ %i.nf, %.preheader540.us.us.us.us.us.preheader ]
  %.3457608.us.us.us.us.us = phi i32 [ %i.rx, %._crit_edge599.split.us.us.us.us.us.us ], [ %i.oc, %.preheader540.us.us.us.us.us.preheader ]
  %.3490607.us.us.us.us.us = phi i32 [ %i.ry, %._crit_edge599.split.us.us.us.us.us.us ], [ 0, %.preheader540.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge593.us.us.us.us.us.us, %.preheader540.us.us.us.us.us
  %.1449598.us.us.us.us.us.us = phi i32 [ %.0448609.us.us.us.us.us, %.preheader540.us.us.us.us.us ], [ %i.rt, %._crit_edge593.us.us.us.us.us.us ]
  %.4597.us.us.us.us.us.us = phi i32 [ %.3457608.us.us.us.us.us, %.preheader540.us.us.us.us.us ], [ %i.ru, %._crit_edge593.us.us.us.us.us.us ]
  %.3486596.us.us.us.us.us.us = phi i32 [ 0, %.preheader540.us.us.us.us.us ], [ %i.rv, %._crit_edge593.us.us.us.us.us.us ]
  %i.pd = sext i32 %.1449598.us.us.us.us.us.us to i64 ; 5 uses
  %i.pe = sext i32 %.4597.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %or.cond756, label %vector.memcheck727, label %scalar.ph735.preheader

vector.memcheck727:                               ; preds = %.preheader.us.us.us.us.us.us
  %i.pf = shl nsw i64 %i.pe, 3                    ; 2 uses
  %i.pg = shl nsw i64 %i.pd, 3                    ; 2 uses
  %i.ph = add i64 %i.lu, %i.pf
  %i.pi = add i64 %i.pg, %.0459728
  %i.pj = sub i64 %i.ph, %i.pi
  %diff.check729 = icmp ult i64 %i.pj, 32
  %i.pk = add i64 %i.lv, %i.pf
  %i.pl = add i64 %i.lx, %i.pg
  %i.pm = sub i64 %i.pk, %i.pl
  %diff.check730 = icmp ult i64 %i.pm, 32
  %conflict.rdx = or i1 %diff.check729, %diff.check730
  %conflict.rdx734.reass = or i1 %conflict.rdx, %invariant.op
  br i1 %conflict.rdx734.reass, label %scalar.ph735.preheader, label %vector.ph737

vector.ph737:                                     ; preds = %vector.memcheck727
  %i.pn = add nsw i64 %n.vec739, %i.pe            ; 2 uses
  %i.po = add nsw i64 %n.vec739, %i.pd            ; 2 uses
  br label %vector.body740

vector.body740:                                   ; preds = %vector.body740, %vector.ph737
  %index741 = phi i64 [ 0, %vector.ph737 ], [ %index.next750, %vector.body740 ] ; 3 uses
  %i.pp = add i64 %index741, %i.pe                ; 3 uses
  %i.pq = add i64 %index741, %i.pd                ; 2 uses
  %i.pr = getelementptr inbounds [8 x i8], ptr %.0458, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load742 = load <2 x double>, ptr %i.pr, align 8, !tbaa !47
  %wide.load743 = load <2 x double>, ptr %i.ps, align 8, !tbaa !47
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.pp ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load744 = load <2 x double>, ptr %i.pt, align 8, !tbaa !47
  %wide.load745 = load <2 x double>, ptr %i.pu, align 8, !tbaa !47
  %i.pv = getelementptr inbounds [8 x i8], ptr %.0459, i64 %i.pq ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %wide.load746 = load <2 x double>, ptr %i.pv, align 8, !tbaa !47
  %wide.load747 = load <2 x double>, ptr %i.pw, align 8, !tbaa !47
  %i.px = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.pp ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %wide.load748 = load <2 x double>, ptr %i.px, align 8, !tbaa !47
  %wide.load749 = load <2 x double>, ptr %i.py, align 8, !tbaa !47
  %i.pz = fmul <2 x double> %wide.load746, %wide.load748
  %i.qa = fmul <2 x double> %wide.load747, %wide.load749
  %i.qb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load742, <2 x double> %wide.load744, <2 x double> %i.pz)
  %i.qc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load743, <2 x double> %wide.load745, <2 x double> %i.qa)
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.pp ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  store <2 x double> %i.qb, ptr %i.qd, align 8, !tbaa !47
  store <2 x double> %i.qc, ptr %i.qe, align 8, !tbaa !47
  %index.next750 = add nuw i64 %index741, 4       ; 2 uses
  %i.qf = icmp eq i64 %index.next750, %n.vec739
  br i1 %i.qf, label %middle.block751, label %vector.body740, !llvm.loop !69

middle.block751:                                  ; preds = %vector.body740
  br i1 %cmp.n752, label %._crit_edge593.us.us.us.us.us.us, label %scalar.ph735.preheader

scalar.ph735.preheader:                           ; preds = %vector.memcheck727, %.preheader.us.us.us.us.us.us, %middle.block751
  %indvars.iv674.ph = phi i64 [ %i.pe, %vector.memcheck727 ], [ %i.pe, %.preheader.us.us.us.us.us.us ], [ %i.pn, %middle.block751 ] ; 5 uses
  %indvars.iv672.ph = phi i64 [ %i.pd, %vector.memcheck727 ], [ %i.pd, %.preheader.us.us.us.us.us.us ], [ %i.po, %middle.block751 ] ; 4 uses
  %.3479590.us.us.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck727 ], [ 0, %.preheader.us.us.us.us.us.us ], [ %i.pc, %middle.block751 ] ; 4 uses
  %i.qg = sub i32 %i.oo, %.3479590.us.us.us.us.us.us.ph
  %.neg = add i32 %.3479590.us.us.us.us.us.us.ph, 1
  %xtraiter764 = and i32 %i.qg, 1
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %scalar.ph735.prol.loopexit, label %scalar.ph735.prol

scalar.ph735.prol:                                ; preds = %scalar.ph735.preheader
  %i.qh = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv672.ph
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !47
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv674.ph
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !47
  %i.ql = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv672.ph
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !47
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv674.ph
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !47
  %i.qp = fmul double %i.qm, %i.qo
  %i.qq = call double @llvm.fmuladd.f64(double %i.qi, double %i.qk, double %i.qp)
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv674.ph
  store double %i.qq, ptr %i.qr, align 8, !tbaa !47
  %indvars.iv.next673.prol = add nsw i64 %indvars.iv672.ph, 1 ; 2 uses
  %indvars.iv.next675.prol = add nsw i64 %indvars.iv674.ph, %i.pa ; 2 uses
  %i.qs = add nuw nsw i32 %.3479590.us.us.us.us.us.us.ph, 1
  br label %scalar.ph735.prol.loopexit

scalar.ph735.prol.loopexit:                       ; preds = %scalar.ph735.prol, %scalar.ph735.preheader
  %indvars.iv.next673.lcssa758.unr = phi i64 [ poison, %scalar.ph735.preheader ], [ %indvars.iv.next673.prol, %scalar.ph735.prol ]
  %indvars.iv.next675.lcssa757.unr = phi i64 [ poison, %scalar.ph735.preheader ], [ %indvars.iv.next675.prol, %scalar.ph735.prol ]
  %indvars.iv674.unr = phi i64 [ %indvars.iv674.ph, %scalar.ph735.preheader ], [ %indvars.iv.next675.prol, %scalar.ph735.prol ]
  %indvars.iv672.unr = phi i64 [ %indvars.iv672.ph, %scalar.ph735.preheader ], [ %indvars.iv.next673.prol, %scalar.ph735.prol ]
  %.3479590.us.us.us.us.us.us.unr = phi i32 [ %.3479590.us.us.us.us.us.us.ph, %scalar.ph735.preheader ], [ %i.qs, %scalar.ph735.prol ]
  %i.qt = icmp eq i32 %i.oo, %.neg
  br i1 %i.qt, label %._crit_edge593.us.us.us.us.us.us, label %scalar.ph735

scalar.ph735:                                     ; preds = %scalar.ph735.prol.loopexit, %scalar.ph735
  %indvars.iv674 = phi i64 [ %indvars.iv.next675.1, %scalar.ph735 ], [ %indvars.iv674.unr, %scalar.ph735.prol.loopexit ] ; 4 uses
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.1, %scalar.ph735 ], [ %indvars.iv672.unr, %scalar.ph735.prol.loopexit ] ; 4 uses
  %.3479590.us.us.us.us.us.us = phi i32 [ %i.rq, %scalar.ph735 ], [ %.3479590.us.us.us.us.us.us.unr, %scalar.ph735.prol.loopexit ]
  %i.qu = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv672
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !47
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv674
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !47
  %i.qy = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv672
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !47
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv674
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !47
  %i.rc = fmul double %i.qz, %i.rb
  %i.rd = call double @llvm.fmuladd.f64(double %i.qv, double %i.qx, double %i.rc)
  %i.re = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv674
  store double %i.rd, ptr %i.re, align 8, !tbaa !47
  %indvars.iv.next673 = add nsw i64 %indvars.iv672, 1 ; 2 uses
  %indvars.iv.next675 = add nsw i64 %indvars.iv674, %i.pa ; 4 uses
  %i.rf = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv.next673
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !47
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv.next675
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !47
  %i.rj = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv.next673
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !47
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv.next675
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !47
  %i.rn = fmul double %i.rk, %i.rm
  %i.ro = call double @llvm.fmuladd.f64(double %i.rg, double %i.ri, double %i.rn)
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv.next675
  store double %i.ro, ptr %i.rp, align 8, !tbaa !47
  %indvars.iv.next673.1 = add nsw i64 %indvars.iv672, 2 ; 2 uses
  %indvars.iv.next675.1 = add nsw i64 %indvars.iv.next675, %i.pa ; 2 uses
  %i.rq = add nuw nsw i32 %.3479590.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond679.not.1 = icmp eq i32 %i.rq, %i.oo
  br i1 %exitcond679.not.1, label %._crit_edge593.us.us.us.us.us.us, label %scalar.ph735, !llvm.loop !70

._crit_edge593.us.us.us.us.us.us:                 ; preds = %scalar.ph735.prol.loopexit, %scalar.ph735, %middle.block751
  %indvars.iv.next673.lcssa = phi i64 [ %i.po, %middle.block751 ], [ %indvars.iv.next673.lcssa758.unr, %scalar.ph735.prol.loopexit ], [ %indvars.iv.next673.1, %scalar.ph735 ]
  %indvars.iv.next675.lcssa = phi i64 [ %i.pn, %middle.block751 ], [ %indvars.iv.next675.lcssa757.unr, %scalar.ph735.prol.loopexit ], [ %indvars.iv.next675.1, %scalar.ph735 ]
  %i.rr = trunc nsw i64 %indvars.iv.next675.lcssa to i32
  %i.rs = trunc nsw i64 %indvars.iv.next673.lcssa to i32
  %i.rt = add nsw i32 %i.ow, %i.rs                ; 2 uses
  %i.ru = add nsw i32 %i.ox, %i.rr                ; 2 uses
  %i.rv = add nuw nsw i32 %.3486596.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond680.not = icmp eq i32 %i.rv, %i.op
  br i1 %exitcond680.not, label %._crit_edge599.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !71

._crit_edge599.split.us.us.us.us.us.us:           ; preds = %._crit_edge593.us.us.us.us.us.us
  %i.rw = add nsw i32 %i.oy, %i.rt
  %i.rx = add nsw i32 %i.oz, %i.ru
  %i.ry = add nuw nsw i32 %.3490607.us.us.us.us.us, 1 ; 2 uses
  %exitcond681.not = icmp eq i32 %i.ry, %i.oq
  br i1 %exitcond681.not, label %._crit_edge621, label %.preheader540.us.us.us.us.us, !llvm.loop !72

._crit_edge621:                                   ; preds = %._crit_edge599.split.us.us.us.us.us.us, %.preheader541.lr.ph, %bb.ac
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 2 uses
  %i.rz = load i32, ptr %i.ll, align 8, !tbaa !40
  %i.sa = sext i32 %i.rz to i64
  %i.sb = icmp slt i64 %indvars.iv.next683, %i.sa
  br i1 %i.sb, label %bb.w, label %._crit_edge637.loopexit, !llvm.loop !73

._crit_edge637.loopexit:                          ; preds = %._crit_edge621
  %.pre689 = load i32, ptr %i.hy, align 8, !tbaa !60
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge637.loopexit, %bb.v
  %i.sc = phi i32 [ %.pre689, %._crit_edge637.loopexit ], [ %i.ib, %bb.v ] ; 2 uses
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1 ; 2 uses
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp slt i64 %indvars.iv.next686, %i.sd
  br i1 %i.se, label %.lr.ph640, label %._crit_edge641, !llvm.loop !74

._crit_edge641:                                   ; preds = %._crit_edge637, %bb.m
  br i1 %i.ht, label %bb.j, label %bb.ad, !llvm.loop !75

bb.ad:                                            ; preds = %._crit_edge641
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !76
  %i.sh = mul nsw i32 %i.sg, 3
  %i.si = call i32 @hypre_IncFLOPCount(i32 noundef %i.sh) #4 ; 0 uses
  %i.sj = load i32, ptr %i.e, align 4, !tbaa !8
  %i.sk = call i32 @hypre_EndTiming(i32 noundef %i.sj) #4 ; 0 uses
end_hunk_1
