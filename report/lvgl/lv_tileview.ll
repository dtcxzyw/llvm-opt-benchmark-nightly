Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_tileview?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_obj_class_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_point_t = type { i32, i32 }

@lv_obj_class = external constant %struct._lv_obj_class_t, align 8
@.str = private unnamed_addr constant [12 x i8] c"lv_tileview\00", align 1
@lv_tileview_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_tileview_constructor, ptr null, ptr null, ptr null, ptr @.str, i32 0, i32 0, i8 0, i8 5, i8 0, [5 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"lv_tile\00", align 1
@lv_tileview_tile_class = constant { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8] } { ptr @lv_obj_class, ptr @lv_tileview_tile_constructor, ptr null, ptr null, ptr null, ptr @.str.1, i32 0, i32 0, i8 0, i8 5, i8 0, [5 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define internal void @lv_tileview_constructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @lv_obj_set_size(ptr noundef %1, i32 noundef 536871012, i32 noundef 536871012) #4
  %i.a = tail call ptr @lv_obj_add_event_cb(ptr noundef %1, ptr noundef nonnull @tileview_event_cb, i32 noundef 14, ptr noundef null) #4 ; 0 uses
  tail call void @lv_obj_add_flag(ptr noundef %1, i32 noundef 128) #4
  tail call void @lv_obj_set_scroll_snap_x(ptr noundef %1, i32 noundef 3) #4
  tail call void @lv_obj_set_scroll_snap_y(ptr noundef %1, i32 noundef 3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lv_tileview_tile_constructor(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @lv_obj_set_size(ptr noundef %1, i32 noundef 536871012, i32 noundef 536871012) #4
  tail call void @lv_obj_update_layout(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_tileview_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_tileview_class, ptr noundef %0) #4 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #4
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @lv_tileview_add_tile(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_tileview_tile_class, ptr noundef %0) #4 ; 4 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #4
  %i.b = zext i8 %1 to i32
  %i.c = mul nuw nsw i32 %i.b, 100
  %i.d = tail call i32 @lv_pct(i32 noundef %i.c) #4
  %i.e = zext i8 %2 to i32
  %i.f = mul nuw nsw i32 %i.e, 100
  %i.g = tail call i32 @lv_pct(i32 noundef %i.f) #4
  tail call void @lv_obj_set_pos(ptr noundef %i.a, i32 noundef %i.d, i32 noundef %i.g) #4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %3, ptr %i.h, align 8, !tbaa !17
  %i.i = or i8 %2, %1
  %or.cond = icmp eq i8 %i.i, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @lv_obj_set_scroll_dir(ptr noundef %0, i32 noundef %3) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

declare void @lv_obj_set_pos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_pct(i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_scroll_dir(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_tileview_set_tile(ptr noundef initializes((72, 80)) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lv_obj_get_x(ptr noundef %1) #4
  %i.b = tail call i32 @lv_obj_get_y(ptr noundef %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  tail call void @lv_obj_set_scroll_dir(ptr noundef %0, i32 noundef %i.e) #4
  tail call void @lv_obj_scroll_to(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i1 noundef zeroext %2) #4
  ret void
}

declare i32 @lv_obj_get_x(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_y(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_scroll_to(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_tileview_set_tile_by_index(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_obj_update_layout(ptr noundef %0) #4
  %i.a = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #4
  %i.b = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #4
  %i.c = mul i32 %i.a, %1
  %i.d = mul i32 %i.b, %2
  %i.e = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = add nuw i32 %.02122, 1                   ; 2 uses
  %i.g = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #4
  %i.h = icmp ult i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02122 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef %.02122) #4 ; 6 uses
  %i.j = tail call i32 @lv_obj_get_x(ptr noundef %i.i) #4
  %i.k = tail call i32 @lv_obj_get_y(ptr noundef %i.i) #4
  %i.l = icmp eq i32 %i.j, %i.c
  %i.m = icmp eq i32 %i.k, %i.d
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph
  %i.n = tail call i32 @lv_obj_get_x(ptr noundef %i.i) #4
  %i.o = tail call i32 @lv_obj_get_y(ptr noundef %i.i) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.i, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17
  tail call void @lv_obj_set_scroll_dir(ptr noundef %0, i32 noundef %i.r) #4
  tail call void @lv_obj_scroll_to(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i1 noundef zeroext %3) #4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %.critedge
  ret void
}

declare void @lv_obj_update_layout(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_child_count(ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_child(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_tileview_get_tile_active(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  ret ptr %i.b
}

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @tileview_event_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %i.a = tail call i32 @lv_event_get_code(ptr noundef %0) #4
  %i.b = tail call ptr @lv_event_get_current_target(ptr noundef %0) #4 ; 9 uses
  %i.c = icmp eq i32 %i.a, 14
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @lv_indev_active() #4      ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @lv_obj_get_content_width(ptr noundef %i.b) #4 ; 2 uses
  %i.i = tail call i32 @lv_obj_get_content_height(ptr noundef %i.b) #4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @lv_obj_get_scroll_end(ptr noundef %i.b, ptr noundef nonnull %1) #4
  %2 = load i32, ptr %1, align 4, !tbaa !35
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !36
  %5 = sdiv i32 %i.h, 2
  %6 = add nsw i32 %2, %5
  %.fr = freeze i32 %6                            ; 2 uses
  %7 = srem i32 %.fr, %i.h
  %8 = sub nsw i32 %.fr, %7
  %9 = sdiv i32 %i.i, 2
  %10 = add nsw i32 %4, %9
  %.fr40 = freeze i32 %10                         ; 2 uses
  %11 = srem i32 %.fr40, %i.i
  %12 = sub nsw i32 %.fr40, %11
  %i.j = call i32 @lv_obj_get_child_count(ptr noundef %i.b) #4
  %.not45 = icmp eq i32 %i.j, 0
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.k = add nuw i32 %.044, 1                     ; 2 uses
  %i.l = call i32 @lv_obj_get_child_count(ptr noundef %i.b) #4
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.critedge, !llvm.loop !22

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.044 = phi i32 [ %i.k, %bb.e ], [ 0, %bb.d ]   ; 2 uses
  %i.n = call ptr @lv_obj_get_child(ptr noundef %i.b, i32 noundef %.044) #4 ; 4 uses
  %i.o = call i32 @lv_obj_get_x(ptr noundef %i.n) #4
  %i.p = call i32 @lv_obj_get_y(ptr noundef %i.n) #4
  %13 = icmp eq i32 %i.o, %8
  %14 = icmp eq i32 %i.p, %12
  %or.cond = select i1 %13, i1 %14, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.n, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17
  %i.t = call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 35, ptr noundef null) #4 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.f
  %.2 = phi i32 [ %i.s, %bb.f ], [ 15, %bb.d ], [ 15, %bb.e ]
  call void @lv_obj_set_scroll_dir(ptr noundef %i.b, i32 noundef %.2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.critedge, %bb.c
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_scroll_snap_x(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_scroll_snap_y(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_indev_active() local_unnamed_addr #2

declare void @lv_obj_get_scroll_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!10 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!11 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!12 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"short", !4, i64 0}
!15 = !{!"_lv_obj_t", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !13, i64 40, !5, i64 56, !14, i64 60, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 64}
!16 = !{!"_lv_tileview_tile_t", !15, i64 0, !5, i64 72}
!17 = !{!16, !5, i64 72}
!18 = !{!"_lv_tileview_t", !15, i64 0, !10, i64 72}
!19 = !{!18, !10, i64 72}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = !{!"p1 _ZTS13_lv_display_t", !8, i64 0}
!24 = !{!"p1 _ZTS11_lv_timer_t", !8, i64 0}
!25 = !{!"", !5, i64 0, !5, i64 4}
!26 = !{!"", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !4, i64 32, !4, i64 96, !4, i64 128, !25, i64 132, !25, i64 140, !25, i64 148, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !13, i64 192, !25, i64 208, !5, i64 216, !4, i64 220, !25, i64 224, !5, i64 232, !4, i64 236, !4, i64 236, !4, i64 237, !4, i64 237, !4, i64 237}
!27 = !{!"p1 _ZTS11_lv_group_t", !8, i64 0}
!28 = !{!"p1 omnipotent char", !8, i64 0}
!29 = !{!"_Bool", !4, i64 0}
!30 = !{!"_lv_array_t", !28, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !29, i64 20}
!31 = !{!"", !30, i64 0, !4, i64 24, !4, i64 24}
!32 = !{!"p1 _ZTS10_lv_anim_t", !8, i64 0}
!33 = !{!"_lv_indev_t", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28, !4, i64 28, !4, i64 28, !4, i64 28, !4, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !8, i64 48, !8, i64 56, !23, i64 64, !24, i64 72, !4, i64 80, !4, i64 81, !4, i64 82, !4, i64 83, !14, i64 84, !14, i64 86, !5, i64 88, !26, i64 96, !25, i64 336, !10, i64 344, !27, i64 352, !8, i64 360, !31, i64 368, !32, i64 400, !8, i64 408}
!34 = !{!33, !5, i64 16}
!35 = !{!25, !5, i64 0}
!36 = !{!25, !5, i64 4}
end_hunk_0
