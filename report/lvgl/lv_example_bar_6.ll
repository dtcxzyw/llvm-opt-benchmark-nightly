Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_bar_6?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_font_t = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr }
%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }
%struct.lv_draw_label_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_point_t, ptr, %struct.lv_color_t, i32, i32, i32, i32, i32, i32, i32, %struct.lv_color_t, %struct.lv_color_t, i32, i32, i32, i8, i8, i16, ptr, %struct.lv_color_t, i32 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }

@lv_font_montserrat_14 = external constant %struct._lv_font_t, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_bar_6() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._lv_anim_t, align 8         ; 10 uses
  %i.a = tail call ptr @lv_screen_active() #3
  %i.b = tail call ptr @lv_bar_create(ptr noundef %i.a) #3 ; 5 uses
  tail call void @lv_bar_set_range(ptr noundef %i.b, i32 noundef 0, i32 noundef 100) #3
  tail call void @lv_obj_set_size(ptr noundef %i.b, i32 noundef 200, i32 noundef 20) #3
  tail call void @lv_obj_center(ptr noundef %i.b) #3
  %i.c = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.b, ptr noundef nonnull @event_cb, i32 noundef 30, ptr noundef null) #3 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  call void @lv_anim_init(ptr noundef nonnull %0) #3
  call void @lv_anim_set_var(ptr noundef nonnull %0, ptr noundef %i.b) #3
  call void @lv_anim_set_values(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 100) #3
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %0, ptr noundef nonnull @set_value) #3
  call void @lv_anim_set_duration(ptr noundef nonnull %0, i32 noundef 4000) #3
  call void @lv_anim_set_reverse_duration(ptr noundef nonnull %0, i32 noundef 4000) #3
  call void @lv_anim_set_repeat_count(ptr noundef nonnull %0, i32 noundef -1) #3
  %i.d = call ptr @lv_anim_start(ptr noundef nonnull %0) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_bar_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare void @lv_bar_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @event_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lv_draw_label_dsc_t, align 8 ; 10 uses
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  %2 = alloca %struct.lv_point_t, align 8         ; 5 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %4 = alloca %struct.lv_area_t, align 4          ; 8 uses
  %i.b = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %1) #3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr @lv_font_montserrat_14, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = call i32 @lv_bar_get_value(ptr noundef %i.b) #3
  %i.e = call i32 (ptr, i64, ptr, ...) @lv_snprintf(ptr noundef nonnull %i.a, i64 noundef 8, ptr noundef nonnull @.str, i32 noundef %i.d) #3 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 142 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = lshr i16 %i.l, 3
  %i.n = and i16 %i.m, 31
  %i.o = zext nneg i16 %i.n to i32
  call void @lv_text_get_size(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 536870911, i32 noundef %i.o) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !25
  %i.r = load <2 x i32>, ptr %2, align 8, !tbaa !26
  %i.s = add nsw <2 x i32> %i.r, splat (i32 -1)
  store <2 x i32> %i.s, ptr %i.p, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @lv_obj_get_coords(ptr noundef %i.b, ptr noundef nonnull %4) #3
  %i.t = call i32 @lv_area_get_width(ptr noundef nonnull %4) #3
  %i.u = call i32 @lv_bar_get_value(ptr noundef %i.b) #3
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sdiv i32 %i.v, 100
  call void @lv_area_set_width(ptr noundef nonnull %4, i32 noundef %i.w) #3
  %i.x = call i32 @lv_area_get_width(ptr noundef nonnull %4) #3
  %i.y = load i32, ptr %2, align 8, !tbaa !27
  %i.z = add nsw i32 %i.y, 20
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @lv_area_align(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 8, i32 noundef -10, i32 noundef 0) #3
  %i.ab = call i24 @lv_color_white() #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @lv_area_align(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 20, i32 noundef 10, i32 noundef 0) #3
  %i.ac = call i24 @lv_color_black() #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i24 [ %i.ab, %bb.b ], [ %i.ac, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i24 %.sink, ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !29
  %i.af = load i16, ptr %i.k, align 2
  %i.ag = or i16 %i.af, 256
  store i16 %i.ag, ptr %i.k, align 2
  %i.ah = call ptr @lv_event_get_layer(ptr noundef %0) #3
  call void @lv_draw_label(ptr noundef %i.ah, ptr noundef nonnull %1, ptr noundef nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  ret void
}

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @set_value(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call void @lv_bar_set_value(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #3
  ret void
}

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_reverse_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_repeat_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare i32 @lv_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @lv_bar_get_value(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_get_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_set_width(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare void @lv_area_align(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i24 @lv_color_white() local_unnamed_addr #2

declare i24 @lv_color_black() local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_bar_set_value(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!10 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !11, i64 32, !11, i64 34, !12, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !13, i64 48, !8, i64 56}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4}
!17 = !{!"p1 _ZTS10_lv_font_t", !8, i64 0}
!18 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !8, i64 0}
!19 = !{!"", !14, i64 0, !15, i64 64, !16, i64 72, !17, i64 80, !12, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !4, i64 140, !4, i64 141, !5, i64 142, !5, i64 142, !4, i64 143, !4, i64 143, !4, i64 143, !18, i64 144, !12, i64 152, !5, i64 156}
!20 = !{!19, !17, i64 80}
!21 = !{!19, !5, i64 96}
!22 = !{!19, !5, i64 92}
!23 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!24 = !{!23, !5, i64 0}
!25 = !{!23, !5, i64 4}
!26 = !{!5, !5, i64 0}
!27 = !{!16, !5, i64 0}
!28 = !{!4, !4, i64 0}
!29 = !{!19, !15, i64 64}
end_hunk_0
