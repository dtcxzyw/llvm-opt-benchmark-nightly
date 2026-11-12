Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_scale?download=true
inline.NumInlined: 80
inline.NumDeleted: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_scale_needle_t = type { ptr, i32, i32 }
%struct.lv_draw_line_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_point_precise_t, %struct.lv_point_precise_t, ptr, i32, %struct.lv_color_t, i32, i32, i32, i8, i8 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_precise_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_point_t = type { i32, i32 }
%union.lv_style_value_t = type { ptr }
%struct.lv_draw_arc_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_color_t, i32, i32, i32, %struct.lv_point_t, ptr, i16, i8, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_image_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_image_header_t, i32, i32, i32, i32, i32, i32, %struct.lv_point_t, %struct.lv_color_t, i8, i8, i8, ptr, ptr, %struct.lv_area_t, ptr }
%struct.lv_image_header_t = type <{ i64, i32 }>
%struct.lv_draw_label_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_point_t, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, i32, i32, %struct.lv_color_t, %struct.lv_color_t, i32, i32, i32, i8, i8, i16, ptr, %struct.lv_color_t, i32 }
%struct.lv_text_attributes_t = type { i32, i32, i32, i32 }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [9 x i8] c"lv_scale\00", align 1
@lv_scale_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_scale_constructor, ptr @lv_scale_destructor, ptr @lv_scale_event, ptr null, ptr @.str, i32 0, i32 0, i8 -127, i8 10, i8 0, [5 x i8] zeroinitializer }, align 8
@lv_line_class = external constant %struct._lv_obj_class_t, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define internal void @lv_scale_constructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @lv_ll_init(ptr noundef nonnull %i.a, i32 noundef 72) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.c = load i64, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 0, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 100, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i32 0, ptr %i.h, align 4, !tbaa !27
  %i.i = and i64 %i.c, -8589934592
  %i.j = or disjoint i64 %i.i, 1073905675
  store i64 %i.j, ptr %i.b, align 4
  store <4 x i32> <i32 270, i32 135, i32 0, i32 0>, ptr %i.e, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @lv_array_init(ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 16) #7
  tail call void @lv_obj_remove_flag(ptr noundef %1, i32 noundef 16) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_scale_destructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = tail call ptr @lv_ll_get_head(ptr noundef nonnull %i.a) #7 ; 2 uses
  tail call void @lv_ll_remove(ptr noundef nonnull %i.a, ptr noundef %i.d) #7
  tail call void @lv_free(ptr noundef %i.d) #7
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @lv_ll_clear(ptr noundef nonnull %i.a) #7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 152
  %.val = load i32, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %i.h = zext i32 %.val to i64
  %.not19 = icmp eq i32 %.val, 0
  br i1 %.not19, label %._crit_edge18, label %.lr.ph17

._crit_edge18:                                    ; preds = %.lr.ph17, %._crit_edge
  tail call void @lv_array_deinit(ptr noundef nonnull %i.f) #7
  ret void

.lr.ph17:                                         ; preds = %._crit_edge, %.lr.ph17
  %.015 = phi i64 [ %i.m, %.lr.ph17 ], [ 0, %._crit_edge ] ; 2 uses
  %i.i = trunc nuw i64 %.015 to i32
  %i.j = tail call ptr @lv_array_at(ptr noundef nonnull %i.f, i32 noundef %i.i) #7
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call i32 @lv_obj_remove_event_cb(ptr noundef %i.k, ptr noundef nonnull @needle_deleted_cb) #7 ; 0 uses
  %i.m = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %._crit_edge18, label %.lr.ph17, !llvm.loop !77
}

; Function Attrs: nounwind uwtable
define internal void @lv_scale_event(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @lv_obj_event_base(ptr noundef nonnull @lv_scale_class, ptr noundef %1) #7
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lv_event_get_code(ptr noundef %1) #7
  %i.c = tail call ptr @lv_event_get_current_target(ptr noundef %1) #7 ; 20 uses
  switch i32 %i.b, label %.loopexit [
    i32 29, label %bb.c
    i32 32, label %bb.g
    i32 27, label %bb.k
    i32 51, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 2147483648
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @scale_find_section_tick_idx(ptr noundef nonnull %i.c)
  tail call fastcc void @scale_calculate_main_compensation(ptr noundef nonnull %i.c)
  %2 = getelementptr i8, ptr %i.c, i64 120
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %.not48 = icmp eq i32 %4, 0
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @scale_draw_main(ptr noundef nonnull %i.c, ptr noundef %1)
  tail call fastcc void @scale_draw_indicator(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @scale_draw_indicator(ptr noundef nonnull %i.c, ptr noundef %1)
  tail call fastcc void @scale_draw_main(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.i = load i64, ptr %i.h, align 4
  %i.j = and i64 %i.i, 2147483648
  %.not49 = icmp eq i64 %i.j, 0
  br i1 %.not49, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @scale_find_section_tick_idx(ptr noundef nonnull %i.c)
  tail call fastcc void @scale_calculate_main_compensation(ptr noundef nonnull %i.c)
  %5 = getelementptr i8, ptr %i.c, i64 120
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %.not50 = icmp eq i32 %7, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @scale_draw_main(ptr noundef nonnull %i.c, ptr noundef %1)
  tail call fastcc void @scale_draw_indicator(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @scale_draw_indicator(ptr noundef nonnull %i.c, ptr noundef %1)
  tail call fastcc void @scale_draw_main(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %.loopexit

bb.k:                                             ; preds = %bb.b
  tail call void @lv_event_set_ext_draw_size(ptr noundef %1, i32 noundef 100) #7
  br label %.loopexit

bb.l:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.l = getelementptr i8, ptr %i.c, i64 152
  %.val = load i32, ptr %i.l, align 8, !tbaa !31  ; 2 uses
  %i.m = zext i32 %.val to i64
  %.not52 = icmp eq i32 %.val, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %.051 = phi i64 [ %i.y, %bb.o ], [ 0, %bb.l ]   ; 2 uses
  %i.n = trunc nuw i64 %.051 to i32
  %i.o = tail call ptr @lv_array_at(ptr noundef nonnull %i.k, i32 noundef %i.n) #7 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = tail call zeroext i1 @lv_obj_has_class(ptr noundef %i.p, ptr noundef nonnull @lv_line_class) #7
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  br i1 %i.q, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !35
  tail call void @lv_scale_set_line_needle_value(ptr noundef nonnull %i.c, ptr noundef %i.r, i32 noundef %i.t, i32 noundef %i.v)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  tail call void @lv_scale_set_image_needle_value(ptr noundef nonnull %i.c, ptr noundef %i.r, i32 noundef %i.x)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = add nuw nsw i64 %.051, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.m
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !79

.loopexit:                                        ; preds = %bb.o, %bb.l, %bb.e, %bb.f, %bb.c, %bb.i, %bb.j, %bb.g, %bb.k, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_scale_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_scale_class, ptr noundef %0) #7 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #7
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_scale_set_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.a, align 8, !tbaa !24
  %i.b = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_scale_set_total_tick_count(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = and i32 %1, 32767
  %i.d = zext nneg i32 %i.c to i64
  %i.e = and i64 %i.b, -32768
  %i.f = or disjoint i64 %i.e, %i.d
  store i64 %i.f, ptr %i.a, align 4
  %i.g = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_scale_set_major_tick_every(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = shl i32 %1, 15
  %i.d = and i32 %i.c, 1073709056
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i64 %i.b, -1073709057
  %i.g = or disjoint i64 %i.f, %i.e
  store i64 %i.g, ptr %i.a, align 4
  %i.h = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_scale_set_label_show(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i64, ptr %i.a, align 4
  %i.c = select i1 %1, i64 1073741824, i64 0
  %i.d = and i64 %i.b, -1073741825
  %i.e = or disjoint i64 %i.d, %i.c
  store i64 %i.e, ptr %i.a, align 4
  %i.f = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_scale_set_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %2, ptr %i.b, align 8, !tbaa !26
  %i.c = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_scale_set_min_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.a, align 4, !tbaa !25
  %i.d = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_scale_set_max_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@scale_draw_main:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 98 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 99 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 76
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %scale_set_arc_properties.exit
  %.0156 = phi ptr [ %i.ep, %.lr.ph ], [ %i.hs, %scale_set_arc_properties.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @lv_draw_arc_dsc_init(ptr noundef nonnull %9) #7
  store ptr %i.c, ptr %i.eq, align 8, !tbaa !101
  call void @lv_obj_init_draw_arc_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call fastcc void @scale_get_center(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %i.b)
  %i.fa = getelementptr inbounds nuw i8, ptr %.0156, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !47
  %i.fc = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.fd = load i32, ptr %i.dt, align 8, !tbaa !26
  %i.fe = load i32, ptr %i.dv, align 8, !tbaa !37 ; 2 uses
  %i.ff = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.fg = add i32 %i.ff, %i.fe
  %i.fh = call i32 @lv_map(i32 noundef %i.fb, i32 noundef %i.fc, i32 noundef %i.fd, i32 noundef %i.fe, i32 noundef %i.fg) #7
  %i.fi = getelementptr inbounds nuw i8, ptr %.0156, i64 28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !46
  %i.fk = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.fl = load i32, ptr %i.dt, align 8, !tbaa !26
  %i.fm = load i32, ptr %i.dv, align 8, !tbaa !37 ; 2 uses
  %i.fn = load i32, ptr %i.dx, align 4, !tbaa !36
  %i.fo = add i32 %i.fn, %i.fm
  %i.fp = call i32 @lv_map(i32 noundef %i.fj, i32 noundef %i.fk, i32 noundef %i.fl, i32 noundef %i.fm, i32 noundef %i.fo) #7
  %i.fq = load ptr, ptr %.0156, align 8, !tbaa !48 ; 6 uses
  %.not.i = icmp eq ptr %i.fq, null
  br i1 %.not.i, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.fr = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fq, i8 noundef zeroext 76, ptr noundef nonnull %2) #7
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ft = load i32, ptr %2, align 8, !tbaa !55
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fu = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 76) #7
  %i.fv = ptrtoint ptr %i.fu to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fv to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.extract.trunc.i.sink.i = phi i32 [ %i.ft, %bb.p ], [ %.sroa.0.0.extract.trunc.i.i, %bb.q ]
  store i32 %.sroa.0.0.extract.trunc.i.sink.i, ptr %i.er, align 4, !tbaa !105
  %i.fw = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fq, i8 noundef zeroext 91, ptr noundef nonnull %2) #7
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.es, ptr noundef nonnull align 8 dereferenceable(3) %2, i64 3, i1 false), !tbaa.struct !68
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 91) #7
  %i.fz = ptrtoint ptr %i.fy to i64
  %.sroa.0.0.extract.trunc.i36.i = trunc i64 %i.fz to i24
  store i24 %.sroa.0.0.extract.trunc.i36.i, ptr %i.es, align 8, !tbaa !55
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ga = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fq, i8 noundef zeroext 83, ptr noundef nonnull %2) #7
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gc = load i32, ptr %2, align 8, !tbaa !55
  %i.gd = trunc i32 %i.gc to i8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ge = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 83) #7
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = trunc i64 %i.gf to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ %i.gd, %bb.v ], [ %i.gg, %bb.w ]
  store i8 %.sink.i, ptr %i.et, align 2, !tbaa !106
  %i.gh = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fq, i8 noundef zeroext 111, ptr noundef nonnull %2) #7
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gj = load i32, ptr %2, align 8, !tbaa !55
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = load i8, ptr %i.eu, align 1
  %i.gm = and i8 %i.gk, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gn = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 111) #7
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = and i64 %i.go, 4294967295
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i8
  %i.gs = load i8, ptr %i.eu, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink167 = phi i8 [ %i.gs, %bb.z ], [ %i.gl, %bb.y ]
  %.sink166 = phi i8 [ %i.gr, %bb.z ], [ %i.gm, %bb.y ]
  %i.gt = and i8 %.sink167, -2
  %i.gu = or disjoint i8 %i.gt, %.sink166
  store i8 %i.gu, ptr %i.eu, align 1
  %i.gv = call i32 @lv_style_get_prop(ptr noundef nonnull %i.fq, i8 noundef zeroext 96, ptr noundef nonnull %2) #7
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = load ptr, ptr %2, align 8, !tbaa !55
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 96) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sink39.i = phi ptr [ %i.gx, %bb.ab ], [ %i.gy, %bb.ac ]
  store ptr %.sink39.i, ptr %i.ev, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %scale_set_arc_properties.exit

bb.ae:                                            ; preds = %bb.n
  %i.gz = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 91) #7
  %i.ha = ptrtoint ptr %i.gz to i64
  %.sroa.0.0.extract.trunc.i37.i = trunc i64 %i.ha to i24
  store i24 %.sroa.0.0.extract.trunc.i37.i, ptr %i.es, align 8, !tbaa !55
  %i.hb = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 83) #7
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = trunc i64 %i.hc to i8
  store i8 %i.hd, ptr %i.et, align 2, !tbaa !106
  %i.he = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 76) #7
  %i.hf = ptrtoint ptr %i.he to i64
  %.sroa.0.0.extract.trunc.i38.i = trunc i64 %i.hf to i32
  store i32 %.sroa.0.0.extract.trunc.i38.i, ptr %i.er, align 4, !tbaa !105
  %i.hg = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 111) #7
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = icmp ne i64 %i.hi, 0
  %i.hk = zext i1 %i.hj to i8
  %i.hl = load i8, ptr %i.eu, align 1
  %i.hm = and i8 %i.hl, -2
  %i.hn = or disjoint i8 %i.hm, %i.hk
  store i8 %i.hn, ptr %i.eu, align 1
  %i.ho = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 96) #7
  store ptr %i.ho, ptr %i.ev, align 8, !tbaa !107
  br label %scale_set_arc_properties.exit

scale_set_arc_properties.exit:                    ; preds = %bb.ad, %bb.ae
  %i.hp = load i64, ptr %10, align 8, !tbaa !28
  store i64 %i.hp, ptr %i.ew, align 8, !tbaa !28
  %i.hq = load i32, ptr %i.b, align 4, !tbaa !28
  %i.hr = trunc i32 %i.hq to i16
  store i16 %i.hr, ptr %i.ex, align 8, !tbaa !102
  store i32 %i.fh, ptr %i.ey, align 8, !tbaa !103
  store i32 %i.fp, ptr %i.ez, align 4, !tbaa !104
  call void @lv_draw_arc(ptr noundef %i.c, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %i.hs = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.eo, ptr noundef nonnull %.0156) #7 ; 2 uses
  %.not = icmp eq ptr %i.hs, null
  br i1 %.not, label %._crit_edge, label %bb.n, !llvm.loop !91

._crit_edge:                                      ; preds = %scale_set_arc_properties.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge161, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_draw_indicator(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %2 = alloca %struct.lv_area_t, align 4          ; 10 uses
  %3 = alloca %struct.lv_point_t, align 8         ; 4 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %5 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %6 = alloca %struct.lv_point_t, align 4         ; 6 uses
  %7 = alloca %struct._lv_draw_image_dsc_t, align 8 ; 7 uses
  %8 = alloca %union.lv_style_value_t, align 8    ; 10 uses
  %9 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 19 uses
  %10 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 13 uses
  %11 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 12 uses
  %12 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 5 uses
  %13 = alloca %struct.lv_point_t, align 4        ; 4 uses
  %14 = alloca %struct.lv_point_t, align 8        ; 6 uses
  %i.b = tail call ptr @lv_event_get_layer(ptr noundef %1) #7 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 32766
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %9) #7
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !111
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %10) #7
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.b, ptr %i.h, align 8, !tbaa !63
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %10) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !24
  switch i32 %i.j, label %bb.d [
    i32 16, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 109 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -5
  store i8 %i.m, ptr %i.k, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %11) #7
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.b, ptr %i.n, align 8, !tbaa !63
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %12) #7
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.b, ptr %i.o, align 8, !tbaa !63
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %12) #7
  %i.p = load i64, ptr %i.c, align 4
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 32767                      ; 3 uses
  %.not86 = icmp eq i32 %i.r, 0
  br i1 %.not86, label %._crit_edge, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.d
  %i.s = add nsw i32 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 140 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 142 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 143
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.ay
  %.06684 = phi i32 [ 0, %.lr.ph85 ], [ %i.bd, %bb.ay ] ; 2 uses
  %.06782 = phi i32 [ 0, %.lr.ph85 ], [ %i.gh, %bb.ay ] ; 8 uses
  %.val = load i64, ptr %i.c, align 4
  %i.aw = trunc i64 %.val to i32
  %i.ax = lshr i32 %i.aw, 15
  %i.ay = and i32 %i.ax, 32767                    ; 2 uses
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %scale_is_major_tick.exit.thread, label %scale_is_major_tick.exit

scale_is_major_tick.exit:                         ; preds = %bb.e
  %i.az = urem i32 %.06782, %i.ay
  %.fr = freeze i32 %i.az
  %i.ba = icmp eq i32 %.fr, 0                     ; 2 uses
  %i.bb = zext i1 %i.ba to i32
  %spec.select = add i32 %.06684, %i.bb
  br label %scale_is_major_tick.exit.thread

scale_is_major_tick.exit.thread:                  ; preds = %scale_is_major_tick.exit, %bb.e
  %i.bc = phi i1 [ false, %bb.e ], [ %i.ba, %scale_is_major_tick.exit ] ; 4 uses
  %i.bd = phi i32 [ %.06684, %bb.e ], [ %spec.select, %scale_is_major_tick.exit ] ; 2 uses
  %i.be = load i32, ptr %i.t, align 4, !tbaa !25
  %i.bf = load i32, ptr %i.u, align 8, !tbaa !26
  %i.bg = call i32 @lv_map(i32 noundef %.06782, i32 noundef 0, i32 noundef %i.s, i32 noundef %i.be, i32 noundef %i.bf) #7 ; 6 uses
  store i32 %.06782, ptr %i.v, align 4, !tbaa !112
  store i32 %i.bg, ptr %i.w, align 8, !tbaa !113
  store ptr %i.b, ptr %i.g, align 8, !tbaa !111
  %i.bh = call ptr @lv_ll_get_tail(ptr noundef nonnull %i.x) #7 ; 2 uses
  %.not80 = icmp eq ptr %i.bh, null
  br i1 %.not80, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %scale_is_major_tick.exit.thread, %bb.x
  %.081 = phi ptr [ %i.ct, %bb.x ], [ %i.bh, %scale_is_major_tick.exit.thread ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.081, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !47
  %.not71 = icmp sgt i32 %i.bj, %i.bg
  br i1 %.not71, label %bb.x, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.081, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !46
  %.not72 = icmp slt i32 %i.bl, %i.bg
  br i1 %.not72, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.bc, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.081, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 5 uses
  %.not.i73 = icmp eq ptr %i.bn, null
  br i1 %.not.i73, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  %i.bo = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 92, ptr noundef nonnull %8) #7
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.y, ptr noundef nonnull align 8 dereferenceable(3) %8, i64 3, i1 false), !tbaa.struct !68
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bq = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 92) #7
  %i.br = ptrtoint ptr %i.bq to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.br to i24
  store i24 %.sroa.0.0.extract.trunc.i.i, ptr %i.y, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 84, ptr noundef nonnull %8) #7
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %8, align 8, !tbaa !55
  %i.bv = trunc i32 %i.bu to i8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bw = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 84) #7
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = trunc i64 %i.bx to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi i8 [ %i.bv, %bb.m ], [ %i.by, %bb.n ]
  store i8 %.sink.i, ptr %i.z, align 4, !tbaa !114
  %i.bz = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 102, ptr noundef nonnull %8) #7
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load i32, ptr %8, align 8, !tbaa !55
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cc = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 102) #7
  %i.cd = ptrtoint ptr %i.cc to i64
  %.sroa.0.0.extract.trunc.i29.i = trunc i64 %i.cd to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.extract.trunc.i29.sink.i = phi i32 [ %i.cb, %bb.p ], [ %.sroa.0.0.extract.trunc.i29.i, %bb.q ]
  store i32 %.sroa.0.0.extract.trunc.i29.sink.i, ptr %i.aa, align 8, !tbaa !115
  %i.ce = call i32 @lv_style_get_prop(ptr noundef nonnull %i.bn, i8 noundef zeroext 77, ptr noundef nonnull %8) #7
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %8, align 8, !tbaa !55
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ch = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 77) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink32.i = phi ptr [ %i.cg, %bb.s ], [ %i.ch, %bb.t ]
  store ptr %.sink32.i, ptr %i.ab, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  br label %scale_set_indicator_label_properties.exit

bb.v:                                             ; preds = %bb.h
  %i.ci = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 92) #7
  %i.cj = ptrtoint ptr %i.ci to i64
  %.sroa.0.0.extract.trunc.i30.i = trunc i64 %i.cj to i24
  store i24 %.sroa.0.0.extract.trunc.i30.i, ptr %i.y, align 8, !tbaa !55
  %i.ck = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 84) #7
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = trunc i64 %i.cl to i8
  store i8 %i.cm, ptr %i.z, align 4, !tbaa !114
  %i.cn = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 102) #7
  %i.co = ptrtoint ptr %i.cn to i64
  %.sroa.0.0.extract.trunc.i31.i = trunc i64 %i.co to i32
  store i32 %.sroa.0.0.extract.trunc.i31.i, ptr %i.aa, align 8, !tbaa !115
  %i.cp = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 77) #7
  store ptr %i.cp, ptr %i.ab, align 8, !tbaa !72
  br label %scale_set_indicator_label_properties.exit

scale_set_indicator_label_properties.exit:        ; preds = %bb.u, %bb.v
  %i.cq = load ptr, ptr %i.bm, align 8, !tbaa !49
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %10, ptr noundef %i.cq, i32 noundef 131072)
  br label %.loopexit

bb.w:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %.081, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50
  call fastcc void @scale_set_line_properties(ptr noundef nonnull %0, ptr noundef %11, ptr noundef %i.cs, i32 noundef 327680)
  br label %.loopexit

bb.x:                                             ; preds = %bb.f, %.lr.ph
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %9) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 131072, ptr noundef nonnull %10) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef nonnull %0, i32 noundef 327680, ptr noundef nonnull %11) #7
  %i.ct = call ptr @lv_ll_get_prev(ptr noundef nonnull %i.x, ptr noundef nonnull %.081) #7 ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !108

.loopexit:                                        ; preds = %bb.x, %scale_is_major_tick.exit.thread, %scale_set_indicator_label_properties.exit, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #7
  call fastcc void @scale_get_tick_points(ptr noundef nonnull %0, i32 noundef %.06782, i1 noundef zeroext %i.bc, ptr noundef %13, ptr noundef %14)
  %i.cu = load i64, ptr %i.c, align 4
  %i.cv = and i64 %i.cu, 1073741824
  %i.cw = icmp ne i64 %i.cv, 0
  %or.cond = and i1 %i.bc, %i.cw
  br i1 %or.cond, label %bb.y, label %bb.av

bb.y:                                             ; preds = %.loopexit
  %i.cx = call ptr @lv_event_get_layer(ptr noundef %1) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %.not.i74 = icmp eq ptr %i.cy, null
  br i1 %.not.i74, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = and i32 %i.bd, 65535                    ; 2 uses
  %i.da = load i32, ptr %i.ad, align 4, !tbaa !41
  %.not.i.i = icmp slt i32 %i.da, %i.cz
  br i1 %.not.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = add nsw i32 %i.cz, -1
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.de, null
  br i1 %.not11.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.de, ptr %i.ae, align 8, !tbaa !73
  %i.df = load i16, ptr %i.af, align 2
  %i.dg = and i16 %i.df, -257
  store i16 %i.dg, ptr %i.af, align 2
  br label %scale_build_custom_label_text.exit.i

bb.ac:                                            ; preds = %bb.aa
  store ptr null, ptr %i.ae, align 8, !tbaa !73
  br label %scale_build_custom_label_text.exit.i

bb.ad:                                            ; preds = %bb.z
  store ptr null, ptr %i.ae, align 8, !tbaa !73
  br label %scale_build_custom_label_text.exit.i

bb.ae:                                            ; preds = %bb.y
  %i.dh = call i32 (ptr, i64, ptr, ...) @lv_snprintf(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %i.bg) #7 ; 0 uses
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !73
  %i.di = load i16, ptr %i.af, align 2
  %i.dj = or i16 %i.di, 256
  store i16 %i.dj, ptr %i.af, align 2
  br label %scale_build_custom_label_text.exit.i

scale_build_custom_label_text.exit.i:             ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.dk = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 12) #7 ; 2 uses
  %i.dl = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 13) #7 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %.sroa.0.0.extract.trunc.i.i75 = trunc i64 %i.dn to i32
  %.sroa.0.0.extract.trunc.i84.i = trunc i64 %i.dm to i32
  %i.do = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext -100) #7
  %i.dp = ptrtoint ptr %i.do to i64
  %.sroa.0.0.extract.trunc.i85.i = trunc i64 %i.dp to i32 ; 4 uses
  %i.dq = load i32, ptr %i.i, align 8, !tbaa !24
  switch i32 %i.dq, label %scale_draw_label.exit [
    i32 2, label %bb.af
    i32 4, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 16, label %bb.ag
    i32 8, label %bb.ag
  ]

bb.af:                                            ; preds = %scale_build_custom_label_text.exit.i, %scale_build_custom_label_text.exit.i, %scale_build_custom_label_text.exit.i, %scale_build_custom_label_text.exit.i
  %i.dr = insertelement <2 x ptr> poison, ptr %i.dk, i64 0
  %i.ds = insertelement <2 x ptr> %i.dr, ptr %i.dl, i64 1
  %i.dt = ptrtoint <2 x ptr> %i.ds to <2 x i64>
  %i.du = trunc <2 x i64> %i.dt to <2 x i32>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.dv = load <2 x i32>, ptr %14, align 8, !tbaa !28
  %i.dw = add nsw <2 x i32> %i.dv, %i.du
  store <2 x i32> %i.dw, ptr %3, align 8, !tbaa !28
  call fastcc void @scale_get_label_coords(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %2)
  %i.dx = and i32 %.sroa.0.0.extract.trunc.i85.i, 524287
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.aq

bb.ag:                                            ; preds = %scale_build_custom_label_text.exit.i, %scale_build_custom_label_text.exit.i
  %i.dy = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 124) #7
  %i.dz = ptrtoint ptr %i.dy to i64
  %.sroa.0.0.extract.trunc.i86.i = trunc i64 %i.dz to i32
  %i.ea = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 28) #7
  %i.eb = ptrtoint ptr %i.ea to i64
  %.sroa.0.0.extract.trunc.i87.i = trunc i64 %i.eb to i32 ; 2 uses
  %i.ec = add i32 %.sroa.0.0.extract.trunc.i87.i, 15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @lv_obj_get_content_coords(ptr noundef nonnull %0, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ed = call i32 @lv_area_get_width(ptr noundef nonnull %4) #7
  %i.ee = sdiv i32 %i.ed, 2
  %i.ef = call i32 @lv_area_get_height(ptr noundef nonnull %4) #7
  %i.eg = sdiv i32 %i.ef, 2
  %i.eh = icmp slt i32 %i.ee, %i.eg
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = call i32 @lv_area_get_width(ptr noundef nonnull %4) #7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ej = call i32 @lv_area_get_height(ptr noundef nonnull %4) #7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.in.i = phi i32 [ %i.ei, %bb.ah ], [ %i.ej, %bb.ai ]
  %i.ek = sdiv i32 %.in.i, 2                      ; 4 uses
  %i.el = load i32, ptr %4, align 4, !tbaa !74
  %i.em = add nsw i32 %i.el, %i.ek                ; 2 uses
  store i32 %i.em, ptr %5, align 4, !tbaa !39
  %i.en = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.eo = add nsw i32 %i.en, %i.ek                ; 2 uses
  store i32 %i.eo, ptr %i.ah, align 4, !tbaa !40
  %i.ep = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 131072, i8 noundef zeroext 3) #7
  %i.eq = ptrtoint ptr %i.ep to i64
  %.sroa.0.0.extract.trunc.i88.i = trunc i64 %i.eq to i32 ; 2 uses
  %i.er = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.es = mul nuw nsw i32 %.06782, 10
  %i.et = mul i32 %i.es, %i.er
  %i.eu = load i64, ptr %i.c, align 4
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 32767
  %i.ex = add nsw i32 %i.ew, -1
  %i.ey = udiv i32 %i.et, %i.ex
  %i.ez = load i32, ptr %i.aj, align 8, !tbaa !37
  %reass.add.i = add i32 %i.ez, %.sroa.0.0.extract.trunc.i86.i
  %reass.mul.i = mul i32 %reass.add.i, 10
  %i.fa = add i32 %reass.mul.i, %i.ey             ; 2 uses
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !24
  switch i32 %i.fb, label %bb.am [
    i32 8, label %bb.ak
    i32 16, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fc = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.fd = add nsw i32 %i.ek, -15
  %i.fe = add i32 %.sroa.0.0.extract.trunc.i87.i, %.sroa.0.0.extract.trunc.i88.i
  %i.ff = add i32 %i.fe, %i.fc
  %i.fg = sub i32 %i.fd, %i.ff
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fh = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.fi = add i32 %i.ec, %i.ek
  %i.fj = add i32 %i.fi, %.sroa.0.0.extract.trunc.i88.i
  %i.fk = add i32 %i.fj, %i.fh
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.076.i = phi i32 [ %i.fg, %bb.ak ], [ %i.fk, %bb.al ], [ 0, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.fl = add i32 %i.em, %.sroa.0.0.extract.trunc.i.i75
  %i.fm = add i32 %i.fl, %.076.i
  store i32 %i.fm, ptr %6, align 4, !tbaa !39
  %i.fn = add nsw i32 %i.eo, %.sroa.0.0.extract.trunc.i84.i
  store i32 %i.fn, ptr %15, align 4, !tbaa !40
  %i.fo = and i32 %.sroa.0.0.extract.trunc.i85.i, 1048576
  %.not81.i = icmp eq i32 %i.fo, 0
  %i.fp = and i32 %.sroa.0.0.extract.trunc.i85.i, 524287 ; 2 uses
  br i1 %.not81.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fq = add nsw i32 %i.fa, %i.fp                ; 2 uses
  %i.fr = and i32 %.sroa.0.0.extract.trunc.i85.i, 524288
  %.not82.i = icmp eq i32 %i.fr, 0
  br i1 %.not82.i, label %bb.ap, label %.preheader.i

.preheader.i:                                     ; preds = %bb.an, %.preheader.i
  %.0.i = phi i32 [ %i.ft, %.preheader.i ], [ %i.fq, %bb.an ] ; 5 uses
  %i.fs = icmp sgt i32 %.0.i, 3600
  %i.ft = add nsw i32 %.0.i, -3600
  br i1 %i.fs, label %.preheader.i, label %bb.ao, !llvm.loop !109

bb.ao:                                            ; preds = %.preheader.i
  %i.fu = add i32 %.0.i, -901
  %or.cond.i = icmp ult i32 %i.fu, 1499
  %i.fv = add nuw nsw i32 %.0.i, 1800
  %spec.select.i = select i1 %or.cond.i, i32 %i.fv, i32 %.0.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.077.i = phi i32 [ %spec.select.i, %bb.ao ], [ %i.fq, %bb.an ], [ %i.fp, %bb.am ]
  call void @lv_point_transform(ptr noundef nonnull %6, i32 noundef %i.fa, i32 noundef 256, i32 noundef 256, ptr noundef nonnull %5, i1 noundef zeroext false) #7
  call fastcc void @scale_get_label_coords(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.af
  %.178.i = phi i32 [ %i.dx, %bb.af ], [ %.077.i, %bb.ap ] ; 2 uses
  %i.fw = icmp sgt i32 %.178.i, 0
  br i1 %i.fw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fx = call ptr @lv_draw_layer_create(ptr noundef %i.cx, i32 noundef 16, ptr noundef nonnull %2) #7 ; 2 uses
  call void @lv_draw_label(ptr noundef %i.fx, ptr noundef nonnull %9, ptr noundef nonnull %2) #7
  %i.fy = call i32 @lv_area_get_width(ptr noundef nonnull %2) #7
  %i.fz = call i32 @lv_area_get_height(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @lv_draw_image_dsc_init(ptr noundef nonnull %7) #7
  store ptr %i.fx, ptr %i.ak, align 8, !tbaa !119
  store i32 %.178.i, ptr %i.al, align 8, !tbaa !120
  %i.ga = insertelement <2 x i32> poison, i32 %i.fy, i64 0
  %i.gb = insertelement <2 x i32> %i.ga, i32 %i.fz, i64 1
  %i.gc = sdiv <2 x i32> %i.gb, splat (i32 2)
  store <2 x i32> %i.gc, ptr %i.am, align 4, !tbaa !28
  call void @lv_draw_layer(ptr noundef %i.cx, ptr noundef nonnull %7, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @lv_draw_label(ptr noundef %i.cx, ptr noundef nonnull %9, ptr noundef nonnull %2) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %16 = load i8, ptr %i.an, align 1
  %17 = and i8 %16, 1
  %.not83.i = icmp eq i8 %17, 0
  br i1 %.not83.i, label %scale_draw_label.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr %i.ae, align 8, !tbaa !73
  %18 = load i16, ptr %i.af, align 2
  %i.gd = and i16 %18, -257
  store i16 %i.gd, ptr %i.af, align 2
  br label %scale_draw_label.exit

scale_draw_label.exit:                            ; preds = %scale_build_custom_label_text.exit.i, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.av

bb.av:                                            ; preds = %scale_draw_label.exit, %.loopexit
  %i.ge = call i64 @lv_point_to_precise(ptr noundef nonnull %13) #7 ; 2 uses
  br i1 %i.bc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i64 %i.ge, ptr %i.as, align 8, !tbaa !28
  %i.gf = call i64 @lv_point_to_precise(ptr noundef nonnull %14) #7
  store i64 %i.gf, ptr %i.at, align 8, !tbaa !28
  store i32 %.06782, ptr %i.au, align 4, !tbaa !121
  store i32 %i.bg, ptr %i.av, align 8, !tbaa !122
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  store i64 %i.ge, ptr %i.ao, align 8, !tbaa !28
  %i.gg = call i64 @lv_point_to_precise(ptr noundef nonnull %14) #7
  store i64 %i.gg, ptr %i.ap, align 8, !tbaa !28
  store i32 %.06782, ptr %i.aq, align 4, !tbaa !121
  store i32 %i.bg, ptr %i.ar, align 8, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink = phi ptr [ %11, %bb.ax ], [ %10, %bb.aw ]
  call void @lv_draw_line(ptr noundef %i.b, ptr noundef nonnull %.sink) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #7
  %i.gh = add nuw nsw i32 %.06782, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.ay, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @lv_event_set_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_class(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_map(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_tail(ptr noundef) local_unnamed_addr #2

declare ptr @lv_ll_get_prev(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_line_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_set_line_properties(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((92, 95), (96, 100), (108, 109)) %1, ptr noundef %2, i32 noundef range(i32 0, 327681) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %union.lv_style_value_t, align 8    ; 8 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 75, ptr noundef nonnull %4) #7
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %4, align 8, !tbaa !55
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 75) #7
  %i.e = ptrtoint ptr %i.d to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.extract.trunc.i.sink = phi i32 [ %i.c, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sroa.0.0.extract.trunc.i.sink, ptr %i.f, align 8, !tbaa !61
  %i.g = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 90, ptr noundef nonnull %4) #7
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.i, ptr noundef nonnull align 8 dereferenceable(3) %4, i64 3, i1 false), !tbaa.struct !68
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 90) #7
  %i.k = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i28 = trunc i64 %i.k to i24
  store i24 %.sroa.0.0.extract.trunc.i28, ptr %i.i, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = call i32 @lv_style_get_prop(ptr noundef nonnull %2, i8 noundef zeroext 82, ptr noundef nonnull %4) #7
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %4, align 8, !tbaa !55
  %i.o = trunc i32 %i.n to i8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.p = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 82) #7
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = trunc i64 %i.q to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i8 [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i8 %.sink, ptr %i.s, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.u = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 90) #7
  %i.v = ptrtoint ptr %i.u to i64
  %.sroa.0.0.extract.trunc.i29 = trunc i64 %i.v to i24
  store i24 %.sroa.0.0.extract.trunc.i29, ptr %i.t, align 4, !tbaa !55
  %i.w = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 82) #7
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i8 %i.y, ptr %i.z, align 4, !tbaa !123
  %i.aa = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef range(i32 0, 327681) %3, i8 noundef zeroext 75) #7
  %i.ab = ptrtoint ptr %i.aa to i64
  %.sroa.0.0.extract.trunc.i30 = trunc i64 %i.ab to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.sroa.0.0.extract.trunc.i30, ptr %i.ac, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scale_get_tick_points(ptr noundef %0, i32 noundef range(i32 -2147483648, 32767) %1, i1 noundef zeroext %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 9 uses
  %6 = alloca %struct.lv_area_t, align 4          ; 9 uses
  %7 = alloca %struct.lv_point_t, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %5) #7
  call void @lv_obj_init_draw_line_dsc(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #7
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 131072, i8 noundef zeroext 3) #7
  %i.b = ptrtoint ptr %i.a to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.b to i32 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 327680, i8 noundef zeroext 3) #7
  %i.d = ptrtoint ptr %i.c to i64
  %.sroa.0.0.extract.trunc.i160 = trunc i64 %i.d to i32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 327680, %bb.c ], [ 131072, %bb.b ]
  %i.e = phi i32 [ %.sroa.0.0.extract.trunc.i160, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.b ] ; 4 uses
  %.0145 = phi i32 [ 0, %bb.c ], [ %.sroa.0.0.extract.trunc.i, %bb.b ] ; 3 uses
  %.0143 = phi i32 [ %.sroa.0.0.extract.trunc.i160, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef %.sink, i8 noundef zeroext 14) #7
  %.0147.in = ptrtoint ptr %i.f to i64
  %.0147 = trunc i64 %.0147.in to i32             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24
  switch i32 %i.h, label %bb.w [
    i32 2, label %bb.e
    i32 4, label %bb.e
    i32 1, label %bb.e
    i32 0, label %bb.e
    i32 16, label %bb.s
    i32 8, label %bb.s
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.i = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #7
  %i.j = ptrtoint ptr %i.i to i64
  %.sroa.0.0.extract.trunc.i162 = trunc i64 %i.j to i32 ; 4 uses
  %i.k = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 24) #7
  %i.l = ptrtoint ptr %i.k to i64
  %.sroa.0.0.extract.trunc.i163 = trunc i64 %i.l to i32
  %i.m = add nsw i32 %.sroa.0.0.extract.trunc.i163, %.sroa.0.0.extract.trunc.i162 ; 4 uses
end_hunk_1
