begin_hunk_0
define dso_local range(i32 -1, 1) i32 @hashTypeNext(ptr noundef initializes((40, 48)) %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i64, align 8                        ; 7 uses
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !96
  %.not = icmp eq i32 %4, 0
  %spec.store.select = select i1 %.not, i32 %1, i32 0 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 281474976710656, ptr %5, align 8, !tbaa !131
end_hunk_0
begin_hunk_1

67:                                               ; preds = %64, %hashTypeLength.exit
  %.0111 = phi i64 [ %66, %64 ], [ 0, %hashTypeLength.exit ]
  %68 = load i32, ptr %2, align 4, !tbaa !9       ; 8 uses
  %69 = and i32 %68, 192
  %.not123 = icmp eq i32 %69, 0
  br i1 %.not123, label %.thread, label %.preheader

end_hunk_1
begin_hunk_2

.lr.ph:                                           ; preds = %.preheader
  %72 = load i32, ptr %3, align 4, !tbaa !9       ; 3 uses
  %73 = and i32 %68, 64
  %74 = icmp eq i32 %73, 0
  %75 = and i32 %68, 128                          ; 2 uses
  %.not189 = icmp eq i32 %75, 0                   ; 2 uses
  br i1 %74, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %76 = sext i32 %72 to i64                       ; 2 uses
  %wide.trip.count214 = zext nneg i32 %70 to i64  ; 2 uses
  br i1 %.not189, label %.critedge.us.us, label %.lr.ph.split.us.split

.critedge.us.us:                                  ; preds = %.lr.ph.split.us, %.critedge.us.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %.critedge.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.0104147.us.us = phi i32 [ %90, %.critedge.us.us ], [ 0, %.lr.ph.split.us ]
  %.0114146.us.us = phi i32 [ %91, %.critedge.us.us ], [ 0, %.lr.ph.split.us ]
  %77 = load ptr, ptr %17, align 8, !tbaa !148
  %.idx231 = shl i64 %indvars.iv211, 4
  %78 = getelementptr i8, ptr %77, i64 %.idx231
  %79 = getelementptr [8 x i8], ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !72
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 8
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit.thread, label %.critedge.us.us, !llvm.loop !156

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.critedge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %.critedge.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.0104147.us = phi i32 [ %105, %.critedge.us ], [ 0, %.lr.ph.split.us ]
  %.0114146.us = phi i32 [ %106, %.critedge.us ], [ 0, %.lr.ph.split.us ]
  %92 = load ptr, ptr %17, align 8, !tbaa !148
  %.idx230 = shl i64 %indvars.iv206, 4
  %93 = getelementptr i8, ptr %92, i64 %.idx230
  %94 = getelementptr [8 x i8], ptr %93, i64 %76
  %95 = load ptr, ptr %94, align 8, !tbaa !72
  %96 = getelementptr inbounds nuw i8, ptr %95, i64 8
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count214
  br i1 %exitcond210.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !156

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not189, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %107 = sext i32 %72 to i64
end_hunk_4
begin_hunk_5
  br i1 %or.cond5, label %.loopexit.thread, label %216

.loopexit.thread:                                 ; preds = %.critedge.us159, %.critedge.us.us, %.preheader, %.loopexit
  %.1105240 = phi i32 [ %.1105, %.loopexit ], [ %90, %.critedge.us.us ], [ 0, %.preheader ], [ %121, %.critedge.us159 ] ; 2 uses
  %.1115238 = phi i32 [ %.1115, %.loopexit ], [ %91, %.critedge.us.us ], [ 0, %.preheader ], [ %122, %.critedge.us159 ]
  %138 = icmp eq i32 %.1115238, %70
  %139 = and i32 %68, 64
  %140 = icmp eq i32 %139, 0
  %or.cond7 = select i1 %140, i1 true, i1 %138
  br i1 %or.cond7, label %.thread, label %216

.thread:                                          ; preds = %.loopexit.thread, %67
  %.2106 = phi i32 [ 0, %67 ], [ %.1105240, %.loopexit.thread ] ; 4 uses
  %141 = load ptr, ptr %15, align 8, !tbaa !149
  %142 = load ptr, ptr %9, align 8, !tbaa !72
  %143 = load ptr, ptr %17, align 8, !tbaa !148
end_hunk_5
begin_hunk_6
  %146 = load i32, ptr %145, align 8, !tbaa !153
  %147 = add nsw i32 %146, -1
  call void @hashTypeTryConversion(ptr noundef %141, ptr noundef %142, ptr noundef %143, i32 noundef %144, i32 noundef %147)
  %148 = and i32 %68, 15
  %.not124 = icmp eq i32 %148, 0
  br i1 %.not124, label %149, label %.thread241

149:                                              ; preds = %.thread
  %150 = load i32, ptr %4, align 4, !tbaa !9      ; 3 uses
  %151 = icmp sgt i32 %150, 0                     ; 2 uses
  br i1 %151, label %.lr.ph180.split.us.preheader, label %._crit_edge

.thread241:                                       ; preds = %.thread
  %152 = load ptr, ptr %17, align 8, !tbaa !148
  %153 = getelementptr inbounds nuw i8, ptr %152, i64 8
  %154 = load ptr, ptr %153, align 8, !tbaa !72
end_hunk_6
begin_hunk_7
  %159 = icmp sgt i32 %158, 0                     ; 4 uses
  br i1 %159, label %.lr.ph180.split.preheader, label %.thread135

.lr.ph180.split.preheader:                        ; preds = %.thread241
  %160 = and i32 %68, 47
  %.not129242 = icmp eq i32 %160, 0
  %spec.select243 = select i1 %.not129242, i32 0, i32 4
  %161 = load i64, ptr %6, align 8
  %162 = sext i32 %144 to i64
  %wide.trip.count219 = zext nneg i32 %158 to i64
  br label %.lr.ph180.split

.lr.ph180.split.us.preheader:                     ; preds = %149
  %163 = lshr exact i32 %68, 3
  %spec.select = and i32 %163, 4
  %164 = sext i32 %144 to i64
  %wide.trip.count224 = zext nneg i32 %150 to i64
  br label %.lr.ph180.split.us

.lr.ph180.split.us:                               ; preds = %.lr.ph180.split.us.preheader, %.lr.ph180.split.us
  %indvars.iv221 = phi i64 [ 0, %.lr.ph180.split.us.preheader ], [ %indvars.iv.next222, %.lr.ph180.split.us ] ; 2 uses
  %165 = load ptr, ptr %17, align 8, !tbaa !148
  %.idx233 = shl i64 %indvars.iv221, 4
  %166 = getelementptr i8, ptr %165, i64 %.idx233
  %167 = getelementptr [8 x i8], ptr %166, i64 %164 ; 2 uses
  %168 = load ptr, ptr %167, align 8, !tbaa !72
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 8
end_hunk_7
begin_hunk_8
  %175 = load ptr, ptr %15, align 8, !tbaa !149
  %176 = load ptr, ptr %9, align 8, !tbaa !72
  %177 = call i32 @hashTypeSet(ptr noundef %175, ptr noundef %176, ptr noundef %170, ptr noundef %174, i32 noundef %spec.select)
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge, label %.lr.ph180.split.us, !llvm.loop !157

._crit_edge.loopexit190:                          ; preds = %.lr.ph180.split
  %178 = icmp ne i32 %197, 0
  %179 = icmp eq i32 %200, 0
  br label %.thread135

.lr.ph180.split:                                  ; preds = %.lr.ph180.split.preheader, %.lr.ph180.split
  %indvars.iv216 = phi i64 [ 0, %.lr.ph180.split.preheader ], [ %indvars.iv.next217, %.lr.ph180.split ] ; 2 uses
  %.0179 = phi i32 [ 0, %.lr.ph180.split.preheader ], [ %197, %.lr.ph180.split ]
  %.0100178 = phi i32 [ 0, %.lr.ph180.split.preheader ], [ %200, %.lr.ph180.split ]
  %180 = load ptr, ptr %17, align 8, !tbaa !148
  %.idx232 = shl i64 %indvars.iv216, 4
  %181 = getelementptr i8, ptr %180, i64 %.idx232
  %182 = getelementptr [8 x i8], ptr %181, i64 %162 ; 2 uses
  %183 = load ptr, ptr %182, align 8, !tbaa !72
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 8
end_hunk_8
begin_hunk_9
  %189 = load ptr, ptr %188, align 8, !tbaa !15
  %190 = load ptr, ptr %15, align 8, !tbaa !149
  %191 = load ptr, ptr %9, align 8, !tbaa !72
  %192 = call i32 @hashTypeSet(ptr noundef %190, ptr noundef %191, ptr noundef %185, ptr noundef %189, i32 noundef %spec.select243)
  %193 = load ptr, ptr %9, align 8, !tbaa !72
  %194 = call i32 @hashTypeSetEx(ptr noundef %193, ptr noundef %185, i64 noundef %161, ptr noundef nonnull %7) ; 2 uses
  %195 = icmp eq i32 %194, 1
end_hunk_9
begin_hunk_10
  %198 = icmp eq i32 %194, 2
  %199 = zext i1 %198 to i32
  %200 = add nuw nsw i32 %.0100178, %199          ; 2 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %._crit_edge.loopexit190, label %.lr.ph180.split, !llvm.loop !157

._crit_edge:                                      ; preds = %.lr.ph180.split.us, %149
  %201 = sext i32 %150 to i64
end_hunk_10
begin_hunk_11
  store i64 %203, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  br label %216

.thread135:                                       ; preds = %._crit_edge.loopexit190, %.thread241
  %.0.lcssa252 = phi i1 [ false, %.thread241 ], [ %178, %._crit_edge.loopexit190 ] ; 3 uses
  %.0100.lcssa247 = phi i1 [ true, %.thread241 ], [ %179, %._crit_edge.loopexit190 ]
  call void @hashTypeSetExDone(ptr noundef nonnull %7)
  %204 = sext i32 %158 to i64
  %205 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  %206 = add nsw i64 %205, %204
  store i64 %206, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !152
  br i1 %.0100.lcssa247, label %208, label %207

207:                                              ; preds = %.thread135
  call void @preventCommandPropagation(ptr noundef nonnull %0) #14
  br label %216

208:                                              ; preds = %.thread135
  %209 = and i32 %68, 8
  %.not126 = icmp eq i32 %209, 0
  br i1 %.not126, label %210, label %216

end_hunk_11
begin_hunk_12
216:                                              ; preds = %207, %210, %208, %._crit_edge, %.loopexit.thread, %.loopexit
  %.sink = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ 1, %._crit_edge ], [ 1, %208 ], [ 1, %210 ], [ 1, %207 ]
  %.1108 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ %151, %._crit_edge ], [ %159, %208 ], [ %159, %210 ], [ %159, %207 ] ; 2 uses
  %.3 = phi i32 [ %.1105240, %.loopexit.thread ], [ %.1105, %.loopexit ], [ %.2106, %._crit_edge ], [ %.2106, %208 ], [ %.2106, %210 ], [ %.2106, %207 ]
  %.2102 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ false, %208 ], [ false, %210 ], [ true, %207 ] ; 2 uses
  %.2 = phi i1 [ false, %.loopexit.thread ], [ false, %.loopexit ], [ false, %._crit_edge ], [ %.0.lcssa252, %208 ], [ %.0.lcssa252, %210 ], [ %.0.lcssa252, %207 ]
  call void @addReplyLongLong(ptr noundef %0, i64 noundef %.sink) #14
  %217 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !62
  %.not127 = icmp eq i32 %217, 0
end_hunk_12
begin_hunk_13

hashTypeLength.exit:                              ; preds = %36, %48, %41
  %.1.i = phi i64 [ %40, %36 ], [ %55, %48 ], [ %47, %41 ]
  %57 = load i32, ptr %5, align 4, !tbaa !9       ; 3 uses
  %.not121 = icmp eq i32 %57, 0                   ; 3 uses
  br i1 %.not121, label %64, label %58

58:                                               ; preds = %hashTypeLength.exit
end_hunk_13
begin_hunk_14

.lr.ph:                                           ; preds = %64
  %69 = add nsw i32 %67, %65
  %70 = and i32 %57, 16
  %.not128 = icmp eq i32 %70, 0
  %71 = sext i32 %67 to i64                       ; 2 uses
  %72 = sext i32 %69 to i64                       ; 2 uses
end_hunk_14
begin_hunk_15
  br i1 %140, label %200, label %158

158:                                              ; preds = %157
  %159 = and i32 %57, 16
  %.not127 = icmp eq i32 %159, 0
  %160 = load ptr, ptr %13, align 8, !tbaa !148
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
end_hunk_15
