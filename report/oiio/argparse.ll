begin_hunk_0
  %54 = load i8, ptr %.1, align 1, !tbaa !16      ; 2 uses
  %55 = sext i8 %54 to i32
  %56 = tail call i32 @isalnum(i32 noundef %55) #44
  %.fr = freeze i32 %56
  %.not23.not = icmp eq i32 %.fr, 0
  br i1 %.not23.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %53
end_hunk_0
begin_hunk_1
  br label %119

115:                                              ; preds = %113
  %116 = load i32, ptr %4, align 4, !tbaa !387
  %.fr55 = freeze i32 %116                        ; 2 uses
  %117 = and i32 %.fr55, 8192                     ; 2 uses
  %.not56 = icmp eq i32 %117, 0
  %.lobit = lshr exact i32 %117, 13
  %118 = trunc nuw nsw i32 %.lobit to i8
  store i8 %118, ptr %19, align 1, !tbaa !107
  %spec.select = select i1 %.not56, i32 1, i32 2
  br label %119

119:                                              ; preds = %115, %.thread50
  %120 = phi i32 [ %.fr55, %115 ], [ %.pre, %.thread50 ] ; 2 uses
  %121 = phi i32 [ 0, %115 ], [ %.ph, %.thread50 ]
  %122 = phi i32 [ %spec.select, %115 ], [ 2, %.thread50 ]
  %123 = add nuw nsw i32 %122, %121
end_hunk_1
begin_hunk_2
  br label %119

115:                                              ; preds = %113
  %116 = load i32, ptr %4, align 4, !tbaa !387
  %.fr55 = freeze i32 %116                        ; 2 uses
  %117 = and i32 %.fr55, 8192                     ; 2 uses
  %.not56 = icmp eq i32 %117, 0
  %.lobit = lshr exact i32 %117, 13
  %118 = trunc nuw nsw i32 %.lobit to i8
  store i8 %118, ptr %19, align 1, !tbaa !107
  %spec.select = select i1 %.not56, i32 1, i32 2
  br label %119

119:                                              ; preds = %115, %.thread50
  %120 = phi i32 [ %.fr55, %115 ], [ %.pre, %.thread50 ] ; 2 uses
  %121 = phi i32 [ 0, %115 ], [ %.ph, %.thread50 ]
  %122 = phi i32 [ %spec.select, %115 ], [ 2, %.thread50 ]
  %123 = add nuw nsw i32 %122, %121
end_hunk_2
begin_hunk_3
  br label %234

230:                                              ; preds = %228
  %231 = load i32, ptr %4, align 4, !tbaa !387
  %.fr95 = freeze i32 %231                        ; 2 uses
  %232 = and i32 %.fr95, 8192                     ; 2 uses
  %.not96 = icmp eq i32 %232, 0
  %.lobit = lshr exact i32 %232, 13
  %233 = trunc nuw nsw i32 %.lobit to i8
  store i8 %233, ptr %17, align 1, !tbaa !107
  %spec.select93 = select i1 %.not96, i32 1, i32 2
  br label %234

234:                                              ; preds = %230, %.thread91
  %235 = phi i32 [ %.fr95, %230 ], [ %.pre, %.thread91 ] ; 2 uses
  %236 = phi i32 [ 0, %230 ], [ %.ph, %.thread91 ]
  %237 = phi i32 [ %spec.select93, %230 ], [ 2, %.thread91 ]
  %238 = add nuw nsw i32 %237, %236
end_hunk_3
begin_hunk_4
  br label %234

230:                                              ; preds = %228
  %231 = load i32, ptr %4, align 4, !tbaa !387
  %.fr95 = freeze i32 %231                        ; 2 uses
  %232 = and i32 %.fr95, 8192                     ; 2 uses
  %.not96 = icmp eq i32 %232, 0
  %.lobit = lshr exact i32 %232, 13
  %233 = trunc nuw nsw i32 %.lobit to i8
  store i8 %233, ptr %17, align 1, !tbaa !107
  %spec.select93 = select i1 %.not96, i32 1, i32 2
  br label %234

234:                                              ; preds = %230, %.thread91
  %235 = phi i32 [ %.fr95, %230 ], [ %.pre, %.thread91 ] ; 2 uses
  %236 = phi i32 [ 0, %230 ], [ %.ph, %.thread91 ]
  %237 = phi i32 [ %spec.select93, %230 ], [ 2, %.thread91 ]
  %238 = add nuw nsw i32 %237, %236
end_hunk_4
begin_hunk_5
  br label %234

230:                                              ; preds = %228
  %231 = load i32, ptr %4, align 4, !tbaa !387
  %.fr95 = freeze i32 %231                        ; 2 uses
  %232 = and i32 %.fr95, 8192                     ; 2 uses
  %.not96 = icmp eq i32 %232, 0
  %.lobit = lshr exact i32 %232, 13
  %233 = trunc nuw nsw i32 %.lobit to i8
  store i8 %233, ptr %17, align 1, !tbaa !107
  %spec.select93 = select i1 %.not96, i32 1, i32 2
  br label %234

234:                                              ; preds = %230, %.thread91
  %235 = phi i32 [ %.fr95, %230 ], [ %.pre, %.thread91 ] ; 2 uses
  %236 = phi i32 [ 0, %230 ], [ %.ph, %.thread91 ]
  %237 = phi i32 [ %spec.select93, %230 ], [ 2, %.thread91 ]
  %238 = add nuw nsw i32 %237, %236
end_hunk_5
