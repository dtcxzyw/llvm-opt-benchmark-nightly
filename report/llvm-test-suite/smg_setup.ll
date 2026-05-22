begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGSetup(ptr noundef captures(none) initializes((44, 48)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 12 uses
  %i.b = alloca [3 x i32], align 8                ; 12 uses
  %i.c = alloca [3 x i32], align 8                ; 23 uses
  %i.d = alloca [3 x i32], align 4                ; 9 uses
  %i.e = alloca [3 x i32], align 8                ; 23 uses
  %i.f = alloca [6 x i32], align 16               ; 4 uses
  %i.g = alloca [6 x i32], align 16               ; 7 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !8      ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27   ; 4 uses
  %i.s = add nsw i32 %i.r, -1                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.s, ptr %i.t, align 4, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = tail call ptr @hypre_BoxDuplicate(ptr noundef %i.x) #5 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 5 uses
  %i.aa = sext i32 %i.s to i64                    ; 5 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.af, i32 -1)
  %spec.select = add nsw i32 %i.ag, 1
  %i.ah = tail call i32 @hypre_Log2(i32 noundef %spec.select) #5
  %i.ai = add nsw i32 %i.ah, 2                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %. = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ak)
  %.0 = select i1 %i.al, i32 %., i32 %i.ai        ; 3 uses
  store i32 %.0, ptr %i.aj, align 4, !tbaa !35
  %i.am = shl i32 %.0, 3                          ; 2 uses
  %i.an = tail call ptr @hypre_MAlloc(i32 noundef %i.am) #5 ; 10 uses
  %i.ao = tail call ptr @hypre_MAlloc(i32 noundef %i.am) #5 ; 5 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !36
  %i.ap = tail call i32 @hypre_StructGridRef(ptr noundef %i.v, ptr noundef %i.an) #5 ; 0 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aa ; 10 uses
  %i.ar = add nsw i32 %.0, -1                     ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.ba = zext i32 %i.ar to i64
  %i.bb = load <2 x i32>, ptr %i.i, align 8, !tbaa !4
  store <2 x i32> %i.bb, ptr %i.c, align 8, !tbaa !4
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !4
  store i32 %i.bc, ptr %i.at, align 8, !tbaa !4
  %i.bd = load <2 x i32>, ptr %i.j, align 4, !tbaa !4
  store <2 x i32> %i.bd, ptr %i.e, align 8, !tbaa !4
  %i.be = load i32, ptr %i.az, align 4, !tbaa !4
  store i32 %i.be, ptr %i.av, align 8, !tbaa !4
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.bf = shl nsw i32 %.pre, 1
  store i32 %i.bf, ptr %i.aq, align 4, !tbaa !4
  %i.bg = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.bi = icmp eq i32 %i.bg, %i.bh
  %i.bj = icmp eq i32 %i.ar, 0
  %or.cond.peel = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.bk = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.bl = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.y) #5 ; 0 uses
  %i.bm = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.z) #5 ; 0 uses
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bp = call i32 @hypre_StructCoarsen(ptr noundef %i.bn, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %i.bo) #5 ; 0 uses
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bs = call i32 @hypre_StructCoarsen(ptr noundef %i.bq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %i.br) #5 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !4
  store i32 0, ptr %i.as, align 4, !tbaa !4
  store i32 0, ptr %i.at, align 8, !tbaa !4
  store i32 1, ptr %i.e, align 8, !tbaa !4
  store i32 1, ptr %i.au, align 4, !tbaa !4
  store i32 1, ptr %i.av, align 8, !tbaa !4
  %.pre542562 = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.bt = shl nsw i32 %.pre542562, 1
  store i32 %i.bt, ptr %i.aq, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.bw = icmp eq i32 %i.bu, %i.bv
  %i.bx = icmp eq i32 %i.ar, 1
  %or.cond563 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond563, label %.loopexit, label %.lr.ph565

.lr.ph565:                                        ; preds = %.peel.next, %.lr.ph565
  %indvars.iv564 = phi i64 [ %indvars.iv.next, %.lr.ph565 ], [ 1, %.peel.next ] ; 2 uses
  %i.by = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.bz = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.y) #5 ; 0 uses
  %i.ca = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.z, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.z) #5 ; 0 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv564 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv564, 1 ; 5 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.ce = call i32 @hypre_StructCoarsen(ptr noundef %i.cc, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %i.cd) #5 ; 0 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.ch = call i32 @hypre_StructCoarsen(ptr noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %i.cg) #5 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !4
  store i32 0, ptr %i.as, align 4, !tbaa !4
  store i32 0, ptr %i.at, align 8, !tbaa !4
  store i32 1, ptr %i.e, align 8, !tbaa !4
  store i32 1, ptr %i.au, align 4, !tbaa !4
  store i32 1, ptr %i.av, align 8, !tbaa !4
  %.pre542 = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.ci = shl nsw i32 %.pre542, 1
  store i32 %i.ci, ptr %i.aq, align 4, !tbaa !4
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.ck = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.cl = icmp eq i32 %i.cj, %i.ck
  %i.cm = icmp eq i64 %indvars.iv.next, %i.ba
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond, label %..loopexit_crit_edge, label %.lr.ph565, !llvm.loop !37

..loopexit_crit_edge:                             ; preds = %.lr.ph565
  %i.cn = trunc i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %..loopexit_crit_edge, %bb.a
  %.0477.lcssa.wide = phi i32 [ 0, %bb.a ], [ %i.cn, %..loopexit_crit_edge ], [ 1, %.peel.next ] ; 7 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.aa
  %i.cp = add nuw nsw i32 %.0477.lcssa.wide, 1    ; 2 uses
  %i.cq = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.y) #5 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cp, ptr %i.cr, align 8, !tbaa !39
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %i.cs, align 8, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.ao, ptr %i.ct, align 8, !tbaa !41
  %i.cu = shl i32 %i.cp, 3                        ; 9 uses
  %i.cv = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 8 uses
  %i.cw = shl i32 %.0477.lcssa.wide, 3            ; 2 uses
  %i.cx = call ptr @hypre_MAlloc(i32 noundef %i.cw) #5 ; 4 uses
  %i.cy = call ptr @hypre_MAlloc(i32 noundef %i.cw) #5 ; 3 uses
  %i.cz = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 12 uses
  %i.da = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 13 uses
  %i.db = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 13 uses
  %i.dc = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 15 uses
  %i.dd = call ptr @hypre_StructMatrixRef(ptr noundef %1) #5
  store ptr %i.dd, ptr %i.cv, align 8, !tbaa !42
  %i.de = call ptr @hypre_StructVectorRef(ptr noundef %2) #5
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !44
  %i.df = call ptr @hypre_StructVectorRef(ptr noundef %3) #5
  store ptr %i.df, ptr %i.da, align 8, !tbaa !44
  %.not485.not496 = icmp sgt i32 %i.r, 0
  br i1 %.not485.not496, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.preheader566, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = shl nuw nsw i64 %index, 3
  %i.dh = shl i64 %index, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> splat (i32 1), ptr %i.di, align 16, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.dk, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader566

.lr.ph.preheader566:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv519.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader566, %.lr.ph
  %indvars.iv519 = phi i64 [ %indvars.iv.next520, %.lr.ph ], [ %indvars.iv519.ph, %.lr.ph.preheader566 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv519, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 2 uses
  store i32 1, ptr %i.dm, align 8, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.loopexit
  %i.do = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.dp = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.do) #5 ; 2 uses
  store ptr %i.dp, ptr %i.db, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dr = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.dp, ptr noundef nonnull %i.dq) #5 ; 0 uses
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.dt = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.ds) #5 ; 0 uses
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !51
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.dy = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.dx) #5 ; 2 uses
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ea = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.dy, ptr noundef nonnull %i.dz) #5 ; 0 uses
  %i.eb = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.ec = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.eb) #5 ; 0 uses
  %i.ed = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !51
  %i.eg = add nsw i32 %i.ef, %i.dw                ; 2 uses
  %.not513 = icmp eq i32 %.0477.lcssa.wide, 0     ; 4 uses
  br i1 %.not513, label %._crit_edge502, label %.lr.ph501

.lr.ph501:                                        ; preds = %._crit_edge
  %wide.trip.count525 = zext i32 %.0477.lcssa.wide to i64
  br label %bb.b

end_hunk_0
