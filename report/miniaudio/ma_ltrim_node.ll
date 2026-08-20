begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ma_ltrim_node_config = type { %struct.ma_node_config, i32, float }
%struct.ma_node_config = type { ptr, i32, i32, i32, ptr, ptr }

@g_ma_ltrim_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_ltrim_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 8 }, align 8

; Function Attrs: nounwind uwtable
define void @ma_ltrim_node_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_ltrim_node_config) align 8 captures(none) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @ma_node_config_init(ptr dead_on_unwind nonnull writable sret(%struct.ma_node_config) align 8 %0) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %2, ptr %i.b, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ma_node_config_init(ptr dead_on_unwind writable sret(%struct.ma_node_config) align 8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @ma_ltrim_node_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ma_node_config, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %3, i8 0, i64 368, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %i.d, ptr %i.e, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false), !tbaa.struct !24
  store ptr @g_ma_ltrim_node_vtable, ptr %4, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = call i32 @ma_node_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %3) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.0
}

declare i32 @ma_node_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ma_ltrim_node_uninit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ma_node_uninit(ptr noundef %0, ptr noundef %1) #5
  ret void
}

declare void @ma_node_uninit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ma_ltrim_node_process_pcm_frames(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = tail call i32 @ma_node_get_input_channels(ptr noundef %0, i32 noundef 0) #5
  %.fr52 = freeze i32 %i.a                        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = icmp eq i32 %i.c, 0
  %.pre59 = load i32, ptr %2, align 4, !tbaa !26  ; 9 uses
  br i1 %i.d, label %.preheader48, label %.loopexit

.preheader48:                                     ; preds = %bb.a
  %.not53 = icmp eq i32 %.fr52, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  br i1 %.not53, label %.loopexit, label %.preheader48.split.us.preheader

.preheader48.split.us.preheader:                  ; preds = %.preheader48
  %wide.trip.count = zext i32 %.fr52 to i64
  %exitcond57.not64 = icmp eq i32 %.pre59, 0
  br i1 %exitcond57.not64, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader48.split.us.preheader
  %i.f = load ptr, ptr %1, align 8, !tbaa !32
  %i.g = load float, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %i.h = fneg float %i.g
  br label %.preheader.us

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !33

bb.c:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %5 = trunc nuw i64 %indvars.iv to i32
  %6 = add i32 %i.m, %5
  %7 = zext i32 %6 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %7
  %i.j = load float, ptr %i.i, align 4, !tbaa !35 ; 2 uses
  %i.k = fcmp olt float %i.j, %i.h
  %i.l = fcmp ogt float %i.j, %i.g
  %or.cond.us = or i1 %i.k, %i.l
  br i1 %or.cond.us, label %.thread45, label %bb.b

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.038.us65 = phi i32 [ %8, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.m = mul i32 %.038.us65, %.fr52
  br label %bb.c

._crit_edge.us:                                   ; preds = %bb.b
  %8 = add i32 %.038.us65, 1                      ; 2 uses
  %exitcond57.not = icmp eq i32 %8, %.pre59
  br i1 %exitcond57.not, label %.loopexit, label %.preheader.us

.thread45:                                        ; preds = %bb.c
  store i32 1, ptr %i.b, align 4, !tbaa !31
  %.pre = load i32, ptr %2, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.us, %.preheader48.split.us.preheader, %.preheader48, %.thread45, %bb.a
  %i.n = phi i32 [ %.pre59, %bb.a ], [ %.pre, %.thread45 ], [ %.pre59, %.preheader48 ], [ %.pre59, %.preheader48.split.us.preheader ], [ %.pre59, %._crit_edge.us ]
  %.2 = phi i32 [ 0, %bb.a ], [ %.038.us65, %.thread45 ], [ %.pre59, %.preheader48 ], [ %.pre59, %.preheader48.split.us.preheader ], [ %.pre59, %._crit_edge.us ] ; 3 uses
  %i.o = load i32, ptr %4, align 4, !tbaa !26
  %i.p = sub i32 %i.n, %.2
  %. = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.p) ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !32
  %i.r = load ptr, ptr %1, align 8, !tbaa !32
  %i.s = zext i32 %.2 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = zext i32 %. to i64
  tail call void @ma_copy_pcm_frames(ptr noundef %i.q, ptr noundef %i.t, i64 noundef %i.u, i32 noundef 5, i32 noundef %.fr52) #5
  %i.v = add i32 %., %.2
  store i32 %i.v, ptr %2, align 4, !tbaa !26
  store i32 %., ptr %4, align 4, !tbaa !26
  ret void
}

declare i32 @ma_node_get_input_channels(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ma_copy_pcm_frames(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"", !10, i64 0, !5, i64 40, !13, i64 44}
!10 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!9, !13, i64 44}
!15 = !{!16, !13, i64 360}
!16 = !{!"", !17, i64 0, !13, i64 360, !5, i64 364}
!17 = !{!"ma_node_base", !18, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !19, i64 24, !20, i64 32, !21, i64 40, !22, i64 48, !22, i64 50, !22, i64 52, !22, i64 54, !5, i64 56, !6, i64 64, !23, i64 80, !6, i64 88, !6, i64 232, !11, i64 344, !5, i64 352}
!18 = !{!"p1 _ZTS13ma_node_graph", !11, i64 0}
!19 = !{!"p1 _ZTS17ma_node_input_bus", !11, i64 0}
!20 = !{!"p1 _ZTS18ma_node_output_bus", !11, i64 0}
!21 = !{!"p1 float", !11, i64 0}
!22 = !{!"short", !6, i64 0}
!23 = !{!"long long", !6, i64 0}
!24 = !{i64 0, i64 8, !25, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 24, i64 8, !27, i64 32, i64 8, !27}
!25 = !{!11, !11, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!10, !11, i64 0}
!29 = !{!10, !12, i64 24}
!30 = !{!10, !12, i64 32}
!31 = !{!16, !5, i64 364}
!32 = !{!21, !21, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!13, !13, i64 0}
end_hunk_0
