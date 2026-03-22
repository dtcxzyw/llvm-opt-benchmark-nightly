begin_hunk_0
  %10 = load i32, ptr %9, align 4, !tbaa !114     ; [#uses=1 type=i32]
  %11 = sext i32 %10 to i64                       ; [#uses=2 type=i64]
  %12 = getelementptr inbounds i8, ptr %8, i64 %11 ; [#uses=1 type=ptr]
  %13 = load i8, ptr %12, align 1, !tbaa !39      ; [#uses=6 type=i8]
  %14 = zext i8 %13 to i32                        ; [#uses=4 type=i32]
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 258 ; [#uses=1 type=ptr]
  %16 = getelementptr inbounds i8, ptr %15, i64 %11 ; [#uses=1 type=ptr]
  %17 = load i8, ptr %16, align 1, !tbaa !39      ; [#uses=3 type=i8]
  %18 = zext i8 %17 to i32                        ; [#uses=3 type=i32]
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 412 ; [#uses=3 type=ptr]
  %20 = load i32, ptr %19, align 4, !tbaa !61     ; [#uses=3 type=i32]
  %21 = icmp sgt i32 %20, 0                       ; [#uses=1 type=i1]
end_hunk_0
begin_hunk_1

.lr.ph:                                           ; preds = %4
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; [#uses=4 type=ptr]
  %.not = icmp eq i8 %13, 0                       ; [#uses=1 type=i1]
  %23 = icmp ugt i8 %17, 1                        ; [#uses=2 type=i1]
  %24 = add nsw i32 %18, -1                       ; [#uses=2 type=i32]
  br i1 %.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %25 = zext i8 %17 to i64                        ; [#uses=2 type=i64]
  br i1 %23, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %26 = zext i8 %13 to i64                        ; [#uses=2 type=i64]
  %min.iters.check88 = icmp ult i8 %13, 16        ; [#uses=1 type=i1]
  %n.vec91 = and i64 %26, 240                     ; [#uses=4 type=i64]
  %27 = shl nuw nsw i64 %n.vec91, 1               ; [#uses=1 type=i64]
  %.cast92 = trunc nuw nsw i64 %n.vec91 to i32    ; [#uses=1 type=i32]
end_hunk_1
begin_hunk_2
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %._crit_edge.split.us.us.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; [#uses=2 type=i64]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; [#uses=3 type=i64]
  %indvars68 = trunc i64 %indvars.iv64 to i32     ; [#uses=2 type=i32]
  %29 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv64 ; [#uses=1 type=ptr]
  %30 = load ptr, ptr %29, align 8, !tbaa !78     ; [#uses=2 type=ptr]
  %31 = load i32, ptr %22, align 8, !tbaa !66     ; [#uses=3 type=i32]
  %32 = zext i32 %31 to i64                       ; [#uses=1 type=i64]
  %.idx53 = shl nuw nsw i64 %32, 1                ; [#uses=1 type=i64]
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 %.idx53 ; [#uses=1 type=ptr]
  %.not54 = icmp eq i32 %31, 0                    ; [#uses=1 type=i1]
  br i1 %.not54, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph.split.us.split.us
  %34 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv66 ; [#uses=1 type=ptr]
  %35 = load ptr, ptr %34, align 8, !tbaa !78     ; [#uses=1 type=ptr]
  br label %.lr.ph.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us, %.lr.ph.split.us.split.us
  %36 = add nuw nsw i32 %indvars68, 1             ; [#uses=1 type=i32]
  tail call void @j12copy_sample_rows(ptr noundef %7, i32 noundef %indvars68, ptr noundef %7, i32 noundef %36, i32 noundef %24, i32 noundef %31) #6
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; [#uses=1 type=i64]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, %25 ; [#uses=2 type=i64]
  %37 = load i32, ptr %19, align 4, !tbaa !61     ; [#uses=1 type=i32]
  %38 = trunc nuw i64 %indvars.iv.next65 to i32   ; [#uses=1 type=i32]
  %39 = icmp sgt i32 %37, %38                     ; [#uses=1 type=i1]
  br i1 %39, label %.lr.ph.split.us.split.us, label %._crit_edge44, !llvm.loop !115

end_hunk_2
begin_hunk_3
  %.pre = load i32, ptr %22, align 8, !tbaa !66   ; [#uses=2 type=i32]
  %50 = zext i32 %.pre to i64                     ; [#uses=1 type=i64]
  %.idx = shl nuw nsw i64 %50, 1                  ; [#uses=1 type=i64]
  %.not52 = icmp eq i32 %.pre, 0                  ; [#uses=1 type=i1]
  %51 = zext i8 %13 to i64                        ; [#uses=2 type=i64]
  %min.iters.check = icmp ult i8 %13, 16          ; [#uses=1 type=i1]
  %n.vec = and i64 %51, 240                       ; [#uses=4 type=i64]
  %52 = shl nuw nsw i64 %n.vec, 1                 ; [#uses=1 type=i64]
  %.cast = trunc nuw nsw i64 %n.vec to i32        ; [#uses=1 type=i32]
end_hunk_3
begin_hunk_4
  br label %54

54:                                               ; preds = %._crit_edge.split.us.us, %.lr.ph.split.us.split
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split ] ; [#uses=2 type=i64]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split.us.us ], [ 0, %.lr.ph.split.us.split ] ; [#uses=2 type=i64]
  %55 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; [#uses=1 type=ptr]
  %56 = load ptr, ptr %55, align 8, !tbaa !78     ; [#uses=2 type=ptr]
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 %.idx ; [#uses=1 type=ptr]
  br i1 %.not52, label %._crit_edge.split.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %54
  %58 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59 ; [#uses=1 type=ptr]
  %59 = load ptr, ptr %58, align 8, !tbaa !78     ; [#uses=1 type=ptr]
  br label %.lr.ph.us.us

._crit_edge.split.us.us:                          ; preds = %..loopexit_crit_edge.us.us, %54
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; [#uses=1 type=i64]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %25 ; [#uses=2 type=i64]
  %60 = icmp samesign ult i64 %indvars.iv.next, %49 ; [#uses=1 type=i1]
  br i1 %60, label %54, label %._crit_edge44, !llvm.loop !115
end_hunk_4
begin_hunk_5
.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %71
  %.042.us45 = phi i32 [ %73, %71 ], [ 0, %.lr.ph.split ] ; [#uses=3 type=i32]
  %70 = load i32, ptr %22, align 8, !tbaa !66     ; [#uses=1 type=i32]
  %.not51 = icmp eq i32 %70, 0                    ; [#uses=1 type=i1]
  br i1 %.not51, label %71, label %.loopexit.preheader

71:                                               ; preds = %.lr.ph.split.split.us
  %72 = add nuw nsw i32 %.042.us45, 1             ; [#uses=1 type=i32]
end_hunk_5
begin_hunk_6

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %76 = load i32, ptr %22, align 8, !tbaa !66     ; [#uses=1 type=i32]
  %.not50 = icmp eq i32 %76, 0                    ; [#uses=1 type=i1]
  br label %77

77:                                               ; preds = %.lr.ph.split.split, %78
  %.042 = phi i32 [ 0, %.lr.ph.split.split ], [ %79, %78 ] ; [#uses=1 type=i32]
  br i1 %.not50, label %78, label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %77, %.lr.ph.split.split.us
  br label %.loopexit
end_hunk_6
