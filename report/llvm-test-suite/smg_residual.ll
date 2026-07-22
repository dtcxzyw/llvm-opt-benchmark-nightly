loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hypre_SMGResidualSetup:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = tail call ptr @hypre_BoxArrayDuplicate(ptr noundef %i.q) #5 ; 2 uses
  %i.s = tail call i32 @hypre_ProjectBoxArray(ptr noundef %i.r, ptr noundef %0, ptr noundef nonnull %i.i) #5 ; 0 uses
  %i.t = call i32 @hypre_CreateComputeInfo(ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.v = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.u, ptr noundef %0, ptr noundef nonnull %i.i) #5 ; 0 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.x = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.w, ptr noundef %0, ptr noundef nonnull %i.i) #5 ; 0 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = call i32 @hypre_ComputePkgCreate(ptr noundef %i.y, ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef nonnull %i.i, ptr noundef %i.k, ptr noundef %i.af, i32 noundef 1, ptr noundef nonnull %i.h) #5 ; 0 uses
  %i.ah = call ptr @hypre_StructMatrixRef(ptr noundef %1) #5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = call ptr @hypre_StructVectorRef(ptr noundef %2) #5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !35
  %i.al = call ptr @hypre_StructVectorRef(ptr noundef %3) #5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.al, ptr %i.am, align 8, !tbaa !36
  %i.an = call ptr @hypre_StructVectorRef(ptr noundef %4) #5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.ap, align 8, !tbaa !38
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !42
  %i.aw = add nsw i32 %i.av, %i.at
  %i.ax = load i32, ptr %i.i, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !4
  %i.ba = mul nsw i32 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = mul nsw i32 %i.ba, %i.bc
  %i.be = sdiv i32 %i.aw, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare ptr @hypre_BoxArrayDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_CreateComputeInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArrayArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructVectorRef(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGResidual(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = tail call i32 @hypre_BeginTiming(i32 noundef %i.i) #5 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46
  %.fr661 = freeze i32 %i.o                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = icmp slt i32 %.fr661, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %wide.trip.count = zext nneg i32 %.fr661 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge652
  %i.aj = phi i1 [ true, %bb.a ], [ false, %._crit_edge652 ]
  %.0481656 = phi i1 [ false, %bb.a ], [ true, %._crit_edge652 ]
  br i1 %.0481656, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.al = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.g, ptr noundef %i.ak, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !48  ; 2 uses
  %i.an = load i32, ptr %i.r, align 8, !tbaa !50
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %.loopexit574

.lr.ph:                                           ; preds = %bb.c, %._crit_edge.split
  %indvars.iv686 = phi i64 [ %indvars.iv.next687, %._crit_edge.split ], [ 0, %bb.c ] ; 6 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv686 ; 4 uses
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv686 ; 5 uses
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv686 ; 5 uses
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !47  ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv686
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bc ; 6 uses
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !47  ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv686
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bj ; 6 uses
  %i.bl = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.aq, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.bm = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  %i.bn = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.bo = sub i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 2 uses
  %i.bt = sub i32 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = sub nsw i32 %i.bx, %i.bs                ; 3 uses
  %i.bz = icmp sgt i32 %i.by, -1                  ; 2 uses
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = add nuw nsw i32 %i.by, 1
  %i.cf = mul nsw i32 %i.cd, %i.ce
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.cg = phi i32 [ %i.cf, %bb.d ], [ 0, %.lr.ph ]
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.ch, %i.bn                ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, -1                  ; 2 uses
  %i.ck = add nsw i32 %i.bt, %i.cg
  %i.cl = add nuw nsw i32 %i.ci, 1                ; 3 uses
  %i.cm = mul nsw i32 %i.cl, %i.ck
  %i.cn = select i1 %i.cj, i32 %i.cm, i32 0
  %i.co = add i32 %i.bo, %i.cn
  %i.cp = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %i.cq = sub i32 %i.bm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %i.ct = sub i32 %i.bq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = sub nsw i32 %i.cw, %i.cs                ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, -1                  ; 2 uses
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cz = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = sub nsw i32 %i.cz, %i.db
  %i.dd = add nuw nsw i32 %i.cx, 1
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.df = phi i32 [ %i.de, %bb.f ], [ 0, %bb.e ]
  %i.dg = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.dh = sub nsw i32 %i.dg, %i.cp                ; 2 uses
  %i.di = icmp sgt i32 %i.dh, -1                  ; 2 uses
  %i.dj = add nsw i32 %i.ct, %i.df
  %i.dk = add nuw nsw i32 %i.dh, 1                ; 3 uses
  %i.dl = mul nsw i32 %i.dk, %i.dj
  %i.dm = select i1 %i.di, i32 %i.dl, i32 0
  %i.dn = add i32 %i.cq, %i.dm
  %i.do = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dp = load i32, ptr %i.y, align 8, !tbaa !4
  %i.dq = mul nsw i32 %i.dp, %i.cl
  %i.dr = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ds = mul nsw i32 %i.dr, %i.cl
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.dt = phi i32 [ %i.dq, %bb.h ], [ 0, %bb.g ]
  %i.du = phi i32 [ %i.ds, %bb.h ], [ 0, %bb.g ]
  %i.dv = add nuw nsw i32 %i.by, 1
  %i.dw = mul nsw i32 %i.du, %i.dv
  %i.dx = select i1 %i.bz, i32 %i.dw, i32 0
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dy = load i32, ptr %i.y, align 8, !tbaa !4
  %i.dz = mul nsw i32 %i.dy, %i.dk
  %i.ea = load i32, ptr %i.z, align 4, !tbaa !4
  %i.eb = mul nsw i32 %i.ea, %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ec = phi i32 [ %i.dz, %bb.j ], [ 0, %bb.i ]
  %i.ed = phi i32 [ %i.eb, %bb.j ], [ 0, %bb.i ]
  %i.ee = load i32, ptr %i.b, align 4, !tbaa !4   ; 7 uses
  %i.ef = load i32, ptr %i.aa, align 4, !tbaa !4  ; 3 uses
  %i.eg = load i32, ptr %i.ab, align 4, !tbaa !4  ; 3 uses
  %.0496 = call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.ee)
  %.1497 = call i32 @llvm.smax.i32(i32 %i.eg, i32 %.0496)
  %i.eh = icmp sgt i32 %.1497, 0
  br i1 %i.eh, label %.preheader572.lr.ph, label %._crit_edge.split

.preheader572.lr.ph:                              ; preds = %bb.k
  %i.ei = add nuw nsw i32 %i.cx, 1
  %i.ej = mul nsw i32 %i.ed, %i.ei
  %i.ek = select i1 %i.cy, i32 %i.ej, i32 0
  %i.el = icmp sgt i32 %i.eg, 0
  %i.em = icmp sgt i32 %i.ef, 0
  %brmerge.not744 = and i1 %i.el, %i.em
  %i.en = icmp sgt i32 %i.ee, 0
  %or.cond = and i1 %brmerge.not744, %i.en
  br i1 %or.cond, label %.preheader571.us.us.preheader, label %._crit_edge.split

.preheader571.us.us.preheader:                    ; preds = %.preheader572.lr.ph
  %i.eo = sext i32 %i.do to i64                   ; 10 uses
  %i.ep = zext nneg i32 %i.ee to i64              ; 2 uses
  %min.iters.check801 = icmp ult i32 %i.ee, 4
  %ident.check798.not = icmp ne i32 %i.do, 1
  %or.cond797 = select i1 %min.iters.check801, i1 true, i1 %ident.check798.not
  %n.vec786 = and i64 %i.ep, 2147483644           ; 5 uses
  %i.eq = trunc nuw nsw i64 %n.vec786 to i32
  %cmp.n793 = icmp eq i64 %n.vec786, %i.ep
  br label %.preheader571.us.us

.preheader571.us.us:                              ; preds = %.preheader571.us.us.preheader, %._crit_edge582.split.us.us.us
  %.0473591.us.us = phi i32 [ %i.dn, %.preheader571.us.us.preheader ], [ %i.gc, %._crit_edge582.split.us.us.us ] ; 2 uses
  %.0476590.us.us = phi i32 [ %i.co, %.preheader571.us.us.preheader ], [ %i.gb, %._crit_edge582.split.us.us.us ] ; 2 uses
  %.1509589.us.us = phi i32 [ 0, %.preheader571.us.us.preheader ], [ %i.ga, %._crit_edge582.split.us.us.us ]
  br label %vector.memcheck781

vector.memcheck781:                               ; preds = %._crit_edge.us.us.us, %.preheader571.us.us
  %indvars.iv687 = phi i32 [ %i.fz, %._crit_edge.us.us.us ], [ %.0473591.us.us, %.preheader571.us.us ] ; 3 uses
  %indvars.iv681 = phi i32 [ %i.fy, %._crit_edge.us.us.us ], [ %.0476590.us.us, %.preheader571.us.us ] ; 3 uses
  %.1505579.us.us.us = phi i32 [ %i.fx, %._crit_edge.us.us.us ], [ 0, %.preheader571.us.us ]
  %5 = sext i32 %indvars.iv687 to i64
  %i.er = add nsw i64 %i.bj, %5
  %i.es = shl nsw i64 %i.er, 3
  %i.et = add i64 %i.es, %i.bf
  %6 = sext i32 %indvars.iv681 to i64
  %i.eu = add nsw i64 %i.bc, %6
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = add i64 %i.ev, %i.ay
  %7 = sext i32 %indvars.iv681 to i64             ; 3 uses
  %8 = sext i32 %indvars.iv687 to i64             ; 3 uses
  %i.ex = sub i64 %i.ew, %i.et
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond816 = select i1 %or.cond797, i1 true, i1 %diff.check
  br i1 %or.cond816, label %scalar.ph782.preheader, label %vector.ph784

vector.ph784:                                     ; preds = %vector.memcheck781
  %i.ey = add nsw i64 %n.vec786, %8
  %i.ez = add nsw i64 %n.vec786, %7
  %invariant.gep = getelementptr [8 x i8], ptr %i.bd, i64 %7
  %invariant.gep820 = getelementptr [8 x i8], ptr %i.bk, i64 %8
  br label %vector.body787

vector.body787:                                   ; preds = %vector.body787, %vector.ph784
  %index788 = phi i64 [ 0, %vector.ph784 ], [ %index.next791, %vector.body787 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index788 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load789.a = load <2 x double>, ptr %gep, align 8, !tbaa !54
  %wide.load790.a = load <2 x double>, ptr %i.fa, align 8, !tbaa !54
  %gep821 = getelementptr [8 x i8], ptr %invariant.gep820, i64 %index788 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep821, i64 16
  store <2 x double> %wide.load789.a, ptr %gep821, align 8, !tbaa !54
  store <2 x double> %wide.load790.a, ptr %i.fb, align 8, !tbaa !54
  %index.next791 = add nuw i64 %index788, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next791, %n.vec786
  br i1 %i.fc, label %middle.block792, label %vector.body787, !llvm.loop !56

middle.block792:                                  ; preds = %vector.body787
  br i1 %cmp.n793, label %._crit_edge.us.us.us, label %scalar.ph782.preheader

scalar.ph782.preheader:                           ; preds = %vector.memcheck781, %middle.block792
  %indvars.iv689.ph = phi i64 [ %8, %vector.memcheck781 ], [ %i.ey, %middle.block792 ] ; 2 uses
  %indvars.iv683.ph = phi i64 [ %7, %vector.memcheck781 ], [ %i.ez, %middle.block792 ] ; 2 uses
  %.1501575.us.us.us.ph = phi i32 [ 0, %vector.memcheck781 ], [ %i.eq, %middle.block792 ] ; 4 uses
  %i.fd = sub i32 %i.ee, %.1501575.us.us.us.ph
  %xtraiter = and i32 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol

scalar.ph782.prol:                                ; preds = %scalar.ph782.preheader, %scalar.ph782.prol
  %indvars.iv679.prol = phi i64 [ %indvars.iv.next680.prol, %scalar.ph782.prol ], [ %indvars.iv689.ph, %scalar.ph782.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph782.prol ], [ %indvars.iv683.ph, %scalar.ph782.preheader ] ; 2 uses
  %.1501575.us.us.us.prol = phi i32 [ %i.fh, %scalar.ph782.prol ], [ %.1501575.us.us.us.ph, %scalar.ph782.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph782.prol ], [ 0, %scalar.ph782.preheader ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.prol
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !54
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv679.prol
  store double %i.ff, ptr %i.fg, align 8, !tbaa !54
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, %i.eo ; 2 uses
  %indvars.iv.next680.prol = add nsw i64 %indvars.iv679.prol, %i.eo ; 2 uses
  %i.fh = add nuw nsw i32 %.1501575.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph782.prol.loopexit, label %scalar.ph782.prol, !llvm.loop !60

scalar.ph782.prol.loopexit:                       ; preds = %scalar.ph782.prol, %scalar.ph782.preheader
  %indvars.iv679.unr = phi i64 [ %indvars.iv689.ph, %scalar.ph782.preheader ], [ %indvars.iv.next680.prol, %scalar.ph782.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv683.ph, %scalar.ph782.preheader ], [ %indvars.iv.next.prol, %scalar.ph782.prol ]
  %.1501575.us.us.us.unr = phi i32 [ %.1501575.us.us.us.ph, %scalar.ph782.preheader ], [ %i.fh, %scalar.ph782.prol ]
  %i.fi = sub i32 %.1501575.us.us.us.ph, %i.ee
  %i.fj = icmp ugt i32 %i.fi, -4
  br i1 %i.fj, label %._crit_edge.us.us.us, label %scalar.ph782

scalar.ph782:                                     ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782
  %indvars.iv679 = phi i64 [ %indvars.iv.next680.3, %scalar.ph782 ], [ %indvars.iv679.unr, %scalar.ph782.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph782 ], [ %indvars.iv.unr, %scalar.ph782.prol.loopexit ] ; 2 uses
  %.1501575.us.us.us = phi i32 [ %i.fw, %scalar.ph782 ], [ %.1501575.us.us.us.unr, %scalar.ph782.prol.loopexit ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !54
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv679
  store double %i.fl, ptr %i.fm, align 8, !tbaa !54
  %indvars.iv.next.a = add nsw i64 %indvars.iv, %i.eo ; 2 uses
  %indvars.iv.next680 = add nsw i64 %indvars.iv679, %i.eo ; 2 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next.a
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !54
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680
  store double %i.fo, ptr %i.fp, align 8, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next.a, %i.eo ; 2 uses
  %indvars.iv.next680.1 = add nsw i64 %indvars.iv.next680, %i.eo ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next.1
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !54
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680.1
  store double %i.fr, ptr %i.fs, align 8, !tbaa !54
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %i.eo ; 2 uses
  %indvars.iv.next680.2 = add nsw i64 %indvars.iv.next680.1, %i.eo ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next.2
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !54
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next680.2
  store double %i.fu, ptr %i.fv, align 8, !tbaa !54
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.next.2, %i.eo
  %indvars.iv.next680.3 = add nsw i64 %indvars.iv.next680.2, %i.eo
  %i.fw = add nuw nsw i32 %.1501575.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.fw, %i.ee
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph782, !llvm.loop !62

._crit_edge.us.us.us:                             ; preds = %scalar.ph782.prol.loopexit, %scalar.ph782, %middle.block792
  %i.fx = add nuw nsw i32 %.1505579.us.us.us, 1   ; 2 uses
  %i.fy = add i32 %indvars.iv681, %i.dt
  %i.fz = add i32 %indvars.iv687, %i.ec
  %exitcond684.not = icmp eq i32 %i.fx, %i.ef
  br i1 %exitcond684.not, label %._crit_edge582.split.us.us.us, label %vector.memcheck781, !llvm.loop !63

._crit_edge582.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ga = add nuw nsw i32 %.1509589.us.us, 1      ; 2 uses
  %i.gb = add i32 %.0476590.us.us, %i.dx
  %i.gc = add i32 %.0473591.us.us, %i.ek
  %exitcond685.not = icmp eq i32 %i.ga, %i.eg
  br i1 %exitcond685.not, label %._crit_edge.split, label %.preheader571.us.us, !llvm.loop !64

._crit_edge.split:                                ; preds = %._crit_edge582.split.us.us.us, %.preheader572.lr.ph, %bb.k
  %indvars.iv.next687 = add nuw nsw i64 %indvars.iv686, 1 ; 2 uses
  %i.gd = load i32, ptr %i.r, align 8, !tbaa !50
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next687, %i.ge
  br i1 %i.gf, label %.lr.ph, label %.loopexit574, !llvm.loop !65

bb.l:                                             ; preds = %bb.b
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.gh = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.gg) #5 ; 0 uses
  %i.gi = load ptr, ptr %i.ac, align 8, !tbaa !68
  br label %.loopexit574

.loopexit574:                                     ; preds = %._crit_edge.split, %bb.c, %bb.l
  %.1463 = phi ptr [ %i.gi, %bb.l ], [ %i.am, %bb.c ], [ %i.am, %._crit_edge.split ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1463, i64 8 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !69 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, 1
  %brmerge740 = or i1 %i.gl, %i.af
  br i1 %brmerge740, label %._crit_edge652, label %.lr.ph651.split.us

.lr.ph651.split.us:                               ; preds = %.loopexit574, %._crit_edge648.us
  %i.gm = phi i32 [ %i.hi, %._crit_edge648.us ], [ %i.gk, %.loopexit574 ]
  %indvars.iv710 = phi i64 [ %indvars.iv.next711, %._crit_edge648.us ], [ 0, %.loopexit574 ] ; 8 uses
  %i.gn = load ptr, ptr %.1463, align 8, !tbaa !72
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv710
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !73 ; 2 uses
  %i.gq = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !52
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %indvars.iv710 ; 5 uses
  %i.gt = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !52
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %indvars.iv710 ; 6 uses
  %i.gw = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !52
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %i.gx, i64 %indvars.iv710 ; 5 uses
  %i.gz = load ptr, ptr %i.w, align 8, !tbaa !47  ; 3 uses
  %i.ha = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv710
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.hd ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !50
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph647.us, label %._crit_edge648.us

._crit_edge648.us.loopexit:                       ; preds = %._crit_edge644.us
  %.pre714 = load i32, ptr %i.gj, align 8, !tbaa !69
  br label %._crit_edge648.us

._crit_edge648.us:                                ; preds = %._crit_edge648.us.loopexit, %.lr.ph651.split.us
  %i.hi = phi i32 [ %.pre714, %._crit_edge648.us.loopexit ], [ %i.gm, %.lr.ph651.split.us ] ; 2 uses
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next711, %i.hj
  br i1 %i.hk, label %.lr.ph651.split.us, label %._crit_edge652, !llvm.loop !75

.lr.ph643.us:                                     ; preds = %.lr.ph647.us, %._crit_edge644.us
  %.pre713 = phi i32 [ %.pre713.pre, %.lr.ph647.us ], [ %i.ka, %._crit_edge644.us ]
  %.pre = phi i32 [ %.pre.pre, %.lr.ph647.us ], [ %i.kc, %._crit_edge644.us ]
  %indvars.iv707.a = phi i64 [ 0, %.lr.ph647.us ], [ %indvars.iv.next708, %._crit_edge644.us ] ; 2 uses
  %i.hl = load ptr, ptr %i.gp, align 8, !tbaa !52
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %indvars.iv707.a ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge636.split.us, %.lr.ph643.us
  %i.hp = phi i32 [ %i.ka, %._crit_edge636.split.us ], [ %.pre713, %.lr.ph643.us ]
  %i.hq = phi i32 [ %i.kc, %._crit_edge636.split.us ], [ %.pre, %.lr.ph643.us ]
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %._crit_edge636.split.us ], [ 0, %.lr.ph643.us ] ; 3 uses
  %i.hr = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 3 uses
  %i.hs = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv710
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !78
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv703
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hx ; 4 uses
  %i.hz = load ptr, ptr %i.p, align 8, !tbaa !47  ; 3 uses
  %i.ia = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv710
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.id
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv703 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.ij = sub nsw i32 %i.hq, %i.hp                ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, -1
  br i1 %i.ik, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = add nuw nsw i32 %i.ij, 1
  %i.io = mul nsw i32 %i.im, %i.in
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ip = phi i32 [ %i.io, %bb.n ], [ 0, %bb.m ]
  %i.iq = load i32, ptr %i.pm, align 4, !tbaa !4
  %i.ir = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.is = sub nsw i32 %i.iq, %i.ir                ; 2 uses
  %i.it = add nsw i32 %i.ip, %i.ii
  %i.iu = add nuw nsw i32 %i.is, 1
  %i.iv = mul nsw i32 %i.iu, %i.it
  %.inv.us = icmp slt i32 %i.is, 0
  %i.iw = select i1 %.inv.us, i32 0, i32 %i.iv
  %i.ix = add i32 %i.iw, %i.ig
  %i.iy = sext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.iy ; 4 uses
  %i.ja = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.hm, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.jb = load i32, ptr %i.hm, align 4, !tbaa !4  ; 3 uses
  %i.jc = load i32, ptr %i.gs, align 4, !tbaa !4  ; 2 uses
  %i.jd = sub i32 %i.jb, %i.jc
  %i.je = load i32, ptr %i.hn, align 4, !tbaa !4  ; 3 uses
  %i.jf = load i32, ptr %i.pp, align 4, !tbaa !4  ; 2 uses
  %i.jg = sub i32 %i.je, %i.jf
  %i.jh = load i32, ptr %i.pr, align 4, !tbaa !4
  %i.ji = sub nsw i32 %i.jh, %i.jf                ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, -1                  ; 2 uses
  br i1 %i.jj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jk = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.jl = load i32, ptr %i.ps, align 4, !tbaa !4
  %i.jm = sub nsw i32 %i.jk, %i.jl
  %i.jn = add nuw nsw i32 %i.ji, 1
  %i.jo = mul nsw i32 %i.jm, %i.jn
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jp = phi i32 [ %i.jo, %bb.p ], [ 0, %bb.o ]
  %i.jq = load i32, ptr %i.pq, align 4, !tbaa !4
  %i.jr = sub nsw i32 %i.jq, %i.jc                ; 2 uses
  %i.js = icmp sgt i32 %i.jr, -1                  ; 2 uses
  %i.jt = add nsw i32 %i.jg, %i.jp
  %i.ju = add nuw nsw i32 %i.jr, 1                ; 3 uses
  %i.jv = mul nsw i32 %i.ju, %i.jt
  %i.jw = select i1 %i.js, i32 %i.jv, i32 0
  %i.jx = add i32 %i.jd, %i.jw
  %i.jy = load i32, ptr %i.gv, align 4, !tbaa !4  ; 2 uses
  %i.jz = sub i32 %i.jb, %i.jy
  %i.ka = load i32, ptr %i.po, align 4, !tbaa !4  ; 4 uses
  %i.kb = sub i32 %i.je, %i.ka
  %i.kc = load i32, ptr %i.pn, align 4, !tbaa !4  ; 3 uses
  %i.kd = sub nsw i32 %i.kc, %i.ka                ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, -1                  ; 2 uses
  br i1 %i.ke, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.kf = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.kg = load i32, ptr %i.pt, align 4, !tbaa !4
  %i.kh = sub nsw i32 %i.kf, %i.kg
  %i.ki = add nuw nsw i32 %i.kd, 1
  %i.kj = mul nsw i32 %i.kh, %i.ki
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kk = phi i32 [ %i.kj, %bb.r ], [ 0, %bb.q ]
  %i.kl = load i32, ptr %i.pm, align 4, !tbaa !4
  %i.km = sub nsw i32 %i.kl, %i.jy                ; 2 uses
  %i.kn = icmp sgt i32 %i.km, -1                  ; 2 uses
  %i.ko = add nsw i32 %i.kb, %i.kk
  %i.kp = add nuw nsw i32 %i.km, 1                ; 3 uses
  %i.kq = mul nsw i32 %i.kp, %i.ko
  %i.kr = select i1 %i.kn, i32 %i.kq, i32 0
  %i.ks = add i32 %i.jz, %i.kr
  %i.kt = load i32, ptr %i.gy, align 4, !tbaa !4  ; 2 uses
  %i.ku = sub i32 %i.jb, %i.kt
  %i.kv = load i32, ptr %i.pu, align 4, !tbaa !4  ; 2 uses
  %i.kw = sub i32 %i.je, %i.kv
  %i.kx = load i32, ptr %i.pw, align 4, !tbaa !4
  %i.ky = sub nsw i32 %i.kx, %i.kv                ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, -1                  ; 2 uses
  br i1 %i.kz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.la = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.lb = load i32, ptr %i.px, align 4, !tbaa !4
  %i.lc = sub nsw i32 %i.la, %i.lb
  %i.ld = add nuw nsw i32 %i.ky, 1
  %i.le = mul nsw i32 %i.lc, %i.ld
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.lf = phi i32 [ %i.le, %bb.t ], [ 0, %bb.s ]
  %i.lg = load i32, ptr %i.pv, align 4, !tbaa !4
  %i.lh = sub nsw i32 %i.lg, %i.kt                ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1                  ; 2 uses
  %i.lj = add nsw i32 %i.kw, %i.lf
  %i.lk = add nuw nsw i32 %i.lh, 1                ; 3 uses
  %i.ll = mul nsw i32 %i.lk, %i.lj
  %i.lm = select i1 %i.li, i32 %i.ll, i32 0
  %i.ln = add i32 %i.ku, %i.lm
  %i.lo = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  br i1 %i.js, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lp = load i32, ptr %i.y, align 8, !tbaa !4
  %i.lq = mul nsw i32 %i.lp, %i.ju
  %i.lr = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ls = mul nsw i32 %i.lr, %i.ju
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.lt = phi i32 [ %i.lq, %bb.v ], [ 0, %bb.u ]
  %i.lu = phi i32 [ %i.ls, %bb.v ], [ 0, %bb.u ]
  %i.lv = add nuw nsw i32 %i.ji, 1
  %i.lw = mul nsw i32 %i.lu, %i.lv
  %i.lx = select i1 %i.jj, i32 %i.lw, i32 0
  br i1 %i.kn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ly = load i32, ptr %i.y, align 8, !tbaa !4
  %i.lz = mul nsw i32 %i.ly, %i.kp
  %i.ma = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mb = mul nsw i32 %i.ma, %i.kp
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mc = phi i32 [ %i.lz, %bb.x ], [ 0, %bb.w ]
  %i.md = phi i32 [ %i.mb, %bb.x ], [ 0, %bb.w ]
  %i.me = add nuw nsw i32 %i.kd, 1
  %i.mf = mul nsw i32 %i.md, %i.me
  %i.mg = select i1 %i.ke, i32 %i.mf, i32 0
  br i1 %i.li, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.mh = load i32, ptr %i.y, align 8, !tbaa !4
  %i.mi = mul nsw i32 %i.mh, %i.lk
  %i.mj = load i32, ptr %i.z, align 4, !tbaa !4
  %i.mk = mul nsw i32 %i.mj, %i.lk
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ml = phi i32 [ %i.mi, %bb.z ], [ 0, %bb.y ]
  %i.mm = phi i32 [ %i.mk, %bb.z ], [ 0, %bb.y ]
  %i.mn = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  %i.mo = load i32, ptr %i.aa, align 4, !tbaa !4  ; 3 uses
  %i.mp = load i32, ptr %i.ab, align 4, !tbaa !4  ; 3 uses
  %.0458.us = call i32 @llvm.smax.i32(i32 %i.mo, i32 %i.mn)
  %.1459.us = call i32 @llvm.smax.i32(i32 %i.mp, i32 %.0458.us)
  %i.mq = icmp sgt i32 %.1459.us, 0
  br i1 %i.mq, label %.preheader569.lr.ph.us, label %._crit_edge636.split.us

._crit_edge636.split.us:                          ; preds = %._crit_edge614.split.us.us.us.us, %.preheader569.lr.ph.us, %bb.aa
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 1 ; 2 uses
  %exitcond706.not = icmp eq i64 %indvars.iv.next704, %wide.trip.count
  br i1 %exitcond706.not, label %._crit_edge644.us, label %bb.m, !llvm.loop !79

.preheader569.lr.ph.us:                           ; preds = %bb.aa
  %i.mr = add nuw nsw i32 %i.ky, 1
  %i.ms = mul nsw i32 %i.mm, %i.mr
  %i.mt = select i1 %i.kz, i32 %i.ms, i32 0
  %i.mu = icmp sgt i32 %i.mp, 0
  %i.mv = icmp sgt i32 %i.mo, 0
  %brmerge660.not746 = and i1 %i.mu, %i.mv
  %i.mw = icmp sgt i32 %i.mn, 0
  %or.cond741 = and i1 %brmerge660.not746, %i.mw
  br i1 %or.cond741, label %.preheader568.us.us.us.preheader, label %._crit_edge636.split.us

.preheader568.us.us.us.preheader:                 ; preds = %.preheader569.lr.ph.us
  %i.mx = sext i32 %i.lo to i64                   ; 9 uses
  %i.my = add nsw i32 %i.mn, -1
  %i.mz = zext i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 3                ; 3 uses
  %scevgep756 = getelementptr i8, ptr %scevgep755, i64 %i.na
  %i.nb = shl nsw i64 %i.hx, 3                    ; 2 uses
  %scevgep758 = getelementptr i8, ptr %i.hr, i64 %i.nb
  %scevgep760 = getelementptr i8, ptr %i.hr, i64 8
  %i.nc = getelementptr i8, ptr %scevgep760, i64 %i.nb
  %scevgep761 = getelementptr i8, ptr %i.nc, i64 %i.na
  %i.nd = add nsw i64 %i.id, %i.iy
  %i.ne = shl nsw i64 %i.nd, 3                    ; 2 uses
  %scevgep763 = getelementptr i8, ptr %i.hz, i64 %i.ne
  %scevgep765 = getelementptr i8, ptr %i.hz, i64 8
  %i.nf = getelementptr i8, ptr %scevgep765, i64 %i.ne
  %scevgep766 = getelementptr i8, ptr %i.nf, i64 %i.na
  %i.ng = zext nneg i32 %i.mn to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.mn, 3
  %ident.check.not = icmp eq i32 %i.lo, 1
  %or.cond798 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.ng, 2147483644              ; 6 uses
  %i.nh = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ng
  br label %.preheader568.us.us.us

.preheader568.us.us.us:                           ; preds = %.preheader568.us.us.us.preheader, %._crit_edge614.split.us.us.us.us
  %.0467629.us.us.us = phi i32 [ %i.ln, %.preheader568.us.us.us.preheader ], [ %i.pi, %._crit_edge614.split.us.us.us.us ] ; 2 uses
  %.0470628.us.us.us = phi i32 [ %i.ks, %.preheader568.us.us.us.preheader ], [ %i.ph, %._crit_edge614.split.us.us.us.us ] ; 2 uses
  %.3479627.us.us.us = phi i32 [ %i.jx, %.preheader568.us.us.us.preheader ], [ %i.pg, %._crit_edge614.split.us.us.us.us ] ; 2 uses
  %.3511626.us.us.us = phi i32 [ 0, %.preheader568.us.us.us.preheader ], [ %i.pf, %._crit_edge614.split.us.us.us.us ]
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge606.us.us.us.us, %.preheader568.us.us.us
  %.1468613.us.us.us.us = phi i32 [ %i.pe, %._crit_edge606.us.us.us.us ], [ %.0467629.us.us.us, %.preheader568.us.us.us ] ; 3 uses
  %.1471612.us.us.us.us = phi i32 [ %i.pd, %._crit_edge606.us.us.us.us ], [ %.0470628.us.us.us, %.preheader568.us.us.us ] ; 3 uses
  %.4480611.us.us.us.us = phi i32 [ %i.pc, %._crit_edge606.us.us.us.us ], [ %.3479627.us.us.us, %.preheader568.us.us.us ] ; 3 uses
  %.3507610.us.us.us.us = phi i32 [ %i.pb, %._crit_edge606.us.us.us.us ], [ 0, %.preheader568.us.us.us ]
  %i.ni = sext i32 %.4480611.us.us.us.us to i64   ; 4 uses
  %i.nj = sext i32 %.1471612.us.us.us.us to i64   ; 4 uses
  %i.nk = sext i32 %.1468613.us.us.us.us to i64   ; 4 uses
  br i1 %or.cond798, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us
  %9 = sext i32 %.1471612.us.us.us.us to i64
  %i.nl = shl nsw i64 %9, 3                       ; 2 uses
  %scevgep753 = getelementptr i8, ptr %scevgep766, i64 %i.nl
  %scevgep757 = getelementptr i8, ptr %scevgep763, i64 %i.nl
  %10 = sext i32 %.4480611.us.us.us.us to i64
  %i.nm = shl nsw i64 %10, 3                      ; 2 uses
  %scevgep759 = getelementptr i8, ptr %scevgep761, i64 %i.nm
  %scevgep762 = getelementptr i8, ptr %scevgep758, i64 %i.nm
  %11 = sext i32 %.1468613.us.us.us.us to i64
  %i.nn = shl nsw i64 %11, 3                      ; 2 uses
  %scevgep764 = getelementptr i8, ptr %scevgep756, i64 %i.nn ; 2 uses
  %scevgep767 = getelementptr i8, ptr %scevgep, i64 %i.nn ; 2 uses
  %bound0 = icmp ult ptr %scevgep767, %scevgep759
  %bound1 = icmp ult ptr %scevgep762, %scevgep764
  %found.conflict = and i1 %bound0, %bound1
  %bound0768 = icmp ult ptr %scevgep767, %scevgep753
  %bound1769 = icmp ult ptr %scevgep757, %scevgep764
  %found.conflict770 = and i1 %bound0768, %bound1769
  %conflict.rdx = or i1 %found.conflict, %found.conflict770
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.no = add nsw i64 %n.vec, %i.nk
  %i.np = add nsw i64 %n.vec, %i.nj
  %i.nq = add nsw i64 %n.vec, %i.ni
  %invariant.gep822 = getelementptr [8 x i8], ptr %i.hy, i64 %i.ni
  %invariant.gep824 = getelementptr [8 x i8], ptr %i.iz, i64 %i.nj
  %invariant.gep826 = getelementptr [8 x i8], ptr %i.he, i64 %i.nk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep823 = getelementptr [8 x i8], ptr %invariant.gep822, i64 %index ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %gep823, i64 16
  %wide.load = load <2 x double>, ptr %gep823, align 8, !tbaa !54, !alias.scope !80
  %wide.load771 = load <2 x double>, ptr %i.nr, align 8, !tbaa !54, !alias.scope !80
  %gep825 = getelementptr [8 x i8], ptr %invariant.gep824, i64 %index ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %gep825, i64 16
  %wide.load772 = load <2 x double>, ptr %gep825, align 8, !tbaa !54, !alias.scope !83
  %wide.load773 = load <2 x double>, ptr %i.ns, align 8, !tbaa !54, !alias.scope !83
  %gep827 = getelementptr [8 x i8], ptr %invariant.gep826, i64 %index ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %gep827, i64 16 ; 2 uses
  %wide.load774 = load <2 x double>, ptr %gep827, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %wide.load775 = load <2 x double>, ptr %i.nt, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %i.nu = fneg <2 x double> %wide.load
  %i.nv = fneg <2 x double> %wide.load771
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %wide.load772, <2 x double> %wide.load774)
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %wide.load773, <2 x double> %wide.load775)
  store <2 x double> %i.nw, ptr %gep827, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  store <2 x double> %i.nx, ptr %i.nt, align 8, !tbaa !54, !alias.scope !85, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ny = icmp eq i64 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge606.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us, %middle.block
  %indvars.iv693.ph = phi i64 [ %i.nk, %vector.memcheck ], [ %i.nk, %.preheader.us.us.us.us ], [ %i.no, %middle.block ] ; 3 uses
  %indvars.iv691.ph = phi i64 [ %i.nj, %vector.memcheck ], [ %i.nj, %.preheader.us.us.us.us ], [ %i.np, %middle.block ] ; 3 uses
  %indvars.iv689.ph.a = phi i64 [ %i.ni, %vector.memcheck ], [ %i.ni, %.preheader.us.us.us.us ], [ %i.nq, %middle.block ] ; 3 uses
  %.3503601.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us ], [ %i.nh, %middle.block ] ; 4 uses
  %i.nz = sub i32 %i.mn, %.3503601.us.us.us.us.ph
  %.neg = add i32 %.3503601.us.us.us.us.ph, 1
  %xtraiter810 = and i32 %i.nz, 1
  %lcmp.mod811.not = icmp eq i32 %xtraiter810, 0
  br i1 %lcmp.mod811.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %indvars.iv689.ph.a
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !54
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %indvars.iv691.ph
  %i.od = load double, ptr %i.oc, align 8, !tbaa !54
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.he, i64 %indvars.iv693.ph ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !54
  %i.og = fneg double %i.ob
  %i.oh = call double @llvm.fmuladd.f64(double %i.og, double %i.od, double %i.of)
  store double %i.oh, ptr %i.oe, align 8, !tbaa !54
  %indvars.iv.next690.prol = add nsw i64 %indvars.iv689.ph.a, %i.mx
  %indvars.iv.next692.prol = add nsw i64 %indvars.iv691.ph, %i.mx
  %indvars.iv.next694.prol = add nsw i64 %indvars.iv693.ph, %i.mx
  %i.oi = add nuw nsw i32 %.3503601.us.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv693.unr = phi i64 [ %indvars.iv693.ph, %scalar.ph.preheader ], [ %indvars.iv.next694.prol, %scalar.ph.prol ]
  %indvars.iv691.unr = phi i64 [ %indvars.iv691.ph, %scalar.ph.preheader ], [ %indvars.iv.next692.prol, %scalar.ph.prol ]
  %indvars.iv689.unr = phi i64 [ %indvars.iv689.ph.a, %scalar.ph.preheader ], [ %indvars.iv.next690.prol, %scalar.ph.prol ]
  %.3503601.us.us.us.us.unr = phi i32 [ %.3503601.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.oi, %scalar.ph.prol ]
  %i.oj = icmp eq i32 %i.mn, %.neg
  br i1 %i.oj, label %._crit_edge606.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv693 = phi i64 [ %indvars.iv.next694.1, %scalar.ph ], [ %indvars.iv693.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv691 = phi i64 [ %indvars.iv.next692.1, %scalar.ph ], [ %indvars.iv691.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv689 = phi i64 [ %indvars.iv.next690.1, %scalar.ph ], [ %indvars.iv689.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.3503601.us.us.us.us = phi i32 [ %i.pa, %scalar.ph ], [ %.3503601.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %indvars.iv689
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !54
  %i.om = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %indvars.iv691
  %i.on = load double, ptr %i.om, align 8, !tbaa !54
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.he, i64 %indvars.iv693 ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !54
  %i.oq = fneg double %i.ol
  %i.or = call double @llvm.fmuladd.f64(double %i.oq, double %i.on, double %i.op)
  store double %i.or, ptr %i.oo, align 8, !tbaa !54
  %indvars.iv.next690 = add nsw i64 %indvars.iv689, %i.mx ; 2 uses
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, %i.mx ; 2 uses
  %indvars.iv.next694 = add nsw i64 %indvars.iv693, %i.mx ; 2 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %indvars.iv.next690
  %i.ot = load double, ptr %i.os, align 8, !tbaa !54
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %indvars.iv.next692
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !54
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.he, i64 %indvars.iv.next694 ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !54
  %i.oy = fneg double %i.ot
  %i.oz = call double @llvm.fmuladd.f64(double %i.oy, double %i.ov, double %i.ox)
  store double %i.oz, ptr %i.ow, align 8, !tbaa !54
  %indvars.iv.next690.1 = add nsw i64 %indvars.iv.next690, %i.mx
  %indvars.iv.next692.1 = add nsw i64 %indvars.iv.next692, %i.mx
  %indvars.iv.next694.1 = add nsw i64 %indvars.iv.next694, %i.mx
  %i.pa = add nuw nsw i32 %.3503601.us.us.us.us, 2 ; 2 uses
  %exitcond700.not.1 = icmp eq i32 %i.pa, %i.mn
  br i1 %exitcond700.not.1, label %._crit_edge606.us.us.us.us, label %scalar.ph, !llvm.loop !89

._crit_edge606.us.us.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.pb = add nuw nsw i32 %.3507610.us.us.us.us, 1 ; 2 uses
  %i.pc = add i32 %.4480611.us.us.us.us, %i.lt
  %i.pd = add i32 %.1471612.us.us.us.us, %i.mc
  %i.pe = add i32 %.1468613.us.us.us.us, %i.ml
  %exitcond701.not = icmp eq i32 %i.pb, %i.mo
  br i1 %exitcond701.not, label %._crit_edge614.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !90

._crit_edge614.split.us.us.us.us:                 ; preds = %._crit_edge606.us.us.us.us
  %i.pf = add nuw nsw i32 %.3511626.us.us.us, 1   ; 2 uses
  %i.pg = add i32 %.3479627.us.us.us, %i.lx
  %i.ph = add i32 %.0470628.us.us.us, %i.mg
  %i.pi = add i32 %.0467629.us.us.us, %i.mt
  %exitcond702.not = icmp eq i32 %i.pf, %i.mp
  br i1 %exitcond702.not, label %._crit_edge636.split.us, label %.preheader568.us.us.us, !llvm.loop !91

._crit_edge644.us:                                ; preds = %._crit_edge636.split.us
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707.a, 1 ; 2 uses
  %i.pj = load i32, ptr %i.hf, align 8, !tbaa !50
  %i.pk = sext i32 %i.pj to i64
  %i.pl = icmp slt i64 %indvars.iv.next708, %i.pk
  br i1 %i.pl, label %.lr.ph643.us, label %._crit_edge648.us.loopexit, !llvm.loop !92

.lr.ph647.us:                                     ; preds = %.lr.ph651.split.us
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gv, i64 12 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.pr = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.pw = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.pre.pre = load i32, ptr %i.pn, align 4, !tbaa !4
  %.pre713.pre = load i32, ptr %i.po, align 4, !tbaa !4
  %i.py = shl nsw i64 %i.hd, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.gz, i64 %i.py
  %scevgep754 = getelementptr i8, ptr %i.gz, i64 8
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.py
  br label %.lr.ph643.us

._crit_edge652:                                   ; preds = %._crit_edge648.us, %.loopexit574
  br i1 %i.aj, label %bb.b, label %bb.ab, !llvm.loop !93

bb.ab:                                            ; preds = %._crit_edge652
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !43
  %i.qb = call i32 @hypre_IncFLOPCount(i32 noundef %i.qa) #5 ; 0 uses
  %i.qc = load i32, ptr %i.h, align 8, !tbaa !8
  %i.qd = call i32 @hypre_EndTiming(i32 noundef %i.qc) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_SMGResidualSetBase(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.b, ptr %0, align 4, !tbaa !4
  %i.c = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGResidualDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.b) #5 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.e) #5 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.h) #5 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.k) #5 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.n) #5 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.q) #5 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.t) #5 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArrayDestroy(ptr noundef) local_unnamed_addr #2

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
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 72}
!9 = !{!"", !6, i64 0, !6, i64 12, !10, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !14, i64 64, !5, i64 72, !5, i64 76}
!10 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS25hypre_StructVector_struct", !11, i64 0}
!13 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!14 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !11, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"hypre_StructMatrix_struct", !5, i64 0, !17, i64 8, !18, i64 16, !18, i64 24, !5, i64 32, !13, i64 40, !19, i64 48, !5, i64 56, !5, i64 60, !20, i64 64, !5, i64 72, !22, i64 80, !6, i64 88, !5, i64 112, !23, i64 120, !5, i64 128}
!17 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!18 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!19 = !{!"p1 double", !11, i64 0}
!20 = !{!"p2 int", !21, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!"p1 int", !11, i64 0}
!23 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!24 = !{!16, !18, i64 24}
!25 = !{!26, !13, i64 8}
!26 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !13, i64 8, !22, i64 16, !27, i64 24, !5, i64 32, !28, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!27 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!28 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !11, i64 0}
!31 = !{!20, !20, i64 0}
!32 = !{!33, !13, i64 16}
!33 = !{!"hypre_StructVector_struct", !5, i64 0, !17, i64 8, !13, i64 16, !19, i64 24, !5, i64 32, !5, i64 36, !22, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!34 = !{!9, !10, i64 24}
!35 = !{!9, !12, i64 32}
!36 = !{!9, !12, i64 40}
!37 = !{!9, !12, i64 48}
!38 = !{!9, !13, i64 56}
!39 = !{!14, !14, i64 0}
!40 = !{!9, !14, i64 64}
!41 = !{!16, !5, i64 112}
!42 = !{!33, !5, i64 72}
!43 = !{!9, !5, i64 76}
!44 = !{!45, !22, i64 0}
!45 = !{!"hypre_StructStencil_struct", !22, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!46 = !{!45, !5, i64 8}
!47 = !{!33, !19, i64 24}
!48 = !{!49, !30, i64 8}
!49 = !{!"hypre_ComputePkg_struct", !23, i64 0, !30, i64 8, !30, i64 16, !6, i64 24, !17, i64 40, !13, i64 48, !5, i64 56}
end_hunk_0
