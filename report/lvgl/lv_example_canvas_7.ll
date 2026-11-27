Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_example_canvas_7?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_layer_t = type { ptr, ptr, ptr, ptr, ptr, %struct.lv_area_t, %struct.lv_area_t, %struct.lv_area_t, i32, %struct.lv_color32_t, i32, i8, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_color32_t = type { i8, i8, i8, i8 }
%struct.lv_draw_line_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_point_precise_t, %struct.lv_point_precise_t, ptr, i32, %struct.lv_color_t, i32, i32, i32, i8, i8 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_precise_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }

@lv_example_canvas_7.buf_draw_buf = internal global [10004 x i8] zeroinitializer, align 16
@lv_example_canvas_7.draw_buf = internal global { { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, i32, ptr, ptr, ptr } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 25, i8 16, i8 32, i8 0, i8 50, i8 0, i8 50, i8 0, i8 -56, i8 0, i8 0, i8 0 }, i32 10004, ptr @lv_example_canvas_7.buf_draw_buf, ptr @lv_example_canvas_7.buf_draw_buf, ptr null }, align 8

; Function Attrs: nounwind uwtable
define void @lv_example_canvas_7() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._lv_layer_t, align 8        ; 5 uses
  %1 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 9 uses
  %i.a = load i64, ptr @lv_example_canvas_7.draw_buf, align 8 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 65535
  %i.e = lshr i64 %i.a, 48
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = trunc i64 %i.a to i32
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 255
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_example_canvas_7.draw_buf, i64 8), align 8
  %i.k = and i32 %i.j, 65535
  %i.l = tail call i32 @lv_draw_buf_init(ptr noundef nonnull @lv_example_canvas_7.draw_buf, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.i, i32 noundef %i.k, ptr noundef nonnull @lv_example_canvas_7.buf_draw_buf, i32 noundef 10004) #3 ; 0 uses
  %i.m = load i64, ptr @lv_example_canvas_7.draw_buf, align 8
  %i.n = or i64 %i.m, 2097152
  store i64 %i.n, ptr @lv_example_canvas_7.draw_buf, align 8
  %i.o = tail call ptr @lv_screen_active() #3
  %i.p = tail call ptr @lv_canvas_create(ptr noundef %i.o) #3 ; 5 uses
  tail call void @lv_canvas_set_draw_buf(ptr noundef %i.p, ptr noundef nonnull @lv_example_canvas_7.draw_buf) #3
  %i.q = tail call i24 @lv_color_hex3(i32 noundef 3276) #3
  tail call void @lv_canvas_fill_bg(ptr noundef %i.p, i24 %i.q, i8 noundef zeroext -1) #3
  tail call void @lv_obj_center(ptr noundef %i.p) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  call void @lv_canvas_init_layer(ptr noundef %i.p, ptr noundef nonnull %0) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @lv_draw_line_dsc_init(ptr noundef nonnull %1) #3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = call i24 @lv_palette_main(i32 noundef 0) #3
  store i24 %i.s, ptr %i.r, align 4, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 4, ptr %i.t, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 109 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = or i8 %i.v, 3
  store i8 %i.w, ptr %i.u, align 1
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 64424509455, ptr %2, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 42949672995, ptr %i.x, align 8
  call void @lv_draw_line(ptr noundef nonnull %0, ptr noundef nonnull %1) #3
  call void @lv_canvas_finish_layer(ptr noundef %i.p, ptr noundef nonnull %0) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lv_draw_buf_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lv_canvas_create(ptr noundef) local_unnamed_addr #2

declare ptr @lv_screen_active() local_unnamed_addr #2

declare void @lv_canvas_set_draw_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_canvas_fill_bg(ptr noundef, i24, i8 noundef zeroext) local_unnamed_addr #2

declare i24 @lv_color_hex3(i32 noundef) local_unnamed_addr #2

declare void @lv_obj_center(ptr noundef) local_unnamed_addr #2

declare void @lv_canvas_init_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_line_dsc_init(ptr noundef) local_unnamed_addr #2

declare i24 @lv_palette_main(i32 noundef) local_unnamed_addr #2

declare void @lv_draw_line(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_canvas_finish_layer(ptr noundef, ptr noundef) local_unnamed_addr #2

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
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!11 = !{!"p1 _ZTS11_lv_layer_t", !9, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!14 = !{!"long", !4, i64 0}
!15 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 24, !12, i64 32, !12, i64 34, !13, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !14, i64 48, !9, i64 56}
!16 = !{!"", !5, i64 0, !5, i64 4}
!17 = !{!"", !15, i64 0, !16, i64 64, !16, i64 72, !9, i64 80, !5, i64 88, !13, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 108, !4, i64 109, !4, i64 109, !4, i64 109}
!18 = !{!17, !5, i64 96}
end_hunk_0
