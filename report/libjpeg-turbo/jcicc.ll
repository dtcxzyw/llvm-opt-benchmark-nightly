Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcicc?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @jpeg_write_icc_profile(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 23, ptr %i.d, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void %i.e(ptr noundef nonnull %0) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  %i.h = icmp slt i32 %i.g, 101
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 20, ptr %i.j, align 8, !tbaa !32
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %i.g, ptr %3, align 4, !tbaa !35
  %i.k = load ptr, ptr %0, align 8, !tbaa !27
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  tail call void %i.l(ptr noundef nonnull %0) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = udiv i32 %2, 65519                       ; 2 uses
  %i.n = mul nuw i32 %i.m, 65519
  %.not = icmp ne i32 %i.n, %2
  %i.o = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.m, %i.o
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.04354 = phi i32 [ %i.v, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %.04553 = phi i32 [ %i.u, %bb.g ], [ %2, %bb.e ] ; 2 uses
  %.04652 = phi ptr [ %i.t, %bb.g ], [ %1, %bb.e ]
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.04553, i32 65519) ; 3 uses
  %i.p = add nuw nsw i32 %spec.store.select, 14
  tail call void @jpeg_write_m_header(ptr noundef %0, i32 noundef 226, i32 noundef %i.p) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 73) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 67) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 67) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 95) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 80) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 82) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 79) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 70) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 73) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 76) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 69) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef 0) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef %.04354) #3
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef %spec.select) #3
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.050 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.q, %bb.f ]
  %.149 = phi ptr [ %.04652, %.lr.ph ], [ %i.t, %bb.f ] ; 2 uses
  %i.q = add nsw i32 %.050, -1                    ; 2 uses
  %i.r = load i8, ptr %.149, align 1, !tbaa !35
  %i.s = zext i8 %i.r to i32
  tail call void @jpeg_write_m_byte(ptr noundef %0, i32 noundef %i.s) #3
  %i.t = getelementptr inbounds nuw i8, ptr %.149, i64 1 ; 2 uses
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %bb.g, label %bb.f, !llvm.loop !8

bb.g:                                             ; preds = %bb.f
  %i.u = sub nuw i32 %.04553, %spec.store.select  ; 2 uses
  %i.v = add nuw nsw i32 %.04354, 1
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.g, %bb.e
  ret void
}

declare void @jpeg_write_m_header(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @jpeg_write_m_byte(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !36}
!9 = distinct !{!9, !36}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!14 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!"jpeg_compress_struct", !11, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !15, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !10, i64 88, !4, i64 96, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !5, i64 240, !10, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !4, i64 292, !4, i64 293, !4, i64 294, !16, i64 296, !16, i64 298, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 372, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !17, i64 432, !18, i64 440, !19, i64 448, !20, i64 456, !21, i64 464, !22, i64 472, !23, i64 480, !24, i64 488, !25, i64 496, !10, i64 504, !5, i64 512}
!27 = !{!26, !11, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!"any p2 pointer", !10, i64 0}
!30 = !{!"p2 omnipotent char", !29, i64 0}
!31 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !28, i64 128, !30, i64 136, !5, i64 144, !30, i64 152, !5, i64 160, !5, i64 164}
!32 = !{!31, !5, i64 40}
!33 = !{!31, !10, i64 0}
!34 = !{!26, !5, i64 36}
!35 = !{!4, !4, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
end_hunk_0
