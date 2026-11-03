Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckyFast16?download=true
inline.NumInlined: 66
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@arrangeQuoters_superFast_moreThen5:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @minTemp0_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 4 uses
  %.neg27 = shl i32 -3, %i.a
  %.neg = shl i32 -4, %i.a
  %i.b = icmp slt i32 %2, 1
  %.not = icmp eq i32 %i.a, 31
  %or.cond = select i1 %i.b, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge32, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = shl nuw i32 1, %i.a
  %i.d = add nsw i32 %2, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02431.us = phi i32 [ %i.n, %._crit_edge.us ], [ %i.d, %.preheader.us.preheader ] ; 4 uses
  %i.e = zext nneg i32 %.02431.us to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.f = sub nsw i64 %i.e, %indvars.iv            ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %i.i = trunc nsw i64 %i.f to i32
  %i.j = add i32 %.neg27, %i.i
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %.0.i.us = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.h, i64 %i.m)
  switch i32 %.0.i.us, label %.split.us [
    i32 0, label %bb.c
    i32 -1, label %.split34.us
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !10

._crit_edge.us:                                   ; preds = %bb.c
  %i.n = add i32 %.02431.us, %.neg                ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.preheader.us, label %._crit_edge32, !llvm.loop !11

.split34.us:                                      ; preds = %bb.b
  %i.p = add nuw nsw i32 %.02431.us, 1
  br label %._crit_edge32

.split.us:                                        ; preds = %bb.b
  %i.q = add nuw nsw i32 %.02431.us, 1
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge.us, %bb.a, %.split.us, %.split34.us
  %.sink = phi i32 [ %i.p, %.split34.us ], [ %i.q, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  %.025 = phi i32 [ 0, %.split34.us ], [ 3, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  store i32 %.sink, ptr %3, align 4, !tbaa !30
  ret i32 %.025
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 1, 3) i32 @minTemp1_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 3 uses
  %i.b = shl nuw i32 1, %i.a                      ; 5 uses
  %.neg = shl i32 -4, %i.a
  %i.c = xor i32 %i.b, -1
  %i.d = add i32 %2, %i.c                         ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %.not = icmp eq i32 %i.a, 31
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %._crit_edge34, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %i.f = sext i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02633.us = phi i32 [ %i.n, %._crit_edge.us ], [ %i.d, %.preheader.us.preheader ] ; 4 uses
  %i.g = zext nneg i32 %.02633.us to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.h = sub nsw i64 %i.g, %indvars.iv            ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = sub nsw i64 %i.h, %i.f
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %.0.i.us = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.j, i64 %i.m)
  switch i32 %.0.i.us, label %.split.us [
    i32 0, label %bb.c
    i32 -1, label %.split36.us
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !12

._crit_edge.us:                                   ; preds = %bb.c
  %i.n = add i32 %.02633.us, %.neg                ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %.preheader.us, label %._crit_edge34, !llvm.loop !13

.split36.us:                                      ; preds = %bb.b
  %i.p = add nuw i32 %i.b, 1
  %i.q = add i32 %i.p, %.02633.us
  br label %._crit_edge34

.split.us:                                        ; preds = %bb.b
  %i.r = add nuw i32 %i.b, 1
  %i.s = add i32 %i.r, %.02633.us
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge.us, %bb.a, %.split.us, %.split36.us
  %.sink = phi i32 [ %i.q, %.split36.us ], [ %i.s, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  %.027 = phi i32 [ 1, %.split36.us ], [ 2, %.split.us ], [ 1, %bb.a ], [ 1, %._crit_edge.us ]
  store i32 %.sink, ptr %3, align 4, !tbaa !30
  ret i32 %.027
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @minTemp2_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 5 uses
  %.neg = shl i32 -4, %i.a
  %i.b = icmp slt i32 %4, 1
  %.not = icmp eq i32 %i.a, 31
  %or.cond = select i1 %i.b, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge34, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = shl nuw i32 1, %i.a
  %i.d = shl i32 %3, %i.a
  %i.e = shl i32 %2, %i.a
  %i.f = add nsw i32 %4, -1
  %i.g = sext i32 %i.e to i64
  %i.h = sext i32 %i.d to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02633.us = phi i32 [ %i.q, %._crit_edge.us ], [ %i.f, %.preheader.us.preheader ] ; 4 uses
  %i.i = zext nneg i32 %.02633.us to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = sub nsw i64 %i.i, %indvars.iv            ; 2 uses
  %i.k = sub nsw i64 %i.j, %i.g
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  %i.n = sub nsw i64 %i.j, %i.h
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33
  %.0.i.us = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.m, i64 %i.p)
  switch i32 %.0.i.us, label %.split.us [
    i32 0, label %bb.c
    i32 -1, label %.split36.us
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !14

._crit_edge.us:                                   ; preds = %bb.c
  %i.q = add i32 %.02633.us, %.neg                ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.preheader.us, label %._crit_edge34, !llvm.loop !15

.split36.us:                                      ; preds = %bb.b
  %i.s = add nuw nsw i32 %.02633.us, 1
  br label %._crit_edge34

.split.us:                                        ; preds = %bb.b
  %i.t = add nuw nsw i32 %.02633.us, 1
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge.us, %bb.a, %.split.us, %.split36.us
  %.sink = phi i32 [ %i.s, %.split36.us ], [ %i.t, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  %.027 = phi i32 [ 0, %.split36.us ], [ 1, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  store i32 %.sink, ptr %5, align 4, !tbaa !30
  ret i32 %.027
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @minTemp3_fast_moreThen5(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -6                       ; 5 uses
  %.neg.a = shl nuw i32 1, %i.a
  %.neg = shl i32 -4, %i.a
  %.not34.not = icmp sgt i32 %2, %3
  br i1 %.not34.not, label %.preheader.lr.ph, label %._crit_edge36

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not40 = icmp eq i32 %i.a, 31
  br i1 %.not40, label %.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.b = shl i32 %5, %i.a
  %i.c = shl i32 %4, %i.a
  %i.d = add nsw i32 %2, -1
  %i.e = sext i32 %i.c to i64
  %i.f = sext i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %.neg.a, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.02735.us = phi i32 [ %i.o, %._crit_edge.us ], [ %i.d, %.preheader.us.preheader ] ; 4 uses
  %i.g = sext i32 %.02735.us to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.h = sub nsw i64 %i.g, %indvars.iv            ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = sub nsw i64 %i.h, %i.f
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %.0.i.us = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.k, i64 %i.n)
  switch i32 %.0.i.us, label %.split.us [
    i32 0, label %bb.c
    i32 -1, label %.split38.us
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.c
  %i.o = add i32 %.02735.us, %.neg                ; 2 uses
  %.not.us = icmp slt i32 %i.o, %3
  br i1 %.not.us, label %._crit_edge36, label %.preheader.us, !llvm.loop !17

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  br label %.preheader

.split38.us:                                      ; preds = %bb.b
  %i.p = add nsw i32 %.02735.us, 1
  br label %._crit_edge36

.split.us:                                        ; preds = %bb.b
  %i.q = add nsw i32 %.02735.us, 1
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %._crit_edge.us, %bb.a, %.split.us, %.split38.us
  %.sink = phi i32 [ %i.p, %.split38.us ], [ %i.q, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  %.028 = phi i32 [ 0, %.split38.us ], [ 1, %.split.us ], [ 0, %bb.a ], [ 0, %._crit_edge.us ]
  store i32 %.sink, ptr %6, align 4, !tbaa !30
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define void @minimalSwapAndFlipIVar_superFast_moreThen5(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 12 uses
  %i.b = alloca [1024 x i64], align 16            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = add nsw i32 %1, -6                       ; 38 uses
  %.neg27.i = shl i32 -3, %i.c
  %.neg.i = shl i32 -4, %i.c                      ; 10 uses
  %i.d = icmp slt i32 %2, 1
  %.not.i = icmp eq i32 %i.c, 31                  ; 3 uses
  %or.cond.i = select i1 %i.d, i1 true, i1 %.not.i ; 2 uses
  %.pre = shl nuw i32 1, %i.c                     ; 20 uses
  br i1 %or.cond.i, label %minTemp0_fast_moreThen5.exit, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.a
  %i.e = add nsw i32 %2, -1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.02431.us.i = phi i32 [ %i.o, %._crit_edge.us.i ], [ %i.e, %.preheader.us.preheader.i ] ; 4 uses
  %i.f = zext nneg i32 %.02431.us.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = sub nsw i64 %i.f, %indvars.iv.i          ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = trunc nsw i64 %i.g to i32
  %i.k = add i32 %.neg27.i, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %.0.i.us.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  switch i32 %.0.i.us.i, label %.split.us.i [
    i32 0, label %bb.c
    i32 -1, label %.split34.us.i
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !10

._crit_edge.us.i:                                 ; preds = %bb.c
  %i.o = add i32 %.02431.us.i, %.neg.i            ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.us.i, label %minTemp0_fast_moreThen5.exit, !llvm.loop !11

.split34.us.i:                                    ; preds = %bb.b
  %i.q = add nuw nsw i32 %.02431.us.i, 1
  br label %minTemp0_fast_moreThen5.exit

.split.us.i:                                      ; preds = %bb.b
  %i.r = add nuw nsw i32 %.02431.us.i, 1
  br label %minTemp0_fast_moreThen5.exit

minTemp0_fast_moreThen5.exit:                     ; preds = %._crit_edge.us.i, %bb.a, %.split34.us.i, %.split.us.i
  %.sink.i = phi i32 [ 0, %bb.a ], [ %i.r, %.split.us.i ], [ %i.q, %.split34.us.i ], [ 0, %._crit_edge.us.i ] ; 9 uses
  %i.s = phi i1 [ true, %bb.a ], [ false, %.split.us.i ], [ true, %.split34.us.i ], [ true, %._crit_edge.us.i ] ; 3 uses
  %.025.i = phi i32 [ 0, %bb.a ], [ 3, %.split.us.i ], [ 0, %.split34.us.i ], [ 0, %._crit_edge.us.i ] ; 10 uses
  store i32 %.025.i, ptr %i.a, align 4, !tbaa !30
  %i.t = xor i32 %.pre, -1
  %i.u = add i32 %2, %i.t                         ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %or.cond.i61 = or i1 %.not.i, %i.v
  br i1 %or.cond.i61, label %minTemp1_fast_moreThen5.exit, label %.preheader.us.preheader.i62

.preheader.us.preheader.i62:                      ; preds = %minTemp0_fast_moreThen5.exit
  %i.w = sext i32 %.pre to i64
  %smax.i63 = tail call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %wide.trip.count.i64 = zext nneg i32 %smax.i63 to i64
  br label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %._crit_edge.us.i71, %.preheader.us.preheader.i62
  %.02633.us.i = phi i32 [ %i.ae, %._crit_edge.us.i71 ], [ %i.u, %.preheader.us.preheader.i62 ] ; 4 uses
  %i.x = zext nneg i32 %.02633.us.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.us.i65
  %indvars.iv.i66 = phi i64 [ 0, %.preheader.us.i65 ], [ %indvars.iv.next.i69, %bb.e ] ; 2 uses
  %i.y = sub nsw i64 %i.x, %indvars.iv.i66        ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !33
  %i.ab = sub nsw i64 %i.y, %i.w
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !33
  %.0.i.us.i67 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.aa, i64 %i.ad)
  switch i32 %.0.i.us.i67, label %.split.us.i72 [
    i32 0, label %bb.e
    i32 -1, label %.split36.us.i
  ]

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i64
  br i1 %exitcond.not.i70, label %._crit_edge.us.i71, label %bb.d, !llvm.loop !12

._crit_edge.us.i71:                               ; preds = %bb.e
  %i.ae = add i32 %.02633.us.i, %.neg.i           ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.preheader.us.i65, label %minTemp1_fast_moreThen5.exit, !llvm.loop !13

.split36.us.i:                                    ; preds = %bb.d
  %i.ag = add nuw i32 %.pre, 1
  %i.ah = add i32 %i.ag, %.02633.us.i
  br label %minTemp1_fast_moreThen5.exit

.split.us.i72:                                    ; preds = %bb.d
  %i.ai = add nuw i32 %.pre, 1
  %i.aj = add i32 %i.ai, %.02633.us.i
  br label %minTemp1_fast_moreThen5.exit

minTemp1_fast_moreThen5.exit:                     ; preds = %._crit_edge.us.i71, %minTemp0_fast_moreThen5.exit, %.split36.us.i, %.split.us.i72
  %.sink.i68 = phi i32 [ %i.ah, %.split36.us.i ], [ %i.aj, %.split.us.i72 ], [ 0, %minTemp0_fast_moreThen5.exit ], [ 0, %._crit_edge.us.i71 ] ; 4 uses
  %or.cond.i92 = phi i1 [ %i.s, %.split36.us.i ], [ false, %.split.us.i72 ], [ %i.s, %minTemp0_fast_moreThen5.exit ], [ %i.s, %._crit_edge.us.i71 ]
  %.027.i = phi i32 [ 1, %.split36.us.i ], [ 2, %.split.us.i72 ], [ 1, %minTemp0_fast_moreThen5.exit ], [ 1, %._crit_edge.us.i71 ] ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.027.i, ptr %i.ak, align 4, !tbaa !30
  br i1 %or.cond.i, label %minTemp2_fast_moreThen5.exit, label %.preheader.us.preheader.i76

.preheader.us.preheader.i76:                      ; preds = %minTemp1_fast_moreThen5.exit
  %i.al = shl nuw i32 %.027.i, %i.c
  %i.am = shl i32 %.025.i, %i.c
  %i.an = add nsw i32 %2, -1
  %i.ao = sext i32 %i.am to i64
  %i.ap = sext i32 %i.al to i64
  %smax.i77 = tail call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %wide.trip.count.i78 = zext nneg i32 %smax.i77 to i64
  br label %.preheader.us.i79

.preheader.us.i79:                                ; preds = %._crit_edge.us.i88, %.preheader.us.preheader.i76
  %.02633.us.i80 = phi i32 [ %i.ay, %._crit_edge.us.i88 ], [ %i.an, %.preheader.us.preheader.i76 ] ; 4 uses
  %i.aq = zext nneg i32 %.02633.us.i80 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.us.i79
  %indvars.iv.i81 = phi i64 [ 0, %.preheader.us.i79 ], [ %indvars.iv.next.i86, %bb.g ] ; 2 uses
  %i.ar = sub nsw i64 %i.aq, %indvars.iv.i81      ; 2 uses
  %i.as = sub nsw i64 %i.ar, %i.ao
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33
  %i.av = sub nsw i64 %i.ar, %i.ap
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !33
  %.0.i.us.i82 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.au, i64 %i.ax)
  switch i32 %.0.i.us.i82, label %.split.us.i89 [
    i32 0, label %bb.g
    i32 -1, label %.split36.us.i83
  ]

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %exitcond.not.i87 = icmp eq i64 %indvars.iv.next.i86, %wide.trip.count.i78
  br i1 %exitcond.not.i87, label %._crit_edge.us.i88, label %bb.f, !llvm.loop !14

._crit_edge.us.i88:                               ; preds = %bb.g
  %i.ay = add i32 %.02633.us.i80, %.neg.i         ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %.preheader.us.i79, label %minTemp2_fast_moreThen5.exit, !llvm.loop !15

.split36.us.i83:                                  ; preds = %bb.f
  %i.ba = add nuw nsw i32 %.02633.us.i80, 1
  br label %minTemp2_fast_moreThen5.exit

.split.us.i89:                                    ; preds = %bb.f
  %i.bb = add nuw nsw i32 %.02633.us.i80, 1
  br label %minTemp2_fast_moreThen5.exit

minTemp2_fast_moreThen5.exit:                     ; preds = %._crit_edge.us.i88, %minTemp1_fast_moreThen5.exit, %.split36.us.i83, %.split.us.i89
  %.sink.i84 = phi i32 [ %i.ba, %.split36.us.i83 ], [ %i.bb, %.split.us.i89 ], [ 0, %minTemp1_fast_moreThen5.exit ], [ 0, %._crit_edge.us.i88 ] ; 11 uses
  %.027.i85 = phi i32 [ 0, %.split36.us.i83 ], [ 1, %.split.us.i89 ], [ 0, %minTemp1_fast_moreThen5.exit ], [ 0, %._crit_edge.us.i88 ] ; 6 uses
  %.not = icmp eq i32 %.sink.i, %.sink.i68
  br i1 %.not, label %bb.r, label %bb.h

bb.h:                                             ; preds = %minTemp2_fast_moreThen5.exit
  %.not57 = icmp slt i32 %.sink.i84, %.sink.i68
  %.not58 = icmp slt i32 %.sink.i84, %.sink.i
  %or.cond = or i1 %.not57, %.not58
  br i1 %or.cond, label %bb.l, label %bb.i

end_hunk_0
begin_hunk_1_@minimalSwapAndFlipIVar_superFast_moreThen5:bb.a

bb.n:                                             ; preds = %bb.m
  %i.dg = sub nsw i32 %i.dc, %.pre                ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i95, label %._crit_edge.i94

.lr.ph.i95:                                       ; preds = %bb.n
  %i.di = shl i32 8, %i.c
  %i.dj = sext i32 %.pre to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  %i.dl = sub nsw i64 0, %i.dj                    ; 4 uses
  %i.dm = shl i32 %.025.i, %i.c
  %i.dn = sext i32 %i.dm to i64
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = sext i32 %i.di to i64                   ; 4 uses
  %i.dq = shl i32 %.027.i, %i.c
  %i.dr = sext i32 %i.dq to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = shl i32 %i.dd, %i.c
  %i.du = sext i32 %i.dt to i64
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = shl i32 %i.de, %i.c
  %i.dx = sext i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i95
  %.054.i96 = phi ptr [ %i.dk, %.lr.ph.i95 ], [ %i.eh, %bb.o ]
  %.05253.i97 = phi i32 [ %i.dg, %.lr.ph.i95 ], [ %i.ej, %bb.o ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %.054.i96, i64 %i.dl ; 2 uses
  %i.ea = zext nneg i32 %.05253.i97 to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ea ; 4 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.ec, i64 %i.dp, i1 false)
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.dl ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ee, i64 %i.dp, i1 false)
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dl ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.eg, i64 %i.dp, i1 false)
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.dl ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ei, i64 %i.dp, i1 false)
  %i.ej = add i32 %.05253.i97, %.neg.i            ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %bb.o, label %._crit_edge.i94, !llvm.loop !9

._crit_edge.i94:                                  ; preds = %bb.o, %bb.n
  %i.el = shl nuw nsw i64 %i.df, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.b, i64 %i.el, i1 false)
  %i.em = load i32, ptr %4, align 4, !tbaa !30
  %i.en = sub nsw i32 %.025.i, %.027.i
  %i.eo = tail call i32 @llvm.abs.i32(i32 %i.en, i1 true)
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %i.eq = or disjoint i32 %.025.i, -4
  %i.er = add nsw i32 %i.eq, %i.ep
  %i.es = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.em, i32 noundef %1, i32 noundef %i.er) #8
  br label %arrangeQuoters_superFast_moreThen5.exit.sink.split

bb.p:                                             ; preds = %bb.l
  %i.et = tail call noundef i32 @llvm.smax.i32(i32 %.sink.i84, i32 %.sink.i68) ; 2 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = sub nsw i32 %i.et, %.pre                ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i102, label %arrangeQuoters_superFast_moreThen5.exit105

.lr.ph.i102:                                      ; preds = %bb.p
  %i.ex = xor i32 %.027.i, 3
  %i.ey = xor i32 %.025.i, 3
  %i.ez = shl i32 8, %i.c
  %i.fa = sext i32 %.pre to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eu
  %i.fc = sub nsw i64 0, %i.fa                    ; 4 uses
  %i.fd = shl i32 %.027.i, %i.c
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = sext i32 %i.ez to i64                   ; 4 uses
  %i.fh = shl i32 %.025.i, %i.c
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = shl i32 %i.ey, %i.c
  %i.fl = sext i32 %i.fk to i64
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = shl i32 %i.ex, %i.c
  %i.fo = sext i32 %i.fn to i64
  %i.fp = sub nsw i64 0, %i.fo
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i102
  %.054.i103 = phi ptr [ %i.fb, %.lr.ph.i102 ], [ %i.fy, %bb.q ]
  %.05253.i104 = phi i32 [ %i.ev, %.lr.ph.i102 ], [ %i.ga, %bb.q ] ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %.054.i103, i64 %i.fc ; 2 uses
  %i.fr = zext nneg i32 %.05253.i104 to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fr ; 4 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.ft, i64 %i.fg, i1 false)
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fc ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fu, ptr nonnull align 8 %i.fv, i64 %i.fg, i1 false)
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fc ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 8 %i.fx, i64 %i.fg, i1 false)
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fc ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr nonnull align 8 %i.fz, i64 %i.fg, i1 false)
  %i.ga = add i32 %.05253.i104, %.neg.i           ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.q, label %arrangeQuoters_superFast_moreThen5.exit105, !llvm.loop !9

arrangeQuoters_superFast_moreThen5.exit105:       ; preds = %bb.q, %bb.p
  %i.gc = shl nuw nsw i64 %i.eu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.b, i64 %i.gc, i1 false)
  %i.gd = load i32, ptr %4, align 4, !tbaa !30
  %i.ge = sub nsw i32 %.027.i, %.025.i
  %i.gf = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %i.gg = shl nuw nsw i32 %i.gf, 2
  %i.gh = or disjoint i32 %.027.i, -4
  %i.gi = add nsw i32 %i.gh, %i.gg
  %i.gj = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.gd, i32 noundef %1, i32 noundef %i.gi) #8
  br label %arrangeQuoters_superFast_moreThen5.exit.sink.split

bb.r:                                             ; preds = %minTemp2_fast_moreThen5.exit
  %.not56 = icmp slt i32 %.sink.i84, %.sink.i
  br i1 %.not56, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gk = zext nneg i32 %.027.i85 to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !30 ; 5 uses
  %i.gn = xor i32 %.027.i85, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !30 ; 4 uses
  %i.gr = sub nsw i32 3, %i.gq
  %i.gs = sub nsw i32 3, %i.gm
  %i.gt = zext nneg i32 %.sink.i84 to i64         ; 2 uses
  %i.gu = icmp eq i32 %i.gm, 0
  %i.gv = icmp eq i32 %i.gq, 1
  %or.cond.i106 = and i1 %i.gu, %i.gv
  br i1 %or.cond.i106, label %arrangeQuoters_superFast_moreThen5.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gw = sub nsw i32 %.sink.i84, %.pre           ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i109, label %._crit_edge.i108

.lr.ph.i109:                                      ; preds = %bb.t
  %i.gy = shl i32 8, %i.c
  %i.gz = sext i32 %.pre to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gt
  %i.hb = sub nsw i64 0, %i.gz                    ; 4 uses
  %i.hc = shl i32 %i.gm, %i.c
  %i.hd = sext i32 %i.hc to i64
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = sext i32 %i.gy to i64                   ; 4 uses
  %i.hg = shl i32 %i.gq, %i.c
  %i.hh = sext i32 %i.hg to i64
  %i.hi = sub nsw i64 0, %i.hh
  %i.hj = shl i32 %i.gr, %i.c
  %i.hk = sext i32 %i.hj to i64
  %i.hl = sub nsw i64 0, %i.hk
  %i.hm = shl i32 %i.gs, %i.c
  %i.hn = sext i32 %i.hm to i64
  %i.ho = sub nsw i64 0, %i.hn
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i109
  %.054.i110 = phi ptr [ %i.ha, %.lr.ph.i109 ], [ %i.hx, %bb.u ]
  %.05253.i111 = phi i32 [ %i.gw, %.lr.ph.i109 ], [ %i.hz, %bb.u ] ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %.054.i110, i64 %i.hb ; 2 uses
  %i.hq = zext nneg i32 %.05253.i111 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hq ; 4 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.he
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hs, i64 %i.hf, i1 false)
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hb ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ht, ptr nonnull align 8 %i.hu, i64 %i.hf, i1 false)
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hb ; 2 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hv, ptr nonnull align 8 %i.hw, i64 %i.hf, i1 false)
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.hb ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %i.hy, i64 %i.hf, i1 false)
  %i.hz = add i32 %.05253.i111, %.neg.i           ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %bb.u, label %._crit_edge.i108, !llvm.loop !9

._crit_edge.i108:                                 ; preds = %bb.u, %bb.t
  %i.ib = shl nuw nsw i64 %i.gt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 16 %i.b, i64 %i.ib, i1 false)
  %i.ic = load i32, ptr %4, align 4, !tbaa !30
  %i.id = sub nsw i32 %i.gm, %i.gq
  %i.ie = tail call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.if = shl i32 %i.ie, 2
  %i.ig = add i32 %i.gm, -4
  %i.ih = add i32 %i.ig, %i.if
  %i.ii = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.ic, i32 noundef %1, i32 noundef %i.ih) #8
  br label %arrangeQuoters_superFast_moreThen5.exit.sink.split

bb.v:                                             ; preds = %bb.r
  br i1 %.not.i, label %.preheader.i, label %.preheader.us.preheader.i115

.preheader.us.preheader.i115:                     ; preds = %bb.v
  %i.ij = xor i32 %.027.i, 3
  %i.ik = xor i32 %.025.i, 3
  %i.il = shl i32 %i.ij, %i.c
  %i.im = shl i32 %i.ik, %i.c
  %i.in = add nsw i32 %.sink.i, -1
  %i.io = sext i32 %i.im to i64
  %i.ip = sext i32 %i.il to i64
  %smax.i116 = tail call i32 @llvm.smax.i32(i32 %.pre, i32 1)
  %wide.trip.count.i117 = zext nneg i32 %smax.i116 to i64
  br label %.preheader.us.i118

.preheader.us.i118:                               ; preds = %._crit_edge.us.i124, %.preheader.us.preheader.i115
  %.02735.us.i = phi i32 [ %i.iy, %._crit_edge.us.i124 ], [ %i.in, %.preheader.us.preheader.i115 ] ; 4 uses
  %i.iq = zext nneg i32 %.02735.us.i to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.preheader.us.i118
  %indvars.iv.i119 = phi i64 [ 0, %.preheader.us.i118 ], [ %indvars.iv.next.i122, %bb.x ] ; 2 uses
  %i.ir = sub nsw i64 %i.iq, %indvars.iv.i119     ; 2 uses
  %i.is = sub nsw i64 %i.ir, %i.io
  %i.it = getelementptr inbounds [8 x i8], ptr %0, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !33
  %i.iv = sub nsw i64 %i.ir, %i.ip
  %i.iw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !33
  %.0.i.us.i120 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.iu, i64 %i.ix)
  switch i32 %.0.i.us.i120, label %.split.us.i125 [
    i32 0, label %bb.x
    i32 -1, label %.split38.us.i
  ]

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i117
  br i1 %exitcond.not.i123, label %._crit_edge.us.i124, label %bb.w, !llvm.loop !16

._crit_edge.us.i124:                              ; preds = %bb.x
  %i.iy = add i32 %.02735.us.i, %.neg.i           ; 2 uses
  %.not.us.i = icmp slt i32 %i.iy, %.sink.i84
  br i1 %.not.us.i, label %minTemp3_fast_moreThen5.exit, label %.preheader.us.i118, !llvm.loop !17

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  br label %.preheader.i

.split38.us.i:                                    ; preds = %bb.w
  %i.iz = add nuw nsw i32 %.02735.us.i, 1
  br label %minTemp3_fast_moreThen5.exit

.split.us.i125:                                   ; preds = %bb.w
  %i.ja = add nuw nsw i32 %.02735.us.i, 1
  br label %minTemp3_fast_moreThen5.exit

minTemp3_fast_moreThen5.exit:                     ; preds = %._crit_edge.us.i124, %.split38.us.i, %.split.us.i125
  %.sink.i114 = phi i32 [ %i.iz, %.split38.us.i ], [ %i.ja, %.split.us.i125 ], [ 0, %._crit_edge.us.i124 ]
  %.028.i = phi i32 [ 0, %.split38.us.i ], [ 1, %.split.us.i125 ], [ 0, %._crit_edge.us.i124 ] ; 2 uses
  %i.jb = icmp sgt i32 %.sink.i114, %.sink.i84
  %i.jc = zext nneg i32 %.sink.i to i64           ; 4 uses
  br i1 %i.jb, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %minTemp3_fast_moreThen5.exit
  %i.jd = xor i32 %.028.i, 1
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !30 ; 5 uses
  %i.jh = zext nneg i32 %.028.i to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !30 ; 4 uses
  %i.jk = sub nsw i32 3, %i.jj
  %i.jl = sub nsw i32 3, %i.jg
  %i.jm = icmp eq i32 %i.jg, 0
  %i.jn = icmp eq i32 %i.jj, 1
  %or.cond.i126 = and i1 %i.jm, %i.jn
  br i1 %or.cond.i126, label %arrangeQuoters_superFast_moreThen5.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jo = sub nsw i32 %.sink.i, %.pre             ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph.i129, label %._crit_edge.i128

.lr.ph.i129:                                      ; preds = %bb.z
  %i.jq = shl i32 8, %i.c
  %i.jr = sext i32 %.pre to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jc
  %i.jt = sub nsw i64 0, %i.jr                    ; 4 uses
  %i.ju = shl i32 %i.jg, %i.c
  %i.jv = sext i32 %i.ju to i64
  %i.jw = sub nsw i64 0, %i.jv
  %i.jx = sext i32 %i.jq to i64                   ; 4 uses
  %i.jy = shl i32 %i.jj, %i.c
  %i.jz = sext i32 %i.jy to i64
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = shl i32 %i.jk, %i.c
  %i.kc = sext i32 %i.kb to i64
  %i.kd = sub nsw i64 0, %i.kc
  %i.ke = shl i32 %i.jl, %i.c
  %i.kf = sext i32 %i.ke to i64
  %i.kg = sub nsw i64 0, %i.kf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i129
  %.054.i130 = phi ptr [ %i.js, %.lr.ph.i129 ], [ %i.kp, %bb.aa ]
  %.05253.i131 = phi i32 [ %i.jo, %.lr.ph.i129 ], [ %i.kr, %bb.aa ] ; 2 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %.054.i130, i64 %i.jt ; 2 uses
  %i.ki = zext nneg i32 %.05253.i131 to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ki ; 4 uses
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kh, ptr nonnull align 8 %i.kk, i64 %i.jx, i1 false)
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.jt ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.ka
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kl, ptr nonnull align 8 %i.km, i64 %i.jx, i1 false)
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.jt ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kn, ptr nonnull align 8 %i.ko, i64 %i.jx, i1 false)
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.jt ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kp, ptr nonnull align 8 %i.kq, i64 %i.jx, i1 false)
  %i.kr = add i32 %.05253.i131, %.neg.i           ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %bb.aa, label %._crit_edge.i128, !llvm.loop !9

._crit_edge.i128:                                 ; preds = %bb.aa, %bb.z
  %i.kt = shl nuw nsw i64 %i.jc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 16 %i.b, i64 %i.kt, i1 false)
  %i.ku = load i32, ptr %4, align 4, !tbaa !30
  %i.kv = sub nsw i32 %i.jg, %i.jj
  %i.kw = tail call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  %i.kx = shl i32 %i.kw, 2
  %i.ky = add i32 %i.jg, -4
  %i.kz = add i32 %i.ky, %i.kx
  %i.la = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.ku, i32 noundef %1, i32 noundef %i.kz) #8
  br label %arrangeQuoters_superFast_moreThen5.exit.sink.split

bb.ab:                                            ; preds = %minTemp3_fast_moreThen5.exit
  %i.lb = zext nneg i32 %.027.i85 to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !30 ; 5 uses
  %i.le = xor i32 %.027.i85, 1
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !30 ; 4 uses
  %i.li = sub nsw i32 3, %i.lh
  %i.lj = sub nsw i32 3, %i.ld
  %i.lk = icmp eq i32 %i.ld, 0
  %i.ll = icmp eq i32 %i.lh, 1
  %or.cond.i133 = and i1 %i.lk, %i.ll
  br i1 %or.cond.i133, label %arrangeQuoters_superFast_moreThen5.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lm = sub nsw i32 %.sink.i, %.pre             ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph.i136, label %._crit_edge.i135

.lr.ph.i136:                                      ; preds = %bb.ac
  %i.lo = shl i32 8, %i.c
  %i.lp = sext i32 %.pre to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jc
  %i.lr = sub nsw i64 0, %i.lp                    ; 4 uses
  %i.ls = shl i32 %i.ld, %i.c
  %i.lt = sext i32 %i.ls to i64
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = sext i32 %i.lo to i64                   ; 4 uses
  %i.lw = shl i32 %i.lh, %i.c
  %i.lx = sext i32 %i.lw to i64
  %i.ly = sub nsw i64 0, %i.lx
  %i.lz = shl i32 %i.li, %i.c
  %i.ma = sext i32 %i.lz to i64
  %i.mb = sub nsw i64 0, %i.ma
  %i.mc = shl i32 %i.lj, %i.c
  %i.md = sext i32 %i.mc to i64
  %i.me = sub nsw i64 0, %i.md
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i136
  %.054.i137 = phi ptr [ %i.lq, %.lr.ph.i136 ], [ %i.mn, %bb.ad ]
  %.05253.i138 = phi i32 [ %i.lm, %.lr.ph.i136 ], [ %i.mp, %bb.ad ] ; 2 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %.054.i137, i64 %i.lr ; 2 uses
  %i.mg = zext nneg i32 %.05253.i138 to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.mg ; 4 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.lu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mf, ptr nonnull align 8 %i.mi, i64 %i.lv, i1 false)
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.mf, i64 %i.lr ; 2 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.ly
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mj, ptr nonnull align 8 %i.mk, i64 %i.lv, i1 false)
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.lr ; 2 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr nonnull align 8 %i.mm, i64 %i.lv, i1 false)
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.lr ; 2 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.me
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mn, ptr nonnull align 8 %i.mo, i64 %i.lv, i1 false)
  %i.mp = add i32 %.05253.i138, %.neg.i           ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.ad, label %._crit_edge.i135, !llvm.loop !9

._crit_edge.i135:                                 ; preds = %bb.ad, %bb.ac
  %i.mr = shl nuw nsw i64 %i.jc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 16 %i.b, i64 %i.mr, i1 false)
  %i.ms = load i32, ptr %4, align 4, !tbaa !30
  %i.mt = sub nsw i32 %i.ld, %i.lh
  %i.mu = tail call i32 @llvm.abs.i32(i32 %i.mt, i1 true)
  %i.mv = shl i32 %i.mu, 2
  %i.mw = add i32 %i.ld, -4
  %i.mx = add i32 %i.mw, %i.mv
  %i.my = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.ms, i32 noundef %1, i32 noundef %i.mx) #8
  br label %arrangeQuoters_superFast_moreThen5.exit.sink.split

arrangeQuoters_superFast_moreThen5.exit.sink.split: ; preds = %arrangeQuoters_superFast_moreThen5.exit105, %._crit_edge.i, %._crit_edge.i94, %._crit_edge.i108, %._crit_edge.i128, %._crit_edge.i135
  %.sink = phi i32 [ %i.my, %._crit_edge.i135 ], [ %i.la, %._crit_edge.i128 ], [ %i.ii, %._crit_edge.i108 ], [ %i.es, %._crit_edge.i94 ], [ %i.da, %._crit_edge.i ], [ %i.gj, %arrangeQuoters_superFast_moreThen5.exit105 ]
  store i32 %.sink, ptr %4, align 4, !tbaa !30
  br label %arrangeQuoters_superFast_moreThen5.exit

arrangeQuoters_superFast_moreThen5.exit:          ; preds = %arrangeQuoters_superFast_moreThen5.exit.sink.split, %bb.ab, %bb.y, %bb.s, %bb.m, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @minimalSwapAndFlipIVar_superFast_moreThen5_noEBFC(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = add nsw i32 %1, -6                       ; 6 uses
  %i.c = shl nuw i32 1, %i.b                      ; 5 uses
  %.neg.i = shl i32 -4, %i.b                      ; 2 uses
  %i.d = xor i32 %i.c, -1
  %i.e = add i32 %2, %i.d                         ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %.not.i = icmp eq i32 %i.b, 31
  %or.cond.i = or i1 %.not.i, %i.f
  br i1 %or.cond.i, label %minTemp1_fast_moreThen5.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.a
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.02633.us.i = phi i32 [ %i.o, %._crit_edge.us.i ], [ %i.e, %.preheader.us.preheader.i ] ; 3 uses
  %i.h = zext nneg i32 %.02633.us.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.i = sub nsw i64 %i.h, %indvars.iv.i          ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = sub nsw i64 %i.i, %i.g
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %.0.i.us.i = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.k, i64 %i.n)
  switch i32 %.0.i.us.i, label %bb.d [
    i32 0, label %bb.c
    i32 -1, label %minTemp1_fast_moreThen5.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.b, !llvm.loop !12

._crit_edge.us.i:                                 ; preds = %bb.c
  %i.o = add i32 %.02633.us.i, %.neg.i            ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.us.i, label %minTemp1_fast_moreThen5.exit.thread, !llvm.loop !13

bb.d:                                             ; preds = %bb.b
  %i.q = add nuw i32 %i.c, 1
  %i.r = add i32 %i.q, %.02633.us.i               ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.c                   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %arrangeQuoters_superFast_moreThen5.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = shl i32 8, %i.b
  %i.w = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.s
  %i.x = sub nsw i64 0, %i.g                      ; 5 uses
  %i.y = sext i32 %i.v to i64                     ; 4 uses
  %i.z = shl i32 2, %i.b
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = shl i32 3, %i.b
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.054.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.am, %bb.e ]
  %.05253.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.ao, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.054.i, i64 %i.x ; 2 uses
  %i.ag = zext nneg i32 %.05253.i to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ah, i64 %i.y, i1 false)
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.x ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aj, i64 %i.y, i1 false)
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.x ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.al, i64 %i.y, i1 false)
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.x ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.an, i64 %i.y, i1 false)
  %i.ao = add i32 %.05253.i, %.neg.i              ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %arrangeQuoters_superFast_moreThen5.exit, !llvm.loop !9

arrangeQuoters_superFast_moreThen5.exit:          ; preds = %bb.e, %bb.d
  %i.aq = shl nsw i64 %i.s, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  %i.ar = load i32, ptr %4, align 4, !tbaa !30
  %i.as = tail call i32 @adjustInfoAfterSwap(ptr noundef %3, i32 noundef %i.ar, i32 noundef %1, i32 noundef 4) #8
  store i32 %i.as, ptr %4, align 4, !tbaa !30
  br label %minTemp1_fast_moreThen5.exit.thread

minTemp1_fast_moreThen5.exit.thread:              ; preds = %._crit_edge.us.i, %bb.b, %bb.a, %arrangeQuoters_superFast_moreThen5.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nounwind uwtable
define void @minimalInitialFlip_fast_16Vars(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Kit_TruthWordNum_64bit(i32 noundef %1) #8
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %.not = icmp sgt i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Kit_TruthNot_64bit(ptr noundef nonnull %0, i32 noundef %1) #8
  %i.f = shl nuw i32 1, %1
  %i.g = load i32, ptr %2, align 4, !tbaa !30
  %i.h = xor i32 %i.g, %i.f
  store i32 %i.h, ptr %2, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @minimalSwapAndFlipIVar_superFast_all(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i32, ptr %3, align 4, !tbaa !30     ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = shl nsw i64 %i.c, 3                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %0, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !30   ; 2 uses
  %i.g = icmp eq i32 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 0, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.b, %bb.b ], [ %i.f, %bb.a ]  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp eq i32 %.1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 1, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 2 uses
  %i.m = icmp eq i32 %.1.1, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 2, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30   ; 2 uses
  %i.p = icmp eq i32 %.1.2, %i.o
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @minimalSwapAndFlipIVar_superFast_lessThen5(ptr noundef %0, i32 noundef 3, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.3 = phi i32 [ %.1.2, %bb.h ], [ %i.o, %bb.g ] ; 2 uses
end_hunk_1
