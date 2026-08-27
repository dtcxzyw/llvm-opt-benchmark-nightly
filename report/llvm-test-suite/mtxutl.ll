Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mtxutl?download=true
inline.NumInlined: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@MtxmltDouble:bb.a

._crit_edge.us.us.us:                             ; preds = %bb.b, %._crit_edge.us.us.us.unr-lcssa
  %.lcssa = phi double [ %i.aj, %._crit_edge.us.us.us.unr-lcssa ], [ %i.aq, %bb.b ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv43
  store double %.lcssa, ptr %i.ar, align 8, !tbaa !11
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %i.d
  br i1 %exitcond47.not, label %._crit_edge39.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !21

._crit_edge39.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %i.d
  br i1 %exitcond52.not, label %._crit_edge, label %.preheader33.us.us, !llvm.loop !22

._crit_edge:                                      ; preds = %._crit_edge39.split.us.us.us, %bb.a
  tail call void @free(ptr noundef %i.b) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 1) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @ReallocateCharMtx(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %2, 1
  %i.c = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call ptr @realloc(ptr noundef %i.e, i64 noundef %i.c) #20 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %2) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateCharMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.2, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0
  %i.g = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %AllocateCharVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %AllocateCharVec.exit ] ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 1) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %AllocateCharVec.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateCharVec.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.i, ptr %i.m, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !28

.loopexit:                                        ; preds = %AllocateCharVec.exit, %bb.c
  %i.n = sext i32 %0 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n
  store ptr null, ptr %i.o, align 8, !tbaa !25
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeCharMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.3, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeFloatVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatHalfMtx(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.4, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.h = sub nuw nsw i64 %wide.trip.count, %indvars.iv
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8, !tbaa !31
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.5, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %1 = sext i32 %0 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.c, i64 %1
  store ptr null, ptr %i.m, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatMtx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.6, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne i32 %1, 0
  %i.g = icmp sgt i32 %0, 0
  %or.cond = and i1 %.not, %i.g
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8, !tbaa !31
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.7, i32 noundef %0, i32 noundef %1) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  store ptr null, ptr %i.n, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatHalfMtx(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatMtx(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateIntVec(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.8, i32 noundef %0) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeIntVec(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @AllocateFloatTri(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, 1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.9, i64 31, i64 1, ptr %i.e) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %AllocateFloatVec.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %AllocateFloatVec.exit ] ; 3 uses
  %i.g = add nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %AllocateFloatVec.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %i.g to i32
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.3, i32 noundef %i.j) #18 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

AllocateFloatVec.exit:                            ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.h, ptr %i.m, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %AllocateFloatVec.exit, %.preheader
  %i.n = sext i32 %0 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n
  store ptr null, ptr %i.o, align 8, !tbaa !31
  ret ptr %i.c
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @FreeFloatTri(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ]
  tail call void @free(ptr noundef nonnull %i.b) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.d, null
end_hunk_0
