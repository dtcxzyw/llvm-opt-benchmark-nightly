inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hypre_StructGridAssemble:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sub nsw i32 %i.cf, %i.ch                ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 1
  %i.ck = mul nsw i32 %i.cd, %i.cj
  %.inv122 = icmp slt i32 %i.ci, 0
  %i.cl = select i1 %.inv122, i32 0, i32 %i.ck
  %i.cm = add nuw nsw i32 %i.cl, %.0104134        ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge137, label %bb.d, !llvm.loop !33

._crit_edge137:                                   ; preds = %bb.d, %._crit_edge132
  %.0104.lcssa = phi i32 [ 0, %._crit_edge132 ], [ %i.cm, %bb.d ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0104.lcssa, ptr %i.cn, align 4, !tbaa !34
  %i.co = call i32 @hypre_StructGridPeriodicAllBoxes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !29
  %i.cs = shl i32 %i.cr, 2
  %i.ct = tail call ptr @hypre_MAlloc(i32 noundef %i.cs) #10 ; 3 uses
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !29
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %._crit_edge137, %.lr.ph141
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph141 ], [ 0, %._crit_edge137 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv170
  %i.cx = trunc nuw nsw i64 %indvars.iv170 to i32
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.cy = load i32, ptr %i.cq, align 8, !tbaa !29
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next171, %i.cz
  br i1 %i.da, label %.lr.ph141, label %._crit_edge142, !llvm.loop !35

._crit_edge142:                                   ; preds = %.lr.ph141, %._crit_edge137
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.dc = load i32, ptr %i.d, align 4, !tbaa !4   ; 2 uses
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !4
  %i.de = call i32 @hypre_BoxNeighborsCreate(ptr noundef nonnull %i.cp, ptr noundef %i.db, ptr noundef %i.ct, i32 noundef %i.dc, i32 noundef %i.p, i32 noundef %i.dd, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !28
  store ptr %i.df, ptr %i.h, align 8, !tbaa !22
  %i.dg = load i32, ptr %i.o, align 8, !tbaa !29
  %i.dh = shl i32 %i.dg, 2
  %i.di = call ptr @hypre_MAlloc(i32 noundef %i.dh) #10 ; 2 uses
  %i.dj = load i32, ptr %i.o, align 8, !tbaa !29
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %._crit_edge142
  %i.dl = sext i32 %i.dc to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ct, i64 %i.dl
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv173 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next174, %.lr.ph145 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv173
  %i.dm = load i32, ptr %gep, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv173
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.do = load i32, ptr %i.o, align 8, !tbaa !29
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next174, %i.dp
  br i1 %i.dq, label %.lr.ph145, label %._crit_edge146, !llvm.loop !37

._crit_edge146:                                   ; preds = %.lr.ph145, %._crit_edge142
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.di, ptr %i.dr, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge146, %bb.a
  %i.ds = phi ptr [ %.pre, %._crit_edge146 ], [ %i.i, %bb.a ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !17
  %i.dv = call i32 @hypre_BoxNeighborsAssemble(ptr noundef %i.ds, i32 noundef %i.du, i32 noundef 1) #10 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !29 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.e
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !24
  %wide.trip.count179 = zext nneg i32 %i.dx to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph150, %bb.f
  %indvars.iv176 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next177, %bb.f ] ; 2 uses
  %.1105148 = phi i32 [ 0, %.lr.ph150 ], [ %i.ew, %bb.f ]
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv176 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ee, i32 -1)
  %spec.select118 = add nsw i32 %i.ef, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !4
  %i.ek = sub nsw i32 %i.eh, %i.ej                ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = mul nsw i32 %i.el, %spec.select118
  %.inv = icmp slt i32 %i.ek, 0
  %i.en = select i1 %.inv, i32 0, i32 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  %i.es = sub nsw i32 %i.ep, %i.er                ; 2 uses
  %i.et = add nuw nsw i32 %i.es, 1
  %i.eu = mul nsw i32 %i.en, %i.et
  %.inv119 = icmp slt i32 %i.es, 0
  %i.ev = select i1 %.inv119, i32 0, i32 %i.eu
  %i.ew = add nuw nsw i32 %i.ev, %.1105148        ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge151, label %bb.f, !llvm.loop !38

._crit_edge151:                                   ; preds = %bb.f, %bb.e
  %.1105.lcssa = phi i32 [ 0, %bb.e ], [ %i.ew, %bb.f ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.1105.lcssa, ptr %i.ex, align 8, !tbaa !39
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_GatherAllBoxes(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 @hypre_MPI_Comm_size(i32 noundef %0, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.g = call i32 @hypre_MPI_Comm_rank(i32 noundef %0, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29
  %i.j = mul nsw i32 %i.i, 7
  store i32 %i.j, ptr %i.e, align 4, !tbaa !4
  %i.k = load i32, ptr %i.c, align 4, !tbaa !4
  %i.l = shl i32 %i.k, 2
  %i.m = call ptr @hypre_MAlloc(i32 noundef %i.l) #10 ; 5 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !4
  %i.o = shl i32 %i.n, 2
  %i.p = call ptr @hypre_MAlloc(i32 noundef %i.o) #10 ; 4 uses
  %i.q = call i32 @hypre_MPI_Allgather(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 1, ptr noundef %i.m, i32 noundef 1, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  store i32 0, ptr %i.p, align 4, !tbaa !4
  %i.r = load i32, ptr %i.m, align 4, !tbaa !4    ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !4
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.u = phi i32 [ %i.z, %.lr.ph ], [ %i.r, %bb.a ]
  %i.v = phi i32 [ %i.w, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.0102103 = phi i32 [ %i.aa, %.lr.ph ], [ %i.r, %bb.a ]
  %i.w = add nsw i32 %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  %i.aa = add nsw i32 %i.z, %.0102103             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0102.lcssa = phi i32 [ %i.r, %bb.a ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !4
  %i.af = shl i32 %i.ae, 2
  %i.ag = call ptr @hypre_MAlloc(i32 noundef %i.af) #10 ; 9 uses
  %i.ah = shl i32 %.0102.lcssa, 2
  %i.ai = call ptr @hypre_MAlloc(i32 noundef %i.ah) #10 ; 9 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !29
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge
  %i.al = load ptr, ptr %1, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %bb.b
  %indvars.iv135 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next136, %bb.b ] ; 2 uses
  %indvars.iv129 = phi i32 [ 0, %.lr.ph112 ], [ %indvars.iv.next130, %bb.b ] ; 3 uses
  %5 = sext i32 %indvars.iv129 to i64             ; 6 uses
  %i.am = load i32, ptr %i.d, align 4, !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %5
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv135 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !4
  %6 = sext i32 %indvars.iv129 to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %6
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !4
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.au = getelementptr [4 x i8], ptr %i.ag, i64 %5
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store i32 %i.at, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = getelementptr [4 x i8], ptr %i.ag, i64 %5
  %i.az = getelementptr i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr [4 x i8], ptr %i.ag, i64 %5
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr [4 x i8], ptr %i.ag, i64 %5
  %i.bh = getelementptr i8, ptr %i.bg, i64 20
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr [4 x i8], ptr %i.ag, i64 %5
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !4
  %indvars.iv.next130 = add i32 %indvars.iv129, 7
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bm = load i32, ptr %i.h, align 8, !tbaa !29
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next136, %i.bn
  br i1 %i.bo, label %bb.b, label %._crit_edge113, !llvm.loop !41

._crit_edge113:                                   ; preds = %bb.b, %._crit_edge
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !4
  %i.bq = call i32 @hypre_MPI_Allgatherv(ptr noundef %i.ag, i32 noundef %i.bp, i32 noundef 1, ptr noundef %i.ai, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  %i.br = sdiv i32 %.0102.lcssa, 7                ; 2 uses
  %i.bs = call ptr @hypre_BoxArrayCreate(i32 noundef %i.br) #10 ; 2 uses
  %i.bt = shl nsw i32 %i.br, 2
  %i.bu = call ptr @hypre_MAlloc(i32 noundef %i.bt) #10 ; 2 uses
  %i.bv = call ptr @hypre_BoxCreate() #10         ; 8 uses
  %i.bw = icmp sgt i32 %.0102.lcssa, 0
  br i1 %i.bw, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge113
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.e
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next147, %bb.e ] ; 4 uses
  %indvars.iv142 = phi i32 [ 0, %.lr.ph123 ], [ %indvars.iv.next143, %bb.e ] ; 3 uses
  %.0121 = phi i32 [ -1, %.lr.ph123 ], [ %.1, %bb.e ] ; 3 uses
  %7 = sext i32 %indvars.iv142 to i64             ; 6 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %7
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv146 ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !4
  %8 = sext i32 %indvars.iv142 to i64
  %i.cj = getelementptr [4 x i8], ptr %i.ai, i64 %8
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  store i32 %i.cl, ptr %i.a, align 4, !tbaa !4
  %i.cm = getelementptr [4 x i8], ptr %i.ai, i64 %7
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  store i32 %i.co, ptr %i.b, align 4, !tbaa !4
  %i.cp = getelementptr [4 x i8], ptr %i.ai, i64 %7
  %i.cq = getelementptr i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  store i32 %i.cr, ptr %i.cc, align 4, !tbaa !4
  %i.cs = getelementptr [4 x i8], ptr %i.ai, i64 %7
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  store i32 %i.cu, ptr %i.cd, align 4, !tbaa !4
  %i.cv = getelementptr [4 x i8], ptr %i.ai, i64 %7
  %i.cw = getelementptr i8, ptr %i.cv, i64 20
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  store i32 %i.cx, ptr %i.ce, align 4, !tbaa !4
  %i.cy = getelementptr [4 x i8], ptr %i.ai, i64 %7
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  store i32 %i.da, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next143 = add i32 %indvars.iv142, 7 ; 2 uses
  %i.db = call i32 @hypre_BoxSetExtents(ptr noundef %i.bv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.dc = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.dd = load ptr, ptr %i.bs, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %indvars.iv146 ; 6 uses
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !4
  %i.df = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !4
  %i.dh = load i32, ptr %i.by, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %i.dj = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !4
  %i.dl = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !4
  %i.dn = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %i.dp = icmp slt i32 %.0121, 0
  br i1 %i.dp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dq = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.dr = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ds = icmp eq i32 %i.dq, %i.dr
  %i.dt = trunc nuw nsw i64 %indvars.iv146 to i32
  %spec.select = select i1 %i.ds, i32 %i.dt, i32 %.0121
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.0121, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %9 = icmp slt i32 %indvars.iv.next143, %.0102.lcssa
  br i1 %9, label %bb.c, label %._crit_edge124, !llvm.loop !42

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge113
  %.0.lcssa = phi i32 [ -1, %._crit_edge113 ], [ %.1, %bb.e ]
  %i.du = call i32 @hypre_BoxDestroy(ptr noundef %i.bv) #10 ; 0 uses
  call void @hypre_Free(ptr noundef %i.ag) #10
  call void @hypre_Free(ptr noundef %i.ai) #10
  call void @hypre_Free(ptr noundef nonnull %i.m) #10
  call void @hypre_Free(ptr noundef nonnull %i.p) #10
  store ptr %i.bs, ptr %2, align 8, !tbaa !30
  store ptr %i.bu, ptr %3, align 8, !tbaa !36
  store i32 %.0.lcssa, ptr %4, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridPeriodicAllBoxes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !4    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4    ; 3 uses
  %.not = icmp ne i32 %i.b, 0                     ; 3 uses
  %spec.select.neg = sext i1 %.not to i32         ; 2 uses
  %.not176 = icmp ne i32 %i.d, 0                  ; 5 uses
  %.0171.neg = sext i1 %.not176 to i32            ; 2 uses
  %.not177 = icmp ne i32 %i.f, 0                  ; 3 uses
  %.0172.neg = sext i1 %.not177 to i32            ; 4 uses
  %i.g = or i32 %i.d, %i.b
  %i.h = or i32 %i.g, %i.f
  %or.cond3 = icmp eq i32 %i.h, 0
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !30     ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !36     ; 4 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 5 uses
  %i.n = select i1 %.not, i32 3, i32 1
  %i.o = select i1 %.not176, i32 3, i32 1
  %i.p = mul nuw nsw i32 %i.o, %i.n
  %i.q = select i1 %.not177, i32 3, i32 1
  %i.r = mul nuw nsw i32 %i.p, %i.q
  %i.s = mul nsw i32 %i.r, %i.m                   ; 2 uses
  %i.t = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.s) #10 ; 4 uses
  %i.u = shl i32 %i.s, 2
  %i.v = tail call ptr @hypre_MAlloc(i32 noundef %i.u) #10 ; 3 uses
  %i.w = icmp sgt i32 %i.m, 0
  br i1 %i.w, label %.preheader184.preheader, label %._crit_edge

.preheader184.preheader:                          ; preds = %bb.b
  %i.x = zext nneg i32 %i.m to i64
  %i.y = select i1 %.not177, i32 2, i32 1         ; 4 uses
  %i.z = select i1 %.not176, i32 2, i32 1         ; 2 uses
  %i.aa = select i1 %.not, i32 2, i32 1           ; 2 uses
  %not..not176 = xor i1 %.not176, true
  %i.ab = zext i1 %not..not176 to i32
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %.split206.us
  %.0211 = phi i32 [ %.1, %.split206.us ], [ 0, %.preheader184.preheader ]
  %.0161210 = phi i32 [ %.us-phi207, %.split206.us ], [ 0, %.preheader184.preheader ] ; 3 uses
  %.0164209 = phi i32 [ %.us-phi, %.split206.us ], [ 0, %.preheader184.preheader ] ; 9 uses
  %.0173208 = phi i32 [ %.1174, %.split206.us ], [ undef, %.preheader184.preheader ]
  %i.ac = sext i32 %.0164209 to i64               ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = sext i32 %.0161210 to i64
  %i.af = add nsw i32 %.0164209, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.af)
  br label %bb.c

bb.c:                                             ; preds = %.preheader184, %bb.d
  %indvars.iv217 = phi i64 [ %i.ac, %.preheader184 ], [ %indvars.iv.next218, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ae, %.preheader184 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv217 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !4
  %.not178 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not178, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.ak = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %indvars.iv217 ; 6 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !24
  %i.an = getelementptr inbounds [24 x i8], ptr %i.am, i64 %indvars.iv ; 6 uses
  store i32 %i.al, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.be = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next218 = add nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bf = icmp slt i64 %indvars.iv.next218, %i.x
  br i1 %i.bf, label %bb.c, label %.split.loop.exit241, !llvm.loop !43

.split.loop.exit:                                 ; preds = %bb.c
  %i.bg = trunc nsw i64 %indvars.iv217 to i32
  br label %.split.loop.exit241

.split.loop.exit241:                              ; preds = %bb.d, %.split.loop.exit
  %.1165.lcssa = phi i32 [ %i.bg, %.split.loop.exit ], [ %smax, %bb.d ] ; 5 uses
  %.1162.lcssa.in = phi i64 [ %indvars.iv, %.split.loop.exit ], [ %indvars.iv.next, %bb.d ]
  %.1162.lcssa = trunc i64 %.1162.lcssa.in to i32 ; 2 uses
  %i.bh = icmp slt i32 %.0164209, %.1165.lcssa
  %.fr = freeze i1 %i.bh
  br i1 %.fr, label %.preheader183.us.preheader, label %.preheader183

.preheader183.us.preheader:                       ; preds = %.split.loop.exit241
  %i.bi = sext i32 %.1165.lcssa to i64
  br label %.preheader183.us

.preheader183.us:                                 ; preds = %.preheader183.us.preheader, %.split198.us.us
  %.0160203.us = phi i32 [ %i.cx, %.split198.us.us ], [ %spec.select.neg, %.preheader183.us.preheader ] ; 3 uses
  %.2163202.us = phi i32 [ %.6.us.us.us, %.split198.us.us ], [ %.1162.lcssa, %.preheader183.us.preheader ]
  %.2166201.us = phi i32 [ %.6170.us.us.us, %.split198.us.us ], [ %.1165.lcssa, %.preheader183.us.preheader ]
  %i.bj = mul nsw i32 %.0160203.us, %i.b          ; 2 uses
  br label %.preheader182.us.us

.preheader182.us.us:                              ; preds = %.split.us.us.us, %.preheader183.us
  %.0159196.us.us = phi i32 [ %.0171.neg, %.preheader183.us ], [ %i.cw, %.split.us.us.us ] ; 3 uses
  %.3195.us.us = phi i32 [ %.2163202.us, %.preheader183.us ], [ %.6.us.us.us, %.split.us.us.us ]
  %.3167194.us.us = phi i32 [ %.2166201.us, %.preheader183.us ], [ %.6170.us.us.us, %.split.us.us.us ]
  %i.bk = or i32 %.0159196.us.us, %.0160203.us
  %i.bl = mul nsw i32 %.0159196.us.us, %i.d       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %..loopexit_crit_edge.us.us.us, %.preheader182.us.us
  %.0158192.us.us.us = phi i32 [ %.0172.neg, %.preheader182.us.us ], [ %i.cr, %..loopexit_crit_edge.us.us.us ] ; 3 uses
  %.4191.us.us.us = phi i32 [ %.3195.us.us, %.preheader182.us.us ], [ %.6.us.us.us, %..loopexit_crit_edge.us.us.us ] ; 2 uses
  %.4168190.us.us.us = phi i32 [ %.3167194.us.us, %.preheader182.us.us ], [ %.6170.us.us.us, %..loopexit_crit_edge.us.us.us ]
  %i.bm = or i32 %i.bk, %.0158192.us.us.us
  %or.cond7.us.us.us = icmp eq i32 %i.bm, 0
  br i1 %or.cond7.us.us.us, label %..loopexit_crit_edge.us.us.us, label %.preheader.us.us.us

bb.f:                                             ; preds = %.preheader.us.us.us, %bb.f
  %indvars.iv226 = phi i64 [ %i.ac, %.preheader.us.us.us ], [ %indvars.iv.next227, %bb.f ] ; 3 uses
  %indvars.iv224 = phi i64 [ %i.cv, %.preheader.us.us.us ], [ %indvars.iv.next225, %bb.f ] ; 3 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %indvars.iv224 ; 7 uses
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.ct, i64 %indvars.iv226 ; 6 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.cf = add nsw i32 %i.bp, %i.bj
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !4
  %i.cg = add nsw i32 %i.br, %i.bl
  store i32 %i.cg, ptr %i.bs, align 4, !tbaa !4
  %i.ch = add nsw i32 %i.bu, %i.cu
  store i32 %i.ch, ptr %i.bv, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.bx, %i.bj
  store i32 %i.ci, ptr %i.by, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.ca, %i.bl
  store i32 %i.cj, ptr %i.cb, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cd, %i.cu
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !4
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv226
end_hunk_0
