begin_hunk_0
define dso_local range(i32 -1, 1) i32 @hashTypeNext(ptr noundef initializes((40, 48)) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8                        ; [#uses=7 type=ptr]
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !96 ; [#uses=1 type=i32]
  %.fr = freeze i32 %4                            ; [#uses=1 type=i32]
  %.not = icmp eq i32 %.fr, 0                     ; [#uses=1 type=i1]
  %spec.store.select = select i1 %.not, i32 %1, i32 0 ; [#uses=2 type=i32]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; [#uses=4 type=ptr]
  store i64 281474976710656, ptr %5, align 8, !tbaa !131
end_hunk_0
begin_hunk_1

67:                                               ; preds = %64, %hashTypeLength.exit
  %.0111 = phi i64 [ %66, %64 ], [ 0, %hashTypeLength.exit ] ; [#uses=1 type=i64]
  %68 = load i32, ptr %2, align 4, !tbaa !9       ; [#uses=1 type=i32]
  %.fr = freeze i32 %68                           ; [#uses=8 type=i32]
  %69 = and i32 %.fr, 192                         ; [#uses=1 type=i32]
  %.not123 = icmp eq i32 %69, 0                   ; [#uses=1 type=i1]
  br i1 %.not123, label %.thread, label %.preheader

end_hunk_1
begin_hunk_2

.lr.ph:                                           ; preds = %.preheader
  %72 = load i32, ptr %3, align 4, !tbaa !9       ; [#uses=3 type=i32]
  %73 = and i32 %.fr, 64                          ; [#uses=1 type=i32]
  %74 = icmp eq i32 %73, 0                        ; [#uses=1 type=i1]
  %75 = and i32 %.fr, 128                         ; [#uses=2 type=i32]
  %.not190 = icmp eq i32 %75, 0                   ; [#uses=2 type=i1]
  br i1 %74, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %76 = sext i32 %72 to i64                       ; [#uses=2 type=i64]
  %wide.trip.count215 = zext nneg i32 %70 to i64  ; [#uses=2 type=i64]
  br i1 %.not190, label %.critedge.us.us, label %.lr.ph.split.us.split

.critedge.us.us:                                  ; preds = %.lr.ph.split.us, %.critedge.us.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; [#uses=2 type=i64]
  %.0104147.us.us = phi i32 [ %90, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; [#uses=1 type=i32]
  %.0114146.us.us = phi i32 [ %91, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; [#uses=1 type=i32]
  %77 = load ptr, ptr %17, align 8, !tbaa !148    ; [#uses=1 type=ptr]
  %.idx232 = shl i64 %indvars.iv212, 4            ; [#uses=1 type=i64]
  %78 = getelementptr i8, ptr %77, i64 %.idx232   ; [#uses=1 type=ptr]
  %79 = getelementptr [8 x i8], ptr %78, i64 %76  ; [#uses=1 type=ptr]
  %80 = load ptr, ptr %79, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 8 ; [#uses=1 type=ptr]
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; [#uses=2 type=i64]
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215 ; [#uses=1 type=i1]
  br i1 %exitcond216.not, label %.loopexit.thread, label %.critedge.us.us, !llvm.loop !156

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.critedge.us
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; [#uses=2 type=i64]
  %.0104147.us = phi i32 [ %105, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; [#uses=1 type=i32]
  %.0114146.us = phi i32 [ %106, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; [#uses=1 type=i32]
  %92 = load ptr, ptr %17, align 8, !tbaa !148    ; [#uses=1 type=ptr]
  %.idx231 = shl i64 %indvars.iv207, 4            ; [#uses=1 type=i64]
  %93 = getelementptr i8, ptr %92, i64 %.idx231   ; [#uses=1 type=ptr]
  %94 = getelementptr [8 x i8], ptr %93, i64 %76  ; [#uses=1 type=ptr]
  %95 = load ptr, ptr %94, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 8 ; [#uses=1 type=ptr]
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; [#uses=2 type=i64]
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count215 ; [#uses=1 type=i1]
  br i1 %exitcond211.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !156

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not190, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %107 = sext i32 %72 to i64                      ; [#uses=1 type=i64]
end_hunk_4
begin_hunk_5
  br i1 %or.cond5, label %.loopexit.thread, label %216

.loopexit.thread:                                 ; preds = %.critedge.us159, %.critedge.us.us, %.preheader, %.loopexit
  %.1105241 = phi i32 [ %.1105, %.loopexit ], [ %90, %.critedge.us.us ], [ 0, %.preheader ], [ %121, %.critedge.us159 ] ; [#uses=2 type=i32]
  %.1115239 = phi i32 [ %.1115, %.loopexit ], [ %91, %.critedge.us.us ], [ 0, %.preheader ], [ %122, %.critedge.us159 ] ; [#uses=1 type=i32]
  %138 = icmp eq i32 %.1115239, %70               ; [#uses=1 type=i1]
  %139 = and i32 %.fr, 64                         ; [#uses=1 type=i32]
  %140 = icmp eq i32 %139, 0                      ; [#uses=1 type=i1]
  %or.cond7 = select i1 %140, i1 true, i1 %138    ; [#uses=1 type=i1]
  br i1 %or.cond7, label %.thread, label %216

.thread:                                          ; preds = %.loopexit.thread, %67
  %.2106 = phi i32 [ 0, %67 ], [ %.1105241, %.loopexit.thread ] ; [#uses=4 type=i32]
  %141 = load ptr, ptr %15, align 8, !tbaa !149   ; [#uses=1 type=ptr]
  %142 = load ptr, ptr %9, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %143 = load ptr, ptr %17, align 8, !tbaa !148   ; [#uses=1 type=ptr]
end_hunk_5
begin_hunk_6
  %146 = load i32, ptr %145, align 8, !tbaa !153  ; [#uses=1 type=i32]
  %147 = add nsw i32 %146, -1                     ; [#uses=1 type=i32]
  call void @hashTypeTryConversion(ptr noundef %141, ptr noundef %142, ptr noundef %143, i32 noundef %144, i32 noundef %147)
  %148 = and i32 %.fr, 15                         ; [#uses=1 type=i32]
  %.not124 = icmp eq i32 %148, 0                  ; [#uses=1 type=i1]
  br i1 %.not124, label %149, label %.thread242

149:                                              ; preds = %.thread
  %150 = load i32, ptr %4, align 4, !tbaa !9      ; [#uses=3 type=i32]
  %151 = icmp sgt i32 %150, 0                     ; [#uses=2 type=i1]
  br i1 %151, label %.lr.ph180.split.us.preheader, label %._crit_edge

.thread242:                                       ; preds = %.thread
  %152 = load ptr, ptr %17, align 8, !tbaa !148   ; [#uses=1 type=ptr]
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 8 ; [#uses=1 type=ptr]
  %154 = load ptr, ptr %153, align 8, !tbaa !72   ; [#uses=1 type=ptr]
end_hunk_6
begin_hunk_7
  %159 = icmp sgt i32 %158, 0                     ; [#uses=4 type=i1]
  br i1 %159, label %.lr.ph180.split.preheader, label %.thread135

.lr.ph180.split.preheader:                        ; preds = %.thread242
  %160 = and i32 %.fr, 47                         ; [#uses=1 type=i32]
  %.not129243 = icmp eq i32 %160, 0               ; [#uses=1 type=i1]
  %spec.select244 = select i1 %.not129243, i32 0, i32 4 ; [#uses=1 type=i32]
  %161 = load i64, ptr %6, align 8                ; [#uses=1 type=i64]
  %162 = sext i32 %144 to i64                     ; [#uses=1 type=i64]
  %wide.trip.count220 = zext nneg i32 %158 to i64 ; [#uses=1 type=i64]
  br label %.lr.ph180.split

.lr.ph180.split.us.preheader:                     ; preds = %149
  %163 = lshr exact i32 %.fr, 3                   ; [#uses=1 type=i32]
  %spec.select = and i32 %163, 4                  ; [#uses=1 type=i32]
  %164 = sext i32 %144 to i64                     ; [#uses=1 type=i64]
  %wide.trip.count225 = zext nneg i32 %150 to i64 ; [#uses=1 type=i64]
  br label %.lr.ph180.split.us

.lr.ph180.split.us:                               ; preds = %.lr.ph180.split.us.preheader, %.lr.ph180.split.us
  %indvars.iv222 = phi i64 [ 0, %.lr.ph180.split.us.preheader ], [ %indvars.iv.next223, %.lr.ph180.split.us ] ; [#uses=2 type=i64]
  %165 = load ptr, ptr %17, align 8, !tbaa !148   ; [#uses=1 type=ptr]
  %.idx234 = shl i64 %indvars.iv222, 4            ; [#uses=1 type=i64]
  %166 = getelementptr i8, ptr %165, i64 %.idx234 ; [#uses=1 type=ptr]
  %167 = getelementptr [8 x i8], ptr %166, i64 %164 ; [#uses=2 type=ptr]
  %168 = load ptr, ptr %167, align 8, !tbaa !72   ; [#uses=1 type=ptr]
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 8 ; [#uses=1 type=ptr]
end_hunk_7
begin_hunk_8
  %175 = load ptr, ptr %15, align 8, !tbaa !149   ; [#uses=1 type=ptr]
  %176 = load ptr, ptr %9, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %177 = call i32 @hashTypeSet(ptr noundef %175, ptr noundef %176, ptr noundef %170, ptr noundef %174, i32 noundef %spec.select) ; [#uses=0 type=i32]
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; [#uses=2 type=i64]
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225 ; [#uses=1 type=i1]
  br i1 %exitcond226.not, label %._crit_edge, label %.lr.ph180.split.us, !llvm.loop !157

._crit_edge.loopexit191:                          ; preds = %.lr.ph180.split
  %178 = icmp ne i32 %197, 0                      ; [#uses=1 type=i1]
  %179 = icmp eq i32 %200, 0                      ; [#uses=1 type=i1]
  br label %.thread135

.lr.ph180.split:                                  ; preds = %.lr.ph180.split.preheader, %.lr.ph180.split
  %indvars.iv217 = phi i64 [ 0, %.lr.ph180.split.preheader ], [ %indvars.iv.next218, %.lr.ph180.split ] ; [#uses=2 type=i64]
  %.0179 = phi i32 [ 0, %.lr.ph180.split.preheader ], [ %197, %.lr.ph180.split ] ; [#uses=1 type=i32]
  %.0100178 = phi i32 [ 0, %.lr.ph180.split.preheader ], [ %200, %.lr.ph180.split ] ; [#uses=1 type=i32]
  %180 = load ptr, ptr %17, align 8, !tbaa !148   ; [#uses=1 type=ptr]
  %.idx233 = shl i64 %indvars.iv217, 4            ; [#uses=1 type=i64]
  %181 = getelementptr i8, ptr %180, i64 %.idx233 ; [#uses=1 type=ptr]
  %182 = getelementptr [8 x i8], ptr %181, i64 %162 ; [#uses=2 type=ptr]
  %183 = load ptr, ptr %182, align 8, !tbaa !72   ; [#uses=1 type=ptr]
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 8 ; [#uses=1 type=ptr]
end_hunk_8
begin_hunk_9
  %189 = load ptr, ptr %188, align 8, !tbaa !15   ; [#uses=1 type=ptr]
  %190 = load ptr, ptr %15, align 8, !tbaa !149   ; [#uses=1 type=ptr]
  %191 = load ptr, ptr %9, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %192 = call i32 @hashTypeSet(ptr noundef %190, ptr noundef %191, ptr noundef %185, ptr noundef %189, i32 noundef %spec.select244) ; [#uses=0 type=i32]
  %193 = load ptr, ptr %9, align 8, !tbaa !72     ; [#uses=1 type=ptr]
  %194 = call i32 @hashTypeSetEx(ptr noundef %193, ptr noundef %185, i64 noundef %161, ptr noundef nonnull %7) ; [#uses=2 type=i32]
  %195 = icmp eq i32 %194, 1                      ; [#uses=1 type=i1]
end_hunk_9
begin_hunk_10
  %198 = icmp eq i32 %194, 2                      ; [#uses=1 type=i1]
  %199 = zext i1 %198 to i32                      ; [#uses=1 type=i32]
  %200 = add nuw nsw i32 %.0100178, %199          ; [#uses=2 type=i32]
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; [#uses=2 type=i64]
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220 ; [#uses=1 type=i1]
  br i1 %exitcond221.not, label %._crit_edge.loopexit191, label %.lr.ph180.split, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph180.split.us, %149
  %201 = sext i32 %150 to i64                     ; [#uses=1 type=i64]
end_hunk_10
begin_hunk_11
  store i64 %203, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  br label %216

.thread135:                                       ; preds = %._crit_edge.loopexit191, %.thread242
  %.0.lcssa253 = phi i1 [ false, %.thread242 ], [ %178, %._crit_edge.loopexit191 ] ; [#uses=3 type=i1]
  %.0100.lcssa248 = phi i1 [ true, %.thread242 ], [ %179, %._crit_edge.loopexit191 ] ; [#uses=1 type=i1]
  call void @hashTypeSetExDone(ptr noundef nonnull %7)
  %204 = sext i32 %158 to i64                     ; [#uses=1 type=i64]
  %205 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152 ; [#uses=1 type=i64]
  %206 = add nsw i64 %205, %204                   ; [#uses=1 type=i64]
  store i64 %206, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  br i1 %.0100.lcssa248, label %208, label %207

207:                                              ; preds = %.thread135
  call void @preventCommandPropagation(ptr noundef nonnull %0) #14
  br label %216

208:                                              ; preds = %.thread135
  %209 = and i32 %.fr, 8                          ; [#uses=1 type=i32]
  %.not126 = icmp eq i32 %209, 0                  ; [#uses=1 type=i1]
  br i1 %.not126, label %210, label %216

end_hunk_11
begin_hunk_12
216:                                              ; preds = %207, %210, %208, %._crit_edge, %.loopexit.thread, %.loopexit
  %.sink = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ 1, %._crit_edge ], [ 1, %208 ], [ 1, %210 ], [ 1, %207 ] ; [#uses=1 type=i64]
  %.1108 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ %151, %._crit_edge ], [ %159, %208 ], [ %159, %210 ], [ %159, %207 ] ; [#uses=2 type=i1]
  %.3 = phi i32 [ %.1105241, %.loopexit.thread ], [ %.1105, %.loopexit ], [ %.2106, %._crit_edge ], [ %.2106, %208 ], [ %.2106, %210 ], [ %.2106, %207 ] ; [#uses=1 type=i32]
  %.2102 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ false, %208 ], [ false, %210 ], [ true, %207 ] ; [#uses=2 type=i1]
  %.2 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ %.0.lcssa253, %208 ], [ %.0.lcssa253, %210 ], [ %.0.lcssa253, %207 ] ; [#uses=1 type=i1]
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.sink) #14
  %217 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62 ; [#uses=1 type=i32]
  %.not127 = icmp eq i32 %217, 0                  ; [#uses=1 type=i1]
end_hunk_12
begin_hunk_13

hashTypeLength.exit:                              ; preds = %36, %48, %41
  %.1.i = phi i64 [ %40, %36 ], [ %55, %48 ], [ %47, %41 ] ; [#uses=1 type=i64]
  %57 = load i32, ptr %5, align 4, !tbaa !9       ; [#uses=1 type=i32]
  %.fr = freeze i32 %57                           ; [#uses=3 type=i32]
  %.not121 = icmp eq i32 %.fr, 0                  ; [#uses=3 type=i1]
  br i1 %.not121, label %64, label %58

58:                                               ; preds = %hashTypeLength.exit
end_hunk_13
begin_hunk_14

.lr.ph:                                           ; preds = %64
  %69 = add nsw i32 %67, %65                      ; [#uses=1 type=i32]
  %70 = and i32 %.fr, 16                          ; [#uses=1 type=i32]
  %.not128 = icmp eq i32 %70, 0                   ; [#uses=1 type=i1]
  %71 = sext i32 %67 to i64                       ; [#uses=2 type=i64]
  %72 = sext i32 %69 to i64                       ; [#uses=2 type=i64]
end_hunk_14
begin_hunk_15
  br i1 %140, label %200, label %158

158:                                              ; preds = %157
  %159 = and i32 %.fr, 16                         ; [#uses=1 type=i32]
  %.not127 = icmp eq i32 %159, 0                  ; [#uses=1 type=i1]
  %160 = load ptr, ptr %13, align 8, !tbaa !148   ; [#uses=1 type=ptr]
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8 ; [#uses=1 type=ptr]
end_hunk_15
