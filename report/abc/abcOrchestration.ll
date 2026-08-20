inline.NumInlined: 1145
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_NtkStartCutManForRewrite
define internal fastcc ptr @Abc_NtkStartCutManForRewrite(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 8), i8 0, i64 68, i1 false)
  store i32 4, ptr @Abc_NtkStartCutManForRewrite.Params, align 4, !tbaa !58
  store i32 250, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 4), align 4, !tbaa !60
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 20), align 4, !tbaa !61
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 24), align 4, !tbaa !62
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 32), align 4, !tbaa !63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 76), align 4, !tbaa !64
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.b, align 4, !tbaa !41
  store i32 %.val.val, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 8), align 4, !tbaa !65
  %i.c = tail call ptr @Cut_ManStart(ptr noundef nonnull @Abc_NtkStartCutManForRewrite.Params) #24 ; 3 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @Abc_NtkStartCutManForRewrite.Params, i64 32), align 4, !tbaa !63
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @Abc_NtkFanoutCounts(ptr noundef nonnull %0) #24
  tail call void @Cut_ManSetFanoutCounts(ptr noundef %i.c, ptr noundef %i.e) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val1114 = load ptr, ptr %i.f, align 8, !tbaa !66 ; 2 uses
  %i.g = getelementptr i8, ptr %.val1114, i64 4
  %.val11.val15 = load i32, ptr %i.g, align 4, !tbaa !41
  %i.h = icmp sgt i32 %.val11.val15, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.val1119 = phi ptr [ %.val11, %bb.e ], [ %.val1114, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr i8, ptr %.val1119, i64 8
  %.val12.val = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val12.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 44
  %.val13 = load i32, ptr %i.l, align 4, !tbaa !54
  %i.m = icmp sgt i32 %.val13, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  tail call void @Cut_NodeSetTriv(ptr noundef %i.c, i32 noundef %i.o) #24
  %.val11.pre = load ptr, ptr %i.f, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.val11 = phi ptr [ %.val1119, %.lr.ph ], [ %.val11.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr i8, ptr %.val11, i64 4
  %.val11.val = load i32, ptr %i.p, align 4, !tbaa !41
  %i.q = sext i32 %.val11.val to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %bb.e, %bb.c
  ret ptr %i.c
}

declare void @Rwr_ManAddTimeCuts(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Rwr_ScoresClean(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_ProgressBarStart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPush(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !44
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntGrow.exit11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #26
  br label %Vec_IntGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit

Vec_IntGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9 = icmp samesign ult i32 %i.b, %spec.select
  br i1 %.not.i9, label %bb.g, label %Vec_IntGrow.exit11

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not9.i10 = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split

Vec_IntGrow.exit11.sink.split:                    ; preds = %Vec_IntGrow.exit, %bb.j
  %spec.select.sink = phi i32 [ %spec.select, %bb.j ], [ 16, %Vec_IntGrow.exit ]
  store i32 %spec.select.sink, ptr %0, align 8, !tbaa !44
  br label %Vec_IntGrow.exit11

Vec_IntGrow.exit11:                               ; preds = %Vec_IntGrow.exit11.sink.split, %bb.f, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !43
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !31
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @Rwr_NodeRewrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Rwr_ManReadDecs(ptr noundef) local_unnamed_addr #2

declare i32 @Rwr_ManReadCompl(ptr noundef) local_unnamed_addr #2

declare void @Abc_AigUpdateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #2

declare void @Rwr_ManAddTimeTotal(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Rwr_ManPrintStats(ptr noundef) local_unnamed_addr #2

declare void @Rwr_ScoresReport(ptr noundef) local_unnamed_addr #2

declare void @Rwr_ManStop(ptr noundef) local_unnamed_addr #2

declare void @Cut_ManStop(ptr noundef) local_unnamed_addr #2

declare void @Abc_NtkReassignIds(ptr noundef) local_unnamed_addr #2

declare void @Abc_NtkStopReverseLevels(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkLevel(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkCheck(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Abc_NodeConeTruth_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr i8, ptr %4, i64 4          ; 3 uses
  %.val78 = load i32, ptr %i.b, align 4, !tbaa !41 ; 2 uses
  %i.c = icmp slt i32 %.val78, 7
  %i.d = add nsw i32 %.val78, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 10 uses
  call void @Abc_NodeConeCollect(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef 0) #24
  %.val7797 = load i32, ptr %i.b, align 4, !tbaa !41
  %i.g = icmp sgt i32 %.val7797, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %4, i64 8
  %i.i = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val82 = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val82, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %.val81 = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val81, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.m, ptr %i.n, align 8, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val77 = load i32, ptr %i.b, align 4, !tbaa !41
  %i.o = sext i32 %.val77 to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %.critedge, !llvm.loop !70

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.q = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val76 = load i32, ptr %i.q, align 4, !tbaa !41 ; 3 uses
  %i.r = getelementptr i8, ptr %5, i64 4          ; 3 uses
  %.val7599 = load i32, ptr %i.r, align 4, !tbaa !41 ; 2 uses
  %i.s = icmp slt i32 %.val76, %.val7599
  br i1 %i.s, label %.lr.ph101, label %.preheader96

.lr.ph101:                                        ; preds = %.critedge
  %i.t = sext i32 %2 to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre = load i32, ptr %1, align 8, !tbaa !71
  br label %bb.c

.preheader96:                                     ; preds = %Vec_PtrPush.exit, %.critedge
  %.val110 = phi i32 [ %.val7599, %.critedge ], [ %.val75, %Vec_PtrPush.exit ]
  %i.w = icmp sgt i32 %.val110, 0
  br i1 %i.w, label %.lr.ph112, label %.critedge2

.lr.ph112:                                        ; preds = %.preheader96
  %i.x = getelementptr i8, ptr %5, i64 8
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = icmp sgt i32 %i.f, 0                     ; 4 uses
  %wide.trip.count.a = zext i32 %i.f to i64       ; 13 uses
  %i.aa = add nsw i64 %wide.trip.count.a, -1      ; 3 uses
  %min.iters.check198 = icmp ult i32 %i.f, 6
  %n.vec200 = and i64 %wide.trip.count.a, 2147483644
  %xtraiter = and i64 %wide.trip.count.a, 1
  %i.ab = icmp eq i64 %i.aa, 0
  %unroll_iter = and i64 %wide.trip.count.a, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod222 = trunc i32 %i.f to i1
  %min.iters.check180 = icmp ult i32 %i.f, 6
  %n.vec182 = and i64 %wide.trip.count.a, 2147483644
  %xtraiter223 = and i64 %wide.trip.count.a, 1
  %i.ac = icmp eq i64 %i.aa, 0
  %unroll_iter226 = and i64 %wide.trip.count.a, 2147483646
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  %lcmp.mod225 = trunc i32 %i.f to i1
  %min.iters.check162 = icmp ult i32 %i.f, 6
  %n.vec164 = and i64 %wide.trip.count.a, 2147483644
  %xtraiter228 = and i64 %wide.trip.count.a, 1
  %i.ad = icmp eq i64 %i.aa, 0
  %unroll_iter231 = and i64 %wide.trip.count.a, 2147483646
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  %lcmp.mod230 = trunc i32 %i.f to i1
  %min.iters.check = icmp ult i32 %i.f, 6
  %n.vec = and i64 %wide.trip.count.a, 2147483644
  %xtraiter233 = and i64 %wide.trip.count.a, 3    ; 3 uses
  %i.ae = icmp ult i32 %i.f, 4
  %unroll_iter236 = and i64 %wide.trip.count.a, 2147483644
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  %lcmp.mod235 = icmp ne i64 %xtraiter233, 0
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph101, %Vec_PtrPush.exit
  %i.af = phi i32 [ %.pre, %.lr.ph101 ], [ %i.aw, %Vec_PtrPush.exit ] ; 8 uses
  %i.ag = phi i32 [ %.val76, %.lr.ph101 ], [ %i.ax, %Vec_PtrPush.exit ] ; 2 uses
  %.170100 = phi i32 [ %.val76, %.lr.ph101 ], [ %i.ba, %Vec_PtrPush.exit ]
  %i.ah = call noalias ptr @malloc(i64 noundef %i.u) #25
  %i.ai = icmp eq i32 %i.ag, %i.af
  br i1 %i.ai, label %bb.d, label %.Vec_PtrPush.exit_crit_edge

.Vec_PtrPush.exit_crit_edge:                      ; preds = %bb.c
  %.pre138 = load ptr, ptr %i.v, align 8, !tbaa !49
  br label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp slt i32 %i.af, 16
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !49  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 128) #26
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.am = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.an = icmp samesign ult i32 %i.af, 1073741823
  %i.ao = shl nuw nsw i32 %i.af, 1
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.af, %spec.select.i
  %.pre139 = load ptr, ptr %i.v, align 8, !tbaa !49 ; 3 uses
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %.pre139, null
  %i.ap = zext nneg i32 %spec.select.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = call ptr @realloc(ptr noundef nonnull %.pre139, i64 noundef %i.aq) #26
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.as = call noalias ptr @malloc(i64 noundef %i.aq) #25
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.at = phi ptr [ %i.am, %bb.g ], [ %i.al, %bb.f ], [ %i.ar, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %i.at, ptr %i.v, align 8, !tbaa !49
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !71
  %.pre140 = load i32, ptr %i.q, align 4, !tbaa !41
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %.Vec_PtrPush.exit_crit_edge, %bb.h, %Vec_PtrGrow.exit12.sink.split.i
  %i.au = phi i32 [ %i.ag, %.Vec_PtrPush.exit_crit_edge ], [ %i.af, %bb.h ], [ %.pre140, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.av = phi ptr [ %.pre138, %.Vec_PtrPush.exit_crit_edge ], [ %.pre139, %bb.h ], [ %i.at, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.aw = phi i32 [ %i.af, %.Vec_PtrPush.exit_crit_edge ], [ %i.af, %bb.h ], [ %spec.select.sink.i, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.ax = add nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.ax, ptr %i.q, align 4, !tbaa !41
  %i.ay = sext i32 %i.au to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ay
  store ptr %i.ah, ptr %i.az, align 8, !tbaa !50
  %i.ba = add nsw i32 %.170100, 1                 ; 2 uses
  %.val75 = load i32, ptr %i.r, align 4, !tbaa !41 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %.val75
  br i1 %i.bb, label %bb.c, label %.preheader96, !llvm.loop !72

bb.l:                                             ; preds = %.lr.ph112, %.loopexit
  %indvars.iv135 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next136, %.loopexit ] ; 3 uses
  %.val80 = load ptr, ptr %i.x, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val80, i64 %indvars.iv135
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !50 ; 4 uses
  %.val83 = load ptr, ptr %i.bd, align 8, !tbaa !73
  %i.be = getelementptr i8, ptr %i.bd, i64 32
  %.val84 = load ptr, ptr %i.be, align 8, !tbaa !74 ; 2 uses
  %i.bf = getelementptr i8, ptr %.val83, i64 32
  %.val83.val = load ptr, ptr %i.bf, align 8, !tbaa !40
  %.val84.val = load i32, ptr %.val84, align 4, !tbaa !31
  %i.bg = getelementptr i8, ptr %.val83.val, i64 8
  %.val83.val.val = load ptr, ptr %i.bg, align 8, !tbaa !49 ; 2 uses
  %i.bh = sext i32 %.val84.val to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val83.val.val, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69 ; 19 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64              ; 4 uses
  %i.bn = getelementptr i8, ptr %.val84, i64 4
  %.val86.val = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bo = sext i32 %.val86.val to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %.val83.val.val, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !69 ; 19 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64              ; 4 uses
  %.val79 = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %indvars.iv135
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !50 ; 21 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64              ; 8 uses
  %i.bx = getelementptr i8, ptr %i.bd, i64 20
  %.val87 = load i32, ptr %i.bx, align 4          ; 2 uses
  %i.by = and i32 %.val87, 1024
  %.not = icmp eq i32 %i.by, 0
  %i.bz = and i32 %.val87, 2048
  %.not73 = icmp eq i32 %i.bz, 0                  ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not73, label %.preheader92, label %.preheader94

.preheader94:                                     ; preds = %bb.m
  br i1 %i.z, label %.lr.ph103.preheader, label %.loopexit

.lr.ph103.preheader:                              ; preds = %.preheader94
  br i1 %min.iters.check198, label %.lr.ph103.preheader219, label %vector.memcheck193

.lr.ph103.preheader219:                           ; preds = %vector.memcheck193, %.lr.ph103.preheader
  br i1 %i.ab, label %.lr.ph103.epil.preheader, label %.lr.ph103

vector.memcheck193:                               ; preds = %.lr.ph103.preheader
  %i.ca = sub i64 %i.bm, %i.bw
  %diff.check194 = icmp ugt i64 %i.ca, -32
  %i.cb = sub i64 %i.bt, %i.bw
  %diff.check195 = icmp ugt i64 %i.cb, -32
  %conflict.rdx196 = or i1 %diff.check194, %diff.check195
  br i1 %conflict.rdx196, label %.lr.ph103.preheader219, label %vector.body201

vector.body201:                                   ; preds = %vector.memcheck193, %vector.body201
  %index202 = phi i64 [ %index.next207, %vector.body201 ], [ 0, %vector.memcheck193 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index202 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load203 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !75
  %wide.load204 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !75
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index202 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load205 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !75
  %wide.load206 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !75
  %i.cg = or <2 x i64> %wide.load205, %wide.load203
  %i.ch = or <2 x i64> %wide.load206, %wide.load204
  %i.ci = xor <2 x i64> %i.cg, splat (i64 -1)
  %i.cj = xor <2 x i64> %i.ch, splat (i64 -1)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index202 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %i.ci, ptr %i.ck, align 8, !tbaa !75
  store <2 x i64> %i.cj, ptr %i.cl, align 8, !tbaa !75
  %index.next207 = add nuw i64 %index202, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.cm, label %.loopexit, label %vector.body201, !llvm.loop !76

.preheader92:                                     ; preds = %bb.m
  br i1 %i.z, label %.lr.ph105.preheader, label %.loopexit

.lr.ph105.preheader:                              ; preds = %.preheader92
  br i1 %min.iters.check180, label %.lr.ph105.preheader216, label %vector.memcheck175

.lr.ph105.preheader216:                           ; preds = %vector.memcheck175, %.lr.ph105.preheader
  br i1 %i.ac, label %.lr.ph105.epil.preheader, label %.lr.ph105

vector.memcheck175:                               ; preds = %.lr.ph105.preheader
  %i.cn = sub i64 %i.bm, %i.bw
  %diff.check176 = icmp ugt i64 %i.cn, -32
  %i.co = sub i64 %i.bt, %i.bw
  %diff.check177 = icmp ugt i64 %i.co, -32
  %conflict.rdx178 = or i1 %diff.check176, %diff.check177
  br i1 %conflict.rdx178, label %.lr.ph105.preheader216, label %vector.body183

vector.body183:                                   ; preds = %vector.memcheck175, %vector.body183
  %index184 = phi i64 [ %index.next189, %vector.body183 ], [ 0, %vector.memcheck175 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index184 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load185 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !75
  %wide.load186 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !75
  %i.cr = xor <2 x i64> %wide.load185, splat (i64 -1)
  %i.cs = xor <2 x i64> %wide.load186, splat (i64 -1)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index184 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load187 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !75
  %wide.load188 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !75
  %i.cv = and <2 x i64> %wide.load187, %i.cr
  %i.cw = and <2 x i64> %wide.load188, %i.cs
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index184 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %i.cv, ptr %i.cx, align 8, !tbaa !75
  store <2 x i64> %i.cw, ptr %i.cy, align 8, !tbaa !75
  %index.next189 = add nuw i64 %index184, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next189, %n.vec182
  br i1 %i.cz, label %.loopexit, label %vector.body183, !llvm.loop !79

end_hunk_0
