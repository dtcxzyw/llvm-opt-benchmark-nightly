inline.NumInlined: 96
inline.NumDeleted: 8
begin_hunk_0_@loadAppendOnlyFiles:bb.a

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !37
  %2 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 3 uses
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
end_hunk_0
begin_hunk_1_@loadAppendOnlyFiles:bb.a

bb.m:                                             ; preds = %.thread151, %bb.l
  %i.aa = phi ptr [ %i.y, %.thread151 ], [ %i.z, %bb.l ]
  %spec.select.i155 = phi i32 [ 0, %.thread151 ], [ 1, %bb.l ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !82
  %3 = trunc i64 %i.ac to i32
  %4 = add i32 %spec.select.i155, %3
  br label %getBaseAndIncrAppendOnlyFilesNum.exit

getBaseAndIncrAppendOnlyFilesNum.exit:            ; preds = %bb.l, %bb.m
end_hunk_1
begin_hunk_2_@getBaseAndIncrAppendOnlyFilesNum
define dso_local i32 @getBaseAndIncrAppendOnlyFilesNum(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %.not = icmp ne ptr %i.a, null
  %spec.select.a = zext i1 %.not to i32           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %1 = trunc i64 %i.e to i32
  %2 = add i32 %1, %spec.select.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_2
