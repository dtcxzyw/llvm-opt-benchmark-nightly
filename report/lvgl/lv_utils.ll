Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_utils?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_fs_file_t = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define noundef ptr @lv_utils_bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not22 = icmp eq i64 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = ptrtoint ptr %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.024 = phi ptr [ %.1, %bb.d ], [ %1, %.lr.ph.preheader ]
  %.sroa.0.021 = phi i64 [ %.sroa.0.1, %bb.d ], [ %5, %.lr.ph.preheader ] ; 2 uses
  %.01923 = phi i64 [ %.120, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.a = lshr i64 %.01923, 1                      ; 3 uses
  %i.b = mul i64 %i.a, %3
  %i.c = getelementptr inbounds nuw i8, ptr %.024, i64 %i.b ; 3 uses
  %i.d = tail call i32 %4(ptr noundef %0, ptr noundef %i.c) #3 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i64 %.01923, 1
  %i.g = xor i64 %i.f, 1
  %i.h = sub nsw i64 %i.a, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %3 ; 2 uses
  %6 = ptrtoint ptr %i.i to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %7, label %._crit_edge

7:                                                ; preds = %bb.c
  %8 = inttoptr i64 %.sroa.0.021 to ptr
  br label %bb.d

bb.d:                                             ; preds = %7, %bb.b
  %.120 = phi i64 [ %i.h, %bb.b ], [ %i.a, %7 ]   ; 2 uses
  %.sroa.0.1 = phi i64 [ %6, %bb.b ], [ %.sroa.0.021, %7 ]
  %.1 = phi ptr [ %i.i, %bb.b ], [ %8, %7 ]
  %.not = icmp eq i64 %.120, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.016 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @lv_draw_buf_save_to_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_fs_file_t, align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.b = call i32 @lv_fs_open(ptr noundef nonnull %2, ptr noundef %1, i32 noundef 1) #3
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @lv_image_cache_drop(ptr noundef %1) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.c = call i32 @lv_fs_write(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 12, ptr noundef nonnull %i.a) #3
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr %i.a, align 4
  %i.f = icmp ne i32 %i.e, 12
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = call i32 @lv_fs_write(ptr noundef nonnull %2, ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %i.a) #3
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 4, !tbaa !17
  %i.m = load i32, ptr %i.i, align 4, !tbaa !16
  %.not12 = icmp eq i32 %i.l, %i.m
  %spec.select = zext i1 %.not12 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.n = call i32 @lv_fs_close(ptr noundef nonnull %2) #3 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  ret i32 %.1
}

declare i32 @lv_fs_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_image_cache_drop(ptr noundef) local_unnamed_addr #2

declare i32 @lv_fs_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_fs_close(ptr noundef) local_unnamed_addr #2

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !13, i64 16}
!11 = !{!"_lv_draw_buf_t", !12, i64 0, !5, i64 12, !13, i64 16, !14, i64 24, !15, i64 32}
!12 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !14, i64 0}
!16 = !{!11, !5, i64 12}
!17 = !{!5, !5, i64 0}
end_hunk_0
