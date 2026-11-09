Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/semi_interp?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hypre_SemiInterp:bb.a
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader540.lr.ph, label %.preheader536

.preheader540.lr.ph:                              ; preds = %bb.a
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
  br label %.preheader540

.preheader540:                                    ; preds = %.preheader540.lr.ph, %.critedge
  %indvars.iv618 = phi i64 [ 0, %.preheader540.lr.ph ], [ %indvars.iv.next619, %.critedge ] ; 5 uses
  %.0465561 = phi i64 [ 0, %.preheader540.lr.ph ], [ %indvars.iv, %.critedge ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv618
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  br label %bb.b

.preheader536:                                    ; preds = %.critedge, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not = icmp eq i32 %i.i, 0
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j

bb.b:                                             ; preds = %bb.b, %.preheader540
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.0465561, %.preheader540 ] ; 5 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %.not515 = icmp eq i32 %i.bq, %i.at
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not515, label %bb.c, label %bb.b, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv618 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  store i32 %i.bv, ptr %i.ae, align 4, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  store i32 %i.bx, ptr %i.af, align 4, !tbaa !7
  %i.by = call i32 @hypre_StructMapCoarseToFine(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %indvars.iv ; 5 uses
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !61
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %indvars.iv618 ; 5 uses
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ck ; 6 uses
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv618
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cr ; 6 uses
  %i.ct = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !7
  %i.cv = load i32, ptr %i.cb, align 4, !tbaa !7  ; 2 uses
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.am, align 4, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7  ; 2 uses
  %i.da = sub i32 %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = sub nsw i32 %i.dd, %i.cz                ; 3 uses
  %i.df = icmp sgt i32 %i.de, -1                  ; 2 uses
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = sub nsw i32 %i.dg, %i.di
  %i.dk = add nuw nsw i32 %i.de, 1
  %i.dl = mul nsw i32 %i.dj, %i.dk
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.dm = phi i32 [ %i.dl, %bb.d ], [ 0, %bb.c ]
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !7
  %i.do = sub nsw i32 %i.dn, %i.cv                ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1                  ; 2 uses
  %i.dq = add nsw i32 %i.da, %i.dm
  %i.dr = add nuw nsw i32 %i.do, 1                ; 3 uses
  %i.ds = mul nsw i32 %i.dr, %i.dq
  %i.dt = select i1 %i.dp, i32 %i.ds, i32 0
  %i.du = add nsw i32 %i.cw, %i.dt
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !7
  %i.dw = load i32, ptr %i.ce, align 4, !tbaa !7  ; 2 uses
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7  ; 2 uses
  %i.eb = sub i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = sub nsw i32 %i.ee, %i.ea                ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, -1                  ; 2 uses
  br i1 %i.eg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = sub nsw i32 %i.eh, %i.ej
  %i.el = add nuw nsw i32 %i.ef, 1
  %i.em = mul nsw i32 %i.ek, %i.el
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.en = phi i32 [ %i.em, %bb.f ], [ 0, %bb.e ]
  %i.eo = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ep = sub i32 %i.eo, %i.dw                    ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1                  ; 2 uses
  %i.er = add nsw i32 %i.eb, %i.en
  %i.es = add i32 %i.ep, 1                        ; 2 uses
  %i.et = mul nsw i32 %i.es, %i.er
  %i.eu = select i1 %i.eq, i32 %i.et, i32 0
  %i.ev = add nsw i32 %i.dx, %i.eu
  %i.ew = load i32, ptr %i.n, align 8, !tbaa !7   ; 3 uses
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ex = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.ey = mul nsw i32 %i.ex, %i.dr
  %i.ez = load i32, ptr %i.ap, align 8, !tbaa !7
  %i.fa = mul nsw i32 %i.ez, %i.dr
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.fb = phi i32 [ %i.ey, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.fc = phi i32 [ %i.fa, %bb.h ], [ 0, %bb.g ]
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.fe = load i32, ptr %i.aq, align 4, !tbaa !7  ; 4 uses
  %i.ff = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.preheader538.lr.ph, label %.critedge

.preheader538.lr.ph:                              ; preds = %bb.i
  %i.fh = select i1 %i.eq, i32 %i.es, i32 0       ; 3 uses
  %i.fi = add nuw nsw i32 %i.ef, 1
  %i.fj = mul nsw i32 %i.fh, %i.fi
  %i.fk = select i1 %i.eg, i32 %i.fj, i32 0
  %i.fl = add nuw nsw i32 %i.de, 1
  %i.fm = mul nsw i32 %i.fc, %i.fl
  %i.fn = select i1 %i.df, i32 %i.fm, i32 0
  %factor.op.mul553 = mul i32 %i.fd, %i.ew
  %i.fo = icmp sgt i32 %i.fe, 0
  %i.fp = sub i32 %i.fb, %factor.op.mul553
  %i.fq = sub i32 %i.fh, %i.fd
  %i.fr = mul i32 %i.fe, %i.fb
  %i.fs = sub i32 %i.fn, %i.fr
  %i.ft = mul i32 %i.fe, %i.fh
  %i.fu = sub i32 %i.fk, %i.ft
  %i.fv = icmp sgt i32 %i.fd, 0
  %or.cond659 = and i1 %i.fo, %i.fv
  br i1 %or.cond659, label %.preheader538.us.preheader, label %.critedge

.preheader538.us.preheader:                       ; preds = %.preheader538.lr.ph
  %i.fw = sext i32 %i.ew to i64                   ; 5 uses
  %i.fx = zext nneg i32 %i.fd to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.fd, 7
  %ident.check.not = icmp eq i32 %i.ew, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.fx, 2147483644              ; 5 uses
  %i.fy = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.fx
  br label %.preheader538.us

.preheader538.us:                                 ; preds = %.preheader538.us.preheader, %._crit_edge549.split.us.us
  %.1454558.us = phi i32 [ %i.hp, %._crit_edge549.split.us.us ], [ 0, %.preheader538.us.preheader ]
  %.0471557.us = phi i32 [ %i.hn, %._crit_edge549.split.us.us ], [ %i.du, %.preheader538.us.preheader ]
  %.0475556.us = phi i32 [ %i.ho, %._crit_edge549.split.us.us ], [ %i.ev, %.preheader538.us.preheader ]
  br label %.preheader537.us.us

.preheader537.us.us:                              ; preds = %._crit_edge.us.us, %.preheader538.us
  %.1456548.us.us = phi i32 [ 0, %.preheader538.us ], [ %i.hm, %._crit_edge.us.us ]
  %.1472547.us.us = phi i32 [ %.0471557.us, %.preheader538.us ], [ %i.hk, %._crit_edge.us.us ]
  %.1476546.us.us = phi i32 [ %.0475556.us, %.preheader538.us ], [ %i.hl, %._crit_edge.us.us ]
  %i.fz = sext i32 %.1472547.us.us to i64         ; 5 uses
  %i.ga = sext i32 %.1476546.us.us to i64         ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader537.us.us
  %4 = add nsw i64 %i.ga, %i.cr
  %i.gb = shl nsw i64 %4, 3
  %5 = add i64 %i.gb, %i.cn
  %i.gc = add nsw i64 %i.fz, %i.ck
  %i.gd = shl nsw i64 %i.gc, 3
  %i.ge = add i64 %i.gd, %i.cg
  %i.gf = sub i64 %5, %i.ge
  %diff.check = icmp ugt i64 %i.gf, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gg = add nsw i64 %n.vec, %i.ga               ; 2 uses
  %i.gh = add nsw i64 %n.vec, %i.fz               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.cs, i64 %i.ga
  %invariant.gep721 = getelementptr [8 x i8], ptr %i.cl, i64 %i.fz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !65
  %wide.load665 = load <2 x double>, ptr %i.gi, align 8, !tbaa !65
  %gep722 = getelementptr [8 x i8], ptr %invariant.gep721, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %gep722, i64 16
  store <2 x double> %wide.load, ptr %gep722, align 8, !tbaa !65
  store <2 x double> %wide.load665, ptr %i.gj, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader537.us.us, %middle.block
  %indvars.iv611.ph = phi i64 [ %i.ga, %vector.memcheck ], [ %i.ga, %.preheader537.us.us ], [ %i.gg, %middle.block ] ; 2 uses
  %indvars.iv609.ph = phi i64 [ %i.fz, %vector.memcheck ], [ %i.fz, %.preheader537.us.us ], [ %i.gh, %middle.block ] ; 2 uses
  %.1460544.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader537.us.us ], [ %i.fy, %middle.block ] ; 4 uses
  %i.gl = sub i32 %i.fd, %.1460544.us.us.ph
  %xtraiter = and i32 %i.gl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv611.prol = phi i64 [ %indvars.iv.next612.prol, %scalar.ph.prol ], [ %indvars.iv611.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv609.prol = phi i64 [ %indvars.iv.next610.prol, %scalar.ph.prol ], [ %indvars.iv609.ph, %scalar.ph.preheader ] ; 2 uses
  %.1460544.us.us.prol = phi i32 [ %i.gp, %scalar.ph.prol ], [ %.1460544.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv611.prol
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !65
  %i.go = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv609.prol
  store double %i.gn, ptr %i.go, align 8, !tbaa !65
  %indvars.iv.next610.prol = add nsw i64 %indvars.iv609.prol, %i.fw ; 3 uses
  %indvars.iv.next612.prol = add nsw i64 %indvars.iv611.prol, 1 ; 3 uses
  %i.gp = add nuw nsw i32 %.1460544.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !38

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next610.lcssa711.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next610.prol, %scalar.ph.prol ]
  %indvars.iv.next612.lcssa710.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next612.prol, %scalar.ph.prol ]
  %indvars.iv611.unr = phi i64 [ %indvars.iv611.ph, %scalar.ph.preheader ], [ %indvars.iv.next612.prol, %scalar.ph.prol ]
  %indvars.iv609.unr = phi i64 [ %indvars.iv609.ph, %scalar.ph.preheader ], [ %indvars.iv.next610.prol, %scalar.ph.prol ]
  %.1460544.us.us.unr = phi i32 [ %.1460544.us.us.ph, %scalar.ph.preheader ], [ %i.gp, %scalar.ph.prol ]
  %i.gq = sub i32 %.1460544.us.us.ph, %i.fd
  %i.gr = icmp ugt i32 %i.gq, -4
  br i1 %i.gr, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv611 = phi i64 [ %indvars.iv.next612.3, %scalar.ph ], [ %indvars.iv611.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv609 = phi i64 [ %indvars.iv.next610.3, %scalar.ph ], [ %indvars.iv609.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1460544.us.us = phi i32 [ %i.hh, %scalar.ph ], [ %.1460544.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv611
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !65
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv609
  store double %i.gt, ptr %i.gu, align 8, !tbaa !65
  %indvars.iv.next610 = add nsw i64 %indvars.iv609, %i.fw ; 2 uses
  %i.gv = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv611
  %i.gw = getelementptr i8, ptr %i.gv, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !65
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next610
  store double %i.gx, ptr %i.gy, align 8, !tbaa !65
  %indvars.iv.next610.1 = add nsw i64 %indvars.iv.next610, %i.fw ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv611
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !65
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next610.1
  store double %i.hb, ptr %i.hc, align 8, !tbaa !65
  %indvars.iv.next610.2 = add nsw i64 %indvars.iv.next610.1, %i.fw ; 2 uses
  %i.hd = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv611
  %i.he = getelementptr i8, ptr %i.hd, i64 24
  %i.hf = load double, ptr %i.he, align 8, !tbaa !65
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next610.2
  store double %i.hf, ptr %i.hg, align 8, !tbaa !65
  %indvars.iv.next610.3 = add nsw i64 %indvars.iv.next610.2, %i.fw ; 2 uses
  %indvars.iv.next612.3 = add nsw i64 %indvars.iv611, 4 ; 2 uses
  %i.hh = add nuw nsw i32 %.1460544.us.us, 4      ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hh, %i.fd
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !39

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next610.lcssa = phi i64 [ %i.gh, %middle.block ], [ %indvars.iv.next610.lcssa711.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next610.3, %scalar.ph ]
  %indvars.iv.next612.lcssa = phi i64 [ %i.gg, %middle.block ], [ %indvars.iv.next612.lcssa710.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next612.3, %scalar.ph ]
  %i.hi = trunc nsw i64 %indvars.iv.next612.lcssa to i32
  %i.hj = trunc nsw i64 %indvars.iv.next610.lcssa to i32
  %i.hk = add nsw i32 %i.fp, %i.hj                ; 2 uses
  %i.hl = add nsw i32 %i.fq, %i.hi                ; 2 uses
  %i.hm = add nuw nsw i32 %.1456548.us.us, 1      ; 2 uses
  %exitcond616.not = icmp eq i32 %i.hm, %i.fe
  br i1 %exitcond616.not, label %._crit_edge549.split.us.us, label %.preheader537.us.us, !llvm.loop !40

._crit_edge549.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.hn = add nsw i32 %i.fs, %i.hk
  %i.ho = add nsw i32 %i.fu, %i.hl
  %i.hp = add nuw nsw i32 %.1454558.us, 1         ; 2 uses
  %exitcond617.not = icmp eq i32 %i.hp, %i.ff
  br i1 %exitcond617.not, label %.critedge, label %.preheader538.us, !llvm.loop !41

.critedge:                                        ; preds = %._crit_edge549.split.us.us, %.preheader538.lr.ph, %bb.i
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %i.hq = load i32, ptr %i.ab, align 8, !tbaa !59
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next619, %i.hr
  br i1 %i.hs, label %.preheader540, label %.preheader536, !llvm.loop !42

bb.j:                                             ; preds = %.preheader536, %._crit_edge592
  %i.ht = phi i1 [ true, %.preheader536 ], [ false, %._crit_edge592 ]
  %.0468593 = phi i1 [ false, %.preheader536 ], [ true, %._crit_edge592 ]
  br i1 %.0468593, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hu = load ptr, ptr %i.au, align 8, !tbaa !62
  %i.hv = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.k, ptr noundef %i.hu, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hw = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.hx = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.hw) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1482.in = phi ptr [ %i.aw, %bb.l ], [ %i.av, %bb.k ]
  %.1482 = load ptr, ptr %.1482.in, align 8, !tbaa !27 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1482, i64 8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !73 ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.m, %._crit_edge
  %i.ib = phi i32 [ %i.rw, %._crit_edge ], [ %i.hz, %bb.m ]
  %indvars.iv634 = phi i64 [ %indvars.iv.next635, %._crit_edge ], [ 0, %bb.m ] ; 6 uses
  %i.ic = load ptr, ptr %.1482, align 8, !tbaa !74
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv634
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !75 ; 2 uses
  %i.if = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %indvars.iv634 ; 9 uses
  %i.ii = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %indvars.iv634 ; 6 uses
  %i.il = load ptr, ptr %i.az, align 8, !tbaa !77 ; 4 uses
  %i.im = ptrtoaddr ptr %i.il to i64
  %i.in = load ptr, ptr %i.ba, align 8, !tbaa !78
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv634
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !79 ; 4 uses
  %.pre = load i32, ptr %i.q, align 4, !tbaa !7   ; 2 uses
  %.pre637 = load i32, ptr %i.bb, align 4, !tbaa !7 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph591
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !7
  %i.is = load i32, ptr %i.ip, align 4, !tbaa !7
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !7
  %i.ja = sub nsw i32 %i.ix, %i.iz                ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jc = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.jd = add nuw nsw i32 %i.ja, 1
  %i.je = mul nsw i32 %i.jc, %i.jd
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.jf = phi i32 [ %i.je, %bb.o ], [ 0, %bb.n ]
  %i.jg = load i32, ptr %i.iv, align 4, !tbaa !7
  %i.jh = load i32, ptr %i.ih, align 4, !tbaa !7
  %i.ji = sub nsw i32 %i.jg, %i.jh                ; 2 uses
  %i.jj = add nsw i32 %i.jf, %.pre637
  %i.jk = add nuw nsw i32 %i.ji, 1
  %i.jl = mul nsw i32 %i.jk, %i.jj
  %.inv = icmp slt i32 %i.ji, 0
  %i.jm = select i1 %.inv, i32 0, i32 %i.jl
  %i.jn = add nsw i32 %i.jm, %.pre
  %i.jo = sext i32 %i.jn to i64
  %i.jp = sub nsw i64 0, %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.jp
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph591
  %i.jr = load i32, ptr %i.ip, align 4, !tbaa !7
  %i.js = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !7
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.ju
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.in = phi i32 [ %i.ir, %bb.p ], [ %i.jr, %bb.q ]
  %.0469 = phi ptr [ %i.jq, %bb.p ], [ %i.jv, %bb.q ] ; 5 uses
  %.0469678 = ptrtoaddr ptr %.0469 to i64
  %.pn = sext i32 %.pn.in to i64                  ; 2 uses
  %.0470 = getelementptr inbounds [8 x i8], ptr %i.il, i64 %.pn ; 4 uses
  %i.jw = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %i.jx = ptrtoaddr ptr %i.jw to i64
  %i.jy = load ptr, ptr %i.bd, align 8, !tbaa !63
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv634
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !7
  %i.kb = sext i32 %i.ka to i64                   ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.kb ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ik, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !7
  %i.ki = sub nsw i32 %i.kf, %i.kh                ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, -1                  ; 2 uses
  br i1 %i.kj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kk = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.kl = add nuw nsw i32 %i.ki, 1
  %i.km = mul nsw i32 %i.kk, %i.kl
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.kn = phi i32 [ %i.km, %bb.s ], [ 0, %bb.r ]
  %i.ko = load i32, ptr %i.kd, align 4, !tbaa !7
  %i.kp = load i32, ptr %i.ik, align 4, !tbaa !7
  %i.kq = sub nsw i32 %i.ko, %i.kp                ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, -1                  ; 2 uses
  %i.ks = add nsw i32 %i.kn, %.pre637
  %i.kt = add nuw nsw i32 %i.kq, 1                ; 2 uses
  %i.ku = mul nsw i32 %i.kt, %i.ks
  %i.kv = select i1 %i.kr, i32 %i.ku, i32 0
  %i.kw = add i32 %i.kv, %.pre
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.kx ; 4 uses
  %i.kz = load i32, ptr %i.be, align 4, !tbaa !7
  %i.la = load i32, ptr %i.bf, align 4, !tbaa !7
  br i1 %i.kj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lb = load i32, ptr %i.bg, align 4, !tbaa !7
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
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !59
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.lt = shl nsw i64 %.pn, 3
  %invariant.op.a = add i64 %i.im, %i.lt
  %i.lu = shl nsw i64 %i.kx, 3
  %diff.check684 = icmp ugt i64 %i.lu, -32
  %i.lv = shl nsw i64 %i.lj, 3
  %diff.check686 = icmp ugt i64 %i.lv, -32
  %invariant.op723.a = or i1 %diff.check684, %diff.check686
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %.critedge517
  %indvars.iv631 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next632, %.critedge517 ] ; 2 uses
  %i.lw = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv631 ; 4 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !7
  store i32 %i.ly, ptr %i.c, align 4, !tbaa !7
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !7
  store i32 %i.ma, ptr %i.bh, align 4, !tbaa !7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  store i32 %i.mc, ptr %i.bi, align 4, !tbaa !7
  %i.md = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.d) #4 ; 0 uses
  %i.me = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.lx, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.mf = load i32, ptr %i.d, align 4, !tbaa !7
  %i.mg = load i32, ptr %i.ih, align 4, !tbaa !7  ; 2 uses
  %i.mh = sub i32 %i.mf, %i.mg
  %i.mi = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.mj = load i32, ptr %i.lo, align 4, !tbaa !7  ; 2 uses
  %i.mk = sub i32 %i.mi, %i.mj
  %i.ml = load i32, ptr %i.lq, align 4, !tbaa !7
  %i.mm = sub nsw i32 %i.ml, %i.mj                ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, -1                  ; 2 uses
  br i1 %i.mn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mo = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.mp = load i32, ptr %i.lr, align 4, !tbaa !7
  %i.mq = sub nsw i32 %i.mo, %i.mp
  %i.mr = add nuw nsw i32 %i.mm, 1
  %i.ms = mul nsw i32 %i.mq, %i.mr
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.mt = phi i32 [ %i.ms, %bb.x ], [ 0, %bb.w ]
  %i.mu = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.mv = sub i32 %i.mu, %i.mg                    ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, -1                  ; 2 uses
  %i.mx = add nsw i32 %i.mk, %i.mt
  %i.my = add i32 %i.mv, 1                        ; 2 uses
  %i.mz = mul nsw i32 %i.my, %i.mx
  %i.na = select i1 %i.mw, i32 %i.mz, i32 0
  %i.nb = add nsw i32 %i.mh, %i.na
  %i.nc = load i32, ptr %i.c, align 4, !tbaa !7
  %i.nd = load i32, ptr %i.ik, align 4, !tbaa !7  ; 2 uses
  %i.ne = sub i32 %i.nc, %i.nd
  %i.nf = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.ng = load i32, ptr %i.kg, align 4, !tbaa !7  ; 2 uses
  %i.nh = sub i32 %i.nf, %i.ng
  %i.ni = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.nj = sub nsw i32 %i.ni, %i.ng                ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, -1                  ; 2 uses
  br i1 %i.nk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.nl = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.nm = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.nn = sub nsw i32 %i.nl, %i.nm
  %i.no = add nuw nsw i32 %i.nj, 1
  %i.np = mul nsw i32 %i.nn, %i.no
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.nq = phi i32 [ %i.np, %bb.z ], [ 0, %bb.y ]
  %i.nr = load i32, ptr %i.kd, align 4, !tbaa !7
  %i.ns = sub nsw i32 %i.nr, %i.nd                ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, -1                  ; 2 uses
  %i.nu = add nsw i32 %i.nh, %i.nq
  %i.nv = add nuw nsw i32 %i.ns, 1                ; 3 uses
  %i.nw = mul nsw i32 %i.nv, %i.nu
  %i.nx = select i1 %i.nt, i32 %i.nw, i32 0
  %i.ny = add nsw i32 %i.ne, %i.nx
  %i.nz = select i1 %i.mw, i32 %i.my, i32 0       ; 3 uses
  %i.oa = add nuw nsw i32 %i.mm, 1
  %i.ob = mul nsw i32 %i.nz, %i.oa
  %i.oc = select i1 %i.mn, i32 %i.ob, i32 0
  %i.od = load i32, ptr %i.n, align 8, !tbaa !7   ; 3 uses
  br i1 %i.nt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.oe = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.of = mul nsw i32 %i.oe, %i.nv
  %i.og = load i32, ptr %i.bm, align 8, !tbaa !7
  %i.oh = mul nsw i32 %i.og, %i.nv
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.oi = phi i32 [ %i.of, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.oj = phi i32 [ %i.oh, %bb.ab ], [ 0, %bb.aa ]
  %i.ok = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.ol = load i32, ptr %i.bn, align 4, !tbaa !7  ; 4 uses
  %i.om = load i32, ptr %i.bo, align 4, !tbaa !7  ; 2 uses
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.preheader534.lr.ph, label %.critedge517

.preheader534.lr.ph:                              ; preds = %bb.ac
  %i.oo = add nuw nsw i32 %i.nj, 1
  %i.op = mul nsw i32 %i.oj, %i.oo
  %i.oq = select i1 %i.nk, i32 %i.op, i32 0
  %factor.op.mul576 = mul i32 %i.ok, %i.od
  %i.or = icmp sgt i32 %i.ol, 0
  %i.os = sub i32 %i.nz, %i.ok
  %i.ot = sub i32 %i.oi, %factor.op.mul576
  %i.ou = mul i32 %i.ol, %i.nz
  %i.ov = sub i32 %i.oc, %i.ou
  %i.ow = mul i32 %i.ol, %i.oi
  %i.ox = sub i32 %i.oq, %i.ow
  %i.oy = icmp sgt i32 %i.ok, 0
  %or.cond661 = and i1 %i.or, %i.oy
  br i1 %or.cond661, label %.preheader534.us.preheader, label %.critedge517

.preheader534.us.preheader:                       ; preds = %.preheader534.lr.ph
  %i.oz = sext i32 %i.od to i64                   ; 3 uses
  %i.pa = zext nneg i32 %i.ok to i64              ; 2 uses
  %min.iters.check680 = icmp ugt i32 %i.ok, 7
  %ident.check669.not = icmp eq i32 %i.od, 1
  %or.cond706 = select i1 %min.iters.check680, i1 %ident.check669.not, i1 false
  %n.vec689 = and i64 %i.pa, 2147483644           ; 5 uses
  %i.pb = trunc nuw nsw i64 %n.vec689 to i32
  %cmp.n702 = icmp eq i64 %n.vec689, %i.pa
  br label %.preheader534.us

.preheader534.us:                                 ; preds = %.preheader534.us.preheader, %._crit_edge572.split.us.us
  %.3583.us = phi i32 [ %i.rs, %._crit_edge572.split.us.us ], [ 0, %.preheader534.us.preheader ]
  %.3474582.us = phi i32 [ %i.rr, %._crit_edge572.split.us.us ], [ %i.ny, %.preheader534.us.preheader ]
  %.0478581.us = phi i32 [ %i.rq, %._crit_edge572.split.us.us ], [ %i.nb, %.preheader534.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us584, %.preheader534.us
  %.3458571.us.us = phi i32 [ 0, %.preheader534.us ], [ %i.rp, %._crit_edge.us.us584 ]
  %.4570.us.us = phi i32 [ %.3474582.us, %.preheader534.us ], [ %i.ro, %._crit_edge.us.us584 ]
  %.1479569.us.us = phi i32 [ %.0478581.us, %.preheader534.us ], [ %i.rn, %._crit_edge.us.us584 ]
  %i.pc = sext i32 %.4570.us.us to i64            ; 5 uses
  %i.pd = sext i32 %.1479569.us.us to i64         ; 5 uses
  br i1 %or.cond706, label %vector.memcheck681, label %scalar.ph679.preheader

vector.memcheck681:                               ; preds = %.preheader.us.us
  %i.pe = shl nsw i64 %i.pd, 3                    ; 2 uses
  %6 = add nsw i64 %i.pc, %i.kb
  %i.pf = shl nsw i64 %6, 3
  %7 = add i64 %i.pf, %i.jx                       ; 2 uses
  %i.pg = add i64 %i.pe, %.0469678
  %8 = sub i64 %i.pg, %7
  %diff.check682 = icmp ugt i64 %8, -32
  %.reass = add i64 %i.pe, %invariant.op.a
  %9 = sub i64 %.reass, %7
  %diff.check683 = icmp ugt i64 %9, -32
  %conflict.rdx = or i1 %diff.check682, %diff.check683
  %conflict.rdx687.reass = or i1 %conflict.rdx, %invariant.op723.a
  br i1 %conflict.rdx687.reass, label %scalar.ph679.preheader, label %vector.ph688

vector.ph688:                                     ; preds = %vector.memcheck681
  %i.ph = add nsw i64 %n.vec689, %i.pd            ; 2 uses
  %i.pi = add nsw i64 %n.vec689, %i.pc            ; 2 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph688
  %index691 = phi i64 [ 0, %vector.ph688 ], [ %index.next700, %vector.body690 ] ; 3 uses
  %i.pj = add i64 %index691, %i.pd                ; 2 uses
  %i.pk = add i64 %index691, %i.pc                ; 3 uses
  %i.pl = getelementptr inbounds [8 x i8], ptr %.0470, i64 %i.pj ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load692 = load <2 x double>, ptr %i.pl, align 8, !tbaa !65
  %wide.load693 = load <2 x double>, ptr %i.pm, align 8, !tbaa !65
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.pk ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %wide.load694 = load <2 x double>, ptr %i.pn, align 8, !tbaa !65
  %wide.load695 = load <2 x double>, ptr %i.po, align 8, !tbaa !65
  %i.pp = getelementptr inbounds [8 x i8], ptr %.0469, i64 %i.pj ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load696 = load <2 x double>, ptr %i.pp, align 8, !tbaa !65
  %wide.load697 = load <2 x double>, ptr %i.pq, align 8, !tbaa !65
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %i.pk ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load698 = load <2 x double>, ptr %i.pr, align 8, !tbaa !65
  %wide.load699 = load <2 x double>, ptr %i.ps, align 8, !tbaa !65
  %i.pt = fmul <2 x double> %wide.load696, %wide.load698
  %i.pu = fmul <2 x double> %wide.load697, %wide.load699
  %i.pv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load692, <2 x double> %wide.load694, <2 x double> %i.pt)
  %i.pw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load693, <2 x double> %wide.load695, <2 x double> %i.pu)
  %i.px = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.pk ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store <2 x double> %i.pv, ptr %i.px, align 8, !tbaa !65
  store <2 x double> %i.pw, ptr %i.py, align 8, !tbaa !65
  %index.next700 = add nuw i64 %index691, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next700, %n.vec689
  br i1 %i.pz, label %middle.block701, label %vector.body690, !llvm.loop !43

middle.block701:                                  ; preds = %vector.body690
  br i1 %cmp.n702, label %._crit_edge.us.us584, label %scalar.ph679.preheader

scalar.ph679.preheader:                           ; preds = %vector.memcheck681, %.preheader.us.us, %middle.block701
  %indvars.iv623.ph = phi i64 [ %i.pd, %vector.memcheck681 ], [ %i.pd, %.preheader.us.us ], [ %i.ph, %middle.block701 ] ; 4 uses
  %indvars.iv621.ph = phi i64 [ %i.pc, %vector.memcheck681 ], [ %i.pc, %.preheader.us.us ], [ %i.pi, %middle.block701 ] ; 5 uses
  %.3462565.us.us.ph = phi i32 [ 0, %vector.memcheck681 ], [ 0, %.preheader.us.us ], [ %i.pb, %middle.block701 ] ; 4 uses
  %i.qa = sub i32 %i.ok, %.3462565.us.us.ph
  %.neg = add i32 %.3462565.us.us.ph, 1
  %xtraiter714 = and i32 %i.qa, 1
  %lcmp.mod715.not = icmp eq i32 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %scalar.ph679.prol.loopexit, label %scalar.ph679.prol

scalar.ph679.prol:                                ; preds = %scalar.ph679.preheader
  %i.qb = getelementptr inbounds [8 x i8], ptr %.0470, i64 %indvars.iv623.ph
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !65
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv621.ph
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !65
  %i.qf = getelementptr inbounds [8 x i8], ptr %.0469, i64 %indvars.iv623.ph
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !65
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv621.ph
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !65
  %i.qj = fmul double %i.qg, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qc, double %i.qe, double %i.qj)
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv621.ph
  store double %i.qk, ptr %i.ql, align 8, !tbaa !65
  %indvars.iv.next624.prol = add nsw i64 %indvars.iv623.ph, 1 ; 2 uses
  %indvars.iv.next622.prol = add nsw i64 %indvars.iv621.ph, %i.oz ; 2 uses
  %i.qm = add nuw nsw i32 %.3462565.us.us.ph, 1
  br label %scalar.ph679.prol.loopexit

scalar.ph679.prol.loopexit:                       ; preds = %scalar.ph679.prol, %scalar.ph679.preheader
  %indvars.iv.next624.lcssa708.unr = phi i64 [ poison, %scalar.ph679.preheader ], [ %indvars.iv.next624.prol, %scalar.ph679.prol ]
  %indvars.iv.next622.lcssa707.unr = phi i64 [ poison, %scalar.ph679.preheader ], [ %indvars.iv.next622.prol, %scalar.ph679.prol ]
  %indvars.iv623.unr = phi i64 [ %indvars.iv623.ph, %scalar.ph679.preheader ], [ %indvars.iv.next624.prol, %scalar.ph679.prol ]
  %indvars.iv621.unr = phi i64 [ %indvars.iv621.ph, %scalar.ph679.preheader ], [ %indvars.iv.next622.prol, %scalar.ph679.prol ]
  %.3462565.us.us.unr = phi i32 [ %.3462565.us.us.ph, %scalar.ph679.preheader ], [ %i.qm, %scalar.ph679.prol ]
  %i.qn = icmp eq i32 %i.ok, %.neg
  br i1 %i.qn, label %._crit_edge.us.us584, label %scalar.ph679

scalar.ph679:                                     ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679
  %indvars.iv623 = phi i64 [ %indvars.iv.next624.1, %scalar.ph679 ], [ %indvars.iv623.unr, %scalar.ph679.prol.loopexit ] ; 4 uses
  %indvars.iv621 = phi i64 [ %indvars.iv.next622.1, %scalar.ph679 ], [ %indvars.iv621.unr, %scalar.ph679.prol.loopexit ] ; 4 uses
  %.3462565.us.us = phi i32 [ %i.rk, %scalar.ph679 ], [ %.3462565.us.us.unr, %scalar.ph679.prol.loopexit ]
  %i.qo = getelementptr inbounds [8 x i8], ptr %.0470, i64 %indvars.iv623
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !65
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv621
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !65
  %i.qs = getelementptr inbounds [8 x i8], ptr %.0469, i64 %indvars.iv623
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !65
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv621
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !65
  %i.qw = fmul double %i.qt, %i.qv
  %i.qx = call double @llvm.fmuladd.f64(double %i.qp, double %i.qr, double %i.qw)
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv621
  store double %i.qx, ptr %i.qy, align 8, !tbaa !65
  %indvars.iv.next624 = add nsw i64 %indvars.iv623, 1 ; 2 uses
  %indvars.iv.next622 = add nsw i64 %indvars.iv621, %i.oz ; 4 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %.0470, i64 %indvars.iv.next624
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !65
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %indvars.iv.next622
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !65
  %i.rd = getelementptr inbounds [8 x i8], ptr %.0469, i64 %indvars.iv.next624
  %i.re = load double, ptr %i.rd, align 8, !tbaa !65
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %indvars.iv.next622
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !65
  %i.rh = fmul double %i.re, %i.rg
  %i.ri = call double @llvm.fmuladd.f64(double %i.ra, double %i.rc, double %i.rh)
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv.next622
  store double %i.ri, ptr %i.rj, align 8, !tbaa !65
  %indvars.iv.next624.1 = add nsw i64 %indvars.iv623, 2 ; 2 uses
  %indvars.iv.next622.1 = add nsw i64 %indvars.iv.next622, %i.oz ; 2 uses
  %i.rk = add nuw nsw i32 %.3462565.us.us, 2      ; 2 uses
  %exitcond628.not.1 = icmp eq i32 %i.rk, %i.ok
  br i1 %exitcond628.not.1, label %._crit_edge.us.us584, label %scalar.ph679, !llvm.loop !44

._crit_edge.us.us584:                             ; preds = %scalar.ph679.prol.loopexit, %scalar.ph679, %middle.block701
  %indvars.iv.next624.lcssa = phi i64 [ %i.ph, %middle.block701 ], [ %indvars.iv.next624.lcssa708.unr, %scalar.ph679.prol.loopexit ], [ %indvars.iv.next624.1, %scalar.ph679 ]
  %indvars.iv.next622.lcssa = phi i64 [ %i.pi, %middle.block701 ], [ %indvars.iv.next622.lcssa707.unr, %scalar.ph679.prol.loopexit ], [ %indvars.iv.next622.1, %scalar.ph679 ]
  %i.rl = trunc nsw i64 %indvars.iv.next624.lcssa to i32
  %i.rm = trunc nsw i64 %indvars.iv.next622.lcssa to i32
  %i.rn = add nsw i32 %i.os, %i.rl                ; 2 uses
  %i.ro = add nsw i32 %i.ot, %i.rm                ; 2 uses
  %i.rp = add nuw nsw i32 %.3458571.us.us, 1      ; 2 uses
  %exitcond629.not = icmp eq i32 %i.rp, %i.ol
  br i1 %exitcond629.not, label %._crit_edge572.split.us.us, label %.preheader.us.us, !llvm.loop !45

._crit_edge572.split.us.us:                       ; preds = %._crit_edge.us.us584
  %i.rq = add nsw i32 %i.ov, %i.rn
  %i.rr = add nsw i32 %i.ox, %i.ro
  %i.rs = add nuw nsw i32 %.3583.us, 1            ; 2 uses
  %exitcond630.not = icmp eq i32 %i.rs, %i.om
  br i1 %exitcond630.not, label %.critedge517, label %.preheader534.us, !llvm.loop !46

.critedge517:                                     ; preds = %._crit_edge572.split.us.us, %.preheader534.lr.ph, %bb.ac
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 2 uses
  %i.rt = load i32, ptr %i.ll, align 8, !tbaa !59
  %i.ru = sext i32 %i.rt to i64
  %i.rv = icmp slt i64 %indvars.iv.next632, %i.ru
  br i1 %i.rv, label %bb.w, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.critedge517
  %.pre638 = load i32, ptr %i.hy, align 8, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.rw = phi i32 [ %.pre638, %._crit_edge.loopexit ], [ %i.ib, %bb.v ] ; 2 uses
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 2 uses
  %i.rx = sext i32 %i.rw to i64
  %i.ry = icmp slt i64 %indvars.iv.next635, %i.rx
  br i1 %i.ry, label %.lr.ph591, label %._crit_edge592, !llvm.loop !48

._crit_edge592:                                   ; preds = %._crit_edge, %bb.m
  br i1 %i.ht, label %bb.j, label %bb.ad, !llvm.loop !49

bb.ad:                                            ; preds = %._crit_edge592
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !80
  %i.sb = mul nsw i32 %i.sa, 3
  %i.sc = call i32 @hypre_IncFLOPCount(i32 noundef %i.sb) #4 ; 0 uses
  %i.sd = load i32, ptr %i.e, align 4, !tbaa !13
  %i.se = call i32 @hypre_EndTiming(i32 noundef %i.sd) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SemiInterpDestroy(ptr noundef %0) local_unnamed_addr #0 !guid !81 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.a) #4 ; 0 uses
end_hunk_0
