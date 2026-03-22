begin_hunk_0

172:                                              ; preds = %169
  %173 = getelementptr inbounds nuw i8, ptr %9, i64 280 ; [#uses=1 type=ptr]
  %174 = load i32, ptr %173, align 8, !tbaa !109  ; [#uses=3 type=i32]
  %175 = getelementptr inbounds nuw i8, ptr %1, i64 640 ; [#uses=1 type=ptr]
  store i32 %174, ptr %175, align 8, !tbaa !110
  %176 = getelementptr inbounds nuw i8, ptr %9, i64 384 ; [#uses=1 type=ptr]
  %177 = getelementptr inbounds nuw i8, ptr %9, i64 408 ; [#uses=2 type=ptr]
  %178 = load i64, ptr %177, align 8, !tbaa !111  ; [#uses=1 type=i64]
end_hunk_0
begin_hunk_1
  %199 = load ptr, ptr %198, align 8, !tbaa !121  ; [#uses=3 type=ptr]
  %200 = getelementptr inbounds nuw i8, ptr %1, i64 576 ; [#uses=1 type=ptr]
  %201 = load ptr, ptr %200, align 8, !tbaa !122  ; [#uses=3 type=ptr]
  %202 = icmp sgt i32 %174, 0                     ; [#uses=1 type=i1]
  %wide.trip.count135.i = zext nneg i32 %194 to i64 ; [#uses=4 type=i64]
  br i1 %202, label %.lr.ph114.split.us.preheader.i, label %.lr.ph114.split.i.preheader

.lr.ph114.split.i.preheader:                      ; preds = %.lr.ph114.i
  %min.iters.check = icmp ult i32 %194, 4         ; [#uses=1 type=i1]
  br i1 %min.iters.check, label %.lr.ph114.split.i.preheader222, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph114.split.i.preheader
  %n.vec = and i64 %wide.trip.count135.i, 2147483644 ; [#uses=3 type=i64]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_1
begin_hunk_2
  br i1 %207, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count135.i ; [#uses=1 type=i1]
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph114.split.i.preheader222

.lr.ph114.split.i.preheader222:                   ; preds = %.lr.ph114.split.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph114.split.i.preheader ], [ %n.vec, %middle.block ] ; [#uses=1 type=i64]
  br label %.lr.ph114.split.i

.lr.ph114.split.us.preheader.i:                   ; preds = %.lr.ph114.i
  %wide.trip.count130.i = zext nneg i32 %174 to i64 ; [#uses=1 type=i64]
  br label %.lr.ph114.split.us.i

.lr.ph114.split.us.i:                             ; preds = %.thread.us.i, %.lr.ph114.split.us.preheader.i
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph114.split.us.preheader.i ], [ %indvars.iv.next133.i, %.thread.us.i ] ; [#uses=5 type=i64]
  %.064111.us.i = phi i32 [ 0, %.lr.ph114.split.us.preheader.i ], [ %.4.us.i, %.thread.us.i ] ; [#uses=4 type=i32]
  %.066110.us.i = phi i32 [ 0, %.lr.ph114.split.us.preheader.i ], [ %.5.us.i, %.thread.us.i ] ; [#uses=4 type=i32]
  %208 = getelementptr inbounds nuw [8 x i8], ptr %197, i64 %indvars.iv132.i ; [#uses=1 type=ptr]
  %209 = load ptr, ptr %208, align 8, !tbaa !124  ; [#uses=2 type=ptr]
  %210 = getelementptr inbounds nuw [2 x i8], ptr %199, i64 %indvars.iv132.i ; [#uses=2 type=ptr]
  store i16 0, ptr %210, align 2, !tbaa !123
  %211 = getelementptr inbounds nuw [8 x i8], ptr %201, i64 %indvars.iv132.i ; [#uses=2 type=ptr]
  store ptr @.str.10, ptr %211, align 8, !tbaa !124
  %.not79.us.i = icmp eq ptr %209, null           ; [#uses=1 type=i1]
  br i1 %.not79.us.i, label %.thread.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.lr.ph114.split.us.i, %216
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %216 ], [ 0, %.lr.ph114.split.us.i ] ; [#uses=3 type=i64]
  %212 = getelementptr inbounds nuw [8 x i8], ptr %188, i64 %indvars.iv127.i ; [#uses=1 type=ptr]
  %213 = load ptr, ptr %212, align 8, !tbaa !124  ; [#uses=3 type=ptr]
  %214 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %209, ptr noundef nonnull dereferenceable(1) %213) #15 ; [#uses=1 type=i32]
  %215 = icmp eq i32 %214, 0                      ; [#uses=1 type=i1]
  br i1 %215, label %217, label %216

216:                                              ; preds = %.preheader.us.i
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; [#uses=2 type=i64]
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i ; [#uses=1 type=i1]
  br i1 %exitcond131.not.i, label %.thread.us.i, label %.preheader.us.i, !llvm.loop !128

217:                                              ; preds = %.preheader.us.i
  %218 = trunc i64 %indvars.iv127.i to i16        ; [#uses=1 type=i16]
  store i16 %218, ptr %210, align 2, !tbaa !123
  store ptr %213, ptr %211, align 8, !tbaa !124
  %219 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.10, ptr noundef nonnull dereferenceable(1) %213) #15 ; [#uses=1 type=i32]
end_hunk_2
begin_hunk_3
  br i1 %.not80.us.i, label %.thread.us.i, label %220

220:                                              ; preds = %217
  %221 = trunc i64 %indvars.iv132.i to i32        ; [#uses=2 type=i32]
  %spec.select83.us.i = call i32 @llvm.smin.i32(i32 %221, i32 %.066110.us.i) ; [#uses=1 type=i32]
  %222 = add i32 %221, 1                          ; [#uses=1 type=i32]
  %spec.select84.us.i = call i32 @llvm.smax.i32(i32 %.064111.us.i, i32 %222) ; [#uses=1 type=i32]
end_hunk_3
begin_hunk_4
.thread.us.i:                                     ; preds = %216, %220, %217, %.lr.ph114.split.us.i
  %.5.us.i = phi i32 [ %.066110.us.i, %.lr.ph114.split.us.i ], [ %.066110.us.i, %217 ], [ %spec.select83.us.i, %220 ], [ %.066110.us.i, %216 ] ; [#uses=2 type=i32]
  %.4.us.i = phi i32 [ %.064111.us.i, %.lr.ph114.split.us.i ], [ %.064111.us.i, %217 ], [ %spec.select84.us.i, %220 ], [ %.064111.us.i, %216 ] ; [#uses=2 type=i32]
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; [#uses=2 type=i64]
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i ; [#uses=1 type=i1]
  br i1 %exitcond136.not.i, label %._crit_edge.i, label %.lr.ph114.split.us.i, !llvm.loop !129

.lr.ph114.split.i:                                ; preds = %.lr.ph114.split.i.preheader222, %.lr.ph114.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph114.split.i ], [ %indvars.iv.i.ph, %.lr.ph114.split.i.preheader222 ] ; [#uses=3 type=i64]
  %223 = getelementptr inbounds nuw [2 x i8], ptr %199, i64 %indvars.iv.i ; [#uses=1 type=ptr]
  store i16 0, ptr %223, align 2, !tbaa !123
  %224 = getelementptr inbounds nuw [8 x i8], ptr %201, i64 %indvars.iv.i ; [#uses=1 type=ptr]
  store ptr @.str.10, ptr %224, align 8, !tbaa !124
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; [#uses=2 type=i64]
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count135.i ; [#uses=1 type=i1]
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph114.split.i, !llvm.loop !130

._crit_edge.i:                                    ; preds = %.lr.ph114.split.i, %.thread.us.i, %middle.block, %.preheader100.i
end_hunk_4
