Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_scale_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_color_t = type { i8, i8, i8 }
%struct.lv_point_t = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1

; Function Attrs: nounwind uwtable
define void @lv_example_scale_7() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_screen_active() #4
  %i.b = tail call ptr @lv_scale_create(ptr noundef %i.a) #4 ; 11 uses
  %i.c = tail call i32 @lv_pct(i32 noundef 80) #4
  tail call void @lv_obj_set_size(ptr noundef %i.b, i32 noundef %i.c, i32 noundef 100) #4
  tail call void @lv_scale_set_mode(ptr noundef %i.b, i32 noundef 1) #4
  tail call void @lv_obj_center(ptr noundef %i.b) #4
  tail call void @lv_scale_set_label_show(ptr noundef %i.b, i1 noundef zeroext true) #4
  tail call void @lv_scale_set_total_tick_count(ptr noundef %i.b, i32 noundef 31) #4
  tail call void @lv_scale_set_major_tick_every(ptr noundef %i.b, i32 noundef 5) #4
  tail call void @lv_obj_set_style_length(ptr noundef %i.b, i32 noundef 5, i32 noundef 327680) #4
  tail call void @lv_obj_set_style_length(ptr noundef %i.b, i32 noundef 10, i32 noundef 131072) #4
  tail call void @lv_scale_set_range(ptr noundef %i.b, i32 noundef 10, i32 noundef 40) #4
  %i.d = tail call ptr @lv_obj_add_event_cb(ptr noundef %i.b, ptr noundef nonnull @draw_event_cb, i32 noundef 34, ptr noundef null) #4 ; 0 uses
  tail call void @lv_obj_add_flag(ptr noundef %i.b, i32 noundef 524288) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_scale_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare void @lv_obj_set_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_pct(i32 noundef) local_unnamed_addr #2

declare void @lv_scale_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #2

declare void @lv_scale_set_label_show(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @lv_scale_set_total_tick_count(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_scale_set_major_tick_every(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_scale_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_obj_add_event_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @draw_event_cb(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [7 x %struct.lv_color_t], align 16  ; 10 uses
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %2 = alloca %struct.lv_point_t, align 4         ; 4 uses
  %i.b = tail call ptr @lv_event_get_target_obj(ptr noundef %0) #4
  %i.c = tail call ptr @lv_event_get_draw_task(ptr noundef %0) #4 ; 4 uses
  %i.d = tail call ptr @lv_draw_task_get_draw_dsc(ptr noundef %i.c) #4 ; 3 uses
  %i.e = tail call ptr @lv_draw_task_get_label_dsc(ptr noundef %i.c) #4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq i32 %i.g, 131072
  %i.i = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.j = tail call i24 @lv_palette_main(i32 noundef 0) #4
  store i24 %i.j, ptr %1, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = tail call i24 @lv_palette_main(i32 noundef 14) #4
  store i24 %i.l, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.n = tail call i24 @lv_palette_main(i32 noundef 12) #4
  store i24 %i.n, ptr %i.m, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = tail call i24 @lv_palette_main(i32 noundef 9) #4
  store i24 %i.p, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = tail call i24 @lv_palette_main(i32 noundef 7) #4
  store i24 %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.t = tail call i24 @lv_palette_main(i32 noundef 5) #4
  store i24 %i.t, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.v = tail call i24 @lv_palette_main(i32 noundef 2) #4
  store i24 %i.v, ptr %i.u, align 2
  %i.w = tail call i32 @lv_scale_get_major_tick_every(ptr noundef %i.b) #4
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = udiv i32 %i.z, %i.w
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.x, ptr noundef nonnull align 1 dereferenceable(3) %i.ac, i64 3, i1 false), !tbaa.struct !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 142 ; 2 uses
  %3 = getelementptr i8, ptr %i.e, i64 143
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24
  tail call void @lv_free(ptr noundef %i.af) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = call i32 (ptr, i64, ptr, ...) @lv_snprintf(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str, double noundef %i.ai) #4 ; 0 uses
  %i.ak = call ptr @lv_strdup(ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !24
  %i.am = load i16, ptr %i.ad, align 2
  %i.an = or i16 %i.am, 256
  store i16 %i.an, ptr %i.ad, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26
  call void @lv_text_get_size(ptr noundef nonnull %2, ptr noundef %i.ak, ptr noundef %i.ap, i32 noundef 0, i32 noundef 0, i32 noundef 1000, i32 noundef 0) #4
  %i.aq = load i32, ptr %2, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.as = call i32 @lv_area_get_width(ptr noundef nonnull %i.ar) #4
  %i.at = sub nsw i32 %i.aq, %i.as                ; 2 uses
  %.neg = sdiv i32 %i.at, -2
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !32
  %i.av = add i32 %.neg, %i.au
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !32
  %i.aw = add nsw i32 %i.at, 1
  %i.ax = sdiv i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33
  %i.ba = add nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @lv_obj_add_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lv_event_get_target_obj(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_draw_task(ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_draw_dsc(ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_task_get_label_dsc(ptr noundef) local_unnamed_addr #2

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #2

declare i32 @lv_scale_get_major_tick_every(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @lv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @lv_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @lv_strdup(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!9 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!10 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !11, i64 32, !11, i64 34, !12, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !13, i64 48, !8, i64 56}
!15 = !{!14, !5, i64 8}
!16 = !{!14, !5, i64 12}
!17 = !{!4, !4, i64 0}
!18 = !{i64 0, i64 1, !17, i64 1, i64 1, !17, i64 2, i64 1, !17}
!19 = !{!"p1 omnipotent char", !8, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4}
!21 = !{!"p1 _ZTS10_lv_font_t", !8, i64 0}
!22 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !8, i64 0}
!23 = !{!"", !14, i64 0, !19, i64 64, !20, i64 72, !21, i64 80, !12, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !12, i64 120, !12, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !4, i64 140, !4, i64 141, !5, i64 142, !5, i64 142, !4, i64 143, !4, i64 143, !4, i64 143, !22, i64 144, !12, i64 152, !5, i64 156}
!24 = !{!23, !19, i64 64}
!25 = !{!14, !5, i64 16}
!26 = !{!23, !21, i64 80}
!27 = !{!20, !5, i64 0}
!28 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!29 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!30 = !{!"p1 _ZTS15_lv_draw_unit_t", !8, i64 0}
!31 = !{!"_lv_draw_task_t", !28, i64 0, !5, i64 8, !29, i64 12, !29, i64 28, !29, i64 44, !29, i64 60, !10, i64 80, !30, i64 88, !5, i64 96, !8, i64 104, !4, i64 112, !4, i64 113, !4, i64 114}
!32 = !{!31, !5, i64 12}
!33 = !{!31, !5, i64 20}
end_hunk_0
