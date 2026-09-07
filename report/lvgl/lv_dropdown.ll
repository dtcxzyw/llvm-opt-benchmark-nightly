Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_dropdown?download=true
inline.NumInlined: 41
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_text_attributes_t = type { i32, i32, i32, i32 }
%struct.lv_draw_label_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_point_t, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, i32, i32, %struct.lv_color_t, %struct.lv_color_t, i32, i32, i32, i8, i8, i16, ptr, %struct.lv_color_t, i32 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_image_header_t = type <{ i64, i32 }>
%struct._lv_draw_image_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_image_header_t, i32, i32, i32, i32, i32, i32, %struct.lv_point_t, %struct.lv_color_t, i8, i8, i8, ptr, ptr, %struct.lv_area_t, ptr }
%struct.lv_draw_rect_dsc_t = type { %struct.lv_draw_dsc_base_t, i32, ptr, ptr, %struct.lv_color_t, i8, i8, i8, i8, i8, i8, i8, %struct.lv_color_t, %struct.lv_grad_dsc_t, ptr, %struct.lv_color_t, i32, i8, %struct.lv_color_t, i32, i32, %struct.lv_color_t, i32, i32, i32, i32 }
%struct.lv_grad_dsc_t = type { [2 x %struct.lv_grad_stop_t], i8, i8, %union.anon, ptr }
%struct.lv_grad_stop_t = type { %struct.lv_color_t, i8, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t, %struct.lv_point_t }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [12 x i8] c"lv_dropdown\00", align 1
@lv_dropdown_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_dropdown_constructor, ptr @lv_dropdown_destructor, ptr @lv_dropdown_event, ptr null, ptr @.str, i32 130, i32 1073741823, i8 5, i8 8, i8 0, [5 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"lv_dropdown-list\00", align 1
@lv_dropdownlist_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_dropdownlist_constructor, ptr @lv_dropdownlist_destructor, ptr @lv_dropdown_list_event, ptr null, ptr @.str.1, i32 0, i32 0, i8 0, i8 5, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_text_encoded_get_char_id = external local_unnamed_addr constant ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\EF\81\B8\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Option 1\0AOption 2\0AOption 3\00", align 1
@switch.table.lv_dropdown_open = private unnamed_addr constant [4 x i8] c"\10\13\0A\0D", align 4

; Function Attrs: nounwind uwtable
define internal void @lv_dropdown_constructor(ptr nofree readnone captures(none) %0, ptr noundef initializes((72, 120)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr @.str.4, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 65535>, ptr %i.i, align 8, !tbaa !25
  %i.j = and i8 %i.f, -128
  %i.k = or disjoint i8 %i.j, 120
  store i8 %i.k, ptr %i.e, align 8
  tail call void @lv_obj_add_flag(ptr noundef %1, i32 noundef 1024) #8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %2 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.d ]      ; 3 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %4, %bb.d ]     ; 2 uses
  %3 = zext i32 %.0.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.5, i64 %3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !26
  switch i8 %i.m, label %bb.d [
    i8 0, label %bb.e
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %2, 1                            ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %2, %bb.b ], [ %i.n, %bb.c ]
  %4 = add i32 %.0.i, 1
  br label %bb.b, !llvm.loop !0

bb.e:                                             ; preds = %bb.b
  %i.p = add i32 %2, 1
  store i32 %i.p, ptr %i.i, align 8, !tbaa !27
  store i32 0, ptr %i.g, align 4, !tbaa !29
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.q = load i8, ptr %i.e, align 8               ; 3 uses
  %i.r = and i8 %i.q, 16
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %.not29.i = icmp eq ptr %i.t, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lv_free(ptr noundef nonnull %i.t) #8
  %.pre.i = load i8, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.u = phi i8 [ %.pre.i, %bb.g ], [ %i.q, %bb.f ], [ %i.q, %bb.e ]
  %i.v = or i8 %i.u, 16
  store i8 %i.v, ptr %i.e, align 8
  store ptr @.str.5, ptr %i.b, align 8, !tbaa !22
  %i.w = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %1) #8 ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not30.i = icmp eq ptr %i.x, null
  br i1 %.not30.i, label %lv_dropdown_set_options_static.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.x) #8 ; 0 uses
  br label %lv_dropdown_set_options_static.exit

lv_dropdown_set_options_static.exit:              ; preds = %bb.h, %bb.i
  %i.z = tail call ptr @lv_obj_get_screen(ptr noundef nonnull %1) #8
  %i.aa = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_dropdownlist_class, ptr noundef %i.z) #8 ; 3 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.aa) #8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  store ptr %1, ptr %i.ab, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_dropdown_destructor(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lv_obj_delete(ptr noundef nonnull %i.b) #8
  store ptr null, ptr %i.a, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %i.e = and i8 %i.d, 16
  %.not10 = icmp eq i8 %i.e, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void @lv_free(ptr noundef %i.g) #8
  %.pre = load i8, ptr %i.c, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i8 [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.i, align 8, !tbaa !22
  %i.j = and i8 %i.h, 64
  %.not11 = icmp eq i8 %i.j, 0
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  tail call void @lv_free(ptr noundef %i.l) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.m, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_dropdown_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_dropdown_class, ptr noundef %1) #8
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %.critedge95

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lv_event_get_code(ptr noundef %1) #8 ; 3 uses
  %i.c = tail call ptr @lv_event_get_current_target(ptr noundef %1) #8 ; 39 uses
  %i.d = icmp eq i32 %i.b, 19
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @lv_obj_get_group(ptr noundef %i.c) #8
  %i.f = tail call zeroext i1 @lv_group_get_editing(ptr noundef %i.e) #8
  %i.g = tail call ptr @lv_indev_active() #8
  %i.h = tail call i32 @lv_indev_get_type(ptr noundef %i.g) #8
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %.critedge95

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.e, label %lv_dropdown_close.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lv_dropdown_open(ptr noundef %i.c)
  br label %.critedge95

lv_dropdown_close.exit:                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 %i.k, ptr %i.l, align 4, !tbaa !29
  tail call void @lv_obj_remove_state(ptr noundef nonnull %i.c, i32 noundef 4) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 65535, ptr %i.m, align 4, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  tail call void @lv_obj_add_flag(ptr noundef %i.o, i32 noundef 1) #8
  %i.p = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.c, i32 noundef 39, ptr noundef null) #8 ; 0 uses
  br label %.critedge95

bb.f:                                             ; preds = %bb.b
  %i.q = and i32 %i.b, -2
  %or.cond = icmp eq i32 %i.q, 20
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not.i97 = icmp eq ptr %i.c, null
  br i1 %.not.i97, label %.preheader.i98, label %lv_dropdown_close.exit99

.preheader.i98:                                   ; preds = %bb.g, %.preheader.i98
  br label %.preheader.i98

lv_dropdown_close.exit99:                         ; preds = %bb.g
  tail call void @lv_obj_remove_state(ptr noundef nonnull %i.c, i32 noundef 4) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 65535, ptr %i.r, align 4, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  tail call void @lv_obj_add_flag(ptr noundef %i.t, i32 noundef 1) #8
  %i.u = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.c, i32 noundef 39, ptr noundef null) #8 ; 0 uses
  br label %.critedge95

bb.h:                                             ; preds = %bb.f
  switch i32 %i.b, label %.critedge95 [
    i32 11, label %bb.i
    i32 51, label %bb.j
    i32 50, label %bb.k
    i32 53, label %bb.l
    i32 17, label %bb.m
    i32 18, label %bb.z
    i32 29, label %bb.ac
  ]

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @btn_release_handler(ptr noundef %i.c)
  br label %.critedge95

bb.j:                                             ; preds = %bb.h
  %i.v = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef %i.c) #8 ; 0 uses
  br label %.critedge95

bb.k:                                             ; preds = %bb.h
  %i.w = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef %i.c) #8 ; 0 uses
  br label %.critedge95

bb.l:                                             ; preds = %bb.h
  %i.x = tail call ptr @lv_event_get_param(ptr noundef %1) #8
  %i.y = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.c, i32 noundef 0, i8 noundef zeroext 77) #8
  %i.z = tail call i32 @lv_font_get_line_height(ptr noundef %i.y) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !35
  br label %.critedge95

bb.m:                                             ; preds = %bb.h
  %i.ab = tail call i32 @lv_event_get_key(ptr noundef %1) #8 ; 2 uses
  %i.ac = and i32 %i.ab, -2
  %or.cond4 = icmp eq i32 %i.ac, 18
  br i1 %or.cond4, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not.i100 = icmp eq ptr %i.c, null
  br i1 %.not.i100, label %.preheader.i101, label %lv_dropdown_is_open.exit

.preheader.i101:                                  ; preds = %bb.n, %.preheader.i101
  br label %.preheader.i101

lv_dropdown_is_open.exit:                         ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
end_hunk_0
