inline.NumInlined: 54
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, -7) i32 @init_top_bot_planes(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef captures(none) initializes((0, 8)) %3, ptr noundef captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %1, 2                           ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #7 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !8
end_hunk_0
begin_hunk_1_@init_top_bot_planes:bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !8      ; 7 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !8      ; 7 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 7 uses
  %min.iters.check = icmp ult i32 %1, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
end_hunk_1
