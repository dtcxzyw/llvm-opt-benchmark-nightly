inline.NumInlined: 146
inline.NumDeleted: 13
begin_hunk_0_@georadiusGetKeys:bb.a

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.022.lcssa = phi i32 [ -1, %bb.a ], [ %.123, %bb.d ] ; 2 uses
  %.not.not = icmp eq i32 %.022.lcssa, -1         ; 3 uses
  %i.m = select i1 %.not.not, i32 1, i32 2        ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
end_hunk_0
begin_hunk_1_@georadiusGetKeys:bb.a
bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, %i.v
  %4 = select i1 %.not.not, i64 8, i64 16         ; 2 uses
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @zrealloc(ptr noundef nonnull %i.r, i64 noundef %4) #25 ; 2 uses
  store ptr %i.w, ptr %i.n, align 8, !tbaa !118
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @zmalloc(i64 noundef %4) #23 ; 4 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !118
  %i.y = load i32, ptr %3, align 8, !tbaa !213    ; 2 uses
  %.not24.i = icmp eq i32 %i.y, 0
end_hunk_1
