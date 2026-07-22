loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructAxpy(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge244

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv260 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next261, %._crit_edge.split ] ; 6 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv260 ; 4 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv260 ; 5 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv260 ; 5 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv260
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ac ; 4 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !23  ; 3 uses
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv260
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ai ; 4 uses
  %i.ak = call i32 @hypre_BoxGetSize(ptr noundef %i.r, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.al = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %i.am = load i32, ptr %i.u, align 4, !tbaa !4   ; 2 uses
  %i.an = sub i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.as = sub i32 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sub nsw i32 %i.aw, %i.ar                ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1                  ; 2 uses
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = load i32, ptr %i.at, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sub nsw i32 %i.az, %i.bb
  %i.bd = add nuw nsw i32 %i.ax, 1
  %i.be = mul nsw i32 %i.bc, %i.bd
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bf = phi i32 [ %i.be, %bb.c ], [ 0, %bb.b ]
  %i.bg = load i32, ptr %i.au, align 4, !tbaa !4
  %i.bh = sub i32 %i.bg, %i.am                    ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1                  ; 2 uses
  %i.bj = add nsw i32 %i.as, %i.bf
  %i.bk = add i32 %i.bh, 1                        ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.bj
  %i.bm = select i1 %i.bi, i32 %i.bl, i32 0
  %i.bn = add nsw i32 %i.an, %i.bm
  %i.bo = load i32, ptr %i.x, align 4, !tbaa !4   ; 2 uses
  %i.bp = sub i32 %i.al, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = sub i32 %i.ap, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sub nsw i32 %i.bv, %i.br                ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, -1                  ; 2 uses
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.by = load i32, ptr %i.at, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.by, %i.ca
  %i.cc = add nuw nsw i32 %i.bw, 1
  %i.cd = mul nsw i32 %i.cb, %i.cc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ce = phi i32 [ %i.cd, %bb.e ], [ 0, %bb.d ]
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !4   ; 10 uses
  %i.cg = load i32, ptr %i.o, align 4, !tbaa !4   ; 5 uses
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !4   ; 3 uses
  %.0180 = call i32 @llvm.smax.i32(i32 %i.cg, i32 %i.cf)
  %.1181 = call i32 @llvm.smax.i32(i32 %i.ch, i32 %.0180)
  %i.ci = icmp sgt i32 %.1181, 0
  br i1 %i.ci, label %.preheader219.lr.ph, label %._crit_edge.split

.preheader219.lr.ph:                              ; preds = %bb.f
  %i.cj = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.ck = sub i32 %i.cj, %i.bo                    ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1                  ; 2 uses
  %i.cm = add i32 %i.ck, 1                        ; 2 uses
  %i.cn = select i1 %i.cl, i32 %i.cm, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.cn, %i.cg
  %i.co = select i1 %i.bi, i32 %i.bk, i32 0       ; 3 uses
  %factor.op.mul238 = mul i32 %i.cg, %i.co
  %i.cp = add nuw nsw i32 %i.bw, 1
  %i.cq = mul nsw i32 %i.cn, %i.cp
  %i.cr = select i1 %i.bx, i32 %i.cq, i32 0
  %i.cs = add nuw nsw i32 %i.ax, 1
  %i.ct = mul nsw i32 %i.co, %i.cs
  %i.cu = select i1 %i.ay, i32 %i.ct, i32 0
  %i.cv = icmp sgt i32 %i.ch, 0
  %i.cw = icmp sgt i32 %i.cg, 0
  %3 = sub i32 %i.co, %i.cf
  %4 = sub i32 %i.cn, %i.cf
  %5 = sub i32 %i.cu, %factor.op.mul238
  %6 = sub i32 %i.cr, %factor.op.mul
  %brmerge.not271 = and i1 %i.cv, %i.cw
  %i.cx = icmp sgt i32 %i.cf, 0
  %or.cond = and i1 %brmerge.not271, %i.cx
  br i1 %or.cond, label %.preheader218.us.us.preheader, label %._crit_edge.split

.preheader218.us.us.preheader:                    ; preds = %.preheader219.lr.ph
  %i.cy = add nsw i32 %i.bs, %i.ce
  %i.cz = mul nsw i32 %i.cm, %i.cy
  %i.da = select i1 %i.cl, i32 %i.cz, i32 0
  %i.db = add nsw i32 %i.bp, %i.da
  %i.dc = shl nsw i64 %i.ai, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.dc
  %scevgep274 = getelementptr i8, ptr %i.ae, i64 8
  %i.dd = add nsw i32 %i.cf, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 3                ; 2 uses
  %i.dg = getelementptr i8, ptr %scevgep274, i64 %i.dc
  %scevgep275 = getelementptr i8, ptr %i.dg, i64 %i.df
  %i.dh = shl nsw i64 %i.ac, 3                    ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.y, i64 %i.dh
  %scevgep279 = getelementptr i8, ptr %i.y, i64 8
  %i.di = getelementptr i8, ptr %scevgep279, i64 %i.dh
  %scevgep280 = getelementptr i8, ptr %i.di, i64 %i.df
  %i.dj = zext nneg i32 %i.cf to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cf, 4
  %n.vec = and i64 %i.dj, 2147483644              ; 5 uses
  %i.dk = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.dj
  br label %.preheader218.us.us

.preheader218.us.us:                              ; preds = %.preheader218.us.us.preheader, %._crit_edge227.split.us.us.us
  %.0184235.us.us = phi i32 [ %i.eu, %._crit_edge227.split.us.us.us ], [ %i.bn, %.preheader218.us.us.preheader ]
  %.0186234.us.us = phi i32 [ %i.ev, %._crit_edge227.split.us.us.us ], [ %i.db, %.preheader218.us.us.preheader ]
  %.1198233.us.us = phi i32 [ %i.ew, %._crit_edge227.split.us.us.us ], [ 0, %.preheader218.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader218.us.us
  %.1185226.us.us.us = phi i32 [ %.0184235.us.us, %.preheader218.us.us ], [ %i.er, %._crit_edge.us.us.us ]
  %.1187225.us.us.us = phi i32 [ %.0186234.us.us, %.preheader218.us.us ], [ %i.es, %._crit_edge.us.us.us ]
  %.1196224.us.us.us = phi i32 [ 0, %.preheader218.us.us ], [ %i.et, %._crit_edge.us.us.us ]
  %i.dl = sext i32 %.1185226.us.us.us to i64      ; 5 uses
  %i.dm = sext i32 %.1187225.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.dn = shl nsw i64 %i.dm, 3                    ; 2 uses
  %scevgep273 = getelementptr i8, ptr %scevgep, i64 %i.dn
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.dn
  %i.do = shl nsw i64 %i.dl, 3                    ; 2 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.do
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.do
  %bound0 = icmp ult ptr %scevgep273, %scevgep281
  %bound1 = icmp ult ptr %scevgep278, %scevgep276
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dp = add nsw i64 %n.vec, %i.dm               ; 2 uses
  %i.dq = add nsw i64 %n.vec, %i.dl               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ad, i64 %i.dl
  %invariant.gep291 = getelementptr [8 x i8], ptr %i.aj, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !25, !alias.scope !27
  %wide.load282 = load <2 x double>, ptr %i.dr, align 8, !tbaa !25, !alias.scope !27
  %gep292 = getelementptr [8 x i8], ptr %invariant.gep291, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %gep292, i64 16 ; 2 uses
  %wide.load283 = load <2 x double>, ptr %gep292, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %wide.load284 = load <2 x double>, ptr %i.ds, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load283)
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load282, <2 x double> %wide.load284)
  store <2 x double> %i.dt, ptr %gep292, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !25, !alias.scope !30, !noalias !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv253.ph = phi i64 [ %i.dm, %vector.memcheck ], [ %i.dm, %.preheader.us.us.us ], [ %i.dp, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.dl, %vector.memcheck ], [ %i.dl, %.preheader.us.us.us ], [ %i.dq, %middle.block ] ; 3 uses
  %.1194220.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dw = sub i32 %i.cf, %.1194220.us.us.us.ph
  %.neg = add i32 %.1194220.us.us.us.ph, 1
  %xtraiter = and i32 %i.dw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !25
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv253.ph ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !25
  %i.eb = call double @llvm.fmuladd.f64(double %0, double %i.dy, double %i.ea)
  store double %i.eb, ptr %i.dz, align 8, !tbaa !25
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next254.prol = add nsw i64 %indvars.iv253.ph, 1 ; 2 uses
  %i.ec = add nuw nsw i32 %.1194220.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa288.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next254.lcssa287.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next254.prol, %scalar.ph.prol ]
  %indvars.iv253.unr = phi i64 [ %indvars.iv253.ph, %scalar.ph.preheader ], [ %indvars.iv.next254.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1194220.us.us.us.unr = phi i32 [ %.1194220.us.us.us.ph, %scalar.ph.preheader ], [ %i.ec, %scalar.ph.prol ]
  %i.ed = icmp eq i32 %i.cf, %.neg
  br i1 %i.ed, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv253 = phi i64 [ %indvars.iv.next254.1, %scalar.ph ], [ %indvars.iv253.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1194220.us.us.us = phi i32 [ %i.eq, %scalar.ph ], [ %.1194220.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !25
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv253 ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !25
  %i.ei = call double @llvm.fmuladd.f64(double %0, double %i.ef, double %i.eh)
  store double %i.ei, ptr %i.eg, align 8, !tbaa !25
  %i.ej = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !25
  %i.em = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv253
  %i.en = getelementptr i8, ptr %i.em, i64 8      ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !25
  %i.ep = call double @llvm.fmuladd.f64(double %0, double %i.el, double %i.eo)
  store double %i.ep, ptr %i.en, align 8, !tbaa !25
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next254.1 = add nsw i64 %indvars.iv253, 2 ; 2 uses
  %i.eq = add nuw nsw i32 %.1194220.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.eq, %i.cf
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !36

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dq, %middle.block ], [ %indvars.iv.next.lcssa288.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next254.lcssa = phi i64 [ %i.dp, %middle.block ], [ %indvars.iv.next254.lcssa287.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next254.1, %scalar.ph ]
  %7 = trunc nsw i64 %indvars.iv.next254.lcssa to i32
  %8 = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.er = add nsw i32 %3, %8                      ; 2 uses
  %i.es = add nsw i32 %4, %7                      ; 2 uses
  %i.et = add nuw nsw i32 %.1196224.us.us.us, 1   ; 2 uses
  %exitcond258.not = icmp eq i32 %i.et, %i.cg
  br i1 %exitcond258.not, label %._crit_edge227.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !37

._crit_edge227.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.eu = add nsw i32 %5, %i.er
  %i.ev = add nsw i32 %6, %i.es
  %i.ew = add nuw nsw i32 %.1198233.us.us, 1      ; 2 uses
  %exitcond259.not = icmp eq i32 %i.ew, %i.ch
  br i1 %exitcond259.not, label %._crit_edge.split, label %.preheader218.us.us, !llvm.loop !38

._crit_edge.split:                                ; preds = %._crit_edge227.split.us.us.us, %.preheader219.lr.ph, %bb.f
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %i.ex = load i32, ptr %i.f, align 8, !tbaa !19
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next261, %i.ey
  br i1 %i.ez, label %bb.b, label %._crit_edge244, !llvm.loop !39

._crit_edge244:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

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
