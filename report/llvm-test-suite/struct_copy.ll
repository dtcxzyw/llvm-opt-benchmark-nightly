begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge258

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv277 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next278, %._crit_edge ] ; 6 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv277 ; 4 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv277 ; 5 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv277 ; 5 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv277
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 6 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !23  ; 2 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv277
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 6 uses
  %i.am = call i32 @hypre_BoxGetSize(ptr noundef %i.r, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !4   ; 2 uses
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.au = sub i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = sub nsw i32 %i.ay, %i.at                ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sub nsw i32 %i.bb, %i.bd
  %i.bf = add nuw nsw i32 %i.az, 1
  %i.bg = mul nsw i32 %i.be, %i.bf
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bh = phi i32 [ %i.bg, %bb.c ], [ 0, %bb.b ]
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.bj = sub i32 %i.bi, %i.ao                    ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 2 uses
  %i.bl = add nsw i32 %i.au, %i.bh
  %i.bm = add i32 %i.bj, 1                        ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bl
  %i.bo = select i1 %i.bk, i32 %i.bn, i32 0
  %i.bp = add nsw i32 %i.ap, %i.bo
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !4   ; 2 uses
  %i.br = sub i32 %i.an, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4  ; 2 uses
  %i.bu = sub i32 %i.ar, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sub nsw i32 %i.bx, %i.bt                ; 3 uses
  %i.bz = icmp sgt i32 %i.by, -1                  ; 2 uses
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = load i32, ptr %i.av, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = add nuw nsw i32 %i.by, 1
  %i.cf = mul nsw i32 %i.cd, %i.ce
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cg = phi i32 [ %i.cf, %bb.e ], [ 0, %bb.d ]
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !4   ; 9 uses
  %i.ci = load i32, ptr %i.o, align 4, !tbaa !4   ; 5 uses
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %.0179 = call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.ch)
  %.1180 = call i32 @llvm.smax.i32(i32 %i.cj, i32 %.0179)
  %i.ck = icmp sgt i32 %.1180, 0
  br i1 %i.ck, label %.preheader218.lr.ph, label %._crit_edge

.preheader218.lr.ph:                              ; preds = %bb.f
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.cm = sub i32 %i.cl, %i.bq                    ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1                  ; 2 uses
  %i.co = add i32 %i.cm, 1                        ; 2 uses
  %i.cp = select i1 %i.cn, i32 %i.co, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.cp, %i.ci
  %i.cq = select i1 %i.bk, i32 %i.bm, i32 0       ; 3 uses
  %factor.op.mul243 = mul i32 %i.ci, %i.cq
  %i.cr = add nuw nsw i32 %i.by, 1
  %i.cs = mul nsw i32 %i.cp, %i.cr
  %i.ct = select i1 %i.bz, i32 %i.cs, i32 0
  %i.cu = add nuw nsw i32 %i.az, 1
  %i.cv = mul nsw i32 %i.cq, %i.cu
  %i.cw = select i1 %i.ba, i32 %i.cv, i32 0
  %2 = icmp slt i32 %i.cj, 1
  %3 = icmp slt i32 %i.ch, 1
  %i.cx = sub i32 %i.cq, %i.ch
  %i.cy = sub i32 %i.cp, %i.ch
  %i.cz = sub i32 %i.cw, %factor.op.mul243
  %i.da = sub i32 %i.ct, %factor.op.mul
  %4 = icmp slt i32 %i.ci, 1
  %or.cond.not289 = or i1 %2, %4
  %brmerge = or i1 %or.cond.not289, %3
  br i1 %brmerge, label %._crit_edge, label %.preheader217.us.us.us.us.us.preheader

.preheader217.us.us.us.us.us.preheader:           ; preds = %.preheader218.lr.ph
  %i.db = add nsw i32 %i.bu, %i.cg
  %i.dc = mul nsw i32 %i.co, %i.db
  %i.dd = select i1 %i.cn, i32 %i.dc, i32 0
  %i.de = add nsw i32 %i.br, %i.dd
  %i.df = zext nneg i32 %i.ch to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 6
  %n.vec = and i64 %i.df, 2147483644              ; 5 uses
  %i.dg = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.df
  br label %.preheader217.us.us.us.us.us

.preheader217.us.us.us.us.us:                     ; preds = %.preheader217.us.us.us.us.us.preheader, %._crit_edge226.split.us.us.us.us.us.us
  %.0183234.us.us.us.us.us = phi i32 [ %i.fa, %._crit_edge226.split.us.us.us.us.us.us ], [ %i.bp, %.preheader217.us.us.us.us.us.preheader ]
  %.0185233.us.us.us.us.us = phi i32 [ %i.fb, %._crit_edge226.split.us.us.us.us.us.us ], [ %i.de, %.preheader217.us.us.us.us.us.preheader ]
  %.1197232.us.us.us.us.us = phi i32 [ %i.fc, %._crit_edge226.split.us.us.us.us.us.us ], [ 0, %.preheader217.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader217.us.us.us.us.us
  %.1184225.us.us.us.us.us.us = phi i32 [ %.0183234.us.us.us.us.us, %.preheader217.us.us.us.us.us ], [ %i.ex, %._crit_edge.us.us.us.us.us.us ]
  %.1186224.us.us.us.us.us.us = phi i32 [ %.0185233.us.us.us.us.us, %.preheader217.us.us.us.us.us ], [ %i.ey, %._crit_edge.us.us.us.us.us.us ]
  %.1195223.us.us.us.us.us.us = phi i32 [ 0, %.preheader217.us.us.us.us.us ], [ %i.ez, %._crit_edge.us.us.us.us.us.us ]
  %i.dh = sext i32 %.1184225.us.us.us.us.us.us to i64 ; 5 uses
  %i.di = sext i32 %.1186224.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us.us.us
  %i.dj = add nsw i64 %i.ak, %i.di
  %i.dk = shl nsw i64 %i.dj, 3
  %i.dl = add i64 %i.dk, %i.ag
  %i.dm = add nsw i64 %i.ad, %i.dh
  %i.dn = shl nsw i64 %i.dm, 3
  %i.do = add i64 %i.dn, %i.z
  %i.dp = sub i64 %i.dl, %i.do
  %diff.check = icmp ult i64 %i.dp, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dq = add nsw i64 %n.vec, %i.di               ; 2 uses
  %i.dr = add nsw i64 %n.vec, %i.dh               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ae, i64 %i.dh
  %invariant.gep299 = getelementptr [8 x i8], ptr %i.al, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !25
  %wide.load291 = load <2 x double>, ptr %i.ds, align 8, !tbaa !25
  %gep300 = getelementptr [8 x i8], ptr %invariant.gep299, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %gep300, i64 16
  store <2 x double> %wide.load, ptr %gep300, align 8, !tbaa !25
  store <2 x double> %wide.load291, ptr %i.dt, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us.us.us, %middle.block
  %indvars.iv270.ph = phi i64 [ %i.di, %vector.memcheck ], [ %i.di, %.preheader.us.us.us.us.us.us ], [ %i.dq, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ %i.dh, %vector.memcheck ], [ %i.dh, %.preheader.us.us.us.us.us.us ], [ %i.dr, %middle.block ] ; 2 uses
  %.1193219.us.us.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us.us.us ], [ %i.dg, %middle.block ] ; 4 uses
  %i.dv = sub i32 %i.ch, %.1193219.us.us.us.us.us.us.ph
  %xtraiter = and i32 %i.dv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv270.prol = phi i64 [ %indvars.iv.next271.prol, %scalar.ph.prol ], [ %indvars.iv270.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1193219.us.us.us.us.us.us.prol = phi i32 [ %i.dz, %scalar.ph.prol ], [ %.1193219.us.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !25
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv270.prol
  store double %i.dx, ptr %i.dy, align 8, !tbaa !25
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %indvars.iv.next271.prol = add nsw i64 %indvars.iv270.prol, 1 ; 3 uses
  %i.dz = add nuw nsw i32 %.1193219.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !31

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa295.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next271.lcssa294.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next271.prol, %scalar.ph.prol ]
  %indvars.iv270.unr = phi i64 [ %indvars.iv270.ph, %scalar.ph.preheader ], [ %indvars.iv.next271.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1193219.us.us.us.us.us.us.unr = phi i32 [ %.1193219.us.us.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.dz, %scalar.ph.prol ]
  %i.ea = sub i32 %.1193219.us.us.us.us.us.us.ph, %i.ch
  %i.eb = icmp ugt i32 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.3, %scalar.ph ], [ %indvars.iv270.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1193219.us.us.us.us.us.us = phi i32 [ %i.eu, %scalar.ph ], [ %.1193219.us.us.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !25
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv270
  store double %i.ed, ptr %i.ee, align 8, !tbaa !25
  %i.ef = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !25
  %i.ei = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv270
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  store double %i.eh, ptr %i.ej, align 8, !tbaa !25
  %i.ek = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %i.em = load double, ptr %i.el, align 8, !tbaa !25
  %i.en = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv270
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  store double %i.em, ptr %i.eo, align 8, !tbaa !25
  %i.ep = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.eq = getelementptr i8, ptr %i.ep, i64 24
  %i.er = load double, ptr %i.eq, align 8, !tbaa !25
  %i.es = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv270
  %i.et = getelementptr i8, ptr %i.es, i64 24
  store double %i.er, ptr %i.et, align 8, !tbaa !25
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.iv.next271.3 = add nsw i64 %indvars.iv270, 4 ; 2 uses
  %i.eu = add nuw nsw i32 %.1193219.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.eu, %i.ch
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !33

._crit_edge.us.us.us.us.us.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dr, %middle.block ], [ %indvars.iv.next.lcssa295.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %indvars.iv.next271.lcssa = phi i64 [ %i.dq, %middle.block ], [ %indvars.iv.next271.lcssa294.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next271.3, %scalar.ph ]
  %i.ev = trunc nsw i64 %indvars.iv.next271.lcssa to i32
  %i.ew = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.ex = add nsw i32 %i.cx, %i.ew                ; 2 uses
  %i.ey = add nsw i32 %i.cy, %i.ev                ; 2 uses
  %i.ez = add nuw nsw i32 %.1195223.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond275.not = icmp eq i32 %i.ez, %i.ci
  br i1 %exitcond275.not, label %._crit_edge226.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !34

._crit_edge226.split.us.us.us.us.us.us:           ; preds = %._crit_edge.us.us.us.us.us.us
  %i.fa = add nsw i32 %i.cz, %i.ex
  %i.fb = add nsw i32 %i.da, %i.ey
  %i.fc = add nuw nsw i32 %.1197232.us.us.us.us.us, 1 ; 2 uses
  %exitcond276.not = icmp eq i32 %i.fc, %i.cj
  br i1 %exitcond276.not, label %._crit_edge, label %.preheader217.us.us.us.us.us, !llvm.loop !35

._crit_edge:                                      ; preds = %._crit_edge226.split.us.us.us.us.us.us, %.preheader218.lr.ph, %bb.f
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.fd = load i32, ptr %i.f, align 8, !tbaa !19
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next278, %i.fe
  br i1 %i.ff, label %bb.b, label %._crit_edge258, !llvm.loop !36

._crit_edge258:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

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
!8 = !{!9, !10, i64 8}
!9 = !{!"hypre_StructVector_struct", !5, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!10 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!13 = !{!"p1 double", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!16, !12, i64 8}
!16 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !12, i64 8, !14, i64 16, !17, i64 24, !5, i64 32, !18, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!17 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!18 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!19 = !{!20, !5, i64 8}
end_hunk_0
