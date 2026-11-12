Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_slider?download=true
inline.NumInlined: 48
inline.NumDeleted: 9
begin_hunk_0_@lv_slider_set_value:bb.a
bb.a:
  tail call void @lv_bar_set_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #6
  ret void
}

declare void @lv_bar_set_value(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_start_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_start_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #6
  ret void
}

declare void @lv_bar_set_start_value(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  ret void
}

declare void @lv_bar_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_min_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_min_value(ptr noundef %0, i32 noundef %1) #6
  ret void
}

declare void @lv_bar_set_min_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_max_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_max_value(ptr noundef %0, i32 noundef %1) #6
  ret void
}

declare void @lv_bar_set_max_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_mode(ptr noundef %0, i32 noundef %1) #6
  ret void
}

declare void @lv_bar_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_slider_set_orientation(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_bar_set_orientation(ptr noundef %0, i32 noundef %1) #6
  ret void
}

declare void @lv_bar_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_left_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_start_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_start_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_min_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_min_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_min_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @lv_slider_get_max_value(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_max_value(ptr noundef %0) #6
  ret i32 %i.a
}

declare i32 @lv_bar_get_max_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_slider_get_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_mode(ptr noundef %0) #6 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp4 = icmp eq i32 %i.a, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 1, i32 %switch.select
  ret i32 %switch.select5
}

declare i32 @lv_bar_get_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_slider_get_orientation(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_bar_get_orientation(ptr noundef %0) #6 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.a, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp4 = icmp eq i32 %i.a, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 1, i32 %switch.select
  ret i32 %switch.select5
}

declare i32 @lv_bar_get_orientation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @lv_slider_is_symmetrical(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @lv_bar_is_symmetrical(ptr noundef %0) #6
  ret i1 %i.a
}

declare zeroext i1 @lv_bar_is_symmetrical(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @lv_slider_bind_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %.preheader16, label %bb.c

.preheader16:                                     ; preds = %bb.b, %.preheader16
  br label %.preheader16

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 14
  %switch = icmp eq i32 %i.c, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @lv_obj_add_event_cb(ptr noundef nonnull %0, ptr noundef nonnull @slider_value_changed_event_cb, i32 noundef 35, ptr noundef nonnull %1) #6 ; 0 uses
  %i.e = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %1, ptr noundef nonnull @slider_value_observer_cb, ptr noundef nonnull %0, ptr noundef null) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @slider_value_changed_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_current_target(ptr noundef %0) #6
  %i.b = tail call ptr @lv_event_get_user_data(ptr noundef %0) #6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 15
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @lv_bar_get_value(ptr noundef %i.a) #6
  tail call void @lv_subject_set_int(ptr noundef nonnull %i.b, i32 noundef %i.g) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @slider_value_observer_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @lv_observer_get_target_obj(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %2 = load i32, ptr %i.f, align 2
  %3 = and i32 %2, 65536
  %4 = icmp ne i32 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  tail call void @lv_bar_set_value(ptr noundef %i.h, i32 noundef %i.j, i1 noundef zeroext %4) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_ext_click_area(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_display_get_dpi(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_point_on(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_indev_get_point(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare void @lv_obj_transform_point(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_knob_pos(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_point_t, align 4         ; 8 uses
  %3 = alloca %struct.lv_point_t, align 4         ; 9 uses
  %i.a = tail call ptr @lv_indev_active() #6      ; 4 uses
  %i.b = tail call i32 @lv_indev_get_type(ptr noundef %i.a) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @lv_indev_get_scroll_obj(ptr noundef %i.a) #6
  %.not97 = icmp eq ptr %i.c, null
  br i1 %.not97, label %bb.c, label %bb.ap

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @lv_indev_get_point(ptr noundef %i.a, ptr noundef nonnull %3) #6
  call void @lv_obj_transform_point(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = lshr i8 %i.e, 3
  %i.g = and i8 %i.f, 7
  switch i8 %i.g, label %bb.e [
    i8 0, label %bb.d
    i8 1, label %is_slider_horizontal.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.i = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.j = icmp sge i32 %i.h, %i.i
  br label %is_slider_horizontal.exit

bb.e:                                             ; preds = %bb.c
  br label %is_slider_horizontal.exit

is_slider_horizontal.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.j, %bb.d ], [ false, %bb.e ], [ true, %bb.c ] ; 3 uses
  br i1 %1, label %bb.f, label %bb.k

bb.f:                                             ; preds = %is_slider_horizontal.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 1
  %.not98 = icmp eq i8 %i.m, 0
  br i1 %.not98, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %.0.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %3, align 4, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50
  %i.q = sub nsw i32 %i.n, %i.p
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52
  %i.v = sub nsw i32 %i.s, %i.u
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %i.q, %bb.h ], [ %i.v, %bb.i ]
  %i.x = call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.z = load i8, ptr %i.y, align 8, !tbaa !58
  %i.aa = zext i8 %i.z to i32
  %.not99 = icmp samesign ult i32 %i.x, %i.aa
  br i1 %.not99, label %bb.ao, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %is_slider_horizontal.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %.not100 = icmp eq ptr %i.ac, null
  br i1 %.not100, label %bb.l, label %bb.ac

bb.l:                                             ; preds = %bb.k
  %i.ad = call i32 @lv_bar_get_mode(ptr noundef nonnull %0) #6
  %switch.selectcmp.i.not.i = icmp eq i32 %i.ad, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 10 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.ae, align 8
  br i1 %switch.selectcmp.i.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = call ptr @lv_indev_active() #6
  call void @lv_indev_get_point(ptr noundef %i.ai, ptr noundef nonnull %2) #6
  call void @lv_obj_transform_point(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 3) #6
  %i.aj = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -127) #6
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 1                    ; 2 uses
  %i.an = load i8, ptr %i.d, align 8
  %i.ao = lshr i8 %i.an, 3
  %i.ap = and i8 %i.ao, 7
  switch i8 %i.ap, label %is_slider_horizontal.exit.thread111.i [
    i8 0, label %is_slider_horizontal.exit.i
    i8 1, label %is_slider_horizontal.exit.thread.i
  ]

is_slider_horizontal.exit.thread.i:               ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !28, !range !29, !noundef !30
  %i.as = zext i1 %i.am to i8
  %.not109.i = icmp eq i8 %i.ar, %i.as
  br i1 %.not109.i, label %bb.p, label %.critedge.i

is_slider_horizontal.exit.thread111.i:            ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load i8, ptr %i.at, align 8, !tbaa !28, !range !29, !noundef !30
  %.not113.i = icmp eq i8 %i.au, 0
  br i1 %.not113.i, label %bb.w, label %.critedge103.i

is_slider_horizontal.exit.i:                      ; preds = %bb.n
  %i.av = call i32 @lv_obj_get_width(ptr noundef nonnull %0) #6
  %i.aw = call i32 @lv_obj_get_height(ptr noundef nonnull %0) #6
  %i.ax = icmp sge i32 %i.av, %i.aw               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !28, !range !29, !noundef !30
  %i.ba = and i1 %i.am, %i.ax
  %i.bb = zext i1 %i.ba to i8
  %.not.i = icmp eq i8 %i.az, %i.bb               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.v

bb.o:                                             ; preds = %is_slider_horizontal.exit.i
  br i1 %.not.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o, %is_slider_horizontal.exit.thread.i
  %i.bc = load i32, ptr %2, align 4, !tbaa !49    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.q, label %.critedge99.i

.critedge.i:                                      ; preds = %bb.o, %is_slider_horizontal.exit.thread.i
  %i.bg = load i32, ptr %2, align 4, !tbaa !49    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.q, label %.critedge101.i

bb.q:                                             ; preds = %.critedge.i, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bk, ptr %i.ab, align 8, !tbaa !22
  br label %drag_start.exit

.critedge99.i:                                    ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !61 ; 2 uses
  %i.bn = icmp slt i32 %i.bc, %i.bm
  br i1 %i.bn, label %bb.r, label %.critedge99._crit_edge.i

.critedge99._crit_edge.i:                         ; preds = %.critedge99.i
  %.phi.trans.insert123.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.pre124.i = load i32, ptr %.phi.trans.insert123.i, align 8, !tbaa !62
  %.phi.trans.insert125.i = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_0
