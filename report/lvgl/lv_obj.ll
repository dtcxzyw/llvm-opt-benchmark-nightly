Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj?download=true
inline.NumInlined: 84
inline.NumDeleted: 38
begin_hunk_0_@update_obj_state:bb.a
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge132
  %i.cx = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #9 ; 0 uses
  tail call void @lv_obj_refresh_ext_draw_size(ptr noundef nonnull %0) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %._crit_edge132, %bb.e, %bb.f, %bb.c
  %i.cy = call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull %i.a) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_remove_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i16, ptr %i.a, align 4, !tbaa !34
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = xor i32 %1, -1
  %i.e = and i32 %i.c, %i.d                       ; 2 uses
  %.not10 = icmp eq i32 %i.e, %i.c
  br i1 %.not10, label %lv_obj_children_remove_state.exit, label %lv_obj_has_flag.exit

lv_obj_has_flag.exit:                             ; preds = %bb.b
  tail call fastcc void @update_obj_state(ptr noundef %0, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = and i32 %i.g, 4194304
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %lv_obj_children_remove_state.exit, label %bb.c

bb.c:                                             ; preds = %lv_obj_has_flag.exit
  %i.i = tail call i32 @lv_obj_get_child_count(ptr noundef nonnull %0) #9, !inline_history !97 ; 2 uses
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %lv_obj_children_remove_state.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.0.i13 = phi i32 [ %i.k, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.j = tail call ptr @lv_obj_get_child(ptr noundef nonnull %0, i32 noundef %.0.i13) #9, !inline_history !97 ; 2 uses
  %.not.i11 = icmp eq ptr %i.j, null
  br i1 %.not.i11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @lv_obj_remove_state(ptr noundef nonnull %i.j, i32 noundef %1), !inline_history !97
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.k = add nuw i32 %.0.i13, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %i.i
  br i1 %exitcond.not, label %lv_obj_children_remove_state.exit, label %.lr.ph, !llvm.loop !98

lv_obj_children_remove_state.exit:                ; preds = %bb.e, %bb.c, %lv_obj_has_flag.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_set_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lv_obj_add_state(ptr noundef %0, i32 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @lv_obj_remove_state(ptr noundef %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @lv_obj_set_radio_button(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.b = load i32, ptr %i.a, align 2
  %i.c = select i1 %1, i32 32768, i32 0
  %i.d = and i32 %i.b, -32769
  %i.e = or disjoint i32 %i.d, %i.c
  store i32 %i.e, ptr %i.a, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 65536) i32 @lv_obj_get_state(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i16, ptr %i.a, align 4, !tbaa !34
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define zeroext i1 @lv_obj_is_radio_button(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i32, ptr %i.a, align 2
  %i.c = and i32 %i.b, 32768
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @lv_obj_allocate_spec_attr(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @lv_malloc_zeroed(i64 noundef 72) #9 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %.preheader9, label %bb.d

.preheader9:                                      ; preds = %bb.c, %.preheader9
  br label %.preheader9

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 66 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2
  %i.g = or i16 %i.f, 960
  store i16 %i.g, ptr %i.e, align 2
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 66 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2
  %i.k = or i16 %i.j, 3
  store i16 %i.k, ptr %i.i, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

declare ptr @lv_malloc_zeroed(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @lv_obj_check_type(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !99
  %i.c = icmp eq ptr %i.b, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @lv_obj_has_class(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !100 ; 3 uses
  %.not = icmp ne ptr %.0, null                   ; 2 uses
  %2 = icmp ne ptr %.0, %1
  %or.cond.not = and i1 %2, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.c, !llvm.loop !101

bb.c:                                             ; preds = %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_obj_get_class(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_obj_is_valid(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_display_get_next(ptr noundef null) #9 ; 2 uses
  %.not29.not = icmp eq ptr %i.a, null
  br i1 %.not29.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.01630 = phi ptr [ %i.j, %._crit_edge ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01630, i64 840
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %.not2227.not = icmp eq i32 %i.c, 0
  br i1 %.not2227.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %.01630, i64 784
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !112

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc zeroext i1 @obj_valid_child(ptr noundef %i.g, ptr noundef %0)
  br i1 %i.i, label %.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.j = tail call ptr @lv_display_get_next(ptr noundef nonnull %.01630) #9 ; 2 uses
  %.not.not = icmp eq ptr %i.j, null
  br i1 %.not.not, label %.thread, label %.preheader

.thread:                                          ; preds = %._crit_edge, %bb.d, %bb.c, %bb.a
  %.not26 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.c ], [ false, %._crit_edge ]
  ret i1 %.not26
}

declare ptr @lv_display_get_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @obj_valid_child(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i16, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not25 = icmp eq i16 %i.d, 0
  br i1 %.not25, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !33
  %wide.trip.count = zext i16 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !114

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc zeroext i1 @obj_valid_child(ptr noundef %i.g, ptr noundef %1)
  br i1 %i.i, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b
  %.lcssa = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.lcssa
}

; Function Attrs: nounwind uwtable
define void @lv_obj_null_on_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.a, ptr noundef nonnull @null_on_delete_cb, i32 noundef 42, ptr noundef nonnull %0) #9 ; 0 uses
  ret void
}

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @null_on_delete_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_user_data(ptr noundef %0) #9
  store ptr null, ptr %i.a, align 8, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_add_screen_load_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @lv_malloc(i64 noundef 24) #9 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @lv_memset(ptr noundef nonnull %i.b, i8 noundef zeroext 0, i64 noundef 24) #9
  store i32 %3, ptr %i.b, align 8, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %4, ptr %i.c, align 4, !tbaa !117
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %5, ptr %i.d, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !82
  %i.f = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @screen_load_on_trigger_event_cb, i32 noundef %1, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.g = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @lv_event_free_user_data_cb, i32 noundef 42, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @screen_load_on_trigger_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_user_data(ptr noundef %0) #9 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.d = load i32, ptr %i.a, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !118
  tail call void @lv_screen_load_anim(ptr noundef %i.c, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h, i1 noundef zeroext false) #9
  ret void
}

declare void @lv_event_free_user_data_cb(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @lv_obj_add_screen_create_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_malloc(i64 noundef 24) #9 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @lv_memset(ptr noundef nonnull %i.a, i8 noundef zeroext 0, i64 noundef 24) #9
  store i32 %3, ptr %i.a, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %4, ptr %i.b, align 4, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %5, ptr %i.c, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !82
  %i.e = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @screen_create_on_trigger_event_cb, i32 noundef %1, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.f = tail call ptr @lv_obj_add_event_cb(ptr noundef %0, ptr noundef nonnull @lv_event_free_user_data_cb, i32 noundef 42, ptr noundef nonnull %i.a) #9 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @screen_create_on_trigger_event_cb(ptr noundef %0) #0 {
bb.a:
end_hunk_0
