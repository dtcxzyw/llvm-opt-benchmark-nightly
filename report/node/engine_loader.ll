begin_hunk_0
bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.g, label %bb.e [
    i32 0, label %bb.d
    i32 4, label %bb.d
  ]
end_hunk_0
begin_hunk_1
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = tail call ptr @ENGINE_load_private_key(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %1, ptr noundef %2) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %.pre = load i32, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  br i1 %i.l, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.m = icmp eq i32 %.pre, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread
  %3 = phi i32 [ %i.g, %bb.c ], [ %.pre, %.thread ], [ %.pre, %bb.d ]
  %.02634 = phi ptr [ null, %bb.c ], [ null, %.thread ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = icmp eq i32 %3, 3
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.thread
end_hunk_1
