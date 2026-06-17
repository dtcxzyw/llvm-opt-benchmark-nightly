inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@analyzeAggFuncArgs:bb.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !3750
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3751 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !227  ; 4 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %sqlite3ExprAnalyzeAggList.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.v, align 8, !tbaa !5    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %sqlite3ExprAnalyzeAggList.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br label %bb.d

bb.d:                                             ; preds = %sqlite3ExprAnalyzeAggregates.exit.i, %.lr.ph.i
  %i.z = phi i32 [ %i.w, %.lr.ph.i ], [ %i.ac, %sqlite3ExprAnalyzeAggregates.exit.i ]
  %.010.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ad, %sqlite3ExprAnalyzeAggregates.exit.i ]
  %.079.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ae, %sqlite3ExprAnalyzeAggregates.exit.i ] ; 2 uses
  %i.aa = load ptr, ptr %.079.i, align 8, !tbaa !902 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store <2 x ptr> <ptr @sqlite3WalkerDepthIncrease, ptr @sqlite3WalkerDepthDecrease>, ptr %i.h, align 16, !tbaa !450
  store i32 0, ptr %i.i, align 16, !tbaa !3746
  store ptr %1, ptr %i.j, align 8, !tbaa !227
  store <2 x ptr> <ptr null, ptr @analyzeAggregate>, ptr %4, align 16, !tbaa !450
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %sqlite3ExprAnalyzeAggregates.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %4, ptr noundef nonnull %i.aa) #62, !inline_history !3509 ; 0 uses
  %.pre.i = load i32, ptr %i.v, align 8, !tbaa !5
  br label %sqlite3ExprAnalyzeAggregates.exit.i

sqlite3ExprAnalyzeAggregates.exit.i:              ; preds = %bb.e, %bb.d
  %i.ac = phi i32 [ %i.z, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %i.ad = add nuw nsw i32 %.010.i, 1              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.079.i, i64 24
  %i.af = icmp slt i32 %i.ad, %i.ac
  br i1 %i.af, label %bb.d, label %sqlite3ExprAnalyzeAggList.exit, !llvm.loop !4390

sqlite3ExprAnalyzeAggList.exit:                   ; preds = %sqlite3ExprAnalyzeAggregates.exit.i, %bb.b, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !371 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %sqlite3ExprAnalyzeAggList.exit23, label %bb.f

bb.f:                                             ; preds = %sqlite3ExprAnalyzeAggList.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !227 ; 4 uses
  %.not.i16 = icmp eq ptr %i.aj, null
  br i1 %.not.i16, label %sqlite3ExprAnalyzeAggList.exit23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !5  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i17, label %sqlite3ExprAnalyzeAggList.exit23

.lr.ph.i17:                                       ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.h

bb.h:                                             ; preds = %sqlite3ExprAnalyzeAggregates.exit.i22, %.lr.ph.i17
  %i.an = phi i32 [ %i.ak, %.lr.ph.i17 ], [ %i.aq, %sqlite3ExprAnalyzeAggregates.exit.i22 ]
  %.010.i18 = phi i32 [ 0, %.lr.ph.i17 ], [ %i.ar, %sqlite3ExprAnalyzeAggregates.exit.i22 ]
  %.079.i19 = phi ptr [ %i.am, %.lr.ph.i17 ], [ %i.as, %sqlite3ExprAnalyzeAggregates.exit.i22 ] ; 2 uses
  %i.ao = load ptr, ptr %.079.i19, align 8, !tbaa !902 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  store <2 x ptr> <ptr @sqlite3WalkerDepthIncrease, ptr @sqlite3WalkerDepthDecrease>, ptr %i.k, align 16, !tbaa !450
  store i32 0, ptr %i.l, align 16, !tbaa !3746
  store ptr %1, ptr %i.m, align 8, !tbaa !227
  store <2 x ptr> <ptr null, ptr @analyzeAggregate>, ptr %3, align 16, !tbaa !450
  %.not.i.i.i20 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i20, label %sqlite3ExprAnalyzeAggregates.exit.i22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.ao) #62, !inline_history !3509 ; 0 uses
  %.pre.i21 = load i32, ptr %i.aj, align 8, !tbaa !5
  br label %sqlite3ExprAnalyzeAggregates.exit.i22

sqlite3ExprAnalyzeAggregates.exit.i22:            ; preds = %bb.i, %bb.h
  %i.aq = phi i32 [ %i.an, %bb.h ], [ %.pre.i21, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %i.ar = add nuw nsw i32 %.010.i18, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i19, i64 24
  %i.at = icmp slt i32 %i.ar, %i.aq
  br i1 %i.at, label %bb.h, label %sqlite3ExprAnalyzeAggList.exit23, !llvm.loop !4390

sqlite3ExprAnalyzeAggList.exit23:                 ; preds = %sqlite3ExprAnalyzeAggregates.exit.i22, %bb.g, %bb.f, %sqlite3ExprAnalyzeAggList.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !367
  %i.aw = and i32 %i.av, 16777216
  %.not15 = icmp eq i32 %i.aw, 0
  br i1 %.not15, label %bb.l, label %bb.j

bb.j:                                             ; preds = %sqlite3ExprAnalyzeAggList.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !227
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3027 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  store <2 x ptr> <ptr @analyzeAggregate, ptr @sqlite3WalkerDepthIncrease>, ptr %i.n, align 8, !tbaa !450
  store ptr @sqlite3WalkerDepthDecrease, ptr %i.o, align 8, !tbaa !3648
  store i32 0, ptr %i.p, align 8, !tbaa !3746
  store ptr %1, ptr %i.q, align 8, !tbaa !227
  store ptr null, ptr %2, align 8, !tbaa !3506
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %sqlite3ExprAnalyzeAggregates.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %2, ptr noundef nonnull %i.ba) #62, !inline_history !3509 ; 0 uses
  br label %sqlite3ExprAnalyzeAggregates.exit

sqlite3ExprAnalyzeAggregates.exit:                ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.l

bb.l:                                             ; preds = %sqlite3ExprAnalyzeAggregates.exit, %sqlite3ExprAnalyzeAggList.exit23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !3749
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !4391

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.a, align 8, !tbaa !3559
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %i.bg = and i32 %i.bf, -131073
  store i32 %i.bg, ptr %i.a, align 8, !tbaa !3559
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sqlite3ExprNullRegisterRange(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.Expr, align 8               ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 4 uses
  %i.b = load i16, ptr %i.a, align 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  store i8 83, ptr %3, align 8, !tbaa !3021
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %2, ptr %i.c, align 8, !tbaa !227
  %i.d = or i16 %i.b, 128
  store i16 %i.d, ptr %i.a, align 1
  %i.e = call fastcc i32 @sqlite3ExprCodeRunJustOnce(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1) ; 0 uses
  %i.f = and i16 %i.b, 128
  %i.g = load i16, ptr %i.a, align 1
  %i.h = and i16 %i.g, -129
  %i.i = or disjoint i16 %i.h, %i.f
  store i16 %i.i, ptr %i.a, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @optimizeAggregateUseOfIndexedExpr(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) initializes((40, 44)) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3748 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.b, ptr %i.c, align 8, !tbaa !3747
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3744
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3038
  %i.h = load i32, ptr %i.g, align 8, !tbaa !5    ; 2 uses
  %i.i = icmp sgt i32 %i.b, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3757 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %3 = icmp eq i64 %n.mod.vf, 0
  %4 = select i1 %3, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %4       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %31, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %32, %vector.body ]
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %6 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %7 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %8 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %9 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %10 = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %index
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 184
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %17 = load i32, ptr %11, align 8, !tbaa !3758
  %18 = load i32, ptr %12, align 8, !tbaa !3758
  %19 = load i32, ptr %13, align 8, !tbaa !3758
  %i.q = load i32, ptr %i.o, align 8, !tbaa !3758
  %20 = insertelement <4 x i32> poison, i32 %17, i64 0
  %21 = insertelement <4 x i32> %20, i32 %18, i64 1
  %22 = insertelement <4 x i32> %21, i32 %19, i64 2
  %23 = insertelement <4 x i32> %22, i32 %i.q, i64 3
  %24 = load i32, ptr %14, align 8, !tbaa !3758
  %25 = load i32, ptr %15, align 8, !tbaa !3758
  %26 = load i32, ptr %16, align 8, !tbaa !3758
  %i.r = load i32, ptr %i.p, align 8, !tbaa !3758
  %27 = insertelement <4 x i32> poison, i32 %24, i64 0
  %28 = insertelement <4 x i32> %27, i32 %25, i64 1
  %29 = insertelement <4 x i32> %28, i32 %26, i64 2
  %30 = insertelement <4 x i32> %29, i32 %i.r, i64 3
  %31 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %23, <4 x i32> %vec.phi) ; 2 uses
  %32 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %30, <4 x i32> %vec.phi4) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !4392

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %31, <4 x i32> %32)
  %33 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.02.ph = phi i32 [ %i.j, %.lr.ph ], [ %33, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.02.a = phi i32 [ %spec.select.a, %scalar.ph ], [ %.02.ph, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3758
  %spec.select.a = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %.02.a) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !4393

._crit_edge.loopexit:                             ; preds = %scalar.ph
  %i.w = add nsw i32 %spec.select.a, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0.lcssa = phi i32 [ %i.h, %bb.b ], [ %i.w, %._crit_edge.loopexit ]
  store i32 %.0.lcssa, ptr %i.d, align 4, !tbaa !3744
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  tail call fastcc void @analyzeAggFuncArgs(ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @aggregateConvertIndexedExprRefToColumn(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Walker, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @aggregateIdxEprRefToColCallback, ptr %i.a, align 8, !tbaa !3507
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3749 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3WalkExpr.exit
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %i.k, %sqlite3WalkExpr.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3WalkExpr.exit ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !3750
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3751 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %sqlite3WalkExpr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %1, ptr noundef nonnull %i.i) #62, !inline_history !3509 ; 0 uses
  %.pre = load i32, ptr %i.b, align 8, !tbaa !3749
  br label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit:                             ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !4394

._crit_edge:                                      ; preds = %sqlite3WalkExpr.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeMove(ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %.16.val, i32 noundef 80, i32 noundef %0, i32 noundef %1, i32 noundef %2), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  store i8 80, ptr %i.j, align 8, !tbaa !563
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !587
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %0, ptr %i.l, align 4, !tbaa !584
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !585
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %2, ptr %i.n, align 4, !tbaa !586
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @updateAccumulator(ptr noundef %0, i32 noundef range(i32 -2147483647, -2147483648) %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !313
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %sqlite3VdbeJumpHereOrPopInst.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %2, align 8, !tbaa !3761
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3749
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph306, label %._crit_edge307.thread

.lr.ph306:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3750
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.k = icmp ne i32 %1, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 15 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph306, %bb.cu
  %.0162304 = phi i32 [ 0, %.lr.ph306 ], [ %i.pp, %bb.cu ] ; 2 uses
  %.0165303 = phi i32 [ 0, %.lr.ph306 ], [ %.6, %bb.cu ] ; 5 uses
  %.0171302 = phi ptr [ %i.i, %.lr.ph306 ], [ %i.pq, %bb.cu ] ; 11 uses
  %i.x = load ptr, ptr %.0171302, align 8, !tbaa !3751 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227  ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !367
  %i.ac = and i32 %i.ab, 16777216
  %.not192 = icmp eq i32 %i.ac, 0
  br i1 %.not192, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3027
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !3748
  %.not193 = icmp eq i32 %i.ah, 0
  br i1 %.not193, label %sqlite3VdbeAddOp2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.0171302, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3771
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1262
  %i.am = and i32 %i.al, 32
  %i.an = icmp ne i32 %i.am, 0
  %or.cond = and i1 %i.k, %i.an
  br i1 %or.cond, label %bb.f, label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp eq i32 %.0165303, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !950
  %i.aq = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %i.l, align 4, !tbaa !950
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1166 = phi i32 [ %i.aq, %bb.g ], [ %.0165303, %bb.f ] ; 4 uses
  %i.ar = load i32, ptr %i.m, align 8, !tbaa !185 ; 3 uses
  %i.as = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.as, %i.ar
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 81, i32 noundef %1, i32 noundef %.1166, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.j:                                             ; preds = %bb.h
  %i.au = add nsw i32 %i.ar, 1
  store i32 %i.au, ptr %i.m, align 8, !tbaa !185
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.aw ; 7 uses
  store i8 81, ptr %i.ax, align 8, !tbaa !563
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 0, ptr %i.ay, align 2, !tbaa !587
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %1, ptr %i.az, align 4, !tbaa !584
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %.1166, ptr %i.ba, align 8, !tbaa !585
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !586
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
end_hunk_0
begin_hunk_1_@sqlite3FkLocateIndex:bb.a
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !2990
  %.not85.us136 = icmp eq i8 %i.bb, 0
  br i1 %.not85.us136, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.071133.us135, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !2797
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.preheader110.us, label %bb.r

.preheader110.us:                                 ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %.071133.us135, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !878
  %i.bh = getelementptr inbounds nuw i8, ptr %.071133.us135, i64 64
  br label %bb.s

.thread.us:                                       ; preds = %..loopexit109_crit_edge.us.us, %bb.s, %bb.w, %sqlite3StrICmp.exit101.us.us
  %i.bi = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.bj = icmp eq i32 %.fr, %i.bi
  br i1 %i.bj, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.thread.us, %bb.q, %bb.p, %.lr.ph.split.split.us
  %i.bk = getelementptr inbounds nuw i8, ptr %.071133.us135, i64 40
  %.071.us155 = load ptr, ptr %i.bk, align 8, !tbaa !935 ; 2 uses
  %.not84.us156 = icmp eq ptr %.071.us155, null
  br i1 %.not84.us156, label %.critedge, label %.lr.ph.split.split.us, !llvm.loop !4783

bb.s:                                             ; preds = %bb.af, %.preheader110.us
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %bb.af ], [ 0, %.preheader110.us ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %indvars.iv193
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !330 ; 2 uses
  %i.bn = icmp slt i16 %i.bm, 0
  br i1 %i.bn, label %.thread.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !882
  %i.bp = zext nneg i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !883 ; 2 uses
  %i.bt = and i16 %i.bs, 512
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %sqlite3ColumnColl.exit.us.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !929 ; 3 uses
  %strlen.i.us.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.bv) ; 2 uses
  %scevgep.i.us.us = getelementptr i8, ptr %i.bv, i64 %strlen.i.us.us ; 2 uses
  %i.bw = and i16 %i.bs, 4
  %.not10.i.us.us = icmp eq i16 %i.bw, 0
  br i1 %.not10.i.us.us, label %.loopexit.i.us.us, label %.preheader.preheader.i.us.us

.preheader.preheader.i.us.us:                     ; preds = %bb.u
  %scevgep12.i.us.us = getelementptr i8, ptr %scevgep.i.us.us, i64 1
  %strlen13.i.us.us = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i.us.us)
  %i.bx = getelementptr i8, ptr %i.bv, i64 %strlen13.i.us.us
  %i.by = getelementptr i8, ptr %i.bx, i64 %strlen.i.us.us
  %scevgep14.i.us.us = getelementptr i8, ptr %i.by, i64 1
  br label %.loopexit.i.us.us

.loopexit.i.us.us:                                ; preds = %.preheader.preheader.i.us.us, %bb.u
  %.2.i.us.us = phi ptr [ %scevgep.i.us.us, %bb.u ], [ %scevgep14.i.us.us, %.preheader.preheader.i.us.us ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.2.i.us.us, i64 1
  br label %sqlite3ColumnColl.exit.us.us

sqlite3ColumnColl.exit.us.us:                     ; preds = %.loopexit.i.us.us, %bb.t
  %.09.i.us.us = phi ptr [ %i.bz, %.loopexit.i.us.us ], [ null, %bb.t ] ; 2 uses
  %.not86.us.us = icmp eq ptr %.09.i.us.us, null
  %spec.store.select.us.us = select i1 %.not86.us.us, ptr @.str.136, ptr %.09.i.us.us
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !2803
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv193
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !251
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %sqlite3ColumnColl.exit.us.us
  %.013.i92.us.us = phi ptr [ %spec.store.select.us.us, %sqlite3ColumnColl.exit.us.us ], [ %i.co, %bb.y ] ; 2 uses
  %.0.i93.us.us = phi ptr [ %i.cc, %sqlite3ColumnColl.exit.us.us ], [ %i.cn, %bb.y ] ; 2 uses
  %i.cd = load i8, ptr %.0.i93.us.us, align 1, !tbaa !227 ; 3 uses
  %i.ce = load i8, ptr %.013.i92.us.us, align 1, !tbaa !227 ; 2 uses
  %i.cf = icmp eq i8 %i.cd, %i.ce
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = zext i8 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !227
  %i.cj = zext i8 %i.ce to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !227
  %.not.i94.us.us = icmp eq i8 %i.ci, %i.cl
  br i1 %.not.i94.us.us, label %bb.y, label %.thread.us

bb.x:                                             ; preds = %bb.v
  %i.cm = icmp eq i8 %i.cd, 0
  br i1 %i.cm, label %sqlite3StrICmp.exit96.thread.us.us, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i93.us.us, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i92.us.us, i64 1
  br label %bb.v

sqlite3StrICmp.exit96.thread.us.us:               ; preds = %bb.x
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !929
  br label %bb.z

bb.z:                                             ; preds = %sqlite3StrICmp.exit101.us.us, %sqlite3StrICmp.exit96.thread.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3StrICmp.exit101.us.us ], [ 0, %sqlite3StrICmp.exit96.thread.us.us ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !3616
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  %.013.i97.us.us = phi ptr [ %i.cp, %bb.z ], [ %i.de, %bb.ad ] ; 2 uses
  %.0.i98.us.us = phi ptr [ %i.cs, %bb.z ], [ %i.dd, %bb.ad ] ; 2 uses
  %i.ct = load i8, ptr %.0.i98.us.us, align 1, !tbaa !227 ; 3 uses
  %i.cu = load i8, ptr %.013.i97.us.us, align 1, !tbaa !227 ; 2 uses
  %i.cv = icmp eq i8 %i.ct, %i.cu
  br i1 %i.cv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = zext i8 %i.ct to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !227
  %i.cz = zext i8 %i.cu to i64
  %i.da = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !227
  %.not.i99.us.us = icmp eq i8 %i.cy, %i.db
  br i1 %.not.i99.us.us, label %bb.ad, label %sqlite3StrICmp.exit101.us.us

sqlite3StrICmp.exit101.us.us:                     ; preds = %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count196
  br i1 %exitcond.not, label %.thread.us, label %bb.z, !llvm.loop !4784

bb.ac:                                            ; preds = %bb.aa
  %i.dc = icmp eq i8 %i.ct, 0
  br i1 %i.dc, label %sqlite3StrICmp.exit101.thread.us.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i98.us.us, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %.013.i97.us.us, i64 1
  br label %bb.aa

sqlite3StrICmp.exit101.thread.us.us:              ; preds = %bb.ac
  %i.df = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not88, label %..loopexit109_crit_edge.us.us, label %bb.ae

bb.ae:                                            ; preds = %sqlite3StrICmp.exit101.thread.us.us
  %i.dg = load i32, ptr %i.cq, align 8, !tbaa !930
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv193
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !5
  br label %..loopexit109_crit_edge.us.us

..loopexit109_crit_edge.us.us:                    ; preds = %bb.ae, %sqlite3StrICmp.exit101.thread.us.us
  %i.di = icmp eq i32 %.fr, %i.df
  br i1 %i.di, label %.thread.us, label %bb.af

bb.af:                                            ; preds = %..loopexit109_crit_edge.us.us
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %.loopexit, label %bb.s, !llvm.loop !4785

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.dj = icmp eq i32 %.fr, 0
  br i1 %i.dj, label %.lr.ph.split.split.split.us, label %.critedge

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.ai
  %.071133.us168 = phi ptr [ %.071.us171, %bb.ai ], [ %.071131, %.lr.ph.split.split ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.071133.us168, i64 94
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !936
  %i.dm = icmp eq i16 %i.dl, 0
  br i1 %i.dm, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph.split.split.split.us
  %i.dn = getelementptr inbounds nuw i8, ptr %.071133.us168, i64 98
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !2990
  %.not85.us169 = icmp eq i8 %i.do, 0
  br i1 %.not85.us169, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dp = getelementptr inbounds nuw i8, ptr %.071133.us168, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2797
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %.lr.ph.split.split.split.us
  %i.ds = getelementptr inbounds nuw i8, ptr %.071133.us168, i64 40
  %.071.us171 = load ptr, ptr %i.ds, align 8, !tbaa !935 ; 2 uses
  %.not84.us172 = icmp eq ptr %.071.us171, null
  br i1 %.not84.us172, label %.critedge, label %.lr.ph.split.split.split.us, !llvm.loop !4783

.split.us:                                        ; preds = %bb.n
  %.not89 = icmp ne ptr %.072, null
  %i.dt = icmp ne i32 %.fr, 0
  %or.cond = and i1 %.not89, %i.dt
  br i1 %or.cond, label %.lr.ph177.preheader, label %.loopexit

.lr.ph177.preheader:                              ; preds = %.split.us
  %wide.trip.count201 = zext i32 %.fr to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %.fr, 17
  br i1 %min.iters.check, label %.lr.ph177.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph177.preheader
  %i.du = shl nuw nsw i64 %wide.trip.count201, 2
  %scevgep = getelementptr i8, ptr %.072, i64 %i.du
  %i.dv = shl nuw nsw i64 %wide.trip.count201, 4
  %i.dw = getelementptr i8, ptr %2, i64 %i.dv
  %scevgep252 = getelementptr i8, ptr %i.dw, i64 52
  %bound0 = icmp ult ptr %.072, %scevgep252
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph177.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count201, 7      ; 2 uses
  %i.dx = icmp eq i64 %n.mod.vf, 0
  %i.dy = select i1 %i.dx, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count201, %i.dy ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 112
  %i.eo = load i32, ptr %i.dz, align 8, !tbaa !930, !alias.scope !4786
  %i.ep = load i32, ptr %i.eb, align 8, !tbaa !930, !alias.scope !4786
  %i.eq = load i32, ptr %i.ed, align 8, !tbaa !930, !alias.scope !4786
  %i.er = load i32, ptr %i.ef, align 8, !tbaa !930, !alias.scope !4786
  %i.es = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %i.et = insertelement <4 x i32> %i.es, i32 %i.ep, i64 1
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.eq, i64 2
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.er, i64 3
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !930, !alias.scope !4786
  %i.ex = load i32, ptr %i.ej, align 8, !tbaa !930, !alias.scope !4786
  %i.ey = load i32, ptr %i.el, align 8, !tbaa !930, !alias.scope !4786
  %i.ez = load i32, ptr %i.en, align 8, !tbaa !930, !alias.scope !4786
  %i.fa = insertelement <4 x i32> poison, i32 %i.ew, i64 0
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 1
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 2
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.ez, i64 3
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <4 x i32> %i.ev, ptr %i.fe, align 4, !tbaa !5, !alias.scope !4789, !noalias !4786
  store <4 x i32> %i.fd, ptr %i.ff, align 4, !tbaa !5, !alias.scope !4789, !noalias !4786
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %.lr.ph177.preheader253, label %vector.body, !llvm.loop !4791

.lr.ph177.preheader253:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph177.preheader
  %indvars.iv198.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph177.preheader ], [ %n.vec, %vector.body ] ; 4 uses
  %i.fh = sub nsw i64 %wide.trip.count201, %indvars.iv198.ph
  %xtraiter = and i64 %i.fh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol

.lr.ph177.prol:                                   ; preds = %.lr.ph177.preheader253, %.lr.ph177.prol
  %indvars.iv198.prol = phi i64 [ %indvars.iv.next199.prol, %.lr.ph177.prol ], [ %indvars.iv198.ph, %.lr.ph177.preheader253 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph177.prol ], [ 0, %.lr.ph177.preheader253 ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv198.prol
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !930
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv198.prol
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !5
  %indvars.iv.next199.prol = add nuw nsw i64 %indvars.iv198.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph177.prol.loopexit, label %.lr.ph177.prol, !llvm.loop !4792

.lr.ph177.prol.loopexit:                          ; preds = %.lr.ph177.prol, %.lr.ph177.preheader253
  %indvars.iv198.unr = phi i64 [ %indvars.iv198.ph, %.lr.ph177.preheader253 ], [ %indvars.iv.next199.prol, %.lr.ph177.prol ]
  %i.fl = sub nsw i64 %indvars.iv198.ph, %wide.trip.count201
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit, label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.prol.loopexit, %.lr.ph177
  %indvars.iv198 = phi i64 [ %indvars.iv.next199.3, %.lr.ph177 ], [ %indvars.iv198.unr, %.lr.ph177.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv198
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !930
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv198
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !5
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.next199
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !930
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv.next199
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !5
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198, 2 ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.next199.1
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !930
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv.next199.1
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !5
  %indvars.iv.next199.2 = add nuw nsw i64 %indvars.iv198, 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.next199.2
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !930
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.072, i64 %indvars.iv.next199.2
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !5
  %indvars.iv.next199.3 = add nuw nsw i64 %indvars.iv198, 4 ; 2 uses
  %exitcond202.not.3 = icmp eq i64 %indvars.iv.next199.3, %wide.trip.count201
  br i1 %exitcond202.not.3, label %.loopexit, label %.lr.ph177, !llvm.loop !4793

.critedge:                                        ; preds = %bb.ai, %bb.r, %bb.o, %.lr.ph.split.split, %sqlite3StrICmp.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.ga = load i16, ptr %i.fz, align 1
  %i.gb = and i16 %i.ga, 1
  %.not90 = icmp eq i16 %i.gb, 0
  br i1 %.not90, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge
  %i.gc = load ptr, ptr %2, align 8, !tbaa !3525
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !947
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !251
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.950, ptr noundef %i.gd, ptr noundef %i.gf)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge
  %.not.i102 = icmp eq ptr %.072, null
  br i1 %.not.i102, label %sqlite3DbFree.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gg = load ptr, ptr %0, align 8, !tbaa !651
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.gg, ptr noundef nonnull %.072)
  br label %sqlite3DbFree.exit

.loopexit:                                        ; preds = %bb.ah, %.thread.us, %bb.af, %.lr.ph177.prol.loopexit, %.lr.ph177, %.split.us
  %.071119 = phi ptr [ %.071133.us, %.lr.ph177.prol.loopexit ], [ %.071133.us, %.split.us ], [ %.071133.us135, %.thread.us ], [ %.071133.us135, %bb.af ], [ %.071133.us, %.lr.ph177 ], [ %.071133.us168, %bb.ah ]
  store ptr %.071119, ptr %3, align 8, !tbaa !935
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.f, %bb.al, %bb.ak, %bb.j, %bb.c, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ 1, %bb.al ], [ 0, %bb.c ], [ 1, %bb.ak ], [ 1, %bb.j ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CodeRowTriggerDirect(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 -2147483648, 2147483647) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3544
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !651
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1328
  %i.i = and i32 %i.h, 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = or i16 %i.l, 128
  store i16 %i.m, ptr %i.k, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.b, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3544 ; 2 uses
  %.not.i15 = icmp eq ptr %i.p, null
  %..i = select i1 %.not.i15, ptr %0, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %..i, i64 168
  %.0.i1621 = load ptr, ptr %i.q, align 8, !tbaa !4742 ; 2 uses
  %.not19.i22 = icmp eq ptr %.0.i1621, null
  br i1 %.not19.i22, label %getRowTrigger.exit, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3GetVdbe.exit, %.critedge2.i
  %.0.i1623 = phi ptr [ %.0.i16, %.critedge2.i ], [ %.0.i1621, %sqlite3GetVdbe.exit ] ; 4 uses
  %i.r = load ptr, ptr %.0.i1623, align 8, !tbaa !4743
  %.not20.i = icmp eq ptr %i.r, %1
  br i1 %.not20.i, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i1623, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4744
  %.not21.i = icmp eq i32 %i.t, %4
  br i1 %.not21.i, label %getRowTrigger.exit.thread, label %.critedge2.i
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!4192 = distinct !{!4192, !52}
!4193 = distinct !{!4193, !52}
!4194 = distinct !{!4194, !52}
!4195 = !{!4125, !4126, i64 16}
!4196 = distinct !{!4196, !52}
!4197 = distinct !{!4197, !52}
!4198 = distinct !{!4198, !52}
!4199 = distinct !{!4199, !52}
!4200 = distinct !{!4200, !52}
!4201 = distinct !{!4201, !52}
!4202 = distinct !{!4202, !52}
!4203 = distinct !{null, null}
!4204 = distinct !{!4204, !52}
!4205 = distinct !{!4205, !52}
!4206 = distinct !{!4206, !52}
!4207 = distinct !{null, null}
!4208 = distinct !{null}
!4209 = distinct !{null, null}
!4210 = distinct !{!4210, !52}
!4211 = distinct !{!4211, !52, !1282}
!4212 = distinct !{!4212, !52, !776}
!4213 = distinct !{!4213, !52}
!4214 = distinct !{!4214, !52}
!4215 = distinct !{!4215, !52}
!4216 = distinct !{!4216, !52}
!4217 = distinct !{!4217, !52}
!4218 = distinct !{null}
!4219 = distinct !{null, ptr @sqlite3DbFreeNN, null, ptr @sqlite3_free, ptr @sqlite3_mutex_enter}
!4220 = distinct !{null, ptr @sqlite3DbFreeNN, null, ptr @sqlite3_free, null}
!4221 = distinct !{null, ptr @sqlite3DbFreeNN, null, ptr @sqlite3_free}
!4222 = distinct !{null, ptr @sqlite3DbFreeNN, null, ptr @sqlite3_free, ptr @sqlite3_mutex_leave}
!4223 = distinct !{!4223, !52}
!4224 = distinct !{!4224, !52}
!4225 = distinct !{!4225, !52}
!4226 = distinct !{!4226, !52}
!4227 = distinct !{!4227, !52}
!4228 = distinct !{!4228, !52}
!4229 = distinct !{!4229, !52}
!4230 = !{!4231, !32, i64 0}
!4231 = !{!"WhereConst", !32, i64 0, !64, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !4232, i64 32}
!4232 = !{!"p2 _ZTS4Expr", !31, i64 0}
!4233 = !{!4231, !64, i64 8}
!4234 = !{!4231, !6, i64 16}
!4235 = !{!4231, !6, i64 20}
!4236 = !{!4231, !4232, i64 32}
!4237 = !{!4231, !6, i64 24}
!4238 = !{!4231, !6, i64 28}
!4239 = distinct !{!4239, !52}
!4240 = distinct !{!4240, !52}
!4241 = distinct !{!4241, !52}
!4242 = distinct !{!4242, !52}
!4243 = distinct !{!4243, !52}
!4244 = distinct !{!4244, !52}
!4245 = distinct !{!4245, !52}
!4246 = distinct !{!4246, !52}
!4247 = distinct !{!4247, !52}
!4248 = distinct !{!4248, !52}
!4249 = distinct !{!4249, !52}
!4250 = distinct !{!4250, !52}
!4251 = distinct !{!4251, !52}
!4252 = !{!3023, !6, i64 108}
!4253 = !{!3023, !6, i64 128}
!4254 = !{!3023, !6, i64 132}
!4255 = !{!3023, !6, i64 136}
!4256 = !{!3023, !6, i64 100}
!4257 = !{!3023, !6, i64 104}
!4258 = distinct !{!4258, !52}
!4259 = !{!4260, !6, i64 4}
!4260 = !{!"WhereMaskSet", !6, i64 0, !6, i64 4, !7, i64 8}
!4261 = !{!4262, !1152, i64 0}
!4262 = !{!"WhereLoopBuilder", !1152, i64 0, !1149, i64 8, !3733, i64 16, !4263, i64 24, !7, i64 32, !7, i64 33, !6, i64 36}
!4263 = !{!"p1 _ZTS10WhereOrSet", !12, i64 0}
!4264 = !{!4262, !1149, i64 8}
!4265 = !{!4262, !3733, i64 16}
!4266 = !{!4267, !4268, i64 64}
!4267 = !{!"WhereLoop", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 17, !36, i64 18, !36, i64 20, !36, i64 22, !7, i64 24, !6, i64 48, !36, i64 52, !36, i64 54, !36, i64 56, !4268, i64 64, !3733, i64 72, !7, i64 80}
!4268 = !{!"p2 _ZTS9WhereTerm", !31, i64 0}
!4269 = !{!4267, !36, i64 52}
!4270 = !{!4267, !36, i64 56}
!4271 = !{!4267, !6, i64 48}
!4272 = !{!1151, !1152, i64 0}
!4273 = !{!1151, !7, i64 17}
!4274 = !{!1151, !1149, i64 8}
!4275 = !{!1151, !6, i64 28}
!4276 = !{!1151, !6, i64 24}
!4277 = distinct !{!4277, !52}
!4278 = distinct !{!4278, !52}
!4279 = distinct !{!4279, !52}
!4280 = distinct !{null}
!4281 = distinct !{!4281, !52}
!4282 = !{!1156, !36, i64 18}
!4283 = !{!1156, !15, i64 48}
!4284 = distinct !{!4284, !52}
!4285 = !{!4267, !36, i64 54}
!4286 = !{!4287, !1149, i64 0}
!4287 = !{!"WhereScan", !1149, i64 0, !1149, i64 8, !64, i64 16, !137, i64 24, !6, i64 32, !6, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 44, !7, i64 88}
!4288 = !{!4287, !1149, i64 8}
!4289 = !{!4287, !7, i64 40}
!4290 = !{!4287, !6, i64 36}
!4291 = !{!4287, !6, i64 32}
!4292 = !{!4287, !7, i64 42}
!4293 = !{!4287, !7, i64 41}
!4294 = !{!1156, !15, i64 40}
!4295 = distinct !{!4295, !52}
!4296 = !{!1153, !1153, i64 0}
!4297 = !{!4287, !64, i64 16}
!4298 = !{!4287, !137, i64 24}
!4299 = distinct !{!4299, !52}
!4300 = distinct !{!4300, !52}
!4301 = distinct !{!4301, !52}
!4302 = !{!4267, !36, i64 20}
!4303 = !{!4267, !36, i64 22}
!4304 = !{!3731, !3733, i64 104}
!4305 = !{!4267, !15, i64 8}
!4306 = !{!3731, !6, i64 4}
!4307 = !{!4262, !6, i64 36}
!4308 = !{!4267, !7, i64 16}
!4309 = distinct !{!4309, !52}
!4310 = distinct !{!4310, !52}
!4311 = distinct !{!4311, !52}
!4312 = distinct !{null}
!4313 = distinct !{!4313, !52}
!4314 = !{!3731, !7, i64 72}
!4315 = !{!3731, !6, i64 12}
!4316 = !{!3731, !6, i64 16}
!4317 = !{!3731, !6, i64 8}
!4318 = distinct !{!4318, !52}
!4319 = !{!4320, !4320, i64 0}
!4320 = !{!"p1 _ZTS13WhereMemBlock", !12, i64 0}
!4321 = !{!4322, !4320, i64 0}
!4322 = !{!"WhereMemBlock", !4320, i64 0, !15, i64 8}
!4323 = !{!4322, !15, i64 8}
!4324 = !{!4325, !6, i64 0}
!4325 = !{!"WhereRightJoin", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!4326 = !{!4325, !6, i64 4}
!4327 = !{!4325, !6, i64 8}
!4328 = distinct !{!4328, !52}
!4329 = !{!3731, !6, i64 36}
!4330 = !{!3731, !6, i64 28}
!4331 = distinct !{!4331, !52}
!4332 = !{!4333, !32, i64 0}
!4333 = !{!"WindowCodeArg", !32, i64 0, !391, i64 8, !26, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !4334, i64 44, !4334, i64 52, !4334, i64 60}
!4334 = !{!"WindowCsrAndReg", !6, i64 0, !6, i64 4}
!4335 = !{!4333, !391, i64 8}
!4336 = !{!4333, !26, i64 16}
!4337 = !{!4333, !6, i64 28}
!4338 = !{!4333, !6, i64 24}
!4339 = !{!4333, !6, i64 52}
!4340 = !{!4333, !6, i64 44}
!4341 = !{!4333, !6, i64 60}
!4342 = distinct !{!4342, !52}
!4343 = !{!4333, !6, i64 36}
!4344 = !{!4333, !6, i64 40}
!4345 = !{!4333, !6, i64 48}
!4346 = !{!4333, !6, i64 56}
!4347 = !{!4333, !6, i64 64}
!4348 = distinct !{!4348, !52}
!4349 = distinct !{!4349, !52}
!4350 = !{!4333, !6, i64 32}
!4351 = distinct !{!4351, !52}
!4352 = distinct !{!4352, !52}
!4353 = distinct !{!4353, !52, !343, !344}
!4354 = distinct !{!4354, !52, !344, !343}
!4355 = !{!4356, !6, i64 0}
!4356 = !{!"RowLoadInfo", !6, i64 0, !7, i64 4}
!4357 = !{!4356, !7, i64 4}
!4358 = !{!3652, !3653, i64 40}
!4359 = distinct !{!4359, !52}
!4360 = !{!4325, !6, i64 16}
!4361 = !{!4325, !6, i64 12}
!4362 = !{!3731, !7, i64 73}
!4363 = distinct !{!4363, !52}
!4364 = !{!3731, !6, i64 80}
!4365 = distinct !{!4365, !52}
!4366 = !{!3731, !6, i64 76}
!4367 = !{!3731, !7, i64 74}
!4368 = !{!3731, !7, i64 75}
!4369 = !{!3731, !6, i64 40}
!4370 = !{!3731, !6, i64 44}
!4371 = !{!3731, !6, i64 20}
!4372 = !{!4373, !6, i64 4}
!4373 = !{!"InLoop", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16}
!4374 = !{!4373, !7, i64 16}
!4375 = !{!4373, !6, i64 12}
!4376 = !{!3731, !6, i64 0}
!4377 = !{!4373, !6, i64 0}
!4378 = !{!4373, !6, i64 8}
!4379 = distinct !{!4379, !52}
!4380 = !{!3731, !6, i64 24}
!4381 = !{!3731, !6, i64 52}
!4382 = !{!3731, !6, i64 48}
!4383 = !{!3731, !6, i64 32}
!4384 = distinct !{!4384, !52}
!4385 = distinct !{!4385, !52}
!4386 = distinct !{!4386, !52}
!4387 = distinct !{!4387, !52}
!4388 = distinct !{!4388, !52}
!4389 = distinct !{!4389, !52}
!4390 = distinct !{!4390, !52}
!4391 = distinct !{!4391, !52}
!4392 = distinct !{!4392, !52, !343, !344}
!4393 = distinct !{!4393, !52, !344, !343}
!4394 = distinct !{!4394, !52}
!4395 = !{!3752, !6, i64 24}
!4396 = !{!3752, !7, i64 29}
!4397 = !{!3752, !7, i64 28}
!4398 = !{!3752, !7, i64 30}
!4399 = distinct !{null}
!4400 = distinct !{!4400, !52}
!4401 = distinct !{!4401, !52}
!4402 = distinct !{!4402, !52}
!4403 = distinct !{!4403, !52}
!4404 = distinct !{!4404, !52}
!4405 = distinct !{!4405, !52}
!4406 = distinct !{!4406, !52}
!4407 = distinct !{!4407, !52}
!4408 = distinct !{!4408, !52}
!4409 = !{!3652, !6, i64 28}
!4410 = !{!3652, !6, i64 20}
!4411 = !{!3652, !6, i64 16}
!4412 = distinct !{!4412, !52, !343, !344}
!4413 = distinct !{!4413, !52, !344, !343}
!4414 = distinct !{!4414, !52}
!4415 = distinct !{!4415, !52}
!4416 = !{!3632, !387, i64 32}
!4417 = distinct !{!4417, !52}
!4418 = distinct !{!4418, !52}
!4419 = distinct !{!4419, !52}
!4420 = distinct !{!4420, !52}
!4421 = distinct !{!4421, !52}
!4422 = distinct !{!4422, !52}
!4423 = distinct !{!4423, !52}
!4424 = distinct !{null}
!4425 = distinct !{!4425, !52}
!4426 = distinct !{!4426, !52}
!4427 = distinct !{!4427, !52}
!4428 = distinct !{!4428, !52}
!4429 = distinct !{!4429, !52}
!4430 = distinct !{!4430, !52}
!4431 = distinct !{!4431, !52}
!4432 = distinct !{!4432, !52}
!4433 = distinct !{!4433, !52}
!4434 = distinct !{!4434, !52}
!4435 = distinct !{!4435, !52}
!4436 = distinct !{!4436, !334}
!4437 = distinct !{!4437, !52}
!4438 = distinct !{!4438, !52}
!4439 = distinct !{!4439, !52}
!4440 = distinct !{!4440, !52}
!4441 = distinct !{null}
!4442 = distinct !{!4442, !52}
!4443 = distinct !{!4443, !52}
!4444 = distinct !{!4444, !52}
!4445 = !{!1151, !7, i64 16}
!4446 = !{!1156, !7, i64 22}
!4447 = !{!1156, !6, i64 28}
!4448 = !{!1156, !6, i64 24}
!4449 = distinct !{!4449, !52}
!4450 = distinct !{!4450, !52}
!4451 = distinct !{!4451, !52}
!4452 = distinct !{!4452, !52}
!4453 = distinct !{!4453, !52}
!4454 = distinct !{!4454, !52}
!4455 = !{!3733, !3733, i64 0}
!4456 = !{!4267, !3733, i64 72}
!4457 = distinct !{!4457, !52}
!4458 = !{!4267, !15, i64 0}
!4459 = distinct !{!4459, !52}
!4460 = distinct !{!4460, !52}
!4461 = distinct !{!4461, !52}
!4462 = distinct !{!4462, !52}
!4463 = !{!4464, !4465, i64 24}
!4464 = !{!"WherePath", !15, i64 0, !15, i64 8, !36, i64 16, !36, i64 18, !36, i64 20, !7, i64 22, !4465, i64 24}
!4465 = !{!"p2 _ZTS9WhereLoop", !31, i64 0}
!4466 = distinct !{!4466, !52}
!4467 = !{!4464, !7, i64 22}
!4468 = !{!4464, !36, i64 16}
!4469 = !{!4464, !15, i64 0}
!4470 = !{!4267, !36, i64 18}
!4471 = !{!4464, !36, i64 20}
!4472 = !{!4464, !15, i64 8}
!4473 = distinct !{!4473, !52}
!4474 = !{!4464, !36, i64 18}
!4475 = distinct !{!4475, !52}
!4476 = distinct !{!4476, !52}
!4477 = distinct !{!4477, !52, !1696}
!4478 = distinct !{!4478, !52}
!4479 = distinct !{!4479, !52}
!4480 = distinct !{!4480, !52}
!4481 = distinct !{!4481, !52}
!4482 = distinct !{!4482, !52}
!4483 = distinct !{null, null, null}
!4484 = distinct !{!4484, !52}
!4485 = distinct !{!4485, !52}
!4486 = distinct !{!4486, !52}
!4487 = distinct !{!4487, !52}
!4488 = distinct !{!4488, !52, !1282}
!4489 = !{!3987, !304, i64 24}
!4490 = distinct !{!4490, !52}
!4491 = !{!1156, !36, i64 20}
!4492 = distinct !{!4492, !52}
!4493 = distinct !{!4493, !52}
!4494 = distinct !{!4494, !52, !344, !343}
!4495 = distinct !{!4495, !52}
!4496 = distinct !{!4496, !52}
!4497 = distinct !{!4497, !52}
!4498 = !{!3731, !6, i64 56}
!4499 = distinct !{null, null, ptr @sqlite3GenerateIndexKey, null}
!4500 = distinct !{null, ptr @sqlite3GenerateIndexKey, null}
!4501 = distinct !{null, null, ptr @sqlite3GenerateIndexKey, null}
!4502 = distinct !{null, ptr @sqlite3GenerateIndexKey}
!4503 = !{ptr @sqlite3VdbeAddOp3, ptr @sqlite3GenerateIndexKey}
!4504 = distinct !{!4504, !52}
!4505 = distinct !{null, null, null}
!4506 = distinct !{null, null}
!4507 = distinct !{null, null, null}
!4508 = distinct !{!4508, !52}
!4509 = distinct !{!4509, !52}
!4510 = distinct !{!4510, !52}
!4511 = !{!3731, !15, i64 112}
!4512 = distinct !{null}
!4513 = !{!1156, !7, i64 23}
!4514 = distinct !{!4514, !52}
!4515 = distinct !{!4515, !52}
!4516 = distinct !{!4516, !52}
!4517 = distinct !{!4517, !52}
!4518 = distinct !{!4518, !52}
!4519 = distinct !{!4519, !52}
!4520 = distinct !{!4520, !52}
!4521 = distinct !{!4521, !52}
!4522 = !{ptr @sqlite3ExprCodeGetColumnOfTable}
!4523 = distinct !{!4523, !52}
!4524 = distinct !{!4524, !52}
!4525 = !{!4526, !6, i64 8}
!4526 = !{!"IdxCover", !121, i64 0, !6, i64 8}
!4527 = !{!4526, !121, i64 0}
!4528 = distinct !{!4528, !52}
!4529 = distinct !{!4529, !52, !1696}
!4530 = distinct !{!4530, !52}
!4531 = !{i64 0, i64 1, !227, i64 1, i64 1, !227, i64 2, i64 1, !227, i64 4, i64 4, !5, i64 8, i64 8, !227, i64 16, i64 8, !366, i64 24, i64 8, !366, i64 32, i64 8, !227, i64 40, i64 4, !5, i64 44, i64 4, !5, i64 48, i64 2, !330, i64 50, i64 2, !330, i64 52, i64 4, !227, i64 56, i64 8, !4532, i64 64, i64 8, !227}
!4532 = !{!369, !369, i64 0}
!4533 = distinct !{!4533, !52}
!4534 = distinct !{!4534, !52}
!4535 = distinct !{!4535, !52}
!4536 = distinct !{!4536, !52}
!4537 = distinct !{!4537, !52}
!4538 = !{!1156, !36, i64 16}
!4539 = !{!1156, !1149, i64 8}
!4540 = !{!4260, !6, i64 0}
!4541 = distinct !{null, null}
!4542 = distinct !{null}
!4543 = distinct !{!4543, !52}
!4544 = distinct !{!4544, !52}
!4545 = distinct !{null, ptr @sqlite3DbMallocRawNN, null}
!4546 = distinct !{null, null}
!4547 = distinct !{null}
!4548 = distinct !{null, null}
!4549 = !{!4550, !15, i64 488}
!4550 = !{!"WhereOrInfo", !1151, i64 0, !15, i64 488}
!4551 = distinct !{!4551, !52}
!4552 = distinct !{!4552, !52}
!4553 = !{!4554, !6, i64 20}
!4554 = !{!"WhereAndInfo", !1151, i64 0}
!4555 = !{!4554, !1153, i64 32}
!4556 = distinct !{!4556, !52}
!4557 = distinct !{null, null}
!4558 = distinct !{null, null, null}
!4559 = distinct !{!4559, !52}
!4560 = distinct !{!4560, !52}
!4561 = distinct !{!4561, !52}
!4562 = distinct !{!4562, !52}
!4563 = distinct !{!4563, !52}
!4564 = distinct !{null, null}
!4565 = distinct !{!4565, !52}
!4566 = distinct !{null, null}
!4567 = distinct !{null, null}
!4568 = distinct !{!4568, !52}
!4569 = distinct !{!4569, !52}
!4570 = distinct !{!4570, !52}
!4571 = distinct !{!4571, !52}
!4572 = !{!4573, !7, i64 8}
!4573 = !{!"", !64, i64 0, !7, i64 8}
!4574 = distinct !{null}
!4575 = distinct !{!4575, !52}
!4576 = distinct !{null, null, null}
!4577 = distinct !{!4577, !52}
!4578 = distinct !{!4578, !52}
!4579 = distinct !{!4579, !52}
!4580 = distinct !{!4580, !52}
!4581 = distinct !{!4581, !52}
!4582 = distinct !{!4582, !52}
!4583 = distinct !{!4583, !52}
!4584 = distinct !{!4584, !52}
!4585 = distinct !{!4585, !52}
!4586 = distinct !{!4586, !52}
!4587 = distinct !{!4587, !52}
!4588 = distinct !{!4588, !52}
!4589 = distinct !{!4589, !52}
!4590 = !{!1141, !15, i64 88}
!4591 = distinct !{!4591, !52, !343, !344}
!4592 = distinct !{!4592, !52, !344, !343}
!4593 = distinct !{!4593, !52}
end_hunk_2
