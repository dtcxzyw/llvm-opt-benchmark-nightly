loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGAxpy(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @hypre_BoxCreate() #4      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge271

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv286 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next287, %._crit_edge.split ] ; 6 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv286 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  store i32 %i.ae, ptr %i.k, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  store i32 %i.ai, ptr %i.m, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !4
  %i.al = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4) #4 ; 0 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv286 ; 5 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv286 ; 5 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !23  ; 3 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv286
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw ; 4 uses
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !23  ; 3 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv286
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bc ; 4 uses
  %i.be = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %i.bg = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !4   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.bl = sub i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = sub nsw i32 %i.bo, %i.bk                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -1                  ; 2 uses
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i32, ptr %i.k, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = add nuw nsw i32 %i.bp, 1
  %i.bw = mul nsw i32 %i.bu, %i.bv
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bx = phi i32 [ %i.bw, %bb.c ], [ 0, %bb.b ]
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bz = sub nsw i32 %i.by, %i.bg                ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1                  ; 2 uses
  %i.cb = add nsw i32 %i.bl, %i.bx
  %i.cc = add nuw nsw i32 %i.bz, 1                ; 3 uses
  %i.cd = mul nsw i32 %i.cc, %i.cb
  %i.ce = select i1 %i.ca, i32 %i.cd, i32 0
  %i.cf = add i32 %i.bh, %i.ce
  %i.cg = load i32, ptr %i.ar, align 4, !tbaa !4  ; 2 uses
  %i.ch = sub i32 %i.bf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = sub i32 %i.bi, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = sub nsw i32 %i.cn, %i.cj                ; 3 uses
  %i.cp = icmp sgt i32 %i.co, -1                  ; 2 uses
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = load i32, ptr %i.k, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sub nsw i32 %i.cq, %i.cs
  %i.cu = add nuw nsw i32 %i.co, 1
  %i.cv = mul nsw i32 %i.ct, %i.cu
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cw = phi i32 [ %i.cv, %bb.e ], [ 0, %bb.d ]
  %i.cx = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cy = sub nsw i32 %i.cx, %i.cg                ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, -1                  ; 2 uses
  %i.da = add nsw i32 %i.ck, %i.cw
  %i.db = add nuw nsw i32 %i.cy, 1                ; 3 uses
  %i.dc = mul nsw i32 %i.db, %i.da
  %i.dd = select i1 %i.cz, i32 %i.dc, i32 0
  %i.de = add i32 %i.ch, %i.dd
  %i.df = load i32, ptr %4, align 4, !tbaa !4     ; 2 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dg = load i32, ptr %i.u, align 4, !tbaa !4
  %i.dh = mul nsw i32 %i.dg, %i.cc
  %i.di = load i32, ptr %i.v, align 4, !tbaa !4
  %i.dj = mul nsw i32 %i.di, %i.cc
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dk = phi i32 [ %i.dh, %bb.g ], [ 0, %bb.f ]
  %i.dl = phi i32 [ %i.dj, %bb.g ], [ 0, %bb.f ]
  %i.dm = add nuw nsw i32 %i.bp, 1
  %i.dn = mul nsw i32 %i.dl, %i.dm
  %i.do = select i1 %i.bq, i32 %i.dn, i32 0
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !4
  %i.dq = mul nsw i32 %i.dp, %i.db
  %i.dr = load i32, ptr %i.v, align 4, !tbaa !4
  %i.ds = mul nsw i32 %i.dr, %i.db
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dt = phi i32 [ %i.dq, %bb.i ], [ 0, %bb.h ]
  %i.du = phi i32 [ %i.ds, %bb.i ], [ 0, %bb.h ]
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !4   ; 8 uses
  %i.dw = load i32, ptr %i.w, align 4, !tbaa !4   ; 3 uses
  %i.dx = load i32, ptr %i.x, align 4, !tbaa !4   ; 3 uses
  %.0204 = call i32 @llvm.smax.i32(i32 %i.dw, i32 %i.dv)
  %.1205 = call i32 @llvm.smax.i32(i32 %i.dx, i32 %.0204)
  %i.dy = icmp sgt i32 %.1205, 0
  br i1 %i.dy, label %.preheader244.lr.ph, label %._crit_edge.split

.preheader244.lr.ph:                              ; preds = %bb.j
  %i.dz = add nuw nsw i32 %i.co, 1
  %i.ea = mul nsw i32 %i.du, %i.dz
  %i.eb = select i1 %i.cp, i32 %i.ea, i32 0
  %i.ec = icmp sgt i32 %i.dx, 0
  %i.ed = icmp sgt i32 %i.dw, 0
  %brmerge.not297 = and i1 %i.ec, %i.ed
  %i.ee = icmp sgt i32 %i.dv, 0
  %or.cond = and i1 %brmerge.not297, %i.ee
  br i1 %or.cond, label %.preheader243.us.us.preheader, label %._crit_edge.split

.preheader243.us.us.preheader:                    ; preds = %.preheader244.lr.ph
  %i.ef = sext i32 %i.df to i64                   ; 6 uses
  %i.eg = shl nsw i64 %i.bc, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.eg
  %scevgep300 = getelementptr i8, ptr %i.ay, i64 8
  %i.eh = add nsw i32 %i.dv, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.ek = getelementptr i8, ptr %scevgep300, i64 %i.eg
  %scevgep301 = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.el = shl nsw i64 %i.aw, 3                    ; 2 uses
  %scevgep303 = getelementptr i8, ptr %i.as, i64 %i.el
  %scevgep305 = getelementptr i8, ptr %i.as, i64 8
  %i.em = getelementptr i8, ptr %scevgep305, i64 %i.el
  %scevgep306 = getelementptr i8, ptr %i.em, i64 %i.ej
  %i.en = zext nneg i32 %i.dv to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.dv, 3
  %ident.check.not = icmp eq i32 %i.df, 1
  %or.cond313 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.en, 2147483644              ; 5 uses
  %i.eo = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.en
  br label %.preheader243.us.us

.preheader243.us.us:                              ; preds = %.preheader243.us.us.preheader, %._crit_edge252.split.us.us.us
  %.0208261.us.us = phi i32 [ %i.de, %.preheader243.us.us.preheader ], [ %i.fy, %._crit_edge252.split.us.us.us ] ; 2 uses
  %.0210260.us.us = phi i32 [ %i.cf, %.preheader243.us.us.preheader ], [ %i.fx, %._crit_edge252.split.us.us.us ] ; 2 uses
  %.1222259.us.us = phi i32 [ 0, %.preheader243.us.us.preheader ], [ %i.fw, %._crit_edge252.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader243.us.us
  %.1209251.us.us.us = phi i32 [ %i.fv, %._crit_edge.us.us.us ], [ %.0208261.us.us, %.preheader243.us.us ] ; 3 uses
  %.1211250.us.us.us = phi i32 [ %i.fu, %._crit_edge.us.us.us ], [ %.0210260.us.us, %.preheader243.us.us ] ; 3 uses
  %.1220249.us.us.us = phi i32 [ %i.ft, %._crit_edge.us.us.us ], [ 0, %.preheader243.us.us ]
  %i.ep = sext i32 %.1211250.us.us.us to i64      ; 4 uses
  %i.eq = sext i32 %.1209251.us.us.us to i64      ; 4 uses
  br i1 %or.cond313, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %5 = sext i32 %.1211250.us.us.us to i64
  %i.er = shl nsw i64 %5, 3                       ; 2 uses
  %scevgep299 = getelementptr i8, ptr %scevgep306, i64 %i.er
  %scevgep302 = getelementptr i8, ptr %scevgep303, i64 %i.er
  %6 = sext i32 %.1209251.us.us.us to i64
  %i.es = shl nsw i64 %6, 3                       ; 2 uses
  %scevgep304 = getelementptr i8, ptr %scevgep301, i64 %i.es
  %scevgep307 = getelementptr i8, ptr %scevgep, i64 %i.es
  %bound0 = icmp ult ptr %scevgep307, %scevgep299
  %bound1 = icmp ult ptr %scevgep302, %scevgep304
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.et = add nsw i64 %n.vec, %i.eq
  %i.eu = add nsw i64 %n.vec, %i.ep
  %invariant.gep = getelementptr [8 x i8], ptr %i.ax, i64 %i.ep
  %invariant.gep318 = getelementptr [8 x i8], ptr %i.bd, i64 %i.eq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !25, !alias.scope !27
  %wide.load308 = load <2 x double>, ptr %i.ev, align 8, !tbaa !25, !alias.scope !27
  %gep319 = getelementptr [8 x i8], ptr %invariant.gep318, i64 %index ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep319, i64 16 ; 2 uses
  %wide.load309 = load <2 x double>, ptr %gep319, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %wide.load310 = load <2 x double>, ptr %i.ew, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load309)
  %i.ey = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load308, <2 x double> %wide.load310)
  store <2 x double> %i.ex, ptr %gep319, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv279.ph = phi i64 [ %i.eq, %vector.memcheck ], [ %i.eq, %.preheader.us.us.us ], [ %i.et, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.ep, %vector.memcheck ], [ %i.ep, %.preheader.us.us.us ], [ %i.eu, %middle.block ] ; 3 uses
  %.1218245.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.eo, %middle.block ] ; 4 uses
  %i.fa = sub i32 %i.dv, %.1218245.us.us.us.ph
  %.neg = add i32 %.1218245.us.us.us.ph, 1
  %xtraiter = and i32 %i.fa, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv.ph
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !25
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv279.ph ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !25
  %i.ff = call double @llvm.fmuladd.f64(double %0, double %i.fc, double %i.fe)
  store double %i.ff, ptr %i.fd, align 8, !tbaa !25
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.ef
  %indvars.iv.next280.prol = add nsw i64 %indvars.iv279.ph, %i.ef
  %i.fg = add nuw nsw i32 %.1218245.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv279.unr = phi i64 [ %indvars.iv279.ph, %scalar.ph.preheader ], [ %indvars.iv.next280.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1218245.us.us.us.unr = phi i32 [ %.1218245.us.us.us.ph, %scalar.ph.preheader ], [ %i.fg, %scalar.ph.prol ]
  %i.fh = icmp eq i32 %i.dv, %.neg
  br i1 %i.fh, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv279 = phi i64 [ %indvars.iv.next280.1, %scalar.ph ], [ %indvars.iv279.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1218245.us.us.us = phi i32 [ %i.fs, %scalar.ph ], [ %.1218245.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !25
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv279 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !25
  %i.fm = call double @llvm.fmuladd.f64(double %0, double %i.fj, double %i.fl)
  store double %i.fm, ptr %i.fk, align 8, !tbaa !25
  %indvars.iv.next.a = add nsw i64 %indvars.iv, %i.ef ; 2 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, %i.ef ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv.next.a
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !25
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next280 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !25
  %i.fr = call double @llvm.fmuladd.f64(double %0, double %i.fo, double %i.fq)
  store double %i.fr, ptr %i.fp, align 8, !tbaa !25
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next.a, %i.ef
  %indvars.iv.next280.1 = add nsw i64 %indvars.iv.next280, %i.ef
  %i.fs = add nuw nsw i32 %.1218245.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.fs, %i.dv
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !36

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ft = add nuw nsw i32 %.1220249.us.us.us, 1   ; 2 uses
  %i.fu = add i32 %.1211250.us.us.us, %i.dk
  %i.fv = add i32 %.1209251.us.us.us, %i.dt
  %exitcond284.not = icmp eq i32 %i.ft, %i.dw
  br i1 %exitcond284.not, label %._crit_edge252.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !37

._crit_edge252.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.fw = add nuw nsw i32 %.1222259.us.us, 1      ; 2 uses
  %i.fx = add i32 %.0210260.us.us, %i.do
  %i.fy = add i32 %.0208261.us.us, %i.eb
  %exitcond285.not = icmp eq i32 %i.fw, %i.dx
  br i1 %exitcond285.not, label %._crit_edge.split, label %.preheader243.us.us, !llvm.loop !38

._crit_edge.split:                                ; preds = %._crit_edge252.split.us.us.us, %.preheader244.lr.ph, %bb.j
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.fz = load i32, ptr %i.g, align 8, !tbaa !19
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %indvars.iv.next287, %i.ga
  br i1 %i.gb, label %bb.b, label %._crit_edge271, !llvm.loop !39

._crit_edge271:                                   ; preds = %._crit_edge.split, %bb.a
  %i.gc = call i32 @hypre_BoxDestroy(ptr noundef %i.b) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_ProjectBox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

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
!20 = !{!"hypre_BoxArray_struct", !18, i64 0, !5, i64 8, !5, i64 12}
!21 = !{!20, !18, i64 0}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !13, i64 24}
!24 = !{!9, !14, i64 40}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !33, !34, !35}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !33, !34}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
end_hunk_0
