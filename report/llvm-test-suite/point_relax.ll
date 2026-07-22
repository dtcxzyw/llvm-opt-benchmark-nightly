inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@hypre_PointRelaxSetPointset:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PointRelaxDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  tail call void @hypre_Free(ptr noundef %i.h) #8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store ptr null, ptr %i.j, align 8, !tbaa !27
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.m) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !24
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  tail call void @hypre_Free(ptr noundef %i.s) #8
  store ptr null, ptr %i.r, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  tail call void @hypre_Free(ptr noundef %i.u) #8
  store ptr null, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  tail call void @hypre_Free(ptr noundef %i.w) #8
  store ptr null, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  tail call void @hypre_Free(ptr noundef %i.y) #8
  store ptr null, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.aa) #8 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ad) #8 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ah = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ag) #8 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  tail call void @hypre_Free(ptr noundef %i.aj) #8
  store ptr null, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.al) #8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.ao) #8 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PointRelaxSetup(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %2, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = tail call ptr @hypre_StructVectorCreate(i32 noundef %i.t, ptr noundef %i.v) #8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = tail call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.w, ptr noundef nonnull %i.x) #8 ; 0 uses
  %i.z = tail call i32 @hypre_StructVectorInitialize(ptr noundef %i.w) #8 ; 0 uses
  %i.aa = tail call i32 @hypre_StructVectorAssemble(ptr noundef %i.w) #8 ; 0 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.ag, align 4, !tbaa !4
  %i.ah = call i32 @hypre_StructStencilElementRank(ptr noundef %i.ae, ptr noundef nonnull %i.b) #8
  store i32 1, ptr %i.a, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.aj, align 4, !tbaa !4
  %i.ak = call ptr @hypre_CAlloc(i32 noundef %i.j, i32 noundef 8) #8 ; 2 uses
  %i.al = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.al, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count171 = zext nneg i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph146, %._crit_edge138.1
  %indvars.iv168 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next169, %._crit_edge138.1 ] ; 5 uses
  %i.an = call i32 @hypre_CreateComputeInfo(ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #8 ; 0 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv168 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv168 ; 6 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv168 ; 2 uses
  %.val127 = load ptr, ptr %i.g, align 8          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val127, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53 ; 3 uses
  %i.at = call ptr @hypre_BoxArrayArrayCreate(i32 noundef %i.as) #8 ; 2 uses
  %i.au = icmp sgt i32 %i.as, 0
  br i1 %i.au, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %bb.d
  %wide.trip.count166 = zext nneg i32 %i.as to i64
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !4
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %._crit_edge134.split
  %i.av = phi i32 [ %.pre, %.lr.ph137.preheader ], [ %i.cj, %._crit_edge134.split ]
  %indvars.iv163 = phi i64 [ 0, %.lr.ph137.preheader ], [ %indvars.iv.next164, %._crit_edge134.split ] ; 3 uses
  %i.aw = load ptr, ptr %.val127, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv163
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !58 ; 3 uses
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv163
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %i.be = mul nsw i32 %i.av, %i.ba
  %i.bf = call i32 @hypre_BoxArraySetSize(ptr noundef %i.bd, i32 noundef %i.be) #8 ; 0 uses
  %i.bg = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = icmp sgt i32 %i.ba, 0
  %or.cond = and i1 %i.bh, %i.bi
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge134.split

.lr.ph.preheader:                                 ; preds = %.lr.ph137
  %wide.trip.count = zext nneg i32 %i.ba to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv160 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next161, %._crit_edge ] ; 2 uses
  %.0112130 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.a, %._crit_edge ]
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %indvars.iv160
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv155.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next156, %bb.e ] ; 2 uses
  %indvars.iv.a = phi i64 [ %.0112130, %.lr.ph ], [ %indvars.iv.next.a, %bb.e ] ; 2 uses
  %i.bl = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv155.a ; 6 uses
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !61
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.bn, i64 %indvars.iv.a ; 7 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !4
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !4
  %i.cf = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.bo, ptr noundef %i.bk, ptr noundef %i.ao) #8 ; 0 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.e
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.cg = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next161, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge134.split, !llvm.loop !63

._crit_edge134.split:                             ; preds = %._crit_edge, %.lr.ph137
  %i.cj = phi i32 [ %i.bg, %.lr.ph137 ], [ %i.cg, %._crit_edge ]
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge138, label %.lr.ph137, !llvm.loop !64

._crit_edge138:                                   ; preds = %._crit_edge134.split, %bb.d
  %.val.1 = load ptr, ptr %i.h, align 8           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.1, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !53 ; 3 uses
  %i.cm = call ptr @hypre_BoxArrayArrayCreate(i32 noundef %i.cl) #8 ; 2 uses
  %i.cn = icmp sgt i32 %i.cl, 0
  br i1 %i.cn, label %.lr.ph137.preheader.1, label %._crit_edge138.1

.lr.ph137.preheader.1:                            ; preds = %._crit_edge138
  %wide.trip.count166.1 = zext nneg i32 %i.cl to i64
  %.pre178 = load i32, ptr %i.ap, align 4, !tbaa !4
  br label %.lr.ph137.1

.lr.ph137.1:                                      ; preds = %._crit_edge134.split.1, %.lr.ph137.preheader.1
  %i.co = phi i32 [ %.pre178, %.lr.ph137.preheader.1 ], [ %i.ec, %._crit_edge134.split.1 ]
  %indvars.iv163.1 = phi i64 [ 0, %.lr.ph137.preheader.1 ], [ %indvars.iv.next164.1, %._crit_edge134.split.1 ] ; 3 uses
  %i.cp = load ptr, ptr %.val.1, align 8, !tbaa !56
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv163.1
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !58 ; 3 uses
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv163.1
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 2 uses
  %i.cx = mul nsw i32 %i.co, %i.ct
  %i.cy = call i32 @hypre_BoxArraySetSize(ptr noundef %i.cw, i32 noundef %i.cx) #8 ; 0 uses
  %i.cz = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  %i.db = icmp sgt i32 %i.ct, 0
  %or.cond.1 = and i1 %i.da, %i.db
  br i1 %or.cond.1, label %.lr.ph.preheader.1, label %._crit_edge134.split.1

.lr.ph.preheader.1:                               ; preds = %.lr.ph137.1
  %wide.trip.count.1 = zext nneg i32 %i.ct to i64
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge.1, %.lr.ph.preheader.1
  %indvars.iv160.1 = phi i64 [ 0, %.lr.ph.preheader.1 ], [ %indvars.iv.next161.1, %._crit_edge.1 ] ; 2 uses
  %.0112130.1 = phi i64 [ 0, %.lr.ph.preheader.1 ], [ %indvars.iv.next.1.a, %._crit_edge.1 ]
  %i.dc = load ptr, ptr %i.aq, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %indvars.iv160.1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.1
  %indvars.iv155.1.a = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next156.1, %bb.f ] ; 2 uses
  %indvars.iv.1.a = phi i64 [ %.0112130.1, %.lr.ph.1 ], [ %indvars.iv.next.1.a, %bb.f ] ; 2 uses
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !61
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %indvars.iv155.1.a ; 6 uses
  %i.dg = load ptr, ptr %i.cw, align 8, !tbaa !61
  %i.dh = getelementptr inbounds [24 x i8], ptr %i.dg, i64 %indvars.iv.1.a ; 7 uses
  %i.di = load i32, ptr %i.df, align 4, !tbaa !4
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !4
  %i.dy = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.dh, ptr noundef %i.dd, ptr noundef %i.ao) #8 ; 0 uses
  %indvars.iv.next.1.a = add nsw i64 %indvars.iv.1.a, 1 ; 2 uses
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155.1.a, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next156.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %._crit_edge.1, label %bb.f, !llvm.loop !62

._crit_edge.1:                                    ; preds = %bb.f
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160.1, 1 ; 2 uses
  %i.dz = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next161.1, %i.ea
  br i1 %i.eb, label %.lr.ph.1, label %._crit_edge134.split.1, !llvm.loop !63

._crit_edge134.split.1:                           ; preds = %._crit_edge.1, %.lr.ph137.1
  %i.ec = phi i32 [ %i.cz, %.lr.ph137.1 ], [ %i.dz, %._crit_edge.1 ]
  %indvars.iv.next164.1 = add nuw nsw i64 %indvars.iv163.1, 1 ; 2 uses
  %exitcond167.1.not = icmp eq i64 %indvars.iv.next164.1, %wide.trip.count166.1
  br i1 %exitcond167.1.not, label %._crit_edge138.1, label %.lr.ph137.1, !llvm.loop !64

._crit_edge138.1:                                 ; preds = %._crit_edge134.split.1, %._crit_edge138
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.eh = load ptr, ptr %i.am, align 8, !tbaa !68
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv168
  %i.ej = call i32 @hypre_ComputePkgCreate(ptr noundef %i.ed, ptr noundef %i.ee, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef %i.ef, ptr noundef %i.eg, ptr noundef %i.at, ptr noundef %i.cm, ptr noundef %i.ao, ptr noundef %i.ac, ptr noundef %i.eh, i32 noundef 1, ptr noundef %i.ei) #8 ; 0 uses
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.el = call i32 @hypre_BoxArrayArrayDestroy(ptr noundef %i.ek) #8 ; 0 uses
  %i.em = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.en = call i32 @hypre_BoxArrayArrayDestroy(ptr noundef %i.em) #8 ; 0 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge147, label %bb.d, !llvm.loop !69

._crit_edge147:                                   ; preds = %._crit_edge138.1, %bb.c
  %i.eo = call ptr @hypre_StructMatrixRef(ptr noundef %1) #8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !39
  %i.eq = call ptr @hypre_StructVectorRef(ptr noundef %3) #8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !41
  %i.es = call ptr @hypre_StructVectorRef(ptr noundef %2) #8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.es, ptr %i.et, align 8, !tbaa !40
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ah, ptr %i.eu, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ak, ptr %i.ev, align 8, !tbaa !35
  br i1 %i.al, label %.lr.ph151.preheader, label %._crit_edge152

.lr.ph151.preheader:                              ; preds = %._crit_edge147
  %wide.trip.count176 = zext nneg i32 %i.j to i64
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv173 = phi i64 [ 0, %.lr.ph151.preheader ], [ %indvars.iv.next174, %.lr.ph151 ] ; 3 uses
  %.0118148 = phi double [ 0.000000e+00, %.lr.ph151.preheader ], [ %i.fi, %.lr.ph151 ]
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv173 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = mul nsw i32 %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  %i.fd = mul nsw i32 %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv173
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fg = sdiv i32 %i.ff, %i.fd
  %i.fh = sitofp i32 %i.fg to double
  %i.fi = fadd double %.0118148, %i.fh            ; 2 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge152, label %.lr.ph151, !llvm.loop !71

._crit_edge152:                                   ; preds = %.lr.ph151, %._crit_edge147
  %.0118.lcssa = phi double [ 0.000000e+00, %._crit_edge147 ], [ %i.fi, %.lr.ph151 ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !72
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !73
  %i.fn = add nsw i32 %i.fm, %i.fk
  %i.fo = sitofp i32 %i.fn to double
  %i.fp = fmul double %.0118.lcssa, %i.fo
  %i.fq = fptosi double %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.fq, ptr %i.fr, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

declare ptr @hypre_StructVectorCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorSetNumGhost(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorInitialize(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorAssemble(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructStencilElementRank(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_CreateComputeInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxArrayArrayCreate(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArraySetSize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArrayArrayDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructVectorRef(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PointRelax(ptr nofree noundef captures(none) initializes((128, 132)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !23 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load i32, ptr %i.q, align 8, !tbaa !70   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  %i.w = tail call i32 @hypre_BeginTiming(i32 noundef %i.v) #8 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.z = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.y) #8 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ab) #8 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.ae) #8 ; 0 uses
  %i.ag = tail call ptr @hypre_StructMatrixRef(ptr noundef %1) #8
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !39
  %i.ah = tail call ptr @hypre_StructVectorRef(ptr noundef %3) #8
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !41
  %i.ai = tail call ptr @hypre_StructVectorRef(ptr noundef %2) #8
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !75
  %i.ak = icmp eq i32 %i.d, 0
  br i1 %i.ak, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not1115 = icmp eq i32 %i.f, 0
  br i1 %.not1115, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = tail call i32 @hypre_StructVectorSetConstantValues(ptr noundef %3, double noundef 0.000000e+00) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = load i32, ptr %i.u, align 4, !tbaa !18
  %i.an = tail call i32 @hypre_EndTiming(i32 noundef %i.am) #8 ; 0 uses
  br label %bb.bo

bb.e:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.l, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.n, i64 %i.au ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = sext i32 %i.r to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge1207
  %i.bm = phi i1 [ true, %bb.f ], [ false, %._crit_edge1207 ]
  %.09791208 = phi i64 [ 8, %bb.f ], [ 16, %._crit_edge1207 ]
  %.1918.in = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.09791208
  %.1918 = load ptr, ptr %.1918.in, align 8, !tbaa !65 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1918, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !53 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph1206, label %._crit_edge1207

.lr.ph1206:                                       ; preds = %bb.g, %._crit_edge1203
  %i.bq = phi i32 [ %i.js, %._crit_edge1203 ], [ %i.bo, %bb.g ]
  %indvars.iv1389.a = phi i64 [ %indvars.iv.next1390, %._crit_edge1203 ], [ 0, %bb.g ] ; 8 uses
  %i.br = load ptr, ptr %.1918, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv1389.a
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.bu = load ptr, ptr %i.ay, align 8, !tbaa !79
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !61
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %indvars.iv1389.a ; 5 uses
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv1389.a ; 5 uses
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv1389.a ; 5 uses
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 2 uses
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv1389.a
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !27
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bd
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj ; 4 uses
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !82 ; 2 uses
  %i.cm = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv1389.a
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cp ; 4 uses
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !82 ; 2 uses
  %i.cs = load ptr, ptr %i.bh, align 8, !tbaa !83
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv1389.a
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cv ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !58
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge1203

.lr.ph:                                           ; preds = %.lr.ph1206
  %i.da = ptrtoaddr ptr %i.cr to i64              ; 2 uses
  %i.db = ptrtoaddr ptr %i.cl to i64
  %i.dc = ptrtoaddr ptr %i.cd to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dp = shl nsw i64 %i.cv, 3                    ; 2 uses
  %i.dq = add i64 %i.dp, %i.da
  %i.dr = add i64 %i.dp, %i.da
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %._crit_edge.split
  %indvars.iv1386 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1387, %._crit_edge.split ] ; 2 uses
  %i.ds = load ptr, ptr %i.bt, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv1386 ; 4 uses
  %i.du = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.dt, ptr noundef %i.ax, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !4  ; 3 uses
  %i.dw = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 3 uses
  %i.ea = load i32, ptr %i.dd, align 4, !tbaa !4  ; 2 uses
  %i.eb = sub i32 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.ed = load i32, ptr %i.df, align 4, !tbaa !4
  %i.ee = sub nsw i32 %i.ed, %i.ea                ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, -1                  ; 2 uses
  br i1 %i.ef, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.eh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.ei = sub nsw i32 %i.eg, %i.eh
  %i.ej = add nuw nsw i32 %i.ee, 1
  %i.ek = mul nsw i32 %i.ei, %i.ej
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.el = phi i32 [ %i.ek, %bb.i ], [ 0, %bb.h ]
  %i.em = load i32, ptr %i.de, align 4, !tbaa !4
  %i.en = sub nsw i32 %i.em, %i.dw                ; 2 uses
  %i.eo = icmp sgt i32 %i.en, -1                  ; 2 uses
  %i.ep = add nsw i32 %i.eb, %i.el
  %i.eq = add nuw nsw i32 %i.en, 1                ; 3 uses
  %i.er = mul nsw i32 %i.eq, %i.ep
  %i.es = select i1 %i.eo, i32 %i.er, i32 0
  %i.et = add nsw i32 %i.dx, %i.es
  %i.eu = load i32, ptr %i.bz, align 4, !tbaa !4  ; 2 uses
  %i.ev = sub i32 %i.dv, %i.eu
  %i.ew = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.ex = sub i32 %i.dz, %i.ew
  %i.ey = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.ez = sub nsw i32 %i.ey, %i.ew                ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, -1                  ; 2 uses
  br i1 %i.fa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fb = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.fc = load i32, ptr %i.dk, align 4, !tbaa !4
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = add nuw nsw i32 %i.ez, 1
  %i.ff = mul nsw i32 %i.fd, %i.fe
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.fg = phi i32 [ %i.ff, %bb.k ], [ 0, %bb.j ]
  %i.fh = load i32, ptr %i.di, align 4, !tbaa !4
  %i.fi = sub nsw i32 %i.fh, %i.eu                ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1                  ; 2 uses
  %i.fk = add nsw i32 %i.ex, %i.fg
  %i.fl = add nuw nsw i32 %i.fi, 1                ; 3 uses
  %i.fm = mul nsw i32 %i.fl, %i.fk
  %i.fn = select i1 %i.fj, i32 %i.fm, i32 0
  %i.fo = add nsw i32 %i.ev, %i.fn
  %i.fp = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.fq = sub i32 %i.dv, %i.fp
  %i.fr = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.fs = sub i32 %i.dz, %i.fr
  %i.ft = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.fu = sub nsw i32 %i.ft, %i.fr                ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, -1                  ; 2 uses
  br i1 %i.fv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fw = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.fx = load i32, ptr %i.do, align 4, !tbaa !4
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = add nuw nsw i32 %i.fu, 1
  %i.ga = mul nsw i32 %i.fy, %i.fz
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.gb = phi i32 [ %i.ga, %bb.m ], [ 0, %bb.l ]
  %i.gc = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.gd = sub nsw i32 %i.gc, %i.fp                ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1                  ; 2 uses
  %i.gf = add nsw i32 %i.fs, %i.gb
  %i.gg = add nuw nsw i32 %i.gd, 1                ; 3 uses
  %i.gh = mul nsw i32 %i.gg, %i.gf
  %i.gi = select i1 %i.ge, i32 %i.gh, i32 0
  %i.gj = add nsw i32 %i.fq, %i.gi
  %i.gk = load i32, ptr %i.ax, align 4, !tbaa !4  ; 3 uses
  br i1 %i.eo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gl = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.gm = mul nsw i32 %i.gl, %i.eq
  %i.gn = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.go = mul nsw i32 %i.gn, %i.eq
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gp = phi i32 [ %i.gm, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gq = phi i32 [ %i.go, %bb.o ], [ 0, %bb.n ]
  %i.gr = add nuw nsw i32 %i.ee, 1
  %i.gs = mul nsw i32 %i.gq, %i.gr
  %i.gt = select i1 %i.ef, i32 %i.gs, i32 0
  br i1 %i.fj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gu = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.gv = mul nsw i32 %i.gu, %i.fl
  %i.gw = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.gx = mul nsw i32 %i.gw, %i.fl
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.gy = phi i32 [ %i.gv, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.gz = phi i32 [ %i.gx, %bb.q ], [ 0, %bb.p ]
  %i.ha = add nuw nsw i32 %i.ez, 1
  %i.hb = mul nsw i32 %i.gz, %i.ha
  %i.hc = select i1 %i.fa, i32 %i.hb, i32 0
  br i1 %i.ge, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hd = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.he = mul nsw i32 %i.hd, %i.gg
  %i.hf = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.hg = mul nsw i32 %i.hf, %i.gg
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hh = phi i32 [ %i.he, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.hi = phi i32 [ %i.hg, %bb.s ], [ 0, %bb.r ]
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !4   ; 8 uses
  %i.hk = load i32, ptr %i.bk, align 4, !tbaa !4  ; 6 uses
  %i.hl = load i32, ptr %i.bl, align 4, !tbaa !4  ; 3 uses
  %.01034 = call i32 @llvm.smax.i32(i32 %i.hk, i32 %i.hj)
  %.11035 = call i32 @llvm.smax.i32(i32 %i.hl, i32 %.01034)
  %i.hm = icmp sgt i32 %.11035, 0
  br i1 %i.hm, label %.preheader1166.lr.ph, label %._crit_edge.split

.preheader1166.lr.ph:                             ; preds = %bb.t
  %factor.op.mul1197 = mul i32 %i.hk, %i.hh
  %factor.op.mul = mul i32 %i.hk, %i.gy
  %factor.op.mul1196 = mul i32 %i.hk, %i.gp
  %factor.op.mul1195 = mul i32 %i.gk, %i.hj       ; 3 uses
  %i.hn = add nuw nsw i32 %i.fu, 1
  %i.ho = mul nsw i32 %i.hi, %i.hn
  %i.hp = select i1 %i.fv, i32 %i.ho, i32 0
  %i.hq = icmp sgt i32 %i.hl, 0
  %i.hr = icmp sgt i32 %i.hk, 0
  %4 = sub i32 %i.gp, %factor.op.mul1195
  %5 = sub i32 %i.gy, %factor.op.mul1195
  %6 = sub i32 %i.hh, %factor.op.mul1195
  %7 = sub i32 %i.gt, %factor.op.mul1196
  %8 = sub i32 %i.hc, %factor.op.mul
  %9 = sub i32 %i.hp, %factor.op.mul1197
  %brmerge.not1487 = and i1 %i.hq, %i.hr
  %i.hs = icmp sgt i32 %i.hj, 0
  %or.cond = and i1 %brmerge.not1487, %i.hs
  br i1 %or.cond, label %.preheader1165.us.us.preheader, label %._crit_edge.split

.preheader1165.us.us.preheader:                   ; preds = %.preheader1166.lr.ph
  %i.ht = sext i32 %i.gk to i64                   ; 9 uses
  %i.hu = zext nneg i32 %i.hj to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.hj, 1
  %ident.check.not = icmp eq i32 %i.gk, 1
  %or.cond1604 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.hu, 2147483646              ; 6 uses
  %i.hv = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.hu
  br label %.preheader1165.us.us

.preheader1165.us.us:                             ; preds = %.preheader1165.us.us.preheader, %._crit_edge1178.split.us.us.us
  %.09251192.us.us = phi i32 [ %i.jl, %._crit_edge1178.split.us.us.us ], [ %i.et, %.preheader1165.us.us.preheader ]
  %.09311191.us.us = phi i32 [ %i.jm, %._crit_edge1178.split.us.us.us ], [ %i.fo, %.preheader1165.us.us.preheader ]
  %.09371190.us.us = phi i32 [ %i.jn, %._crit_edge1178.split.us.us.us ], [ %i.gj, %.preheader1165.us.us.preheader ]
  %.110031189.us.us = phi i32 [ %i.jo, %._crit_edge1178.split.us.us.us ], [ 0, %.preheader1165.us.us.preheader ]
  br label %.preheader1164.us.us.us

.preheader1164.us.us.us:                          ; preds = %._crit_edge.us.us.us, %.preheader1165.us.us
  %.19261177.us.us.us = phi i32 [ %.09251192.us.us, %.preheader1165.us.us ], [ %i.jh, %._crit_edge.us.us.us ]
  %.19321176.us.us.us = phi i32 [ %.09311191.us.us, %.preheader1165.us.us ], [ %i.ji, %._crit_edge.us.us.us ]
  %.19381175.us.us.us = phi i32 [ %.09371190.us.us, %.preheader1165.us.us ], [ %i.jj, %._crit_edge.us.us.us ]
  %.19951174.us.us.us = phi i32 [ 0, %.preheader1165.us.us ], [ %i.jk, %._crit_edge.us.us.us ]
  %i.hw = sext i32 %.19261177.us.us.us to i64     ; 5 uses
  %i.hx = sext i32 %.19321176.us.us.us to i64     ; 5 uses
  %i.hy = sext i32 %.19381175.us.us.us to i64     ; 5 uses
  br i1 %or.cond1604, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader1164.us.us.us
  %i.hz = shl nsw i64 %i.hy, 3                    ; 2 uses
  %i.ia = add i64 %i.dq, %i.hz
  %10 = add nsw i64 %i.cp, %i.hx
  %i.ib = shl nsw i64 %10, 3
  %i.ic = add i64 %i.ib, %i.db
  %11 = sub i64 %i.ic, %i.ia
  %diff.check = icmp ugt i64 %11, -16
  %i.id = add i64 %i.dr, %i.hz
  %i.ie = add nsw i64 %i.cj, %i.hw
  %12 = shl nsw i64 %i.ie, 3
  %13 = add i64 %12, %i.dc
  %i.if = sub i64 %13, %i.id
  %diff.check1504 = icmp ugt i64 %i.if, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1504
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ig = add nsw i64 %n.vec, %i.hy               ; 2 uses
  %i.ih = add nsw i64 %n.vec, %i.hx               ; 2 uses
  %i.ii = add nsw i64 %n.vec, %i.hw               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.cq, i64 %i.hx
  %invariant.gep1649 = getelementptr [8 x i8], ptr %i.ck, i64 %i.hw
  %invariant.gep1651 = getelementptr [8 x i8], ptr %i.cw, i64 %i.hy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !84
  %gep1650 = getelementptr [8 x i8], ptr %invariant.gep1649, i64 %index
  %wide.load1505 = load <2 x double>, ptr %gep1650, align 8, !tbaa !84
  %i.ij = fdiv <2 x double> %wide.load, %wide.load1505
  %gep1652 = getelementptr [8 x i8], ptr %invariant.gep1651, i64 %index
  store <2 x double> %i.ij, ptr %gep1652, align 8, !tbaa !84
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1164.us.us.us, %middle.block
  %indvars.iv1377.ph = phi i64 [ %i.hy, %vector.memcheck ], [ %i.hy, %.preheader1164.us.us.us ], [ %i.ig, %middle.block ] ; 3 uses
  %indvars.iv1375.ph = phi i64 [ %i.hx, %vector.memcheck ], [ %i.hx, %.preheader1164.us.us.us ], [ %i.ih, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.hw, %vector.memcheck ], [ %i.hw, %.preheader1164.us.us.us ], [ %i.ii, %middle.block ] ; 3 uses
  %.19871168.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader1164.us.us.us ], [ %i.hv, %middle.block ] ; 4 uses
  %i.il = sub i32 %i.hj, %.19871168.us.us.us.ph
  %.neg = add i32 %.19871168.us.us.us.ph, 1
  %xtraiter = and i32 %i.il, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.im = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv1375.ph
  %i.in = load double, ptr %i.im, align 8, !tbaa !84
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv.ph
  %i.ip = load double, ptr %i.io, align 8, !tbaa !84
  %i.iq = fdiv double %i.in, %i.ip
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv1377.ph
  store double %i.iq, ptr %i.ir, align 8, !tbaa !84
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.ht ; 2 uses
  %indvars.iv.next1376.prol = add nsw i64 %indvars.iv1375.ph, %i.ht ; 2 uses
  %indvars.iv.next1378.prol = add nsw i64 %indvars.iv1377.ph, %i.ht ; 2 uses
  %i.is = add nuw nsw i32 %.19871168.us.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa1624.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next1376.lcssa1623.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next1376.prol, %scalar.ph.prol ]
  %indvars.iv.next1378.lcssa1622.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next1378.prol, %scalar.ph.prol ]
  %indvars.iv1377.unr = phi i64 [ %indvars.iv1377.ph, %scalar.ph.preheader ], [ %indvars.iv.next1378.prol, %scalar.ph.prol ]
  %indvars.iv1375.unr = phi i64 [ %indvars.iv1375.ph, %scalar.ph.preheader ], [ %indvars.iv.next1376.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.19871168.us.us.us.unr = phi i32 [ %.19871168.us.us.us.ph, %scalar.ph.preheader ], [ %i.is, %scalar.ph.prol ]
  %i.it = icmp eq i32 %i.hj, %.neg
  br i1 %i.it, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1377 = phi i64 [ %indvars.iv.next1378.1, %scalar.ph ], [ %indvars.iv1377.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv1375 = phi i64 [ %indvars.iv.next1376.1, %scalar.ph ], [ %indvars.iv1375.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.19871168.us.us.us = phi i32 [ %i.jg, %scalar.ph ], [ %.19871168.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv1375
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !84
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !84
  %i.iy = fdiv double %i.iv, %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv1377
  store double %i.iy, ptr %i.iz, align 8, !tbaa !84
  %indvars.iv.next.a = add nsw i64 %indvars.iv, %i.ht ; 2 uses
  %indvars.iv.next1376 = add nsw i64 %indvars.iv1375, %i.ht ; 2 uses
  %indvars.iv.next1378 = add nsw i64 %indvars.iv1377, %i.ht ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %indvars.iv.next1376
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !84
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv.next.a
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !84
  %i.je = fdiv double %i.jb, %i.jd
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv.next1378
  store double %i.je, ptr %i.jf, align 8, !tbaa !84
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next.a, %i.ht ; 2 uses
  %indvars.iv.next1376.1 = add nsw i64 %indvars.iv.next1376, %i.ht ; 2 uses
  %indvars.iv.next1378.1 = add nsw i64 %indvars.iv.next1378, %i.ht ; 2 uses
  %i.jg = add nuw nsw i32 %.19871168.us.us.us, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jg, %i.hj
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !88

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ii, %middle.block ], [ %indvars.iv.next.lcssa1624.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next1376.lcssa = phi i64 [ %i.ih, %middle.block ], [ %indvars.iv.next1376.lcssa1623.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next1376.1, %scalar.ph ]
  %indvars.iv.next1378.lcssa = phi i64 [ %i.ig, %middle.block ], [ %indvars.iv.next1378.lcssa1622.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next1378.1, %scalar.ph ]
  %14 = trunc nsw i64 %indvars.iv.next1378.lcssa to i32
  %15 = trunc nsw i64 %indvars.iv.next1376.lcssa to i32
  %16 = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.jh = add nsw i32 %4, %16                     ; 2 uses
  %i.ji = add nsw i32 %5, %15                     ; 2 uses
  %i.jj = add nsw i32 %6, %14                     ; 2 uses
  %i.jk = add nuw nsw i32 %.19951174.us.us.us, 1  ; 2 uses
  %exitcond1384.not = icmp eq i32 %i.jk, %i.hk
  br i1 %exitcond1384.not, label %._crit_edge1178.split.us.us.us, label %.preheader1164.us.us.us, !llvm.loop !89

._crit_edge1178.split.us.us.us:                   ; preds = %._crit_edge.us.us.us
  %i.jl = add nsw i32 %7, %i.jh
  %i.jm = add nsw i32 %8, %i.ji
  %i.jn = add nsw i32 %9, %i.jj
  %i.jo = add nuw nsw i32 %.110031189.us.us, 1    ; 2 uses
  %exitcond1385.not = icmp eq i32 %i.jo, %i.hl
  br i1 %exitcond1385.not, label %._crit_edge.split, label %.preheader1165.us.us, !llvm.loop !90

._crit_edge.split:                                ; preds = %._crit_edge1178.split.us.us.us, %.preheader1166.lr.ph, %bb.t
  %indvars.iv.next1387 = add nuw nsw i64 %indvars.iv1386, 1 ; 2 uses
  %i.jp = load i32, ptr %i.cx, align 8, !tbaa !58
  %i.jq = sext i32 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next1387, %i.jq
  br i1 %i.jr, label %bb.h, label %._crit_edge1203.loopexit, !llvm.loop !91

._crit_edge1203.loopexit:                         ; preds = %._crit_edge.split
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !53
  br label %._crit_edge1203

._crit_edge1203:                                  ; preds = %._crit_edge1203.loopexit, %.lr.ph1206
  %i.js = phi i32 [ %.pre, %._crit_edge1203.loopexit ], [ %i.bq, %.lr.ph1206 ] ; 2 uses
  %indvars.iv.next1390 = add nuw nsw i64 %indvars.iv1389.a, 1 ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp slt i64 %indvars.iv.next1390, %i.jt
  br i1 %i.ju, label %.lr.ph1206, label %._crit_edge1207, !llvm.loop !92

._crit_edge1207:                                  ; preds = %._crit_edge1203, %bb.g
  br i1 %i.bm, label %bb.g, label %bb.u, !llvm.loop !93

bb.u:                                             ; preds = %._crit_edge1207
  %i.jv = fcmp une double %i.h, 1.000000e+00
  br i1 %i.jv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jw = call i32 @hypre_StructScale(double noundef %i.h, ptr noundef %3) #8 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.jx = srem i32 1, %i.j                        ; 2 uses
  %i.jy = xor i32 %i.jx, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.e
  %.0977 = phi i32 [ %i.jx, %bb.w ], [ 0, %bb.e ]
  %.0975 = phi i32 [ %i.jy, %bb.w ], [ 0, %bb.e ] ; 3 uses
  %i.jz = icmp slt i32 %.0975, %i.d
  br i1 %i.jz, label %.lr.ph1328, label %._crit_edge1329

.lr.ph1328:                                       ; preds = %bb.x
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.kh = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ki = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.kl = icmp sgt i32 %i.as, 0
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.kp = sext i32 %i.r to i64
  %i.kq = fcmp une double %i.h, 1.000000e+00
  %i.kr = fsub double 1.000000e+00, %i.h
  %i.ks = zext i32 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.as to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph1328, %bb.bn
  %.19761326 = phi i32 [ %.0975, %.lr.ph1328 ], [ %i.acu, %bb.bn ]
  %.19781325 = phi i32 [ %.0977, %.lr.ph1328 ], [ %i.acr, %bb.bn ] ; 2 uses
  %i.kt = sext i32 %.19781325 to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !4
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !36 ; 3 uses
  %i.kz = getelementptr inbounds [12 x i8], ptr %i.n, i64 %i.kw ; 4 uses
  %i.la = call i32 @hypre_StructCopy(ptr noundef %3, ptr noundef %i.p) #8 ; 0 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 7 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 7 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge1323
  %i.lf = phi i1 [ true, %bb.y ], [ false, %._crit_edge1323 ]
  %.19801324 = phi i1 [ false, %bb.y ], [ true, %._crit_edge1323 ]
  br i1 %.19801324, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lg = load ptr, ptr %i.ka, align 8, !tbaa !82
  %i.lh = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.ky, ptr noundef %i.lg, ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.lj = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.li) #8 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.5.in = phi ptr [ %i.lc, %bb.ab ], [ %i.lb, %bb.aa ]
  %.5 = load ptr, ptr %.5.in, align 8, !tbaa !65  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.5, i64 8 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !53 ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph1322, label %._crit_edge1323

.lr.ph1322:                                       ; preds = %bb.ac, %._crit_edge1319
  %i.ln = phi i32 [ %i.ack, %._crit_edge1319 ], [ %i.ll, %bb.ac ]
  %indvars.iv1433 = phi i64 [ %indvars.iv.next1434, %._crit_edge1319 ], [ 0, %bb.ac ] ; 11 uses
  %i.lo = load ptr, ptr %.5, align 8, !tbaa !56
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %indvars.iv1433
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !57 ; 2 uses
  %i.lr = load ptr, ptr %i.kb, align 8, !tbaa !79
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !61
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %indvars.iv1433 ; 6 uses
  %i.lu = load ptr, ptr %i.kc, align 8, !tbaa !68
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !61
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %indvars.iv1433 ; 5 uses
  %i.lx = load ptr, ptr %i.kd, align 8, !tbaa !68
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !61
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %indvars.iv1433 ; 5 uses
  %i.ma = load ptr, ptr %i.ke, align 8, !tbaa !68
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !61
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.mb, i64 %indvars.iv1433 ; 5 uses
  %i.md = load ptr, ptr %i.kf, align 8, !tbaa !82 ; 2 uses
  %i.me = load ptr, ptr %i.kg, align 8, !tbaa !83
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv1433
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !4
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mh ; 6 uses
  %i.mj = load ptr, ptr %i.kh, align 8, !tbaa !82 ; 6 uses
  %i.mk = load ptr, ptr %i.ki, align 8, !tbaa !83
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv1433
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !4
  %i.mn = sext i32 %i.mm to i64                   ; 3 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mn ; 14 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !58
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph1318, label %._crit_edge1319

.lr.ph1318:                                       ; preds = %.lr.ph1322
  %i.ms = ptrtoaddr ptr %i.mj to i64
  %i.mt = ptrtoaddr ptr %i.md to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lt, i64 12 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.nk = shl nsw i64 %i.mn, 3                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.mj, i64 %i.nk
  %scevgep1513 = getelementptr i8, ptr %i.mj, i64 8
  %scevgep1514 = getelementptr i8, ptr %scevgep1513, i64 %i.nk
  %scevgep1540 = getelementptr i8, ptr %i.mj, i64 %i.nk
  %scevgep1542 = getelementptr i8, ptr %i.mj, i64 8
  %scevgep1543 = getelementptr i8, ptr %scevgep1542, i64 %i.nk
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1318, %._crit_edge1311.split
  %indvars.iv1430 = phi i64 [ 0, %.lr.ph1318 ], [ %indvars.iv.next1431, %._crit_edge1311.split ] ; 2 uses
  %i.nl = load ptr, ptr %i.lq, align 8, !tbaa !61
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %indvars.iv1430 ; 4 uses
  %i.nn = call i32 @hypre_BoxGetStrideSize(ptr noundef %i.nm, ptr noundef %i.kz, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.no = load i32, ptr %i.nm, align 4, !tbaa !4  ; 5 uses
  %i.np = load i32, ptr %i.lw, align 4, !tbaa !4  ; 2 uses
  %i.nq = sub i32 %i.no, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !4  ; 5 uses
  %i.nt = load i32, ptr %i.mu, align 4, !tbaa !4  ; 2 uses
  %i.nu = sub i32 %i.ns, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 7 uses
  %i.nw = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.nx = sub nsw i32 %i.nw, %i.nt                ; 3 uses
  %i.ny = icmp sgt i32 %i.nx, -1                  ; 2 uses
  br i1 %i.ny, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.nz = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.oa = load i32, ptr %i.mx, align 4, !tbaa !4
  %i.ob = sub nsw i32 %i.nz, %i.oa
  %i.oc = add nuw nsw i32 %i.nx, 1
  %i.od = mul nsw i32 %i.ob, %i.oc
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.oe = phi i32 [ %i.od, %bb.ae ], [ 0, %bb.ad ]
  %i.of = load i32, ptr %i.mv, align 4, !tbaa !4
  %i.og = sub nsw i32 %i.of, %i.np                ; 2 uses
  %i.oh = icmp sgt i32 %i.og, -1                  ; 2 uses
  %i.oi = add nsw i32 %i.nu, %i.oe
  %i.oj = add nuw nsw i32 %i.og, 1                ; 3 uses
  %i.ok = mul nsw i32 %i.oj, %i.oi
  %i.ol = select i1 %i.oh, i32 %i.ok, i32 0
  %i.om = add nsw i32 %i.nq, %i.ol
  %i.on = load i32, ptr %i.mc, align 4, !tbaa !4  ; 2 uses
  %i.oo = sub nsw i32 %i.no, %i.on                ; 3 uses
  %i.op = load i32, ptr %i.my, align 4, !tbaa !4  ; 2 uses
  %i.oq = sub nsw i32 %i.ns, %i.op                ; 3 uses
  %i.or = load i32, ptr %i.nb, align 4, !tbaa !4
  %i.os = sub nsw i32 %i.or, %i.op                ; 3 uses
  %i.ot = icmp sgt i32 %i.os, -1                  ; 6 uses
  br i1 %i.ot, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ou = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.ov = load i32, ptr %i.mz, align 4, !tbaa !4
  %i.ow = sub nsw i32 %i.ou, %i.ov
  %i.ox = add nuw nsw i32 %i.os, 1
  %i.oy = mul nsw i32 %i.ow, %i.ox
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.oz = phi i32 [ %i.oy, %bb.ag ], [ 0, %bb.af ]
  %i.pa = load i32, ptr %i.na, align 4, !tbaa !4
  %i.pb = sub nsw i32 %i.pa, %i.on                ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, -1                  ; 6 uses
  %i.pd = add nsw i32 %i.oz, %i.oq
  %i.pe = add nuw nsw i32 %i.pb, 1                ; 9 uses
  %i.pf = mul nsw i32 %i.pe, %i.pd
  %i.pg = select i1 %i.pc, i32 %i.pf, i32 0
  %i.ph = add nsw i32 %i.pg, %i.oo
  %i.pi = load i32, ptr %i.kz, align 4, !tbaa !4  ; 9 uses
  br i1 %i.oh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pj = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.pk = mul nsw i32 %i.pj, %i.oj
  %i.pl = load i32, ptr %i.le, align 4, !tbaa !4
  %i.pm = mul nsw i32 %i.pl, %i.oj
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.pn = phi i32 [ %i.pk, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.po = phi i32 [ %i.pm, %bb.ai ], [ 0, %bb.ah ]
  %i.pp = add nuw nsw i32 %i.nx, 1
  %i.pq = mul nsw i32 %i.po, %i.pp
  %i.pr = select i1 %i.ny, i32 %i.pq, i32 0
  br i1 %i.pc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ps = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.pt = mul nsw i32 %i.ps, %i.pe
  %i.pu = load i32, ptr %i.le, align 4, !tbaa !4
  %i.pv = mul nsw i32 %i.pu, %i.pe
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.pw = phi i32 [ %i.pt, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.px = phi i32 [ %i.pv, %bb.ak ], [ 0, %bb.aj ]
  %i.py = add nuw nsw i32 %i.os, 1                ; 5 uses
  %i.pz = load i32, ptr %i.b, align 4, !tbaa !4   ; 24 uses
  %i.qa = load i32, ptr %i.kj, align 4, !tbaa !4  ; 14 uses
  %i.qb = load i32, ptr %i.kk, align 4, !tbaa !4  ; 7 uses
  %.01022 = call i32 @llvm.smax.i32(i32 %i.qa, i32 %i.pz)
  %.11023 = call i32 @llvm.smax.i32(i32 %i.qb, i32 %.01022)
  %i.qc = icmp sgt i32 %.11023, 0                 ; 3 uses
  br i1 %i.qc, label %.preheader1161.lr.ph, label %.preheader1163

.preheader1161.lr.ph:                             ; preds = %bb.al
  %factor.op.mul1234 = mul i32 %i.qa, %i.pw
  %factor.op.mul1233 = mul i32 %i.qa, %i.pn
  %factor.op.mul1232 = mul i32 %i.pi, %i.pz       ; 2 uses
  %i.qd = mul nsw i32 %i.px, %i.py
  %i.qe = select i1 %i.ot, i32 %i.qd, i32 0
  %i.qf = icmp sgt i32 %i.qb, 0
  %i.qg = icmp sgt i32 %i.qa, 0
  %17 = sub i32 %i.pn, %factor.op.mul1232
  %18 = sub i32 %i.pw, %factor.op.mul1232
  %19 = sub i32 %i.pr, %factor.op.mul1233
  %20 = sub i32 %i.qe, %factor.op.mul1234
  %brmerge1334.not1490 = and i1 %i.qf, %i.qg
  %i.qh = icmp sgt i32 %i.pz, 0
  %or.cond1481 = and i1 %brmerge1334.not1490, %i.qh
  br i1 %or.cond1481, label %.preheader1157.us.us.preheader, label %.preheader1163

.preheader1157.us.us.preheader:                   ; preds = %.preheader1161.lr.ph
  %i.qi = sext i32 %i.pi to i64                   ; 10 uses
  %i.qj = zext nneg i32 %i.pz to i64              ; 2 uses
  %min.iters.check1590 = icmp ugt i32 %i.pz, 7
  %ident.check1586.not = icmp eq i32 %i.pi, 1
  %or.cond1605 = select i1 %min.iters.check1590, i1 %ident.check1586.not, i1 false
  %n.vec1593 = and i64 %i.qj, 2147483644          ; 5 uses
  %i.qk = trunc nuw nsw i64 %n.vec1593 to i32
  %cmp.n1600 = icmp eq i64 %n.vec1593, %i.qj
  br label %.preheader1157.us.us

.preheader1157.us.us:                             ; preds = %.preheader1157.us.us.preheader, %._crit_edge1219.split.us.us.us
  %.39341229.us.us = phi i32 [ %i.ru, %._crit_edge1219.split.us.us.us ], [ %i.om, %.preheader1157.us.us.preheader ]
  %.09631228.us.us = phi i32 [ %i.rv, %._crit_edge1219.split.us.us.us ], [ %i.ph, %.preheader1157.us.us.preheader ]
  %.310051227.us.us = phi i32 [ %i.rw, %._crit_edge1219.split.us.us.us ], [ 0, %.preheader1157.us.us.preheader ]
  br label %.preheader1154.us.us.us

.preheader1154.us.us.us:                          ; preds = %._crit_edge1213.us.us.us, %.preheader1157.us.us
  %.49351218.us.us.us = phi i32 [ %.39341229.us.us, %.preheader1157.us.us ], [ %i.rr, %._crit_edge1213.us.us.us ]
  %.19641217.us.us.us = phi i32 [ %.09631228.us.us, %.preheader1157.us.us ], [ %i.rs, %._crit_edge1213.us.us.us ]
  %.39971216.us.us.us = phi i32 [ 0, %.preheader1157.us.us ], [ %i.rt, %._crit_edge1213.us.us.us ]
  %21 = sext i32 %.49351218.us.us.us to i64       ; 5 uses
  %22 = sext i32 %.19641217.us.us.us to i64       ; 5 uses
  br i1 %or.cond1605, label %vector.memcheck1587, label %scalar.ph1589.preheader

vector.memcheck1587:                              ; preds = %.preheader1154.us.us.us
  %i.ql = add nsw i64 %i.mn, %22
  %i.qm = shl nsw i64 %i.ql, 3
  %i.qn = add i64 %i.qm, %i.ms
  %i.qo = add nsw i64 %i.mh, %21
  %i.qp = shl nsw i64 %i.qo, 3
  %i.qq = add i64 %i.qp, %i.mt
  %i.qr = sub i64 %i.qq, %i.qn
  %diff.check1588 = icmp ugt i64 %i.qr, -32
  br i1 %diff.check1588, label %scalar.ph1589.preheader, label %vector.ph1591

vector.ph1591:                                    ; preds = %vector.memcheck1587
  %i.qs = add nsw i64 %n.vec1593, %22             ; 2 uses
  %i.qt = add nsw i64 %n.vec1593, %21             ; 2 uses
  %invariant.gep1653 = getelementptr [8 x i8], ptr %i.mi, i64 %21
  %invariant.gep1655 = getelementptr [8 x i8], ptr %i.mo, i64 %22
  br label %vector.body1594

vector.body1594:                                  ; preds = %vector.body1594, %vector.ph1591
  %index1595 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1598, %vector.body1594 ] ; 3 uses
  %gep1654 = getelementptr [8 x i8], ptr %invariant.gep1653, i64 %index1595 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %gep1654, i64 16
  %wide.load1596 = load <2 x double>, ptr %gep1654, align 8, !tbaa !84
  %wide.load1597 = load <2 x double>, ptr %i.qu, align 8, !tbaa !84
  %gep1656 = getelementptr [8 x i8], ptr %invariant.gep1655, i64 %index1595 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %gep1656, i64 16
  store <2 x double> %wide.load1596, ptr %gep1656, align 8, !tbaa !84
  store <2 x double> %wide.load1597, ptr %i.qv, align 8, !tbaa !84
  %index.next1598 = add nuw i64 %index1595, 4     ; 2 uses
  %i.qw = icmp eq i64 %index.next1598, %n.vec1593
  br i1 %i.qw, label %middle.block1599, label %vector.body1594, !llvm.loop !96

middle.block1599:                                 ; preds = %vector.body1594
  br i1 %cmp.n1600, label %._crit_edge1213.us.us.us, label %scalar.ph1589.preheader

scalar.ph1589.preheader:                          ; preds = %vector.memcheck1587, %.preheader1154.us.us.us, %middle.block1599
  %indvars.iv1394.ph = phi i64 [ %22, %vector.memcheck1587 ], [ %22, %.preheader1154.us.us.us ], [ %i.qs, %middle.block1599 ] ; 2 uses
  %indvars.iv1392.ph = phi i64 [ %21, %vector.memcheck1587 ], [ %21, %.preheader1154.us.us.us ], [ %i.qt, %middle.block1599 ] ; 2 uses
  %.39891209.us.us.us.ph = phi i32 [ 0, %vector.memcheck1587 ], [ 0, %.preheader1154.us.us.us ], [ %i.qk, %middle.block1599 ] ; 4 uses
  %i.qx = sub i32 %i.pz, %.39891209.us.us.us.ph
  %xtraiter1628 = and i32 %i.qx, 3                ; 2 uses
  %lcmp.mod1629.not = icmp eq i32 %xtraiter1628, 0
  br i1 %lcmp.mod1629.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol

scalar.ph1589.prol:                               ; preds = %scalar.ph1589.preheader, %scalar.ph1589.prol
  %indvars.iv1394.prol = phi i64 [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ], [ %indvars.iv1394.ph, %scalar.ph1589.preheader ] ; 2 uses
  %indvars.iv1392.prol = phi i64 [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ], [ %indvars.iv1392.ph, %scalar.ph1589.preheader ] ; 2 uses
  %.39891209.us.us.us.prol = phi i32 [ %i.rb, %scalar.ph1589.prol ], [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph1589.prol ], [ 0, %scalar.ph1589.preheader ]
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv1392.prol
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !84
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1394.prol
  store double %i.qz, ptr %i.ra, align 8, !tbaa !84
  %indvars.iv.next1393.prol = add nsw i64 %indvars.iv1392.prol, %i.qi ; 3 uses
  %indvars.iv.next1395.prol = add nsw i64 %indvars.iv1394.prol, %i.qi ; 3 uses
  %i.rb = add nuw nsw i32 %.39891209.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1628
  br i1 %prol.iter.cmp.not, label %scalar.ph1589.prol.loopexit, label %scalar.ph1589.prol, !llvm.loop !97

scalar.ph1589.prol.loopexit:                      ; preds = %scalar.ph1589.prol, %scalar.ph1589.preheader
  %indvars.iv.next1393.lcssa1609.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %indvars.iv.next1395.lcssa1608.unr = phi i64 [ poison, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1394.unr = phi i64 [ %indvars.iv1394.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1395.prol, %scalar.ph1589.prol ]
  %indvars.iv1392.unr = phi i64 [ %indvars.iv1392.ph, %scalar.ph1589.preheader ], [ %indvars.iv.next1393.prol, %scalar.ph1589.prol ]
  %.39891209.us.us.us.unr = phi i32 [ %.39891209.us.us.us.ph, %scalar.ph1589.preheader ], [ %i.rb, %scalar.ph1589.prol ]
  %i.rc = sub i32 %.39891209.us.us.us.ph, %i.pz
  %i.rd = icmp ugt i32 %i.rc, -4
  br i1 %i.rd, label %._crit_edge1213.us.us.us, label %scalar.ph1589

scalar.ph1589:                                    ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589
  %indvars.iv1394 = phi i64 [ %indvars.iv.next1395.3, %scalar.ph1589 ], [ %indvars.iv1394.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %indvars.iv1392 = phi i64 [ %indvars.iv.next1393.3, %scalar.ph1589 ], [ %indvars.iv1392.unr, %scalar.ph1589.prol.loopexit ] ; 2 uses
  %.39891209.us.us.us = phi i32 [ %i.rq, %scalar.ph1589 ], [ %.39891209.us.us.us.unr, %scalar.ph1589.prol.loopexit ]
  %i.re = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv1392
  %i.rf = load double, ptr %i.re, align 8, !tbaa !84
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1394
  store double %i.rf, ptr %i.rg, align 8, !tbaa !84
  %indvars.iv.next1393 = add nsw i64 %indvars.iv1392, %i.qi ; 2 uses
  %indvars.iv.next1395 = add nsw i64 %indvars.iv1394, %i.qi ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv.next1393
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !84
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv.next1395
  store double %i.ri, ptr %i.rj, align 8, !tbaa !84
  %indvars.iv.next1393.1 = add nsw i64 %indvars.iv.next1393, %i.qi ; 2 uses
  %indvars.iv.next1395.1 = add nsw i64 %indvars.iv.next1395, %i.qi ; 2 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv.next1393.1
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !84
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv.next1395.1
  store double %i.rl, ptr %i.rm, align 8, !tbaa !84
  %indvars.iv.next1393.2 = add nsw i64 %indvars.iv.next1393.1, %i.qi ; 2 uses
  %indvars.iv.next1395.2 = add nsw i64 %indvars.iv.next1395.1, %i.qi ; 2 uses
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv.next1393.2
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !84
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv.next1395.2
  store double %i.ro, ptr %i.rp, align 8, !tbaa !84
  %indvars.iv.next1393.3 = add nsw i64 %indvars.iv.next1393.2, %i.qi ; 2 uses
  %indvars.iv.next1395.3 = add nsw i64 %indvars.iv.next1395.2, %i.qi ; 2 uses
  %i.rq = add nuw nsw i32 %.39891209.us.us.us, 4  ; 2 uses
  %exitcond1399.not.3 = icmp eq i32 %i.rq, %i.pz
  br i1 %exitcond1399.not.3, label %._crit_edge1213.us.us.us, label %scalar.ph1589, !llvm.loop !99

._crit_edge1213.us.us.us:                         ; preds = %scalar.ph1589.prol.loopexit, %scalar.ph1589, %middle.block1599
  %indvars.iv.next1393.lcssa = phi i64 [ %i.qt, %middle.block1599 ], [ %indvars.iv.next1393.lcssa1609.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1393.3, %scalar.ph1589 ]
  %indvars.iv.next1395.lcssa = phi i64 [ %i.qs, %middle.block1599 ], [ %indvars.iv.next1395.lcssa1608.unr, %scalar.ph1589.prol.loopexit ], [ %indvars.iv.next1395.3, %scalar.ph1589 ]
  %23 = trunc nsw i64 %indvars.iv.next1395.lcssa to i32
  %24 = trunc nsw i64 %indvars.iv.next1393.lcssa to i32
  %i.rr = add nsw i32 %17, %24                    ; 2 uses
  %i.rs = add nsw i32 %18, %23                    ; 2 uses
  %i.rt = add nuw nsw i32 %.39971216.us.us.us, 1  ; 2 uses
  %exitcond1400.not = icmp eq i32 %i.rt, %i.qa
  br i1 %exitcond1400.not, label %._crit_edge1219.split.us.us.us, label %.preheader1154.us.us.us, !llvm.loop !100

._crit_edge1219.split.us.us.us:                   ; preds = %._crit_edge1213.us.us.us
  %i.ru = add nsw i32 %19, %i.rr
  %i.rv = add nsw i32 %20, %i.rs
  %i.rw = add nuw nsw i32 %.310051227.us.us, 1    ; 2 uses
  %exitcond1401.not = icmp eq i32 %i.rw, %i.qb
  br i1 %exitcond1401.not, label %.preheader1163, label %.preheader1157.us.us, !llvm.loop !101

.preheader1163:                                   ; preds = %._crit_edge1219.split.us.us.us, %.preheader1161.lr.ph, %bb.al
  br i1 %i.kl, label %.lr.ph1283, label %._crit_edge1284

.lr.ph1283:                                       ; preds = %.preheader1163
  %i.rx = mul i32 %i.pe, %i.py
  %25 = mul i32 %i.pi, %i.pz                      ; 3 uses
  %i.ry = icmp slt i32 %i.qb, 1
  %i.rz = icmp slt i32 %i.qa, 1
  %i.sa = icmp slt i32 %i.pz, 1
  %i.sb = sext i32 %i.pi to i64                   ; 9 uses
  %brmerge1337 = or i1 %i.ry, %i.rz
  %i.sc = add i32 %i.pz, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.sd, 3                ; 3 uses
  %scevgep1544 = getelementptr i8, ptr %scevgep1543, i64 %i.se
  %brmerge1483 = or i1 %brmerge1337, %i.sa
  %i.sf = zext nneg i32 %i.pz to i64              ; 2 uses
  %min.iters.check1566 = icmp ugt i32 %i.pz, 5
  %ident.check1538.not = icmp eq i32 %i.pi, 1
  %or.cond1606 = select i1 %min.iters.check1566, i1 %ident.check1538.not, i1 false
  %n.vec1569 = and i64 %i.sf, 2147483644          ; 6 uses
  %i.sg = trunc nuw nsw i64 %n.vec1569 to i32
  %cmp.n1580 = icmp eq i64 %n.vec1569, %i.sf
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph1283, %.loopexit1160
  %indvars.iv1416 = phi i64 [ 0, %.lr.ph1283 ], [ %indvars.iv.next1417, %.loopexit1160 ] ; 4 uses
  %.not1113 = icmp eq i64 %indvars.iv1416, %i.ks
  br i1 %.not1113, label %.loopexit1160, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sh = load ptr, ptr %i.km, align 8, !tbaa !80 ; 3 uses
  %i.si = load ptr, ptr %i.kn, align 8, !tbaa !81
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %indvars.iv1433
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !27
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv1416
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !4
  %i.sn = sext i32 %i.sm to i64                   ; 2 uses
  %i.so = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.sn ; 4 uses
  %i.sp = load ptr, ptr %i.ka, align 8, !tbaa !82 ; 3 uses
  %i.sq = load ptr, ptr %i.ko, align 8, !tbaa !83
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %indvars.iv1433
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !4
  %i.st = sext i32 %i.ss to i64                   ; 2 uses
  %i.su = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.st
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv1416 ; 3 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !4
  %i.sz = load i32, ptr %i.nd, align 4, !tbaa !4
  %i.ta = load i32, ptr %i.ne, align 4, !tbaa !4  ; 2 uses
  %i.tb = sub nsw i32 %i.sz, %i.ta                ; 4 uses
  %i.tc = icmp sgt i32 %i.tb, -1                  ; 3 uses
  br i1 %i.tc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !4
  %i.tf = add nuw nsw i32 %i.tb, 1
  %i.tg = mul nsw i32 %i.te, %i.tf
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.th = phi i32 [ %i.tg, %bb.ao ], [ 0, %bb.an ]
  %i.ti = load i32, ptr %i.nc, align 4, !tbaa !4
  %i.tj = load i32, ptr %i.lz, align 4, !tbaa !4  ; 2 uses
  %i.tk = sub nsw i32 %i.ti, %i.tj                ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, -1                  ; 3 uses
  %i.tm = add nsw i32 %i.th, %i.sy
  %i.tn = add nuw nsw i32 %i.tk, 1                ; 4 uses
  %i.to = mul nsw i32 %i.tn, %i.tm
  %i.tp = select i1 %i.tl, i32 %i.to, i32 0
  %i.tq = add i32 %i.tp, %i.sw
  %i.tr = sext i32 %i.tq to i64                   ; 2 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.su, i64 %i.tr ; 4 uses
  %i.tt = load i32, ptr %i.lt, align 4, !tbaa !4  ; 2 uses
  %i.tu = sub i32 %i.no, %i.tt
  %i.tv = load i32, ptr %i.nf, align 4, !tbaa !4  ; 2 uses
  %i.tw = sub i32 %i.ns, %i.tv
  %i.tx = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.ty = sub nsw i32 %i.tx, %i.tv                ; 3 uses
  %i.tz = icmp sgt i32 %i.ty, -1                  ; 2 uses
  br i1 %i.tz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ua = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.ub = load i32, ptr %i.ni, align 4, !tbaa !4
  %i.uc = sub nsw i32 %i.ua, %i.ub
  %i.ud = add nuw nsw i32 %i.ty, 1
  %i.ue = mul nsw i32 %i.uc, %i.ud
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.uf = phi i32 [ %i.ue, %bb.aq ], [ 0, %bb.ap ]
  %i.ug = load i32, ptr %i.ng, align 4, !tbaa !4
  %i.uh = sub nsw i32 %i.ug, %i.tt                ; 2 uses
  %i.ui = icmp sgt i32 %i.uh, -1                  ; 2 uses
  %i.uj = add nsw i32 %i.tw, %i.uf
  %i.uk = add nuw nsw i32 %i.uh, 1                ; 3 uses
  %i.ul = mul nsw i32 %i.uk, %i.uj
  %i.um = select i1 %i.ui, i32 %i.ul, i32 0
  %i.un = add nsw i32 %i.tu, %i.um
  %i.uo = sub i32 %i.no, %i.tj
  %i.up = sub i32 %i.ns, %i.ta
  br i1 %i.tc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.uq = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.ur = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.us = sub nsw i32 %i.uq, %i.ur
  %i.ut = add nuw nsw i32 %i.tb, 1
  %i.uu = mul nsw i32 %i.us, %i.ut
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.uv = phi i32 [ %i.uu, %bb.as ], [ 0, %bb.ar ]
  %i.uw = add nsw i32 %i.up, %i.uv
  %i.ux = mul nsw i32 %i.uw, %i.tn
  %i.uy = select i1 %i.tl, i32 %i.ux, i32 0
  %i.uz = add nsw i32 %i.uo, %i.uy
  br i1 %i.ot, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.va = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.vb = load i32, ptr %i.mz, align 4, !tbaa !4
  %i.vc = sub nsw i32 %i.va, %i.vb
  %i.vd = mul nsw i32 %i.vc, %i.py
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ve = phi i32 [ %i.vd, %bb.au ], [ 0, %bb.at ]
  %i.vf = add nsw i32 %i.ve, %i.oq
  %i.vg = mul nsw i32 %i.vf, %i.pe
  %i.vh = select i1 %i.pc, i32 %i.vg, i32 0
  %i.vi = add nsw i32 %i.vh, %i.oo
  br i1 %i.ui, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.vj = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.vk = mul nsw i32 %i.vj, %i.uk
  %i.vl = load i32, ptr %i.le, align 4, !tbaa !4
  %i.vm = mul nsw i32 %i.vl, %i.uk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.vn = phi i32 [ %i.vk, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.vo = phi i32 [ %i.vm, %bb.aw ], [ 0, %bb.av ]
  %i.vp = add nuw nsw i32 %i.ty, 1
  %i.vq = mul nsw i32 %i.vo, %i.vp
  %i.vr = select i1 %i.tz, i32 %i.vq, i32 0
  br i1 %i.tl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.vs = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.vt = mul nsw i32 %i.vs, %i.tn
  %i.vu = load i32, ptr %i.le, align 4, !tbaa !4
  %i.vv = mul nsw i32 %i.vu, %i.tn
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.vw = phi i32 [ %i.vt, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %i.vx = phi i32 [ %i.vv, %bb.ay ], [ 0, %bb.ax ]
  %i.vy = add nuw nsw i32 %i.tb, 1
  %i.vz = mul nsw i32 %i.vx, %i.vy
  %i.wa = select i1 %i.tc, i32 %i.vz, i32 0
  br i1 %i.pc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.wb = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.wc = mul nsw i32 %i.wb, %i.pe
  %i.wd = load i32, ptr %i.le, align 4, !tbaa !4
  %i.we = mul i32 %i.rx, %i.wd
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.wf = phi i32 [ %i.wc, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.wg = phi i32 [ %i.we, %bb.ba ], [ 0, %bb.az ]
  br i1 %i.qc, label %.preheader1156.lr.ph, label %.loopexit1160

.preheader1156.lr.ph:                             ; preds = %bb.bb
  %26 = mul i32 %i.qa, %i.wf
  %27 = mul i32 %i.qa, %i.vw
  %28 = mul i32 %i.qa, %i.vn
  %i.wh = select i1 %i.ot, i32 %i.wg, i32 0
  %29 = sub i32 %i.vn, %25
  %30 = sub i32 %i.vw, %25
  %31 = sub i32 %i.wf, %25
  %32 = sub i32 %i.vr, %28
  %33 = sub i32 %i.wa, %27
  %34 = sub i32 %i.wh, %26
  br i1 %brmerge1483, label %.loopexit1160, label %.preheader1153.us.us.preheader

.preheader1153.us.us.preheader:                   ; preds = %.preheader1156.lr.ph
  %i.wi = shl nsw i64 %i.sn, 3                    ; 2 uses
  %scevgep1546 = getelementptr i8, ptr %i.sh, i64 %i.wi
  %scevgep1548 = getelementptr i8, ptr %i.sh, i64 8
  %scevgep1549 = getelementptr i8, ptr %scevgep1548, i64 %i.se
  %scevgep1550.a = getelementptr i8, ptr %scevgep1549, i64 %i.wi
  %i.wj = add nsw i64 %i.st, %i.tr
  %i.wk = shl nsw i64 %i.wj, 3                    ; 2 uses
  %scevgep1552 = getelementptr i8, ptr %i.sp, i64 %i.wk
  %scevgep1554.a = getelementptr i8, ptr %i.sp, i64 8
  %scevgep1555.a = getelementptr i8, ptr %scevgep1554.a, i64 %i.se
  %scevgep1556.a = getelementptr i8, ptr %scevgep1555.a, i64 %i.wk
  br label %.preheader1153.us.us

.preheader1153.us.us:                             ; preds = %.preheader1153.us.us.preheader, %._crit_edge1252.split.us.us.us
  %.39281267.us.us = phi i32 [ %i.yi, %._crit_edge1252.split.us.us.us ], [ %i.un, %.preheader1153.us.us.preheader ]
  %.39401266.us.us = phi i32 [ %i.yj, %._crit_edge1252.split.us.us.us ], [ %i.uz, %.preheader1153.us.us.preheader ]
  %.39661265.us.us = phi i32 [ %i.yk, %._crit_edge1252.split.us.us.us ], [ %i.vi, %.preheader1153.us.us.preheader ]
  %.510071264.us.us = phi i32 [ %i.yl, %._crit_edge1252.split.us.us.us ], [ 0, %.preheader1153.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge1244.us.us.us, %.preheader1153.us.us
  %.49291251.us.us.us = phi i32 [ %.39281267.us.us, %.preheader1153.us.us ], [ %i.ye, %._crit_edge1244.us.us.us ]
  %.49411250.us.us.us = phi i32 [ %.39401266.us.us, %.preheader1153.us.us ], [ %i.yf, %._crit_edge1244.us.us.us ]
  %.49671249.us.us.us = phi i32 [ %.39661265.us.us, %.preheader1153.us.us ], [ %i.yg, %._crit_edge1244.us.us.us ]
  %.59991248.us.us.us = phi i32 [ 0, %.preheader1153.us.us ], [ %i.yh, %._crit_edge1244.us.us.us ]
  %i.wl = sext i32 %.49291251.us.us.us to i64     ; 5 uses
  %i.wm = sext i32 %.49411250.us.us.us to i64     ; 5 uses
  %i.wn = sext i32 %.49671249.us.us.us to i64     ; 5 uses
  br i1 %or.cond1606, label %vector.memcheck1539, label %scalar.ph1565.preheader

vector.memcheck1539:                              ; preds = %.preheader.us.us.us
  %i.wo = shl nsw i64 %i.wn, 3                    ; 2 uses
  %scevgep1541 = getelementptr i8, ptr %scevgep1540, i64 %i.wo ; 2 uses
  %scevgep1545 = getelementptr i8, ptr %scevgep1544, i64 %i.wo ; 2 uses
  %i.wp = shl nsw i64 %i.wl, 3                    ; 2 uses
  %scevgep1547 = getelementptr i8, ptr %scevgep1546, i64 %i.wp
  %scevgep1551 = getelementptr i8, ptr %scevgep1550.a, i64 %i.wp
  %i.wq = shl nsw i64 %i.wm, 3                    ; 2 uses
  %scevgep1553.a = getelementptr i8, ptr %scevgep1552, i64 %i.wq
  %scevgep1557.a = getelementptr i8, ptr %scevgep1556.a, i64 %i.wq
  %bound01558 = icmp ult ptr %scevgep1541, %scevgep1551
  %bound11559 = icmp ult ptr %scevgep1547, %scevgep1545
  %found.conflict1560 = and i1 %bound01558, %bound11559
  %bound01561 = icmp ult ptr %scevgep1541, %scevgep1557.a
  %bound11562 = icmp ult ptr %scevgep1553.a, %scevgep1545
  %found.conflict1563 = and i1 %bound01561, %bound11562
  %conflict.rdx1564 = or i1 %found.conflict1560, %found.conflict1563
  br i1 %conflict.rdx1564, label %scalar.ph1565.preheader, label %vector.ph1567

vector.ph1567:                                    ; preds = %vector.memcheck1539
  %i.wr = add nsw i64 %n.vec1569, %i.wn           ; 2 uses
  %i.ws = add nsw i64 %n.vec1569, %i.wm           ; 2 uses
  %i.wt = add nsw i64 %n.vec1569, %i.wl           ; 2 uses
  %invariant.gep1657 = getelementptr [8 x i8], ptr %i.so, i64 %i.wl
  %invariant.gep1659 = getelementptr [8 x i8], ptr %i.ts, i64 %i.wm
  %invariant.gep1661 = getelementptr [8 x i8], ptr %i.mo, i64 %i.wn
  br label %vector.body1570

vector.body1570:                                  ; preds = %vector.body1570, %vector.ph1567
  %index1571 = phi i64 [ 0, %vector.ph1567 ], [ %index.next1578, %vector.body1570 ] ; 4 uses
  %gep1658 = getelementptr [8 x i8], ptr %invariant.gep1657, i64 %index1571 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %gep1658, i64 16
  %wide.load1572 = load <2 x double>, ptr %gep1658, align 8, !tbaa !84, !alias.scope !102
  %wide.load1573 = load <2 x double>, ptr %i.wu, align 8, !tbaa !84, !alias.scope !102
  %gep1660 = getelementptr [8 x i8], ptr %invariant.gep1659, i64 %index1571 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %gep1660, i64 16
  %wide.load1574 = load <2 x double>, ptr %gep1660, align 8, !tbaa !84, !alias.scope !105
  %wide.load1575 = load <2 x double>, ptr %i.wv, align 8, !tbaa !84, !alias.scope !105
  %gep1662 = getelementptr [8 x i8], ptr %invariant.gep1661, i64 %index1571 ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %gep1662, i64 16 ; 2 uses
  %wide.load1576 = load <2 x double>, ptr %gep1662, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %wide.load1577 = load <2 x double>, ptr %i.ww, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %i.wx = fneg <2 x double> %wide.load1572
  %i.wy = fneg <2 x double> %wide.load1573
  %i.wz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> %wide.load1574, <2 x double> %wide.load1576)
  %i.xa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wy, <2 x double> %wide.load1575, <2 x double> %wide.load1577)
  store <2 x double> %i.wz, ptr %gep1662, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  store <2 x double> %i.xa, ptr %i.ww, align 8, !tbaa !84, !alias.scope !107, !noalias !109
  %index.next1578 = add nuw i64 %index1571, 4     ; 2 uses
  %i.xb = icmp eq i64 %index.next1578, %n.vec1569
  br i1 %i.xb, label %middle.block1579, label %vector.body1570, !llvm.loop !110

middle.block1579:                                 ; preds = %vector.body1570
  br i1 %cmp.n1580, label %._crit_edge1244.us.us.us, label %scalar.ph1565.preheader

scalar.ph1565.preheader:                          ; preds = %vector.memcheck1539, %.preheader.us.us.us, %middle.block1579
  %indvars.iv1406.ph = phi i64 [ %i.wn, %vector.memcheck1539 ], [ %i.wn, %.preheader.us.us.us ], [ %i.wr, %middle.block1579 ] ; 3 uses
  %indvars.iv1404.ph = phi i64 [ %i.wm, %vector.memcheck1539 ], [ %i.wm, %.preheader.us.us.us ], [ %i.ws, %middle.block1579 ] ; 3 uses
  %indvars.iv1402.ph = phi i64 [ %i.wl, %vector.memcheck1539 ], [ %i.wl, %.preheader.us.us.us ], [ %i.wt, %middle.block1579 ] ; 3 uses
  %.59911239.us.us.us.ph = phi i32 [ 0, %vector.memcheck1539 ], [ 0, %.preheader.us.us.us ], [ %i.sg, %middle.block1579 ] ; 4 uses
  %i.xc = sub i32 %i.pz, %.59911239.us.us.us.ph
  %.neg1636 = add i32 %.59911239.us.us.us.ph, 1
  %xtraiter1630 = and i32 %i.xc, 1
  %lcmp.mod1631.not = icmp eq i32 %xtraiter1630, 0
  br i1 %lcmp.mod1631.not, label %scalar.ph1565.prol.loopexit, label %scalar.ph1565.prol

scalar.ph1565.prol:                               ; preds = %scalar.ph1565.preheader
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.so, i64 %indvars.iv1402.ph
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !84
  %i.xf = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %indvars.iv1404.ph
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !84
  %i.xh = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1406.ph ; 2 uses
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !84
  %i.xj = fneg double %i.xe
  %i.xk = call double @llvm.fmuladd.f64(double %i.xj, double %i.xg, double %i.xi)
  store double %i.xk, ptr %i.xh, align 8, !tbaa !84
  %indvars.iv.next1403.prol = add nsw i64 %indvars.iv1402.ph, %i.sb ; 2 uses
  %indvars.iv.next1405.prol = add nsw i64 %indvars.iv1404.ph, %i.sb ; 2 uses
  %indvars.iv.next1407.prol = add nsw i64 %indvars.iv1406.ph, %i.sb ; 2 uses
  %i.xl = add nuw nsw i32 %.59911239.us.us.us.ph, 1
  br label %scalar.ph1565.prol.loopexit

scalar.ph1565.prol.loopexit:                      ; preds = %scalar.ph1565.prol, %scalar.ph1565.preheader
  %indvars.iv.next1403.lcssa1613.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1403.prol, %scalar.ph1565.prol ]
  %indvars.iv.next1405.lcssa1612.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1405.prol, %scalar.ph1565.prol ]
  %indvars.iv.next1407.lcssa1611.unr = phi i64 [ poison, %scalar.ph1565.preheader ], [ %indvars.iv.next1407.prol, %scalar.ph1565.prol ]
  %indvars.iv1406.unr = phi i64 [ %indvars.iv1406.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1407.prol, %scalar.ph1565.prol ]
  %indvars.iv1404.unr = phi i64 [ %indvars.iv1404.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1405.prol, %scalar.ph1565.prol ]
  %indvars.iv1402.unr = phi i64 [ %indvars.iv1402.ph, %scalar.ph1565.preheader ], [ %indvars.iv.next1403.prol, %scalar.ph1565.prol ]
  %.59911239.us.us.us.unr = phi i32 [ %.59911239.us.us.us.ph, %scalar.ph1565.preheader ], [ %i.xl, %scalar.ph1565.prol ]
  %i.xm = icmp eq i32 %i.pz, %.neg1636
  br i1 %i.xm, label %._crit_edge1244.us.us.us, label %scalar.ph1565

scalar.ph1565:                                    ; preds = %scalar.ph1565.prol.loopexit, %scalar.ph1565
  %indvars.iv1406 = phi i64 [ %indvars.iv.next1407.1, %scalar.ph1565 ], [ %indvars.iv1406.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %indvars.iv1404 = phi i64 [ %indvars.iv.next1405.1, %scalar.ph1565 ], [ %indvars.iv1404.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %indvars.iv1402 = phi i64 [ %indvars.iv.next1403.1, %scalar.ph1565 ], [ %indvars.iv1402.unr, %scalar.ph1565.prol.loopexit ] ; 2 uses
  %.59911239.us.us.us = phi i32 [ %i.yd, %scalar.ph1565 ], [ %.59911239.us.us.us.unr, %scalar.ph1565.prol.loopexit ]
  %i.xn = getelementptr inbounds [8 x i8], ptr %i.so, i64 %indvars.iv1402
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !84
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %indvars.iv1404
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !84
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1406 ; 2 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !84
  %i.xt = fneg double %i.xo
  %i.xu = call double @llvm.fmuladd.f64(double %i.xt, double %i.xq, double %i.xs)
  store double %i.xu, ptr %i.xr, align 8, !tbaa !84
  %indvars.iv.next1403 = add nsw i64 %indvars.iv1402, %i.sb ; 2 uses
  %indvars.iv.next1405 = add nsw i64 %indvars.iv1404, %i.sb ; 2 uses
  %indvars.iv.next1407 = add nsw i64 %indvars.iv1406, %i.sb ; 2 uses
  %i.xv = getelementptr inbounds [8 x i8], ptr %i.so, i64 %indvars.iv.next1403
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !84
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %indvars.iv.next1405
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !84
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv.next1407 ; 2 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !84
  %i.yb = fneg double %i.xw
  %i.yc = call double @llvm.fmuladd.f64(double %i.yb, double %i.xy, double %i.ya)
  store double %i.yc, ptr %i.xz, align 8, !tbaa !84
  %indvars.iv.next1403.1 = add nsw i64 %indvars.iv.next1403, %i.sb ; 2 uses
  %indvars.iv.next1405.1 = add nsw i64 %indvars.iv.next1405, %i.sb ; 2 uses
  %indvars.iv.next1407.1 = add nsw i64 %indvars.iv.next1407, %i.sb ; 2 uses
  %i.yd = add nuw nsw i32 %.59911239.us.us.us, 2  ; 2 uses
  %exitcond1413.not.1 = icmp eq i32 %i.yd, %i.pz
  br i1 %exitcond1413.not.1, label %._crit_edge1244.us.us.us, label %scalar.ph1565, !llvm.loop !111

._crit_edge1244.us.us.us:                         ; preds = %scalar.ph1565.prol.loopexit, %scalar.ph1565, %middle.block1579
  %indvars.iv.next1403.lcssa = phi i64 [ %i.wt, %middle.block1579 ], [ %indvars.iv.next1403.lcssa1613.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1403.1, %scalar.ph1565 ]
  %indvars.iv.next1405.lcssa = phi i64 [ %i.ws, %middle.block1579 ], [ %indvars.iv.next1405.lcssa1612.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1405.1, %scalar.ph1565 ]
  %indvars.iv.next1407.lcssa = phi i64 [ %i.wr, %middle.block1579 ], [ %indvars.iv.next1407.lcssa1611.unr, %scalar.ph1565.prol.loopexit ], [ %indvars.iv.next1407.1, %scalar.ph1565 ]
  %35 = trunc nsw i64 %indvars.iv.next1407.lcssa to i32
  %36 = trunc nsw i64 %indvars.iv.next1405.lcssa to i32
  %37 = trunc nsw i64 %indvars.iv.next1403.lcssa to i32
  %i.ye = add nsw i32 %29, %37                    ; 2 uses
  %i.yf = add nsw i32 %30, %36                    ; 2 uses
  %i.yg = add nsw i32 %31, %35                    ; 2 uses
  %i.yh = add nuw nsw i32 %.59991248.us.us.us, 1  ; 2 uses
  %exitcond1414.not = icmp eq i32 %i.yh, %i.qa
  br i1 %exitcond1414.not, label %._crit_edge1252.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !112

._crit_edge1252.split.us.us.us:                   ; preds = %._crit_edge1244.us.us.us
  %i.yi = add nsw i32 %32, %i.ye
  %i.yj = add nsw i32 %33, %i.yf
  %i.yk = add nsw i32 %34, %i.yg
  %i.yl = add nuw nsw i32 %.510071264.us.us, 1    ; 2 uses
  %exitcond1415.not = icmp eq i32 %i.yl, %i.qb
  br i1 %exitcond1415.not, label %.loopexit1160, label %.preheader1153.us.us, !llvm.loop !113

.loopexit1160:                                    ; preds = %._crit_edge1252.split.us.us.us, %.preheader1156.lr.ph, %bb.bb, %bb.am
  %indvars.iv.next1417 = add nuw nsw i64 %indvars.iv1416, 1 ; 2 uses
  %exitcond1419.not = icmp eq i64 %indvars.iv.next1417, %wide.trip.count
  br i1 %exitcond1419.not, label %._crit_edge1284, label %bb.am, !llvm.loop !114

._crit_edge1284:                                  ; preds = %.loopexit1160, %.preheader1163
  %i.ym = load ptr, ptr %i.km, align 8, !tbaa !80 ; 3 uses
  %i.yn = load ptr, ptr %i.kn, align 8, !tbaa !81
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv1433
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !27
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yp, i64 %i.kp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !4
  %i.ys = sext i32 %i.yr to i64                   ; 2 uses
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %i.ys ; 4 uses
  %i.yu = load i32, ptr %i.lt, align 4, !tbaa !4  ; 2 uses
  %i.yv = sub i32 %i.no, %i.yu
  %i.yw = load i32, ptr %i.nf, align 4, !tbaa !4  ; 2 uses
  %i.yx = sub i32 %i.ns, %i.yw
  %i.yy = load i32, ptr %i.nh, align 4, !tbaa !4
  %i.yz = sub nsw i32 %i.yy, %i.yw                ; 3 uses
  %i.za = icmp sgt i32 %i.yz, -1                  ; 2 uses
  br i1 %i.za, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge1284
  %i.zb = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.zc = load i32, ptr %i.ni, align 4, !tbaa !4
  %i.zd = sub nsw i32 %i.zb, %i.zc
  %i.ze = add nuw nsw i32 %i.yz, 1
  %i.zf = mul nsw i32 %i.zd, %i.ze
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1284, %bb.bc
  %i.zg = phi i32 [ %i.zf, %bb.bc ], [ 0, %._crit_edge1284 ]
  %i.zh = load i32, ptr %i.ng, align 4, !tbaa !4
  %i.zi = sub nsw i32 %i.zh, %i.yu                ; 2 uses
  %i.zj = icmp sgt i32 %i.zi, -1                  ; 2 uses
  %i.zk = add nsw i32 %i.yx, %i.zg
  %i.zl = add nuw nsw i32 %i.zi, 1                ; 3 uses
  %i.zm = mul nsw i32 %i.zl, %i.zk
  %i.zn = select i1 %i.zj, i32 %i.zm, i32 0
  %i.zo = add nsw i32 %i.yv, %i.zn
  br i1 %i.ot, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.zp = load i32, ptr %i.nv, align 4, !tbaa !4
  %i.zq = load i32, ptr %i.mz, align 4, !tbaa !4
  %i.zr = sub nsw i32 %i.zp, %i.zq
  %i.zs = mul nsw i32 %i.zr, %i.py
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.zt = phi i32 [ %i.zs, %bb.be ], [ 0, %bb.bd ]
  %i.zu = add nsw i32 %i.zt, %i.oq
  %i.zv = mul nsw i32 %i.zu, %i.pe
  %i.zw = select i1 %i.pc, i32 %i.zv, i32 0
  %i.zx = add nsw i32 %i.zw, %i.oo
  br i1 %i.zj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.zy = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.zz = mul nsw i32 %i.zy, %i.zl
  %i.aaa = load i32, ptr %i.le, align 4, !tbaa !4
  %i.aab = mul nsw i32 %i.aaa, %i.zl
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.aac = phi i32 [ %i.zz, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.aad = phi i32 [ %i.aab, %bb.bg ], [ 0, %bb.bf ]
  %i.aae = add nuw nsw i32 %i.yz, 1
  %i.aaf = mul nsw i32 %i.aad, %i.aae
  %i.aag = select i1 %i.za, i32 %i.aaf, i32 0
  br i1 %i.pc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aah = load i32, ptr %i.ld, align 4, !tbaa !4
  %i.aai = mul nsw i32 %i.aah, %i.pe
  %i.aaj = load i32, ptr %i.le, align 4, !tbaa !4
  %i.aak = mul i32 %i.pe, %i.py
  %i.aal = mul i32 %i.aak, %i.aaj
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.aam = phi i32 [ %i.aai, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %i.aan = phi i32 [ %i.aal, %bb.bi ], [ 0, %bb.bh ]
  br i1 %i.qc, label %.preheader1158.lr.ph, label %._crit_edge1311.split

.preheader1158.lr.ph:                             ; preds = %bb.bj
  %factor.op.mul1310 = mul i32 %i.aam, %i.qa
  %factor.op.mul1309 = mul i32 %i.aac, %i.qa
  %factor.op.mul1308 = mul i32 %i.pi, %i.pz       ; 2 uses
  %i.aao = select i1 %i.ot, i32 %i.aan, i32 0
  %i.aap = icmp sgt i32 %i.qb, 0
  %i.aaq = icmp sgt i32 %i.qa, 0
  %38 = sub i32 %i.aac, %factor.op.mul1308
  %39 = sub i32 %i.aam, %factor.op.mul1308
  %40 = sub i32 %i.aag, %factor.op.mul1309
  %41 = sub i32 %i.aao, %factor.op.mul1310
  %brmerge1340.not1493 = and i1 %i.aap, %i.aaq
  %i.aar = icmp sgt i32 %i.pz, 0
  %or.cond1484 = and i1 %brmerge1340.not1493, %i.aar
  br i1 %or.cond1484, label %.preheader1155.us.us.preheader, label %._crit_edge1311.split

.preheader1155.us.us.preheader:                   ; preds = %.preheader1158.lr.ph
  %i.aas = sext i32 %i.pi to i64                  ; 6 uses
  %i.aat = add nsw i32 %i.pz, -1
  %i.aau = zext i32 %i.aat to i64
  %i.aav = shl nuw nsw i64 %i.aau, 3              ; 2 uses
  %scevgep1515 = getelementptr i8, ptr %scevgep1514, i64 %i.aav
  %i.aaw = shl nsw i64 %i.ys, 3                   ; 2 uses
  %scevgep1517 = getelementptr i8, ptr %i.ym, i64 %i.aaw
  %scevgep1519 = getelementptr i8, ptr %i.ym, i64 8
  %i.aax = getelementptr i8, ptr %scevgep1519, i64 %i.aaw
  %scevgep1520 = getelementptr i8, ptr %i.aax, i64 %i.aav
  %i.aay = zext nneg i32 %i.pz to i64             ; 2 uses
  %min.iters.check1523 = icmp ugt i32 %i.pz, 1
  %ident.check1510.not = icmp eq i32 %i.pi, 1
  %or.cond1607 = select i1 %min.iters.check1523, i1 %ident.check1510.not, i1 false
  %n.vec1526 = and i64 %i.aay, 2147483646         ; 5 uses
  %i.aaz = trunc nuw nsw i64 %n.vec1526 to i32
  %cmp.n1533 = icmp eq i64 %n.vec1526, %i.aay
  br label %.preheader1155.us.us

.preheader1155.us.us:                             ; preds = %.preheader1155.us.us.preheader, %._crit_edge1295.split.us.us.us
  %.61305.us.us = phi i32 [ %i.ace, %._crit_edge1295.split.us.us.us ], [ %i.zo, %.preheader1155.us.us.preheader ]
  %.69691304.us.us = phi i32 [ %i.acf, %._crit_edge1295.split.us.us.us ], [ %i.zx, %.preheader1155.us.us.preheader ]
  %.710091303.us.us = phi i32 [ %i.acg, %._crit_edge1295.split.us.us.us ], [ 0, %.preheader1155.us.us.preheader ]
  br label %.preheader1152.us.us.us

.preheader1152.us.us.us:                          ; preds = %._crit_edge1289.us.us.us, %.preheader1155.us.us
  %.71294.us.us.us = phi i32 [ %.61305.us.us, %.preheader1155.us.us ], [ %i.acb, %._crit_edge1289.us.us.us ]
  %.79701293.us.us.us = phi i32 [ %.69691304.us.us, %.preheader1155.us.us ], [ %i.acc, %._crit_edge1289.us.us.us ]
  %.710011292.us.us.us = phi i32 [ 0, %.preheader1155.us.us ], [ %i.acd, %._crit_edge1289.us.us.us ]
  %i.aba = sext i32 %.71294.us.us.us to i64       ; 5 uses
  %i.abb = sext i32 %.79701293.us.us.us to i64    ; 5 uses
  br i1 %or.cond1607, label %vector.memcheck1511, label %scalar.ph1522.preheader

vector.memcheck1511:                              ; preds = %.preheader1152.us.us.us
  %i.abc = shl nsw i64 %i.abb, 3                  ; 2 uses
  %scevgep1512 = getelementptr i8, ptr %scevgep, i64 %i.abc
  %scevgep1516 = getelementptr i8, ptr %scevgep1515, i64 %i.abc
  %i.abd = shl nsw i64 %i.aba, 3                  ; 2 uses
  %scevgep1518 = getelementptr i8, ptr %scevgep1517, i64 %i.abd
  %scevgep1521 = getelementptr i8, ptr %scevgep1520, i64 %i.abd
  %bound0 = icmp ult ptr %scevgep1512, %scevgep1521
  %bound1 = icmp ult ptr %scevgep1518, %scevgep1516
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph1522.preheader, label %vector.ph1524

vector.ph1524:                                    ; preds = %vector.memcheck1511
  %i.abe = add nsw i64 %n.vec1526, %i.abb         ; 2 uses
  %i.abf = add nsw i64 %n.vec1526, %i.aba         ; 2 uses
  %invariant.gep1663 = getelementptr [8 x i8], ptr %i.yt, i64 %i.aba
  %invariant.gep1665 = getelementptr [8 x i8], ptr %i.mo, i64 %i.abb
  br label %vector.body1527

vector.body1527:                                  ; preds = %vector.body1527, %vector.ph1524
  %index1528 = phi i64 [ 0, %vector.ph1524 ], [ %index.next1531, %vector.body1527 ] ; 3 uses
  %gep1664 = getelementptr [8 x i8], ptr %invariant.gep1663, i64 %index1528
  %wide.load1529 = load <2 x double>, ptr %gep1664, align 8, !tbaa !84, !alias.scope !115
  %gep1666 = getelementptr [8 x i8], ptr %invariant.gep1665, i64 %index1528 ; 2 uses
  %wide.load1530 = load <2 x double>, ptr %gep1666, align 8, !tbaa !84, !alias.scope !118, !noalias !115
  %i.abg = fdiv <2 x double> %wide.load1530, %wide.load1529
  store <2 x double> %i.abg, ptr %gep1666, align 8, !tbaa !84, !alias.scope !118, !noalias !115
  %index.next1531 = add nuw i64 %index1528, 2     ; 2 uses
  %i.abh = icmp eq i64 %index.next1531, %n.vec1526
  br i1 %i.abh, label %middle.block1532, label %vector.body1527, !llvm.loop !120

middle.block1532:                                 ; preds = %vector.body1527
  br i1 %cmp.n1533, label %._crit_edge1289.us.us.us, label %scalar.ph1522.preheader

scalar.ph1522.preheader:                          ; preds = %vector.memcheck1511, %.preheader1152.us.us.us, %middle.block1532
  %indvars.iv1422.ph.a = phi i64 [ %i.abb, %vector.memcheck1511 ], [ %i.abb, %.preheader1152.us.us.us ], [ %i.abe, %middle.block1532 ] ; 3 uses
  %indvars.iv1420.ph = phi i64 [ %i.aba, %vector.memcheck1511 ], [ %i.aba, %.preheader1152.us.us.us ], [ %i.abf, %middle.block1532 ] ; 3 uses
  %.79931285.us.us.us.ph = phi i32 [ 0, %vector.memcheck1511 ], [ 0, %.preheader1152.us.us.us ], [ %i.aaz, %middle.block1532 ] ; 4 uses
  %i.abi = sub i32 %i.pz, %.79931285.us.us.us.ph
  %.neg1637 = add i32 %.79931285.us.us.us.ph, 1
  %xtraiter1633 = and i32 %i.abi, 1
  %lcmp.mod1634.not = icmp eq i32 %xtraiter1633, 0
  br i1 %lcmp.mod1634.not, label %scalar.ph1522.prol.loopexit, label %scalar.ph1522.prol

scalar.ph1522.prol:                               ; preds = %scalar.ph1522.preheader
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %indvars.iv1420.ph
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !84
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1422.ph.a ; 2 uses
  %i.abm = load double, ptr %i.abl, align 8, !tbaa !84
  %i.abn = fdiv double %i.abm, %i.abk
  store double %i.abn, ptr %i.abl, align 8, !tbaa !84
  %indvars.iv.next1421.prol = add nsw i64 %indvars.iv1420.ph, %i.aas ; 2 uses
  %indvars.iv.next1423.prol = add nsw i64 %indvars.iv1422.ph.a, %i.aas ; 2 uses
  %i.abo = add nuw nsw i32 %.79931285.us.us.us.ph, 1
  br label %scalar.ph1522.prol.loopexit

scalar.ph1522.prol.loopexit:                      ; preds = %scalar.ph1522.prol, %scalar.ph1522.preheader
  %indvars.iv.next1421.lcssa1618.unr = phi i64 [ poison, %scalar.ph1522.preheader ], [ %indvars.iv.next1421.prol, %scalar.ph1522.prol ]
  %indvars.iv.next1423.lcssa1617.unr = phi i64 [ poison, %scalar.ph1522.preheader ], [ %indvars.iv.next1423.prol, %scalar.ph1522.prol ]
  %indvars.iv1422.unr = phi i64 [ %indvars.iv1422.ph.a, %scalar.ph1522.preheader ], [ %indvars.iv.next1423.prol, %scalar.ph1522.prol ]
  %indvars.iv1420.unr = phi i64 [ %indvars.iv1420.ph, %scalar.ph1522.preheader ], [ %indvars.iv.next1421.prol, %scalar.ph1522.prol ]
  %.79931285.us.us.us.unr = phi i32 [ %.79931285.us.us.us.ph, %scalar.ph1522.preheader ], [ %i.abo, %scalar.ph1522.prol ]
  %i.abp = icmp eq i32 %i.pz, %.neg1637
  br i1 %i.abp, label %._crit_edge1289.us.us.us, label %scalar.ph1522

scalar.ph1522:                                    ; preds = %scalar.ph1522.prol.loopexit, %scalar.ph1522
  %indvars.iv1422 = phi i64 [ %indvars.iv.next1423.1, %scalar.ph1522 ], [ %indvars.iv1422.unr, %scalar.ph1522.prol.loopexit ] ; 2 uses
  %indvars.iv1420.a = phi i64 [ %indvars.iv.next1421.1, %scalar.ph1522 ], [ %indvars.iv1420.unr, %scalar.ph1522.prol.loopexit ] ; 2 uses
  %.79931285.us.us.us = phi i32 [ %i.aca, %scalar.ph1522 ], [ %.79931285.us.us.us.unr, %scalar.ph1522.prol.loopexit ]
  %i.abq = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %indvars.iv1420.a
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !84
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv1422 ; 2 uses
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !84
  %i.abu = fdiv double %i.abt, %i.abr
  store double %i.abu, ptr %i.abs, align 8, !tbaa !84
  %indvars.iv.next1421 = add nsw i64 %indvars.iv1420.a, %i.aas ; 2 uses
  %indvars.iv.next1423 = add nsw i64 %indvars.iv1422, %i.aas ; 2 uses
  %i.abv = getelementptr inbounds [8 x i8], ptr %i.yt, i64 %indvars.iv.next1421
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !84
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %indvars.iv.next1423 ; 2 uses
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !84
  %i.abz = fdiv double %i.aby, %i.abw
  store double %i.abz, ptr %i.abx, align 8, !tbaa !84
  %indvars.iv.next1421.1 = add nsw i64 %indvars.iv.next1421, %i.aas ; 2 uses
  %indvars.iv.next1423.1 = add nsw i64 %indvars.iv.next1423, %i.aas ; 2 uses
  %i.aca = add nuw nsw i32 %.79931285.us.us.us, 2 ; 2 uses
  %exitcond1427.not.1 = icmp eq i32 %i.aca, %i.pz
  br i1 %exitcond1427.not.1, label %._crit_edge1289.us.us.us, label %scalar.ph1522, !llvm.loop !121

._crit_edge1289.us.us.us:                         ; preds = %scalar.ph1522.prol.loopexit, %scalar.ph1522, %middle.block1532
  %indvars.iv.next1421.lcssa = phi i64 [ %i.abf, %middle.block1532 ], [ %indvars.iv.next1421.lcssa1618.unr, %scalar.ph1522.prol.loopexit ], [ %indvars.iv.next1421.1, %scalar.ph1522 ]
  %indvars.iv.next1423.lcssa = phi i64 [ %i.abe, %middle.block1532 ], [ %indvars.iv.next1423.lcssa1617.unr, %scalar.ph1522.prol.loopexit ], [ %indvars.iv.next1423.1, %scalar.ph1522 ]
  %42 = trunc nsw i64 %indvars.iv.next1423.lcssa to i32
  %43 = trunc nsw i64 %indvars.iv.next1421.lcssa to i32
  %i.acb = add nsw i32 %38, %43                   ; 2 uses
  %i.acc = add nsw i32 %39, %42                   ; 2 uses
  %i.acd = add nuw nsw i32 %.710011292.us.us.us, 1 ; 2 uses
  %exitcond1428.not = icmp eq i32 %i.acd, %i.qa
  br i1 %exitcond1428.not, label %._crit_edge1295.split.us.us.us, label %.preheader1152.us.us.us, !llvm.loop !122

._crit_edge1295.split.us.us.us:                   ; preds = %._crit_edge1289.us.us.us
  %i.ace = add nsw i32 %40, %i.acb
  %i.acf = add nsw i32 %41, %i.acc
  %i.acg = add nuw nsw i32 %.710091303.us.us, 1   ; 2 uses
  %exitcond1429.not = icmp eq i32 %i.acg, %i.qb
  br i1 %exitcond1429.not, label %._crit_edge1311.split, label %.preheader1155.us.us, !llvm.loop !123

._crit_edge1311.split:                            ; preds = %._crit_edge1295.split.us.us.us, %.preheader1158.lr.ph, %bb.bj
  %indvars.iv.next1431 = add nuw nsw i64 %indvars.iv1430, 1 ; 2 uses
  %i.ach = load i32, ptr %i.mp, align 8, !tbaa !58
  %i.aci = sext i32 %i.ach to i64
  %i.acj = icmp slt i64 %indvars.iv.next1431, %i.aci
  br i1 %i.acj, label %bb.ad, label %._crit_edge1319.loopexit, !llvm.loop !124

._crit_edge1319.loopexit:                         ; preds = %._crit_edge1311.split
  %.pre1436 = load i32, ptr %i.lk, align 8, !tbaa !53
  br label %._crit_edge1319

._crit_edge1319:                                  ; preds = %._crit_edge1319.loopexit, %.lr.ph1322
  %i.ack = phi i32 [ %.pre1436, %._crit_edge1319.loopexit ], [ %i.ln, %.lr.ph1322 ] ; 2 uses
  %indvars.iv.next1434 = add nuw nsw i64 %indvars.iv1433, 1 ; 2 uses
  %i.acl = sext i32 %i.ack to i64
  %i.acm = icmp slt i64 %indvars.iv.next1434, %i.acl
  br i1 %i.acm, label %.lr.ph1322, label %._crit_edge1323, !llvm.loop !125

._crit_edge1323:                                  ; preds = %._crit_edge1319, %bb.ac
  br i1 %i.lf, label %bb.z, label %bb.bk, !llvm.loop !126

bb.bk:                                            ; preds = %._crit_edge1323
  br i1 %i.kq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.acn = call i32 @hypre_StructScale(double noundef %i.kr, ptr noundef %3) #8 ; 0 uses
  %i.aco = call i32 @hypre_StructAxpy(double noundef %i.h, ptr noundef %i.p, ptr noundef %3) #8 ; 0 uses
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.acp = call i32 @hypre_StructCopy(ptr noundef %i.p, ptr noundef %3) #8 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.acq = add nsw i32 %.19781325, 1
  %i.acr = srem i32 %i.acq, %i.j                  ; 2 uses
  %i.acs = icmp eq i32 %i.acr, 0
  %i.act = zext i1 %i.acs to i32
  %i.acu = add nsw i32 %.19761326, %i.act         ; 3 uses
  %i.acv = icmp slt i32 %i.acu, %i.d
  br i1 %i.acv, label %bb.y, label %._crit_edge1329, !llvm.loop !127

._crit_edge1329:                                  ; preds = %bb.bn, %bb.x
  %.1976.lcssa = phi i32 [ %.0975, %bb.x ], [ %i.acu, %bb.bn ]
  store i32 %.1976.lcssa, ptr %i.aj, align 8, !tbaa !75
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.acx = load i32, ptr %i.acw, align 8, !tbaa !74
  %i.acy = call i32 @hypre_IncFLOPCount(i32 noundef %i.acx) #8 ; 0 uses
  %i.acz = load i32, ptr %i.u, align 4, !tbaa !18
  %i.ada = call i32 @hypre_EndTiming(i32 noundef %i.acz) #8 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge1329, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorSetConstantValues(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructScale(double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructCopy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_StructAxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PointRelaxSetTol(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PointRelaxSetMaxIter(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PointRelaxSetZeroGuess(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PointRelaxSetWeight(ptr nofree noundef writeonly captures(none) initializes((32, 40)) %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %1, ptr %i.a, align 8, !tbaa !23
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_PointRelaxSetPointsetRank(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  store i32 %2, ptr %i.d, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PointRelaxSetTempVec(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.b) #8 ; 0 uses
  %i.d = tail call ptr @hypre_StructVectorRef(ptr noundef %1) #8
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !10, i64 32, !5, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !15, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !5, i64 112, !17, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p2 int", !14, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !12, i64 0}
!16 = !{!"p1 _ZTS25hypre_StructVector_struct", !12, i64 0}
!17 = !{!"p2 _ZTS23hypre_ComputePkg_struct", !14, i64 0}
!18 = !{!9, !5, i64 132}
!19 = !{!9, !10, i64 8}
!20 = !{!9, !5, i64 16}
!21 = !{!9, !5, i64 20}
!22 = !{!9, !5, i64 24}
!23 = !{!9, !10, i64 32}
!24 = !{!9, !5, i64 40}
!25 = !{!9, !16, i64 104}
!26 = !{!9, !13, i64 72}
!27 = !{!11, !11, i64 0}
!28 = !{!9, !11, i64 48}
!29 = !{!9, !11, i64 64}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !11, i64 56}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
end_hunk_0
