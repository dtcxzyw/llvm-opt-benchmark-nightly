Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_scale_12?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }

@scale = internal unnamed_addr global ptr null, align 8
@lv_example_scale_12.custom_labels = internal global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr null], align 16
@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"60\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"120\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"150\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"210\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"240\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"300\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"330\00", align 1
@label = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"0\C2\B0\0AN\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\EF\81\B7\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%d\C2\B0\0A%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"NW\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_scale_12() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._lv_anim_t, align 8         ; 12 uses
  %i.a = tail call ptr @lv_screen_active() #4
  %i.b = tail call ptr @lv_scale_create(ptr noundef %i.a) #4 ; 2 uses
  store ptr %i.b, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_set_size(ptr noundef %i.b, i32 noundef 200, i32 noundef 200) #4
  %i.c = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_mode(ptr noundef %i.c, i32 noundef 8) #4
  %i.d = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_set_align(ptr noundef %i.d, i32 noundef 9) #4
  %i.e = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_total_tick_count(ptr noundef %i.e, i32 noundef 61) #4
  %i.f = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_major_tick_every(ptr noundef %i.f, i32 noundef 5) #4
  %i.g = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_set_style_length(ptr noundef %i.g, i32 noundef 5, i32 noundef 327680) #4
  %i.h = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_set_style_length(ptr noundef %i.h, i32 noundef 10, i32 noundef 131072) #4
  %i.i = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_set_style_line_width(ptr noundef %i.i, i32 noundef 3, i32 noundef 131072) #4
  %i.j = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_range(ptr noundef %i.j, i32 noundef 0, i32 noundef 360) #4
  %i.k = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_text_src(ptr noundef %i.k, ptr noundef nonnull @lv_example_scale_12.custom_labels) #4
  %i.l = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_angle_range(ptr noundef %i.l, i32 noundef 360) #4
  %i.m = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_rotation(ptr noundef %i.m, i32 noundef 270) #4
  %i.n = load ptr, ptr @scale, align 8, !tbaa !8
  %i.o = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.n, ptr noundef nonnull @draw_event_cb, i32 noundef 34, ptr noundef null) #4 ; 0 uses
  %i.p = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_obj_add_flag(ptr noundef %i.p, i32 noundef 524288) #4
  %i.q = tail call ptr @lv_screen_active() #4
  %i.r = tail call ptr @lv_label_create(ptr noundef %i.q) #4 ; 2 uses
  store ptr %i.r, ptr @label, align 8, !tbaa !8
  tail call void @lv_obj_set_width(ptr noundef %i.r, i32 noundef 100) #4
  %i.s = load ptr, ptr @label, align 8, !tbaa !8
  tail call void @lv_obj_set_align(ptr noundef %i.s, i32 noundef 9) #4
  %i.t = load ptr, ptr @label, align 8, !tbaa !8
  tail call void @lv_label_set_text(ptr noundef %i.t, ptr noundef nonnull @.str.12) #4
  %i.u = load ptr, ptr @label, align 8, !tbaa !8
  tail call void @lv_obj_set_style_text_align(ptr noundef %i.u, i32 noundef 2, i32 noundef 0) #4
  %i.v = load ptr, ptr @scale, align 8, !tbaa !8
  tail call void @lv_scale_set_rotation(ptr noundef %i.v, i32 noundef 270) #4
  %i.w = load ptr, ptr @label, align 8, !tbaa !8
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.w, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str) #4
  %i.x = load ptr, ptr @scale, align 8, !tbaa !8
  %i.y = tail call ptr @lv_label_create(ptr noundef %i.x) #4 ; 5 uses
  tail call void @lv_obj_set_align(ptr noundef %i.y, i32 noundef 2) #4
  tail call void @lv_obj_set_y(ptr noundef %i.y, i32 noundef 5) #4
  tail call void @lv_label_set_text(ptr noundef %i.y, ptr noundef nonnull @.str.13) #4
  tail call void @lv_obj_set_style_text_align(ptr noundef %i.y, i32 noundef 2, i32 noundef 0) #4
  %i.z = tail call i24 @lv_palette_main(i32 noundef 0) #4
  tail call void @lv_obj_set_style_text_color(ptr noundef %i.y, i24 %i.z, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  call void @lv_anim_init(ptr noundef nonnull %0) #4
  %i.aa = load ptr, ptr @scale, align 8, !tbaa !8
  call void @lv_anim_set_var(ptr noundef nonnull %0, ptr noundef %i.aa) #4
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %0, ptr noundef nonnull @set_heading_value) #4
  call void @lv_anim_set_duration(ptr noundef nonnull %0, i32 noundef 5000) #4
  call void @lv_anim_set_repeat_delay(ptr noundef nonnull %0, i32 noundef 500) #4
  call void @lv_anim_set_repeat_count(ptr noundef nonnull %0, i32 noundef -1) #4
  call void @lv_anim_set_reverse_duration(ptr noundef nonnull %0, i32 noundef 5000) #4
  call void @lv_anim_set_reverse_delay(ptr noundef nonnull %0, i32 noundef 500) #4
  call void @lv_anim_set_values(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 360) #4
  %i.ab = call ptr @lv_anim_start(ptr noundef nonnull %0) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  ret void
}

declare ptr @lv_scale_create(ptr noundef) local_unnamed_addr #1

declare ptr @lv_screen_active() local_unnamed_addr #1

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_align(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_total_tick_count(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_major_tick_every(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_line_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_text_src(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_scale_set_angle_range(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_scale_set_rotation(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @draw_event_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #4 ; 3 uses
  %i.b = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.a) #4 ; 3 uses
  %i.c = tail call ptr @lv_draw_task_get_label_dsc(ptr noundef %i.a) #4 ; 2 uses
  %i.d = tail call ptr @lv_draw_task_get_line_dsc(ptr noundef %i.a) #4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11
  %i.g = icmp eq i32 %i.f, 131072
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.l = tail call i24 @lv_palette_main(i32 noundef 0) #4
  store i24 %i.l, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp eq i32 %i.n, 60
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.q = tail call i24 @lv_palette_main(i32 noundef 0) #4
  store i24 %i.q, ptr %i.p, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.a
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_label_create(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_width(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_text_align(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @set_heading_value(ptr nofree readnone captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @scale, align 8, !tbaa !8
  %i.b = sub nsw i32 270, %1
  tail call void @lv_scale_set_rotation(ptr noundef %i.a, i32 noundef %i.b) #4
  %i.c = load ptr, ptr @label, align 8, !tbaa !8
  %smax.i = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.lobit.i.neg4 = ashr i32 %1, 31
  %.lobit.i = lshr i32 %1, 31
  %.neg3 = sub i32 %.lobit.i.neg4, %1
  %i.d = add i32 %.neg3, %smax.i
  %2 = udiv i32 %i.d, 360
  %3 = add nuw nsw i32 %2, %.lobit.i
  %4 = mul i32 %3, 360
  %i.e = add i32 %4, %1                           ; 2 uses
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 359) ; 2 uses
  %i.g = urem i32 %i.f, 360
  %.neg.i = sub i32 %i.g, %i.f
  %i.h = add i32 %.neg.i, %i.e                    ; 8 uses
  %i.i = icmp samesign ult i32 %i.h, 23
  br i1 %i.i, label %heading_to_cardinal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i32 %i.h, 68
  br i1 %i.j, label %heading_to_cardinal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.h, 113
  br i1 %i.k, label %heading_to_cardinal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ult i32 %i.h, 158
  br i1 %i.l, label %heading_to_cardinal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i32 %i.h, 203
  br i1 %i.m, label %heading_to_cardinal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp samesign ult i32 %i.h, 248
  br i1 %i.n, label %heading_to_cardinal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp samesign ult i32 %i.h, 293
  br i1 %i.o, label %heading_to_cardinal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp samesign ult i32 %i.h, 338
  %.str.18..str.i = select i1 %i.p, ptr @.str.18, ptr @.str
  br label %heading_to_cardinal.exit

heading_to_cardinal.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.012.i = phi ptr [ @.str.9, %bb.g ], [ @.str, %bb.a ], [ @.str.15, %bb.b ], [ @.str.3, %bb.c ], [ @.str.16, %bb.d ], [ @.str.6, %bb.e ], [ @.str.17, %bb.f ], [ %.str.18..str.i, %bb.h ]
  tail call void (ptr, ptr, ...) @lv_label_set_text_fmt(ptr noundef %i.c, ptr noundef nonnull @.str.14, i32 noundef %1, ptr noundef nonnull %.012.i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @lv_obj_set_y(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_obj_set_style_text_color(ptr noundef, i24, i32 noundef) local_unnamed_addr #1

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #1

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_repeat_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_reverse_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_reverse_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_label_dsc(ptr noundef) local_unnamed_addr #1

declare ptr @lv_draw_task_get_line_dsc(ptr noundef) local_unnamed_addr #1

declare void @lv_label_set_text_fmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS9_lv_obj_t", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 8}
!12 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !14, i64 32, !14, i64 34, !15, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !16, i64 48, !10, i64 56}
!13 = !{!"p1 _ZTS11_lv_layer_t", !10, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!16 = !{!"long", !6, i64 0}
!17 = !{!12, !5, i64 12}
end_hunk_0
