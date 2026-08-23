Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_observer?download=true
inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@lv_obj_remove_from_subject:bb.a
  %i.o = tail call ptr @lv_obj_get_event_dsc(ptr noundef nonnull %0, i32 noundef %.019) #10 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = icmp eq ptr %i.p, @unsubscribe_on_delete_cb
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @lv_observer_remove(ptr noundef nonnull %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph.split
  %i.v = add nsw i32 %.019, -1
  %i.w = icmp sgt i32 %.019, 0
  br i1 %i.w, label %.lr.ph.split, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.b, %bb.c
  %i.x = tail call i32 @lv_obj_remove_event_cb_with_user_data(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1) #10 ; 0 uses
  ret void
}

declare i32 @lv_event_get_count(ptr noundef) local_unnamed_addr #1

declare ptr @lv_obj_get_event_dsc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @lv_observer_get_target(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @lv_subject_notify(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @lv_ll_get_head(ptr noundef nonnull %0) #10 ; 2 uses
  %.not2127 = icmp eq ptr %i.a, null
  br i1 %.not2127, label %.preheader26, label %.lr.ph

.preheader26:                                     ; preds = %.lr.ph, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.028 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.028, i64 32 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -3
  store i8 %i.e, ptr %i.c, align 8
  %i.f = tail call ptr @lv_ll_get_next(ptr noundef nonnull %0, ptr noundef nonnull %.028) #10 ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %.preheader26, label %.lr.ph, !llvm.loop !34

bb.c:                                             ; preds = %.preheader26, %._crit_edge
  %i.g = phi i32 [ %.pre, %.preheader26 ], [ %i.u, %._crit_edge ]
  %i.h = and i32 %i.g, -268435457
  store i32 %i.h, ptr %i.b, align 8
  %i.i = tail call ptr @lv_ll_get_head(ptr noundef nonnull %0) #10 ; 2 uses
  %.not2229 = icmp eq ptr %i.i, null
  br i1 %.not2229, label %._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.c, %bb.g
  %.130 = phi ptr [ %i.t, %bb.g ], [ %i.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.130, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph31
  %i.l = getelementptr inbounds nuw i8, ptr %.130, i64 32 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 2
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void %i.k(ptr noundef nonnull %.130, ptr noundef nonnull %0) #10
  %i.p = load i32, ptr %i.b, align 8
  %i.q = and i32 %i.p, 268435456
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.l, align 8
  %i.s = or i8 %i.r, 2
  store i8 %i.s, ptr %i.l, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.d, %bb.f
  %i.t = tail call ptr @lv_ll_get_next(ptr noundef nonnull %0, ptr noundef nonnull %.130) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.t, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph31, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.c
  %i.u = load i32, ptr %i.b, align 8              ; 2 uses
  %i.v = and i32 %i.u, 268435456
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.h, label %bb.c, !llvm.loop !36

bb.h:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @lv_obj_add_subject_increment_event(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 14
  %switch = icmp eq i32 %i.c, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lv_malloc(i64 noundef 24) #10 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %3, ptr %i.f, align 8, !tbaa !37
  store ptr %1, ptr %i.d, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i8 0, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -2147483648, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 2147483647, ptr %i.i, align 4, !tbaa !43
  %i.j = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @subject_increment_cb, i32 noundef %2, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.k = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @lv_event_free_user_data_cb, i32 noundef 42, ptr noundef nonnull %i.d) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.1 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @subject_increment_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_user_data(ptr noundef %0) #10 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %lv_subject_get_int.exit, label %lv_subject_set_int.exit

lv_subject_get_int.exit:                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !37
  %i.t = add nsw i32 %i.s, %i.q                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.v = load i8, ptr %i.u, align 4, !tbaa !41, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.b, label %bb.d

bb.b:                                             ; preds = %lv_subject_get_int.exit
  %i.x = icmp sgt i32 %i.t, %.
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp slt i32 %i.t, %i.o
  %spec.select = select i1 %i.y, i32 %., i32 %i.t
  br label %bb.e

bb.d:                                             ; preds = %lv_subject_get_int.exit
  %i.z = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.)
  %.39 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0 = phi i32 [ %.39, %bb.d ], [ %i.o, %bb.b ], [ %spec.select, %bb.c ]
  %..i = tail call i32 @llvm.smin.i32(i32 %.0, i32 %i.j)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %..i) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.q, ptr %i.aa, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.p, align 8, !tbaa !8
  %.not.i.i = icmp eq i32 %spec.select.i, %i.q
  br i1 %.not.i.i, label %lv_subject_set_int.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.e
  tail call void @lv_subject_notify(ptr noundef nonnull %i.b)
  br label %lv_subject_set_int.exit

lv_subject_set_int.exit:                          ; preds = %.sink.split.i.i, %bb.e, %bb.a
  ret void
}

declare void @lv_event_free_user_data_cb(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @lv_obj_set_subject_increment_event_min_value(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %2, ptr %i.a, align 8, !tbaa !42
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %lv_subject_set_int.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.i = icmp slt i32 %i.h, %2
  br i1 %i.i, label %bb.d, label %lv_subject_set_int.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8
  %..i = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.m)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %..i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.h, ptr %i.n, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !8
  %.not.i.i = icmp eq i32 %spec.select.i, %i.h
  br i1 %.not.i.i, label %lv_subject_set_int.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d
  tail call void @lv_subject_notify(ptr noundef nonnull %i.b)
  br label %lv_subject_set_int.exit

lv_subject_set_int.exit:                          ; preds = %.sink.split.i.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_set_subject_increment_event_max_value(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %2, ptr %i.a, align 4, !tbaa !43
  %i.b = load ptr, ptr %1, align 8, !tbaa !40     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %lv_subject_set_int.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %i.i = icmp sgt i32 %i.h, %2
  br i1 %i.i, label %bb.d, label %lv_subject_set_int.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !8
  %..i = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.m)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %..i) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %i.h, ptr %i.n, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !8
  %.not.i.i = icmp eq i32 %spec.select.i, %i.h
  br i1 %.not.i.i, label %lv_subject_set_int.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.d
  tail call void @lv_subject_notify(ptr noundef nonnull %i.b)
  br label %lv_subject_set_int.exit

lv_subject_set_int.exit:                          ; preds = %.sink.split.i.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_obj_set_subject_increment_event_rollover(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.a, ptr %i.b, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_add_subject_toggle_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 15
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @subject_toggle_cb, i32 noundef %2, ptr noundef nonnull %1) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subject_toggle_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_user_data(ptr noundef %0) #10 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15
  %.not.i = icmp eq i32 %i.d, 2
  br i1 %.not.i, label %bb.b, label %lv_subject_set_int.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  %.not6 = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not6 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8
  %..i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.k)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %..i) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %i.f, ptr %i.l, align 8, !tbaa !8
  store i32 %spec.select.i, ptr %i.e, align 8, !tbaa !8
  %.not.i.i = icmp eq i32 %spec.select.i, %i.f
  br i1 %.not.i.i, label %lv_subject_set_int.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b
  tail call void @lv_subject_notify(ptr noundef nonnull %i.a)
  br label %lv_subject_set_int.exit

lv_subject_set_int.exit:                          ; preds = %bb.a, %bb.b, %.sink.split.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_add_subject_set_int_event(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 15
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lv_malloc(i64 noundef 16) #10 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %3, ptr %i.f, align 8, !tbaa !48
  %i.g = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @subject_set_int_cb, i32 noundef %2, ptr noundef nonnull %i.d) #10 ; 0 uses
end_hunk_0
