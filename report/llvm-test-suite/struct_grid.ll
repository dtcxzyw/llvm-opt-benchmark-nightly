Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_grid?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hypre_GatherAllBoxes:bb.a
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.u = phi i32 [ %i.z, %.lr.ph ], [ %i.r, %bb.a ]
  %i.v = phi i32 [ %i.w, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.0100103 = phi i32 [ %i.aa, %.lr.ph ], [ %i.r, %bb.a ]
  %i.w = add nsw i32 %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  %i.aa = add nsw i32 %i.z, %.0100103             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0100.lcssa = phi i32 [ %i.r, %bb.a ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !7
  %i.af = shl i32 %i.ae, 2
  %i.ag = call ptr @hypre_MAlloc(i32 noundef %i.af) #10 ; 9 uses
  %i.ah = shl i32 %.0100.lcssa, 2
  %i.ai = call ptr @hypre_MAlloc(i32 noundef %i.ah) #10 ; 9 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !28
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge
  %i.al = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %bb.b
  %indvars.iv135 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next136, %bb.b ] ; 2 uses
  %.098109 = phi i64 [ 0, %.lr.ph112 ], [ %i.bm, %bb.b ] ; 8 uses
  %i.am = load i32, ptr %i.d, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv135 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %.098109
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !7
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.at, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !7
  %i.bm = add nuw nsw i64 %.098109, 7
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !28
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next136, %i.bo
  br i1 %i.bp, label %bb.b, label %._crit_edge113, !llvm.loop !41

._crit_edge113:                                   ; preds = %bb.b, %._crit_edge
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !7
  %i.br = call i32 @hypre_MPI_Allgatherv(ptr noundef %i.ag, i32 noundef %i.bq, i32 noundef 1, ptr noundef %i.ai, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  %i.bs = sdiv i32 %.0100.lcssa, 7                ; 2 uses
  %i.bt = call ptr @hypre_BoxArrayCreate(i32 noundef %i.bs) #10 ; 2 uses
  %i.bu = shl nsw i32 %i.bs, 2
  %i.bv = call ptr @hypre_MAlloc(i32 noundef %i.bu) #10 ; 2 uses
  %i.bw = call ptr @hypre_BoxCreate() #10         ; 8 uses
  %i.bx = icmp sgt i32 %.0100.lcssa, 0
  br i1 %i.bx, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.e
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next147, %bb.e ] ; 4 uses
  %.2119 = phi i64 [ 0, %.lr.ph123 ], [ %i.dc, %bb.e ] ; 8 uses
  %.0101118 = phi i32 [ -1, %.lr.ph123 ], [ %.1102, %bb.e ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv146 ; 2 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = getelementptr [4 x i8], ptr %i.ai, i64 %.2119
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !7
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  store i32 %i.cs, ptr %i.cd, align 4, !tbaa !7
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  store i32 %i.cv, ptr %i.ce, align 4, !tbaa !7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  store i32 %i.cy, ptr %i.cf, align 4, !tbaa !7
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  store i32 %i.db, ptr %i.cg, align 4, !tbaa !7
  %i.dc = add nuw nsw i64 %.2119, 7               ; 2 uses
  %i.dd = trunc nsw i64 %i.dc to i32
  %i.de = call i32 @hypre_BoxSetExtents(ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.df = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.dg = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %indvars.iv146 ; 6 uses
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !7
  %i.di = load i32, ptr %i.by, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %i.dm = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %i.dq = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !7
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %i.ds = icmp slt i32 %.0101118, 0
  br i1 %i.ds, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dt = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.du = load i32, ptr %i.d, align 4, !tbaa !7
  %i.dv = icmp eq i32 %i.dt, %i.du
  %i.dw = trunc nuw nsw i64 %indvars.iv146 to i32
  %spec.select = select i1 %i.dv, i32 %i.dw, i32 %.0101118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1102 = phi i32 [ %.0101118, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.dx = icmp sgt i32 %.0100.lcssa, %i.dd
  br i1 %i.dx, label %bb.c, label %._crit_edge124, !llvm.loop !42

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge113
  %.0101.lcssa = phi i32 [ -1, %._crit_edge113 ], [ %.1102, %bb.e ]
  %i.dy = call i32 @hypre_BoxDestroy(ptr noundef %i.bw) #10 ; 0 uses
  call void @hypre_Free(ptr noundef %i.ag) #10
  call void @hypre_Free(ptr noundef %i.ai) #10
  call void @hypre_Free(ptr noundef nonnull %i.m) #10
  call void @hypre_Free(ptr noundef nonnull %i.p) #10
  store ptr %i.bt, ptr %2, align 8, !tbaa !29
  store ptr %i.bv, ptr %3, align 8, !tbaa !30
  store i32 %.0101.lcssa, ptr %4, align 4, !tbaa !7
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 3 uses
  %.not = icmp ne i32 %i.b, 0                     ; 3 uses
  %spec.select.neg = sext i1 %.not to i32         ; 2 uses
  %.not176 = icmp ne i32 %i.d, 0                  ; 4 uses
  %.0170.neg = sext i1 %.not176 to i32            ; 2 uses
  %.not177 = icmp ne i32 %i.f, 0                  ; 7 uses
  %.0169.neg = sext i1 %.not177 to i32            ; 3 uses
  %i.g = or i32 %i.d, %i.b
  %i.h = or i32 %i.g, %i.f
  %or.cond3 = icmp eq i32 %i.h, 0
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 5 uses
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
  %i.y = select i1 %.not177, i32 2, i32 1
  %i.z = select i1 %.not176, i32 2, i32 1
  %i.aa = select i1 %.not, i32 2, i32 1           ; 2 uses
  %trip.count.minus.1 = select i1 %.not177, i32 2, i32 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = icmp samesign uge <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert249 = insertelement <4 x i32> poison, i32 %.0169.neg, i64 0
  %broadcast.splat250 = shufflevector <4 x i32> %broadcast.splatinsert249, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat250, <i32 0, i32 1, i32 2, i32 3>
  %trip.count.minus.1.1 = select i1 %.not177, i32 2, i32 0
  %broadcast.splatinsert.1 = insertelement <4 x i32> poison, i32 %trip.count.minus.1.1, i64 0
  %broadcast.splat.1 = shufflevector <4 x i32> %broadcast.splatinsert.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = icmp samesign uge <4 x i32> %broadcast.splat.1, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert249.1 = insertelement <4 x i32> poison, i32 %.0169.neg, i64 0
  %broadcast.splat250.1 = shufflevector <4 x i32> %broadcast.splatinsert249.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction.1 = add nsw <4 x i32> %broadcast.splat250.1, <i32 0, i32 1, i32 2, i32 3>
  %trip.count.minus.1.2 = select i1 %.not177, i32 2, i32 0
  %broadcast.splatinsert.2 = insertelement <4 x i32> poison, i32 %trip.count.minus.1.2, i64 0
  %broadcast.splat.2 = shufflevector <4 x i32> %broadcast.splatinsert.2, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat.2.fr = freeze <4 x i32> %broadcast.splat.2
  %7 = icmp samesign uge <4 x i32> %broadcast.splat.2.fr, <i32 0, i32 1, i32 2, i32 3>
  %trip.count.minus.1.3 = select i1 %.not177, i32 2, i32 0
  %broadcast.splatinsert.3 = insertelement <4 x i32> poison, i32 %trip.count.minus.1.3, i64 0
  %broadcast.splat.3 = shufflevector <4 x i32> %broadcast.splatinsert.3, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat.3.fr = freeze <4 x i32> %broadcast.splat.3
  %8 = icmp samesign uge <4 x i32> %broadcast.splat.3.fr, <i32 0, i32 1, i32 2, i32 3>
  %9 = bitcast <4 x i1> %8 to i4
  %.not254.3 = icmp eq i4 %9, 0                   ; 0 uses
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %.split206.us
  %.0159211 = phi i32 [ %.us-phi207, %.split206.us ], [ 0, %.preheader184.preheader ] ; 3 uses
  %.0160210 = phi i32 [ %.us-phi, %.split206.us ], [ 0, %.preheader184.preheader ] ; 7 uses
  %.0167209 = phi i32 [ %.1168, %.split206.us ], [ undef, %.preheader184.preheader ]
  %.0172208 = phi i32 [ %.1173, %.split206.us ], [ 0, %.preheader184.preheader ]
  %i.ab = sext i32 %.0160210 to i64               ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = sext i32 %.0159211 to i64
  %i.ae = add nsw i32 %.0160210, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.ae)
  br label %bb.c

bb.c:                                             ; preds = %.preheader184, %bb.d
  %indvars.iv217 = phi i64 [ %i.ab, %.preheader184 ], [ %indvars.iv.next218, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ad, %.preheader184 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv217 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !7
  %.not178 = icmp eq i32 %i.ag, %i.ah
  br i1 %.not178, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ai, i64 %indvars.iv217 ; 6 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.am = getelementptr inbounds [24 x i8], ptr %i.al, i64 %indvars.iv ; 6 uses
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %i.au, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !7
  %i.bc = load i32, ptr %i.af, align 4, !tbaa !7
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next218 = add nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.be = icmp slt i64 %indvars.iv.next218, %i.x
  br i1 %i.be, label %bb.c, label %.split.loop.exit241, !llvm.loop !43

.split.loop.exit:                                 ; preds = %bb.c
  %i.bf = trunc nsw i64 %indvars.iv217 to i32
  br label %.split.loop.exit241

.split.loop.exit241:                              ; preds = %bb.d, %.split.loop.exit
  %.1161.lcssa = phi i32 [ %i.bf, %.split.loop.exit ], [ %smax, %bb.d ] ; 5 uses
  %.1.lcssa.in = phi i64 [ %indvars.iv, %.split.loop.exit ], [ %indvars.iv.next, %bb.d ]
  %.1.lcssa = trunc i64 %.1.lcssa.in to i32       ; 2 uses
  %i.bg = icmp slt i32 %.0160210, %.1161.lcssa
  %.fr = freeze i1 %i.bg
  br i1 %.fr, label %.preheader183.us.preheader, label %.preheader.prol

.preheader183.us.preheader:                       ; preds = %.split.loop.exit241
  %i.bh = sext i32 %.1161.lcssa to i64
  br label %.preheader183.us

.preheader183.us:                                 ; preds = %.preheader183.us.preheader, %.split198.us.us
  %.0158203.us = phi i32 [ %i.cw, %.split198.us.us ], [ %spec.select.neg, %.preheader183.us.preheader ] ; 3 uses
  %.2202.us = phi i32 [ %.6.us.us.us, %.split198.us.us ], [ %.1.lcssa, %.preheader183.us.preheader ]
  %.2162201.us = phi i32 [ %.6166.us.us.us, %.split198.us.us ], [ %.1161.lcssa, %.preheader183.us.preheader ]
  %i.bi = mul nsw i32 %.0158203.us, %i.b          ; 2 uses
  br label %.preheader182.us.us

.preheader182.us.us:                              ; preds = %.split.us.us.us, %.preheader183.us
  %.0157196.us.us = phi i32 [ %.0170.neg, %.preheader183.us ], [ %i.cv, %.split.us.us.us ] ; 3 uses
  %.3195.us.us = phi i32 [ %.2202.us, %.preheader183.us ], [ %.6.us.us.us, %.split.us.us.us ]
  %.3163194.us.us = phi i32 [ %.2162201.us, %.preheader183.us ], [ %.6166.us.us.us, %.split.us.us.us ]
  %i.bj = or i32 %.0157196.us.us, %.0158203.us
  %i.bk = mul nsw i32 %.0157196.us.us, %i.d       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %..loopexit_crit_edge.us.us.us, %.preheader182.us.us
  %.0192.us.us.us = phi i32 [ %.0169.neg, %.preheader182.us.us ], [ %i.cu, %..loopexit_crit_edge.us.us.us ] ; 3 uses
  %.4191.us.us.us = phi i32 [ %.3195.us.us, %.preheader182.us.us ], [ %.6.us.us.us, %..loopexit_crit_edge.us.us.us ] ; 2 uses
  %.4164190.us.us.us = phi i32 [ %.3163194.us.us, %.preheader182.us.us ], [ %.6166.us.us.us, %..loopexit_crit_edge.us.us.us ]
  %i.bl = or i32 %i.bj, %.0192.us.us.us
  %or.cond7.us.us.us = icmp eq i32 %i.bl, 0
  br i1 %or.cond7.us.us.us, label %..loopexit_crit_edge.us.us.us, label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %bb.e
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.bo = mul nsw i32 %.0192.us.us.us, %i.f       ; 2 uses
  %i.bp = sext i32 %.4191.us.us.us to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.us.us.us
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.f ], [ %i.ab, %.preheader.us.us.us ] ; 3 uses
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.f ], [ %i.bp, %.preheader.us.us.us ] ; 3 uses
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %indvars.iv224 ; 7 uses
  %i.br = getelementptr inbounds [24 x i8], ptr %i.bn, i64 %indvars.iv226 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 2 uses
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.ci = add nsw i32 %i.bs, %i.bi
  store i32 %i.ci, ptr %i.bq, align 4, !tbaa !7
  %i.cj = add nsw i32 %i.bu, %i.bk
  store i32 %i.cj, ptr %i.bv, align 4, !tbaa !7
  %i.ck = add nsw i32 %i.bx, %i.bo
  store i32 %i.ck, ptr %i.by, align 4, !tbaa !7
  %i.cl = add nsw i32 %i.ca, %i.bi
  store i32 %i.cl, ptr %i.cb, align 4, !tbaa !7
  %i.cm = add nsw i32 %i.cd, %i.bk
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !7
  %i.cn = add nsw i32 %i.cg, %i.bo
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !7
  %i.co = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv226
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv224
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !7
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 3 uses
  %i.cr = icmp slt i64 %indvars.iv.next227, %i.bh
  br i1 %i.cr, label %bb.f, label %..loopexit_crit_edge.us.us.us.loopexit, !llvm.loop !44

..loopexit_crit_edge.us.us.us.loopexit:           ; preds = %bb.f
  %i.cs = trunc nsw i64 %indvars.iv.next227 to i32
  %i.ct = trunc nsw i64 %indvars.iv.next225 to i32
  br label %..loopexit_crit_edge.us.us.us

..loopexit_crit_edge.us.us.us:                    ; preds = %..loopexit_crit_edge.us.us.us.loopexit, %bb.e
  %.6166.us.us.us = phi i32 [ %.4164190.us.us.us, %bb.e ], [ %i.cs, %..loopexit_crit_edge.us.us.us.loopexit ] ; 4 uses
  %.6.us.us.us = phi i32 [ %.4191.us.us.us, %bb.e ], [ %i.ct, %..loopexit_crit_edge.us.us.us.loopexit ] ; 4 uses
  %i.cu = add nsw i32 %.0192.us.us.us, 1          ; 2 uses
  %exitcond232.not = icmp eq i32 %i.cu, %i.y
  br i1 %exitcond232.not, label %.split.us.us.us, label %bb.e, !llvm.loop !45

.split.us.us.us:                                  ; preds = %..loopexit_crit_edge.us.us.us
  %i.cv = add nsw i32 %.0157196.us.us, 1          ; 2 uses
  %exitcond233.not = icmp eq i32 %i.cv, %i.z
  br i1 %exitcond233.not, label %.split198.us.us, label %.preheader182.us.us, !llvm.loop !46

.split198.us.us:                                  ; preds = %.split.us.us.us
  %i.cw = add nsw i32 %.0158203.us, 1             ; 2 uses
  %exitcond234.not = icmp eq i32 %i.cw, %i.aa
  br i1 %exitcond234.not, label %.split206.us, label %.preheader183.us, !llvm.loop !47

.preheader.prol:                                  ; preds = %.split.loop.exit241, %.split198
  %.0192.prol = phi i32 [ %i.cy, %.split198 ], [ %spec.select.neg, %.split.loop.exit241 ] ; 3 uses
  %.4164190.prol = phi i32 [ %spec.select214.lcssa.lcssa, %.split198 ], [ %.1161.lcssa, %.split.loop.exit241 ]
  %i.cx = or i32 %.0192.prol, %.0170.neg
  %broadcast.splatinsert247 = insertelement <4 x i32> poison, i32 %i.cx, i64 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = or <4 x i32> %broadcast.splat248, %induction
  %11 = icmp ne <4 x i32> %10, zeroinitializer
  %12 = select <4 x i1> %5, <4 x i1> %11, <4 x i1> zeroinitializer
  %.fr253 = freeze <4 x i1> %12
  %13 = bitcast <4 x i1> %.fr253 to i4
  %exitcond.not.prol = icmp eq i4 %13, 0
  %rdx.select = select i1 %exitcond.not.prol, i32 %.4164190.prol, i32 %.0160210 ; 2 uses
  br i1 %.not176, label %.preheader, label %.split198

.preheader:                                       ; preds = %.preheader.prol
  %broadcast.splatinsert247.1 = insertelement <4 x i32> poison, i32 %.0192.prol, i64 0
  %broadcast.splat248.1 = shufflevector <4 x i32> %broadcast.splatinsert247.1, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = or <4 x i32> %broadcast.splat248.1, %induction.1
  %15 = icmp ne <4 x i32> %14, zeroinitializer
  %16 = select <4 x i1> %6, <4 x i1> %15, <4 x i1> zeroinitializer
  %.fr253.1 = freeze <4 x i1> %16
  %17 = or <4 x i1> %7, %.fr253.1
  %18 = bitcast <4 x i1> %17 to i4
  %exitcond.not = icmp eq i4 %18, 0
  %rdx.select.2 = select i1 %exitcond.not, i32 %rdx.select, i32 %.0160210
  br label %.split198

.split198:                                        ; preds = %.preheader, %.preheader.prol
  %spec.select214.lcssa.lcssa = phi i32 [ %rdx.select, %.preheader.prol ], [ %rdx.select.2, %.preheader ] ; 2 uses
  %i.cy = add nsw i32 %.0192.prol, 1              ; 2 uses
  %exitcond223.not = icmp eq i32 %i.cy, %i.aa
  br i1 %exitcond223.not, label %.split206.us, label %.preheader.prol, !llvm.loop !47

.split206.us:                                     ; preds = %.split198, %.split198.us.us
  %.us-phi = phi i32 [ %.6166.us.us.us, %.split198.us.us ], [ %spec.select214.lcssa.lcssa, %.split198 ] ; 2 uses
  %.us-phi207 = phi i32 [ %.6.us.us.us, %.split198.us.us ], [ %.1.lcssa, %.split198 ] ; 3 uses
  %i.cz = icmp eq i32 %.0160210, %i.k             ; 2 uses
  %i.da = add i32 %.0159211, %.1161.lcssa
  %.neg = sub i32 %.0160210, %i.da
  %i.db = add i32 %.neg, %.us-phi207
  %.1173 = select i1 %i.cz, i32 %i.db, i32 %.0172208 ; 2 uses
  %.1168 = select i1 %i.cz, i32 %.0159211, i32 %.0167209 ; 2 uses
  %i.dc = icmp slt i32 %.us-phi, %i.m
  br i1 %i.dc, label %.preheader184, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.split206.us, %bb.b
  %.0172.lcssa = phi i32 [ 0, %bb.b ], [ %.1173, %.split206.us ]
  %.0167.lcssa = phi i32 [ undef, %bb.b ], [ %.1168, %.split206.us ]
  %.0159.lcssa = phi i32 [ 0, %bb.b ], [ %.us-phi207, %.split206.us ]
  %i.dd = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.t, i32 noundef %.0159.lcssa) #10 ; 0 uses
  %i.de = tail call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #10 ; 0 uses
  tail call void @hypre_Free(ptr noundef %i.j) #10
  store ptr %i.t, ptr %1, align 8, !tbaa !29
  store ptr %i.v, ptr %2, align 8, !tbaa !30
  store i32 %.0167.lcssa, ptr %3, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge
  %.2174 = phi i32 [ 0, %bb.a ], [ %.0172.lcssa, %._crit_edge ]
  store i32 %.2174, ptr %4, align 4, !tbaa !7
  ret i32 0
}

declare i32 @hypre_BoxNeighborsAssemble(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_size(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_rank(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Allgather(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Allgatherv(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hypre_StructGridPrint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.b) #10 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.g) #10 ; 0 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !28
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %indvars.iv ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.x, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !28
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridRead(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !7
  %i.h = call ptr @hypre_MAlloc(i32 noundef 72) #10 ; 9 uses
  store i32 %0, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.g, ptr %i.i, align 4, !tbaa !15
  %i.j = call ptr @hypre_BoxArrayCreate(i32 noundef 0) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  store i32 1, ptr %i.o, align 4, !tbaa !18
  %i.p = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.q = load i32, ptr %i.d, align 4, !tbaa !7
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.b ]
  %i.w = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) #10 ; 0 uses
  %i.x = call ptr @hypre_BoxCreate() #10          ; 3 uses
  %i.y = call i32 @hypre_BoxSetExtents(ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.aa = call i32 @hypre_AppendBox(ptr noundef %i.x, ptr noundef %i.z) #10 ; 0 uses
  %i.ab = call i32 @hypre_BoxDestroy(ptr noundef %i.x) #10 ; 0 uses
  %i.ac = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.af = call i32 @hypre_StructGridAssemble(ptr noundef nonnull %i.h) ; 0 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @hypre_BoxArraySetSize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS21hypre_BoxArray_struct", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !8, i64 0}
!12 = !{!"p1 _ZTS16hypre_Box_struct", !8, i64 0}
!13 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16, !11, i64 24, !6, i64 32, !12, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!14 = !{!13, !6, i64 0}
!15 = !{!13, !6, i64 4}
!16 = !{!13, !9, i64 8}
!17 = !{!13, !6, i64 32}
!18 = !{!13, !6, i64 68}
!19 = !{!"p1 _ZTS23hypre_StructGrid_struct", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!13, !12, i64 40}
!22 = !{!13, !11, i64 24}
!23 = !{!13, !10, i64 16}
!24 = !{!"hypre_BoxArray_struct", !12, i64 0, !6, i64 8, !6, i64 12}
!25 = !{!24, !12, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!11, !11, i64 0}
!28 = !{!24, !6, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!10, !10, i64 0}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = !{!13, !6, i64 52}
!39 = !{!13, !6, i64 48}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
end_hunk_0
