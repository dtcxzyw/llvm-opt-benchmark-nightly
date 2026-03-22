begin_hunk_0
  %53 = load i8, ptr %52, align 1, !tbaa !45      ; [#uses=1 type=i8]
  %.not46.i = icmp eq i8 %53, 0                   ; [#uses=1 type=i1]
  %54 = or i32 %spec.select, 512                  ; [#uses=1 type=i32]
  %.262 = select i1 %.not46.i, i32 %spec.select, i32 %54 ; [#uses=2 type=i32]
  store i32 20000630, ptr %2, align 4, !tbaa !3
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 4 ; [#uses=1 type=ptr]
  store i32 %.262, ptr %55, align 4, !tbaa !3
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; [#uses=4 type=ptr]
  %57 = load ptr, ptr %56, align 8, !tbaa !46     ; [#uses=1 type=ptr]
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; [#uses=4 type=ptr]
end_hunk_0
begin_hunk_1
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 196 ; [#uses=3 type=ptr]
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 472 ; [#uses=2 type=ptr]
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 545 ; [#uses=2 type=ptr]
  %63 = and i32 %.262, 6144                       ; [#uses=1 type=i32]
  %64 = icmp eq i32 %63, 0                        ; [#uses=1 type=i1]
  br i1 %64, label %.preheader75.split.us, label %.preheader75.split

.preheader75.split.us:                            ; preds = %.preheader75, %.thread67.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.thread67.us ], [ 0, %.preheader75 ] ; [#uses=3 type=i64]
  %65 = load i32, ptr %60, align 4, !tbaa !24     ; [#uses=1 type=i32]
  %66 = sext i32 %65 to i64                       ; [#uses=1 type=i64]
  %67 = icmp slt i64 %indvars.iv122, %66          ; [#uses=1 type=i1]
  br i1 %67, label %68, label %.critedge

68:                                               ; preds = %.preheader75.split.us
  %69 = load ptr, ptr %61, align 8, !tbaa !25     ; [#uses=1 type=ptr]
  %70 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %indvars.iv122 ; [#uses=1 type=ptr]
  %71 = load ptr, ptr %70, align 8, !tbaa !28     ; [#uses=3 type=ptr]
  %72 = load i8, ptr %62, align 1, !tbaa !47      ; [#uses=1 type=i8]
  %.not54.us = icmp eq i8 %72, 0                  ; [#uses=1 type=i1]
end_hunk_1
begin_hunk_2
  br i1 %.not54.us, label %.preheader.us, label %.preheader72.us

76:                                               ; preds = %80
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; [#uses=2 type=i64]
  %77 = load i32, ptr %73, align 8, !tbaa !29     ; [#uses=1 type=i32]
  %78 = sext i32 %77 to i64                       ; [#uses=1 type=i64]
  %79 = icmp slt i64 %indvars.iv.next120, %78     ; [#uses=1 type=i1]
  br i1 %79, label %80, label %.thread67.us, !llvm.loop !48

80:                                               ; preds = %.lr.ph87.us, %76
  %indvars.iv119 = phi i64 [ 0, %.lr.ph87.us ], [ %indvars.iv.next120, %76 ] ; [#uses=2 type=i64]
  %81 = load ptr, ptr %108, align 8, !tbaa !30    ; [#uses=1 type=ptr]
  %82 = getelementptr inbounds nuw [8 x i8], ptr %81, i64 %indvars.iv119 ; [#uses=1 type=ptr]
  %83 = load ptr, ptr %82, align 8, !tbaa !31     ; [#uses=1 type=ptr]
  %84 = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %83) ; [#uses=2 type=i32]
  %.not55.us = icmp eq i32 %84, 0                 ; [#uses=1 type=i1]
end_hunk_2
begin_hunk_3
  store i8 0, ptr %3, align 1, !tbaa !36
  %85 = load ptr, ptr %56, align 8, !tbaa !46     ; [#uses=1 type=ptr]
  %86 = call i32 %85(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %58) #8 ; [#uses=2 type=i32]
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; [#uses=1 type=i64]
  %87 = icmp eq i32 %86, 0                        ; [#uses=1 type=i1]
  br i1 %87, label %.preheader75.split.us, label %.critedge57, !llvm.loop !49

end_hunk_3
begin_hunk_4

89:                                               ; preds = %select.unfold.us.us, %.lr.ph.us
  %90 = phi i32 [ %105, %select.unfold.us.us ], [ %74, %.lr.ph.us ] ; [#uses=2 type=i32]
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %select.unfold.us.us ], [ 0, %.lr.ph.us ] ; [#uses=2 type=i64]
  %91 = load ptr, ptr %88, align 8, !tbaa !50     ; [#uses=1 type=ptr]
  %92 = getelementptr inbounds nuw [8 x i8], ptr %91, i64 %indvars.iv116 ; [#uses=1 type=ptr]
  %93 = load ptr, ptr %92, align 8, !tbaa !31     ; [#uses=2 type=ptr]
  %94 = load i32, ptr %60, align 4, !tbaa !24     ; [#uses=1 type=i32]
  %95 = icmp eq i32 %94, 1                        ; [#uses=1 type=i1]
end_hunk_4
begin_hunk_5

select.unfold.us.us:                              ; preds = %.select.unfold.us.us_crit_edge, %100, %96
  %105 = phi i32 [ %.pre, %.select.unfold.us.us_crit_edge ], [ %90, %100 ], [ %90, %96 ] ; [#uses=2 type=i32]
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; [#uses=2 type=i64]
  %106 = sext i32 %105 to i64                     ; [#uses=1 type=i64]
  %107 = icmp slt i64 %indvars.iv.next117, %106   ; [#uses=1 type=i1]
  br i1 %107, label %89, label %.thread67.us, !llvm.loop !52

.lr.ph87.us:                                      ; preds = %.preheader.us
end_hunk_5
begin_hunk_6
  br label %80

.preheader75.split:                               ; preds = %.preheader75, %.thread67
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.thread67 ], [ 0, %.preheader75 ] ; [#uses=3 type=i64]
  %109 = load i32, ptr %60, align 4, !tbaa !24    ; [#uses=1 type=i32]
  %110 = sext i32 %109 to i64                     ; [#uses=1 type=i64]
  %111 = icmp slt i64 %indvars.iv113, %110        ; [#uses=1 type=i1]
  br i1 %111, label %112, label %.critedge

112:                                              ; preds = %.preheader75.split
  %113 = load ptr, ptr %61, align 8, !tbaa !25    ; [#uses=1 type=ptr]
  %114 = getelementptr inbounds nuw [8 x i8], ptr %113, i64 %indvars.iv113 ; [#uses=1 type=ptr]
  %115 = load ptr, ptr %114, align 8, !tbaa !28   ; [#uses=3 type=ptr]
  %116 = load i8, ptr %62, align 1, !tbaa !47     ; [#uses=1 type=i8]
  %.not54 = icmp eq i8 %116, 0                    ; [#uses=1 type=i1]
end_hunk_6
begin_hunk_7
  br i1 %129, label %122, label %.thread67, !llvm.loop !52

130:                                              ; preds = %134
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; [#uses=2 type=i64]
  %131 = load i32, ptr %117, align 8, !tbaa !29   ; [#uses=1 type=i32]
  %132 = sext i32 %131 to i64                     ; [#uses=1 type=i64]
  %133 = icmp slt i64 %indvars.iv.next111, %132   ; [#uses=1 type=i1]
  br i1 %133, label %134, label %.thread67, !llvm.loop !48

134:                                              ; preds = %.lr.ph87, %130
  %indvars.iv110 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next111, %130 ] ; [#uses=2 type=i64]
  %135 = load ptr, ptr %121, align 8, !tbaa !30   ; [#uses=1 type=ptr]
  %136 = getelementptr inbounds nuw [8 x i8], ptr %135, i64 %indvars.iv110 ; [#uses=1 type=ptr]
  %137 = load ptr, ptr %136, align 8, !tbaa !31   ; [#uses=1 type=ptr]
  %138 = call fastcc i32 @save_attr(ptr noundef nonnull %0, ptr noundef %137) ; [#uses=2 type=i32]
  %.not55 = icmp eq i32 %138, 0                   ; [#uses=1 type=i1]
end_hunk_7
begin_hunk_8
  store i8 0, ptr %3, align 1, !tbaa !36
  %139 = load ptr, ptr %56, align 8, !tbaa !46    ; [#uses=1 type=ptr]
  %140 = call i32 %139(ptr noundef nonnull %0, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %58) #8 ; [#uses=2 type=i32]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; [#uses=1 type=i64]
  %141 = icmp eq i32 %140, 0                      ; [#uses=1 type=i1]
  br i1 %141, label %.preheader75.split, label %.critedge57, !llvm.loop !49

end_hunk_8
