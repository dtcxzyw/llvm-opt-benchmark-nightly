Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_keyboard_3?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_image_dsc_t = type { %struct.lv_image_header_t, i32, ptr, ptr, ptr }
%struct.lv_image_header_t = type <{ i64, i32 }>
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct._lv_draw_image_dsc_t = type { %struct.lv_draw_dsc_base_t, ptr, %struct.lv_image_header_t, i32, i32, i32, i32, i32, i32, %struct.lv_point_t, %struct.lv_color_t, i8, i8, i8, ptr, ptr, %struct.lv_area_t, ptr }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"\EF\80\8C\00", align 1
@img_star = external constant %struct.lv_image_dsc_t, align 8

; Function Attrs: nounwind uwtable
define void @lv_example_keyboard_3() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_screen_active() #3
  %i.b = tail call ptr @lv_keyboard_create(ptr noundef %i.a) #3 ; 3 uses
  %i.c = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.b, ptr noundef nonnull @event_cb, i32 noundef 34, ptr noundef null) #3 ; 0 uses
  tail call void @lv_obj_add_flag(ptr noundef %i.b, i32 noundef 524288) #3
  tail call void @lv_obj_center(ptr noundef %i.b) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_keyboard_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @event_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lv_image_header_t, align 8  ; 5 uses
  %2 = alloca %struct.lv_area_t, align 4          ; 5 uses
  %3 = alloca %struct.lv_area_t, align 4          ; 4 uses
  %4 = alloca %struct._lv_draw_image_dsc_t, align 8 ; 5 uses
  %i.a = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #3 ; 2 uses
  %i.b = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #3 ; 4 uses
  %i.c = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.b) #3 ; 3 uses
  %i.d = tail call i32 @lv_keyboard_get_selected_button(ptr noundef %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @lv_obj_has_state(ptr noundef %i.a, i32 noundef 128) #3
  br i1 %i.h, label %5, label %bb.c

5:                                                ; preds = %bb.b
  br label %bb.c

bb.c:                                             ; preds = %5, %bb.b, %bb.a
  %.027 = phi i1 [ true, %5 ], [ false, %bb.b ], [ false, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = icmp eq i32 %i.j, 327680
  br i1 %i.k, label %bb.d, label %.critedge33

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.e, align 4, !tbaa !8
  %i.m = urem i32 %i.l, 19                        ; 3 uses
  %i.n = tail call ptr @lv_draw_task_get_fill_dsc(ptr noundef %i.b) #3 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 69
  br i1 %.027, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i24 @lv_palette_darken(i32 noundef %i.m, i8 noundef zeroext 3) #3
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.q = tail call i24 @lv_palette_main(i32 noundef %i.m) #3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i24 [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  store i24 %.sink, ptr %i.o, align 1
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.d
  %i.r = tail call ptr @lv_draw_task_get_label_dsc(ptr noundef %i.b) #3 ; 4 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %.critedge33, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = tail call i32 @lv_strcmp(ptr noundef %i.t, ptr noundef nonnull @.str) #3
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 140
  store i8 0, ptr %i.w, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  %i.x = call i32 @lv_image_decoder_get_info(ptr noundef nonnull @img_star, ptr noundef nonnull %1) #3
  %.not31 = icmp eq i32 %i.x, 1
  br i1 %.not31, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.y = load i64, ptr %1, align 8                ; 2 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 65535
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = lshr i64 %i.y, 48
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -1
  call void @lv_area_set(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.ac, i32 noundef %i.af) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @lv_draw_task_get_area(ptr noundef %i.b, ptr noundef nonnull %3) #3
  call void @lv_area_align(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 9, i32 noundef 0, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @lv_draw_image_dsc_init(ptr noundef nonnull %4) #3
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @img_star, ptr %i.ag, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  call void @lv_draw_image(ptr noundef %i.ai, ptr noundef nonnull %4, ptr noundef nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %.critedge33

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.ak = tail call i24 @lv_palette_lighten(i32 noundef %i.m, i8 noundef zeroext 4) #3
  store i24 %i.ak, ptr %i.aj, align 8
  br label %.critedge33

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  br label %.critedge33

.critedge33:                                      ; preds = %bb.h, %bb.l, %bb.k, %bb.c, %.critedge
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #2

declare i32 @lv_keyboard_get_selected_button(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_has_state(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_fill_dsc(ptr noundef) local_unnamed_addr #2

declare i24 @lv_palette_darken(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_label_dsc(ptr noundef) local_unnamed_addr #2

declare i32 @lv_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_image_decoder_get_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_task_get_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_align(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_image_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_image(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i24 @lv_palette_lighten(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !5, i64 12}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !13, i64 32, !13, i64 34, !14, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !15, i64 48, !11, i64 56}
!10 = !{!"p1 _ZTS9_lv_obj_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11_lv_layer_t", !11, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!15 = !{!"long", !6, i64 0}
!16 = !{!9, !5, i64 8}
!17 = !{!18, !19, i64 64}
!18 = !{!"", !9, i64 0, !19, i64 64, !20, i64 72, !21, i64 80, !14, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !14, i64 120, !14, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !6, i64 140, !6, i64 141, !5, i64 142, !5, i64 142, !6, i64 143, !6, i64 143, !6, i64 143, !22, i64 144, !14, i64 152, !5, i64 156}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4}
!21 = !{!"p1 _ZTS10_lv_font_t", !11, i64 0}
!22 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !11, i64 0}
!23 = !{!18, !6, i64 140}
!24 = !{!25, !11, i64 64}
!25 = !{!"_lv_draw_image_dsc_t", !9, i64 0, !11, i64 64, !26, i64 72, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !20, i64 108, !14, i64 116, !6, i64 119, !6, i64 120, !5, i64 121, !13, i64 121, !13, i64 121, !11, i64 128, !27, i64 136, !28, i64 144, !11, i64 160}
!26 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!27 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !11, i64 0}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!29 = !{!9, !12, i64 24}
end_hunk_0
