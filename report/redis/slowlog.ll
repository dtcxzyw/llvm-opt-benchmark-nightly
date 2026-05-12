inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @slowlogCreateEntry(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @zmalloc(i64 noundef 56) #7 ; 11 uses
  %i.b = icmp sgt i32 %2, 32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %2, i32 32) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.store.select, ptr %i.c, align 8, !tbaa !13
  %i.d = sext i32 %spec.store.select to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #7 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge
end_hunk_0
begin_hunk_1_@slowlogCreateEntry:bb.a
  %i.j = sub i32 %i.i, %spec.store.select
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %4 = phi ptr [ %i.f, %.lr.ph ], [ %9, %bb.s ]   ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.l = icmp eq i64 %indvars.iv, %i.k
  %or.cond = select i1 %i.b, i1 %i.l, i1 false
end_hunk_1
begin_hunk_2_@slowlogCreateEntry:bb.a
  %i.m = tail call ptr @sdsempty() #8
  %i.n = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.m, ptr noundef nonnull @.str, i32 noundef %i.j) #8
  %i.o = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.n) #8
  %5 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.k
  store ptr %i.o, ptr %6, align 8, !tbaa !22
  br label %bb.s

bb.d:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@slowlogCreateEntry:bb.a
  %i.bg = add i64 %.0.i57, -128
  %i.bh = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.an, ptr noundef nonnull @.str.1, i64 noundef %i.bg) #8
  %i.bi = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.bh) #8
  %7 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !22
  br label %bb.s

end_hunk_3
begin_hunk_4_@slowlogCreateEntry:bb.a
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sdslen.exit.thread
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %i.q, ptr %i.bm, align 8, !tbaa !22
  br label %bb.s

bb.r:                                             ; preds = %sdslen.exit.thread
  %i.bn = tail call ptr @dupStringObject(ptr noundef nonnull %i.q) #8
  %8 = load ptr, ptr %i.a, align 8, !tbaa !21     ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.q, %bb.r, %sdslen.exit58
  %9 = phi ptr [ %5, %bb.c ], [ %4, %bb.q ], [ %8, %bb.r ], [ %7, %sdslen.exit58 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !30
end_hunk_4
