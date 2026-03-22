begin_hunk_0
  %.not = icmp eq i32 %5, 0                       ; [#uses=1 type=i1]
  %.in.v = select i1 %.not, i64 88, i64 296       ; [#uses=1 type=i64]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v ; [#uses=1 type=ptr]
  %6 = load i32, ptr %.in, align 8, !tbaa !3      ; [#uses=3 type=i32]
  %7 = icmp sgt i32 %6, 8                         ; [#uses=1 type=i1]
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 12 ; [#uses=1 type=ptr]
  %9 = load i32, ptr %8, align 4, !tbaa !78       ; [#uses=1 type=i32]
  %10 = zext i32 %9 to i64                        ; [#uses=1 type=i64]
end_hunk_0
begin_hunk_1
.lr.ph:                                           ; preds = %3
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; [#uses=4 type=ptr]
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; [#uses=4 type=ptr]
  %23 = icmp slt i32 %6, 9                        ; [#uses=1 type=i1]
  %.not96 = icmp eq i32 %2, 0                     ; [#uses=3 type=i1]
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 56 ; [#uses=7 type=ptr]
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; [#uses=3 type=ptr]
  br i1 %23, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre115 = load i32, ptr %17, align 8, !tbaa !99 ; [#uses=1 type=i32]
  %.135 = select i1 %.not96, ptr %24, ptr %25     ; [#uses=1 type=ptr]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %42
  %26 = phi i32 [ %48, %42 ], [ %.pre115, %.lr.ph.split.us.preheader ] ; [#uses=1 type=i32]
  %27 = phi i64 [ %52, %42 ], [ %20, %.lr.ph.split.us.preheader ] ; [#uses=1 type=i64]
  %.0100.us = phi i64 [ %47, %42 ], [ %16, %.lr.ph.split.us.preheader ] ; [#uses=2 type=i64]
  %.08699.us = phi i64 [ %50, %42 ], [ 0, %.lr.ph.split.us.preheader ] ; [#uses=4 type=i64]
end_hunk_1
begin_hunk_2
  br i1 %53, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !123

.lr.ph.split:                                     ; preds = %.lr.ph
  %54 = icmp samesign ult i32 %6, 13              ; [#uses=1 type=i1]
  %.pre114 = load i32, ptr %17, align 8, !tbaa !99 ; [#uses=3 type=i32]
  br i1 %54, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
end_hunk_2
begin_hunk_3
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %71
  %55 = phi i32 [ %77, %71 ], [ %.pre114, %.lr.ph.split.split.us.preheader ] ; [#uses=1 type=i32]
  %56 = phi i64 [ %81, %71 ], [ %20, %.lr.ph.split.split.us.preheader ] ; [#uses=1 type=i64]
  %.0100.us102 = phi i64 [ %76, %71 ], [ %16, %.lr.ph.split.split.us.preheader ] ; [#uses=2 type=i64]
  %.08699.us103 = phi i64 [ %79, %71 ], [ 0, %.lr.ph.split.split.us.preheader ] ; [#uses=4 type=i64]
end_hunk_3
begin_hunk_4
  br i1 %.not96, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %99
  %83 = phi i32 [ %106, %99 ], [ %.pre114, %.lr.ph.split.split ] ; [#uses=1 type=i32]
  %84 = phi i64 [ %110, %99 ], [ %20, %.lr.ph.split.split ] ; [#uses=1 type=i64]
  %.0100.us106 = phi i64 [ %105, %99 ], [ %16, %.lr.ph.split.split ] ; [#uses=2 type=i64]
  %.08699.us107 = phi i64 [ %108, %99 ], [ 0, %.lr.ph.split.split ] ; [#uses=4 type=i64]
end_hunk_4
begin_hunk_5
  br i1 %111, label %.lr.ph.split.split.split.us, label %._crit_edge, !llvm.loop !123

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %128
  %112 = phi i32 [ %135, %128 ], [ %.pre114, %.lr.ph.split.split ] ; [#uses=1 type=i32]
  %113 = phi i64 [ %139, %128 ], [ %20, %.lr.ph.split.split ] ; [#uses=1 type=i64]
  %.0100 = phi i64 [ %134, %128 ], [ %16, %.lr.ph.split.split ] ; [#uses=2 type=i64]
  %.08699 = phi i64 [ %137, %128 ], [ 0, %.lr.ph.split.split ] ; [#uses=4 type=i64]
end_hunk_5
