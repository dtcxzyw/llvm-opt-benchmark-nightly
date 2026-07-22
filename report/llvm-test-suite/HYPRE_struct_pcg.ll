loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@HYPRE_StructPCGDestroy:bb.a
  %i.a = tail call i32 @hypre_PCGDestroy(ptr noundef %0) #5
  ret i32 %i.a
}

declare i32 @hypre_PCGDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetTol(ptr noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetTol(ptr noundef %0, double noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetTol(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetMaxIter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetMaxIter(ptr noundef %0, i32 noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetMaxIter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetTwoNorm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetTwoNorm(ptr noundef %0, i32 noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetTwoNorm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetRelChange(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetRelChange(ptr noundef %0, i32 noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetRelChange(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetPrecond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetPrecond(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGSetLogging(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGSetLogging(ptr noundef %0, i32 noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGSetLogging(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGGetNumIterations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGGetNumIterations(ptr noundef %0, ptr noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGGetNumIterations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HYPRE_StructPCGGetFinalRelativeResidualNorm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @HYPRE_PCGGetFinalRelativeResidualNorm(ptr noundef %0, ptr noundef %1) #5
  ret i32 %i.a
}

declare i32 @HYPRE_PCGGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @HYPRE_StructDiagScaleSetup(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @HYPRE_StructDiagScale(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge318

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv342 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next343, %._crit_edge.split ] ; 8 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv342 ; 4 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv342 ; 5 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv342 ; 5 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv342 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.m, align 4, !tbaa !4
  store i32 0, ptr %i.n, align 4, !tbaa !4
  %i.af = trunc nuw nsw i64 %indvars.iv342 to i32
  %i.ag = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.af, ptr noundef nonnull %i.a) #5 ; 5 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !31  ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv342
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.an ; 4 uses
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !31  ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv342
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.au ; 4 uses
  %i.aw = call i32 @hypre_BoxGetSize(ptr noundef %i.v, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ax = load i32, ptr %i.v, align 4, !tbaa !4   ; 3 uses
  %i.ay = load i32, ptr %i.y, align 4, !tbaa !4   ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.be = sub i32 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = sub nsw i32 %i.bi, %i.bd                ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 2 uses
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = sub nsw i32 %i.bl, %i.bn
  %i.bp = add nuw nsw i32 %i.bj, 1
  %i.bq = mul nsw i32 %i.bo, %i.bp
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.br = phi i32 [ %i.bq, %bb.c ], [ 0, %bb.b ]
  %i.bs = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bt = sub i32 %i.bs, %i.ay                    ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1                  ; 2 uses
  %i.bv = add nsw i32 %i.be, %i.br
  %i.bw = add i32 %i.bt, 1                        ; 2 uses
  %i.bx = mul nsw i32 %i.bw, %i.bv
  %i.by = select i1 %i.bu, i32 %i.bx, i32 0
  %i.bz = add nsw i32 %i.az, %i.by
  %i.ca = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.cb = sub i32 %i.ax, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.ce = sub i32 %i.bb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.ch, %i.cd                ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, -1                  ; 2 uses
  br i1 %i.cj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ck = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = sub nsw i32 %i.ck, %i.cm
  %i.co = add nuw nsw i32 %i.ci, 1
  %i.cp = mul nsw i32 %i.cn, %i.co
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ 0, %bb.d ]
  %i.cr = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.cs = sub i32 %i.cr, %i.ca                    ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 2 uses
  %i.cu = add nsw i32 %i.ce, %i.cq
  %i.cv = add i32 %i.cs, 1                        ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cu
  %i.cx = select i1 %i.ct, i32 %i.cw, i32 0
  %i.cy = add nsw i32 %i.cb, %i.cx
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !4  ; 2 uses
  %i.da = sub i32 %i.ax, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4  ; 2 uses
  %i.dd = sub i32 %i.bb, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = sub nsw i32 %i.dg, %i.dc                ; 3 uses
  %i.di = icmp sgt i32 %i.dh, -1                  ; 2 uses
  br i1 %i.di, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dj = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.dm = sub nsw i32 %i.dj, %i.dl
  %i.dn = add nuw nsw i32 %i.dh, 1
  %i.do = mul nsw i32 %i.dm, %i.dn
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dp = phi i32 [ %i.do, %bb.g ], [ 0, %bb.f ]
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !4   ; 10 uses
  %i.dr = load i32, ptr %i.s, align 4, !tbaa !4   ; 6 uses
  %i.ds = load i32, ptr %i.t, align 4, !tbaa !4   ; 3 uses
  %.0234 = call i32 @llvm.smax.i32(i32 %i.dr, i32 %i.dq)
  %.1235 = call i32 @llvm.smax.i32(i32 %i.ds, i32 %.0234)
  %i.dt = icmp sgt i32 %.1235, 0
  br i1 %i.dt, label %.preheader284.lr.ph, label %._crit_edge.split

.preheader284.lr.ph:                              ; preds = %bb.h
  %i.du = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dv = sub i32 %i.du, %i.cz                    ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1                  ; 2 uses
  %i.dx = add i32 %i.dv, 1                        ; 2 uses
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 0       ; 3 uses
  %factor.op.mul312 = mul i32 %i.dy, %i.dr
  %i.dz = select i1 %i.ct, i32 %i.cv, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.dr, %i.dz
  %i.ea = select i1 %i.bu, i32 %i.bw, i32 0       ; 3 uses
  %factor.op.mul311 = mul i32 %i.dr, %i.ea
  %i.eb = add nuw nsw i32 %i.dh, 1
  %i.ec = mul nsw i32 %i.dy, %i.eb
  %i.ed = select i1 %i.di, i32 %i.ec, i32 0
  %i.ee = add nuw nsw i32 %i.ci, 1
  %i.ef = mul nsw i32 %i.dz, %i.ee
  %i.eg = select i1 %i.cj, i32 %i.ef, i32 0
  %i.eh = add nuw nsw i32 %i.bj, 1
  %i.ei = mul nsw i32 %i.ea, %i.eh
  %i.ej = select i1 %i.bk, i32 %i.ei, i32 0
  %i.ek = icmp sgt i32 %i.ds, 0
  %i.el = icmp sgt i32 %i.dr, 0
  %4 = sub i32 %i.ea, %i.dq
  %5 = sub i32 %i.dz, %i.dq
  %6 = sub i32 %i.dy, %i.dq
  %7 = sub i32 %i.ej, %factor.op.mul311
  %8 = sub i32 %i.eg, %factor.op.mul
  %9 = sub i32 %i.ed, %factor.op.mul312
  %brmerge.not355 = and i1 %i.ek, %i.el
  %i.em = icmp sgt i32 %i.dq, 0
  %or.cond = and i1 %brmerge.not355, %i.em
  br i1 %or.cond, label %.preheader283.us.us.preheader, label %._crit_edge.split

.preheader283.us.us.preheader:                    ; preds = %.preheader284.lr.ph
  %i.en = add nsw i32 %i.dd, %i.dp
  %i.eo = mul nsw i32 %i.dx, %i.en
  %i.ep = select i1 %i.dw, i32 %i.eo, i32 0
  %i.eq = add nsw i32 %i.da, %i.ep
  %i.er = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.es = add i64 %i.er, %i.aj
  %i.et = add i64 %i.er, %i.aj
  %i.eu = zext nneg i32 %i.dq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dq, 2
  %n.vec = and i64 %i.eu, 2147483646              ; 6 uses
  %i.ev = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.eu
  br label %.preheader283.us.us

.preheader283.us.us:                              ; preds = %.preheader283.us.us.preheader, %._crit_edge295.split.us.us.us
  %.0238308.us.us = phi i32 [ %i.gn, %._crit_edge295.split.us.us.us ], [ %i.bz, %.preheader283.us.us.preheader ]
  %.0240307.us.us = phi i32 [ %i.gp, %._crit_edge295.split.us.us.us ], [ %i.eq, %.preheader283.us.us.preheader ]
  %.0243306.us.us = phi i32 [ %i.go, %._crit_edge295.split.us.us.us ], [ %i.cy, %.preheader283.us.us.preheader ]
  %.1255305.us.us = phi i32 [ %i.gq, %._crit_edge295.split.us.us.us ], [ 0, %.preheader283.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader283.us.us
  %.1239294.us.us.us = phi i32 [ %.0238308.us.us, %.preheader283.us.us ], [ %i.gj, %._crit_edge.us.us.us ]
  %.1241293.us.us.us = phi i32 [ %.0240307.us.us, %.preheader283.us.us ], [ %i.gl, %._crit_edge.us.us.us ]
  %.1244292.us.us.us = phi i32 [ %.0243306.us.us, %.preheader283.us.us ], [ %i.gk, %._crit_edge.us.us.us ]
  %.1253291.us.us.us = phi i32 [ 0, %.preheader283.us.us ], [ %i.gm, %._crit_edge.us.us.us ]
  %i.ew = sext i32 %.1239294.us.us.us to i64      ; 5 uses
  %i.ex = sext i32 %.1241293.us.us.us to i64      ; 5 uses
  %i.ey = sext i32 %.1244292.us.us.us to i64      ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.ez = shl nsw i64 %i.ey, 3                    ; 2 uses
  %i.fa = add i64 %i.es, %i.ez
  %i.fb = add nsw i64 %i.au, %i.ex
  %10 = shl nsw i64 %i.fb, 3
  %11 = add i64 %10, %i.aq
  %12 = sub i64 %11, %i.fa
  %diff.check = icmp ugt i64 %12, -16
  %i.fc = shl nsw i64 %i.ew, 3
  %i.fd = add i64 %i.et, %i.ez
  %13 = add i64 %i.fc, %i.ah
  %i.fe = sub i64 %13, %i.fd
  %diff.check358 = icmp ugt i64 %i.fe, -16
  %conflict.rdx = or i1 %diff.check, %diff.check358
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ff = add nsw i64 %n.vec, %i.ey               ; 2 uses
  %i.fg = add nsw i64 %n.vec, %i.ex               ; 2 uses
  %i.fh = add nsw i64 %n.vec, %i.ew               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.av, i64 %i.ex
  %invariant.gep370 = getelementptr [8 x i8], ptr %i.ag, i64 %i.ew
  %invariant.gep372 = getelementptr [8 x i8], ptr %i.ao, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !33
  %gep371 = getelementptr [8 x i8], ptr %invariant.gep370, i64 %index
  %wide.load359 = load <2 x double>, ptr %gep371, align 8, !tbaa !33
  %i.fi = fdiv <2 x double> %wide.load, %wide.load359
  %gep373 = getelementptr [8 x i8], ptr %invariant.gep372, i64 %index
  store <2 x double> %i.fi, ptr %gep373, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv333.ph = phi i64 [ %i.ey, %vector.memcheck ], [ %i.ey, %.preheader.us.us.us ], [ %i.ff, %middle.block ] ; 3 uses
  %indvars.iv331.ph = phi i64 [ %i.ex, %vector.memcheck ], [ %i.ex, %.preheader.us.us.us ], [ %i.fg, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.ew, %vector.memcheck ], [ %i.ew, %.preheader.us.us.us ], [ %i.fh, %middle.block ] ; 3 uses
  %.1251285.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.ev, %middle.block ] ; 4 uses
  %i.fk = sub i32 %i.dq, %.1251285.us.us.us.ph
  %.neg = add i32 %.1251285.us.us.us.ph, 1
  %xtraiter = and i32 %i.fk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv331.ph
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !33
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv.ph
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !33
  %i.fp = fdiv double %i.fm, %i.fo
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv333.ph
  store double %i.fp, ptr %i.fq, align 8, !tbaa !33
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next334.prol = add nsw i64 %indvars.iv333.ph, 1 ; 2 uses
  %indvars.iv.next332.prol = add nsw i64 %indvars.iv331.ph, 1 ; 2 uses
  %i.fr = add nuw nsw i32 %.1251285.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa365.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next334.lcssa364.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next334.prol, %scalar.ph.prol ]
  %indvars.iv.next332.lcssa363.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next332.prol, %scalar.ph.prol ]
  %indvars.iv333.unr = phi i64 [ %indvars.iv333.ph, %scalar.ph.preheader ], [ %indvars.iv.next334.prol, %scalar.ph.prol ]
  %indvars.iv331.unr = phi i64 [ %indvars.iv331.ph, %scalar.ph.preheader ], [ %indvars.iv.next332.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1251285.us.us.us.unr = phi i32 [ %.1251285.us.us.us.ph, %scalar.ph.preheader ], [ %i.fr, %scalar.ph.prol ]
  %i.fs = icmp eq i32 %i.dq, %.neg
  br i1 %i.fs, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv333 = phi i64 [ %indvars.iv.next334.1, %scalar.ph ], [ %indvars.iv333.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv331 = phi i64 [ %indvars.iv.next332.1, %scalar.ph ], [ %indvars.iv331.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1251285.us.us.us = phi i32 [ %i.gi, %scalar.ph ], [ %.1251285.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv331
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !33
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !33
  %i.fx = fdiv double %i.fu, %i.fw
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv333
  store double %i.fx, ptr %i.fy, align 8, !tbaa !33
  %i.fz = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv331
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !33
  %i.gc = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !33
  %i.gf = fdiv double %i.gb, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv333
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  store double %i.gf, ptr %i.gh, align 8, !tbaa !33
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next334.1 = add nsw i64 %indvars.iv333, 2 ; 2 uses
  %indvars.iv.next332.1 = add nsw i64 %indvars.iv331, 2 ; 2 uses
  %i.gi = add nuw nsw i32 %.1251285.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.gi, %i.dq
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !39

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.fh, %middle.block ], [ %indvars.iv.next.lcssa365.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next334.lcssa = phi i64 [ %i.ff, %middle.block ], [ %indvars.iv.next334.lcssa364.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next334.1, %scalar.ph ]
  %indvars.iv.next332.lcssa = phi i64 [ %i.fg, %middle.block ], [ %indvars.iv.next332.lcssa363.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next332.1, %scalar.ph ]
  %14 = trunc nsw i64 %indvars.iv.next334.lcssa to i32
  %15 = trunc nsw i64 %indvars.iv.next332.lcssa to i32
  %16 = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.gj = add nsw i32 %4, %16                     ; 2 uses
  %i.gk = add nsw i32 %5, %14                     ; 2 uses
  %i.gl = add nsw i32 %6, %15                     ; 2 uses
  %i.gm = add nuw nsw i32 %.1253291.us.us.us, 1   ; 2 uses
  %exitcond340.not = icmp eq i32 %i.gm, %i.dr
  br i1 %exitcond340.not, label %._crit_edge295.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !40

._crit_edge295.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.gn = add nsw i32 %7, %i.gj
  %i.go = add nsw i32 %8, %i.gk
  %i.gp = add nsw i32 %9, %i.gl
  %i.gq = add nuw nsw i32 %.1255305.us.us, 1      ; 2 uses
  %exitcond341.not = icmp eq i32 %i.gq, %i.ds
  br i1 %exitcond341.not, label %._crit_edge.split, label %.preheader283.us.us, !llvm.loop !41

._crit_edge.split:                                ; preds = %._crit_edge295.split.us.us.us, %.preheader284.lr.ph, %bb.h
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.gr = load i32, ptr %i.g, align 8, !tbaa !25
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next343, %i.gs
  br i1 %i.gt, label %bb.b, label %._crit_edge318, !llvm.loop !42

._crit_edge318:                                   ; preds = %._crit_edge.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS25hypre_StructSolver_struct", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"hypre_StructMatrix_struct", !5, i64 0, !13, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !15, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !17, i64 64, !5, i64 72, !19, i64 80, !6, i64 88, !5, i64 112, !20, i64 120, !5, i64 128}
!13 = !{!"p1 _ZTS23hypre_StructGrid_struct", !10, i64 0}
!14 = !{!"p1 _ZTS26hypre_StructStencil_struct", !10, i64 0}
!15 = !{!"p1 _ZTS21hypre_BoxArray_struct", !10, i64 0}
!16 = !{!"p1 double", !10, i64 0}
!17 = !{!"p2 int", !18, i64 0}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!"p1 _ZTS20hypre_CommPkg_struct", !10, i64 0}
!21 = !{!22, !15, i64 8}
!22 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !15, i64 8, !19, i64 16, !23, i64 24, !5, i64 32, !24, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!23 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !10, i64 0}
!24 = !{!"p1 _ZTS16hypre_Box_struct", !10, i64 0}
!25 = !{!26, !5, i64 8}
!26 = !{!"hypre_BoxArray_struct", !24, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!26, !24, i64 0}
!28 = !{!12, !15, i64 40}
!29 = !{!30, !15, i64 16}
!30 = !{!"hypre_StructVector_struct", !5, i64 0, !13, i64 8, !15, i64 16, !16, i64 24, !5, i64 32, !5, i64 36, !19, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!31 = !{!30, !16, i64 24}
!32 = !{!30, !19, i64 40}
!33 = !{!34, !34, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = distinct !{!35, !36, !37, !38}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = distinct !{!39, !36, !37}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !36}
!42 = distinct !{!42, !36}
end_hunk_0
