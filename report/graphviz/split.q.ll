Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/split.q?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SplitNode:bb.a
  %.020.i = phi i64 [ 1, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.020.i
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %13, ptr noundef nonnull byval(%struct.Rect) align 8 %i.g, ptr noundef nonnull byval(%struct.Rect) align 8 %i.n) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  %i.o = add nuw nsw i64 %.020.i, 1               ; 2 uses
  %exitcond21.not.i = icmp eq i64 %i.o, 65
  br i1 %exitcond21.not.i, label %GetBranches.exit, label %bb.d, !llvm.loop !9

GetBranches.exit:                                 ; preds = %bb.d
  %i.p = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.g) #5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store i64 %i.p, ptr %i.q, align 8, !tbaa !29
  call void @InitNode(ptr noundef nonnull %1) #5
  %i.r = getelementptr i8, ptr %0, i64 2648       ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3172 ; 5 uses
  store i32 0, ptr %i.t, align 4, !tbaa !30
  store i32 0, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @NullRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %9) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2908 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.r, i8 -1, i64 260, i1 false), !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.x, i8 0, i64 260, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %GetBranches.exit
  %indvars.iv.i.i = phi i64 [ 0, %GetBranches.exit ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.z = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.y) #5
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 65
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i, label %bb.e, !llvm.loop !10

.loopexit.i.i:                                    ; preds = %bb.k
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next56.i.i, 64
  br i1 %exitcond58.not.i.i, label %bb.f, label %.lr.ph.i.i, !llvm.loop !11

bb.f:                                             ; preds = %.loopexit.i.i
  %i.ab = sext i32 %.232.i.i to i64               ; 4 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !30
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ab
  store i32 1, ptr %i.ad, align 4, !tbaa !30
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !30
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !tbaa.struct !23
  br label %Classify.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.ah = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.ab
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %7, ptr noundef nonnull byval(%struct.Rect) align 8 %i.ah, ptr noundef nonnull byval(%struct.Rect) align 8 %i.u) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %Classify.exit.i.i

Classify.exit.i.i:                                ; preds = %bb.h, %bb.g
  %i.ai = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.u) #5
  store i64 %i.ai, ptr %i.w, align 8, !tbaa !31
  %i.aj = load i32, ptr %i.s, align 8, !tbaa !30
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !30
  %i.al = sext i32 %.229.i.i to i64               ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.al
  store i32 1, ptr %i.am, align 4, !tbaa !30
  %i.an = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.al
  store i32 1, ptr %i.an, align 4, !tbaa !30
  %i.ao = load i32, ptr %i.t, align 4, !tbaa !30
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Classify.exit.i.i
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !tbaa.struct !23
  br label %PickSeeds.exit.i

bb.j:                                             ; preds = %Classify.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.ar = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.al
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %6, ptr noundef nonnull byval(%struct.Rect) align 8 %i.ar, ptr noundef nonnull byval(%struct.Rect) align 8 %i.v) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %PickSeeds.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.loopexit.i.i
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.loopexit.i.i ], [ 0, %bb.e ] ; 4 uses
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %.loopexit.i.i ], [ 1, %bb.e ] ; 2 uses
  %.02546.i.i = phi i64 [ %.2.i.i, %.loopexit.i.i ], [ 0, %bb.e ]
  %.02745.i.i = phi i32 [ %.229.i.i, %.loopexit.i.i ], [ 0, %bb.e ]
  %.03044.i.i = phi i32 [ %.232.i.i, %.loopexit.i.i ], [ 0, %bb.e ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv55.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv55.i.i
  %i.au = trunc nuw nsw i64 %indvars.iv55.i.i to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv51.i.i = phi i64 [ %indvars.iv49.i.i, %.lr.ph.i.i ], [ %indvars.iv.next52.i.i, %bb.k ] ; 4 uses
  %.140.i.i = phi i64 [ %.02546.i.i, %.lr.ph.i.i ], [ %.2.i.i, %bb.k ] ; 2 uses
  %.12839.i.i = phi i32 [ %.02745.i.i, %.lr.ph.i.i ], [ %.229.i.i, %bb.k ]
  %.13138.i.i = phi i32 [ %.03044.i.i, %.lr.ph.i.i ], [ %.232.i.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv51.i.i
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %8, ptr noundef nonnull byval(%struct.Rect) align 8 %i.as, ptr noundef nonnull byval(%struct.Rect) align 8 %i.av) #5
  %i.aw = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %8) #5
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv51.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !31
  %i.ba = add i64 %i.ax, %i.az
  %i.bb = sub i64 %i.aw, %i.ba                    ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %.140.i.i           ; 2 uses
  %.232.i.i = select i1 %i.bc, i32 %i.au, i32 %.13138.i.i ; 3 uses
  %i.bd = trunc nuw nsw i64 %indvars.iv51.i.i to i32
  %.229.i.i = select i1 %i.bc, i32 %i.bd, i32 %.12839.i.i ; 3 uses
  %.2.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 %.140.i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 1 ; 2 uses
  %exitcond54.not.i.i = icmp eq i64 %indvars.iv.next52.i.i, 65
  br i1 %exitcond54.not.i.i, label %.loopexit.i.i, label %bb.k, !llvm.loop !12

PickSeeds.exit.i:                                 ; preds = %bb.j, %bb.i
  %i.be = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.v) #5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !31
  %i.bg = load i32, ptr %i.t, align 4, !tbaa !30  ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.t, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.bi = load i32, ptr %i.s, align 8, !tbaa !30  ; 3 uses
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = icmp slt i32 %i.bj, 65                  ; 2 uses
  %i.bl = icmp slt i32 %i.bi, 65
  %i.bm = icmp slt i32 %i.bg, 64
  %i.bn = and i1 %i.bm, %i.bl
  %or.cond6985.i = and i1 %i.bn, %i.bk
  br i1 %or.cond6985.i, label %.preheader.i, label %.critedge.i

bb.l:                                             ; preds = %bb.s
  %i.bo = sext i32 %.360.i to i64                 ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bo
  store i32 %.3.i, ptr %i.bp, align 4, !tbaa !30
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bo
  store i32 1, ptr %i.bq, align 4, !tbaa !30
  %i.br = zext nneg i32 %.3.i to i64              ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.br ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.br ; 4 uses
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 32, i1 false), !tbaa.struct !23
  br label %Classify.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.bx = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.bo
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %5, ptr noundef nonnull byval(%struct.Rect) align 8 %i.bx, ptr noundef nonnull byval(%struct.Rect) align 8 %i.bv) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %Classify.exit.i

Classify.exit.i:                                  ; preds = %bb.n, %bb.m
  %i.by = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.bv) #5
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.br
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !31
  %i.ca = load i32, ptr %i.bs, align 4, !tbaa !30
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bs, align 4, !tbaa !30
  %i.cc = load i32, ptr %i.s, align 8, !tbaa !30  ; 3 uses
  %i.cd = load i32, ptr %i.t, align 4, !tbaa !30  ; 2 uses
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = icmp slt i32 %i.ce, 65                  ; 2 uses
  %i.cg = icmp slt i32 %i.cc, 65
  %i.ch = icmp slt i32 %i.cd, 65
  %i.ci = and i1 %i.cg, %i.ch
  %or.cond69.i = and i1 %i.ci, %i.cf
  br i1 %or.cond69.i, label %.preheader.i.backedge, label %.critedge.i

.preheader.i:                                     ; preds = %PickSeeds.exit.i, %.preheader.i.backedge
  %indvars.iv.i = phi i64 [ %indvars.iv.i.be, %.preheader.i.backedge ], [ 0, %PickSeeds.exit.i ] ; 4 uses
  %.05082.i = phi i64 [ %.05082.i.be, %.preheader.i.backedge ], [ 0, %PickSeeds.exit.i ] ; 5 uses
  %.05180.i = phi i8 [ %.05180.i.be, %.preheader.i.backedge ], [ 0, %PickSeeds.exit.i ] ; 2 uses
  %.15580.i = phi i32 [ %.3.i, %.preheader.i.backedge ], [ 0, %PickSeeds.exit.i ] ; 4 uses
  %.15879.i = phi i32 [ %.360.i, %.preheader.i.backedge ], [ 0, %PickSeeds.exit.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !30
  %.not67.i = icmp eq i32 %i.ck, 0
  br i1 %.not67.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %11, ptr noundef nonnull byval(%struct.Rect) align 8 %i.cl, ptr noundef nonnull byval(%struct.Rect) align 8 %i.u) #5
  %i.cm = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %11) #5
  %i.cn = load i64, ptr %i.w, align 8, !tbaa !31
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %12, ptr noundef nonnull byval(%struct.Rect) align 8 %10, ptr noundef nonnull byval(%struct.Rect) align 8 %i.v) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  %i.cp = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %11) #5
  %i.cq = load i64, ptr %i.bf, align 8, !tbaa !31
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %.not68.i = icmp ult i64 %i.cr, %i.co           ; 3 uses
  %i.cs = sub nuw i64 %i.cr, %i.co
  %i.ct = sub nuw i64 %i.co, %i.cr
  %.061.i = zext i1 %.not68.i to i32              ; 2 uses
  %.048.i = select i1 %.not68.i, i64 %i.ct, i64 %i.cs ; 3 uses
  %.not70.i = icmp eq i8 %.05180.i, 0
  %14 = icmp ugt i64 %.048.i, %.05082.i
  %or.cond71.not.i = select i1 %.not70.i, i1 true, i1 %14
  %i.cu = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  br i1 %or.cond71.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp eq i64 %.048.i, %.05082.i
  br i1 %i.cv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = zext i1 %.not68.i to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !30
  %i.cz = zext nneg i32 %.15580.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dc = icmp slt i32 %i.cy, %i.db               ; 2 uses
  %spec.select.i = select i1 %i.dc, i32 %i.cu, i32 %.15879.i
  %spec.select72.i = select i1 %i.dc, i32 %.061.i, i32 %.15580.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.259.i = phi i32 [ %.15879.i, %bb.p ], [ %i.cu, %bb.o ], [ %spec.select.i, %bb.q ]
  %.256.i = phi i32 [ %.15580.i, %bb.p ], [ %.061.i, %bb.o ], [ %spec.select72.i, %bb.q ]
  %.1.i = phi i64 [ %.05082.i, %bb.p ], [ %.048.i, %bb.o ], [ %.05082.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.i
  %.360.i = phi i32 [ %.15879.i, %.preheader.i ], [ %.259.i, %bb.r ] ; 2 uses
  %.3.i = phi i32 [ %.15580.i, %.preheader.i ], [ %.256.i, %bb.r ] ; 3 uses
  %.253.i = phi i8 [ %.05180.i, %.preheader.i ], [ 1, %bb.r ]
  %.2.i = phi i64 [ %.05082.i, %.preheader.i ], [ %.1.i, %bb.r ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i, 65
  br i1 %exitcond.not.i11, label %bb.l, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.s, %Classify.exit.i
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %Classify.exit.i ]
  %.05082.i.be = phi i64 [ %.2.i, %bb.s ], [ 0, %Classify.exit.i ]
  %.05180.i.be = phi i8 [ %.253.i, %bb.s ], [ 0, %Classify.exit.i ]
  br label %.preheader.i, !llvm.loop !13

.critedge.i:                                      ; preds = %Classify.exit.i, %PickSeeds.exit.i
  %.lcssa78.i = phi i32 [ %i.bi, %PickSeeds.exit.i ], [ %i.cc, %Classify.exit.i ]
  %.lcssa.i = phi i1 [ %i.bk, %PickSeeds.exit.i ], [ %i.cf, %Classify.exit.i ]
  br i1 %.lcssa.i, label %bb.t, label %MethodZero.exit

bb.t:                                             ; preds = %.critedge.i
  %i.dd = icmp sgt i32 %.lcssa78.i, 64            ; 2 uses
  %spec.select73.i = zext i1 %i.dd to i32
  %i.de = zext i1 %i.dd to i64                    ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.de ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.de
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %indvars.iv92.i = phi i64 [ 0, %bb.t ], [ %indvars.iv.next93.i, %bb.y ] ; 5 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv92.i ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !30
  %.not.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv92.i
  store i32 %spec.select73.i, ptr %i.dk, align 4, !tbaa !30
  store i32 1, ptr %i.di, align 4, !tbaa !30
  %i.dl = load i32, ptr %i.df, align 4, !tbaa !30
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv92.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 32, i1 false), !tbaa.struct !23
  br label %Classify.exit74.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv92.i
  call void @CombineRect(ptr dead_on_unwind nonnull writable sret(%struct.Rect) align 8 %4, ptr noundef nonnull byval(%struct.Rect) align 8 %i.do, ptr noundef nonnull byval(%struct.Rect) align 8 %i.dg) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %Classify.exit74.i

Classify.exit74.i:                                ; preds = %bb.x, %bb.w
  %i.dp = call i64 @RectArea(ptr noundef nonnull byval(%struct.Rect) align 8 %i.dg) #5
  store i64 %i.dp, ptr %i.dh, align 8, !tbaa !31
  %i.dq = load i32, ptr %i.df, align 4, !tbaa !30
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.df, align 4, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %Classify.exit74.i, %bb.u
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond95.not.i = icmp eq i64 %indvars.iv.next93.i, 65
  br i1 %exitcond95.not.i, label %MethodZero.exit, label %bb.u, !llvm.loop !14

MethodZero.exit:                                  ; preds = %bb.y, %.critedge.i
  %i.ds = call ptr @RTreeNewNode() #5             ; 3 uses
  store ptr %i.ds, ptr %3, align 8, !tbaa !21
  store i32 %i.c, ptr %i.b, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.c, ptr %i.dt, align 4, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %MethodZero.exit
  %.014.i = phi i64 [ 0, %MethodZero.exit ], [ %i.dy, %bb.ab ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.014.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !30
  switch i32 %i.dv, label %bb.ab [
    i32 0, label %.sink.split.i
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.z
  %.sink15.i = phi ptr [ %i.ds, %bb.aa ], [ %1, %bb.z ]
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.014.i
  %i.dx = call i32 @AddBranch(ptr noundef nonnull %0, ptr noundef nonnull %i.dw, ptr noundef %.sink15.i, ptr noundef null) #5 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i, %bb.z
  %i.dy = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %exitcond.not.i12 = icmp eq i64 %i.dy, 65
  br i1 %exitcond.not.i12, label %LoadNodes.exit, label %bb.z, !llvm.loop !15

LoadNodes.exit:                                   ; preds = %bb.ab
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @RTreeNewNode() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @CombineRect(ptr dead_on_unwind writable sret(%struct.Rect) align 8, ptr noundef byval(%struct.Rect) align 8, ptr noundef byval(%struct.Rect) align 8) local_unnamed_addr #2

declare i64 @RectArea(ptr noundef byval(%struct.Rect) align 8) local_unnamed_addr #2

declare void @InitNode(ptr noundef) local_unnamed_addr #2

declare void @NullRect(ptr dead_on_unwind writable sret(%struct.Rect) align 8) local_unnamed_addr #2

declare i32 @AddBranch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24}
!12 = distinct !{!12, !24}
!13 = distinct !{!13, !24}
!14 = distinct !{!14, !24}
!15 = distinct !{!15, !24}
!16 = !{!"Node", !5, i64 0, !5, i64 4, !4, i64 8}
!17 = !{!16, !5, i64 4}
!18 = !{!4, !4, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = !{!"p1 _ZTS4Node", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{i64 0, i64 32, !18, i64 32, i64 8, !21}
!23 = !{i64 0, i64 32, !18}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"Rect", !4, i64 0}
!26 = !{!"long", !4, i64 0}
!27 = !{!"split_q_s", !4, i64 0, !25, i64 2600, !26, i64 2632, !4, i64 2640}
!28 = !{!"RTree", !20, i64 0, !27, i64 8}
!29 = !{!28, !26, i64 2640}
!30 = !{!5, !5, i64 0}
!31 = !{!26, !26, i64 0}
end_hunk_0
