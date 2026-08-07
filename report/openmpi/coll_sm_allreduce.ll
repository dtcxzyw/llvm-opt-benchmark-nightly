inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @mca_coll_sm_allreduce_intra(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %5, i64 220
  %.val = load i32, ptr %i.b, align 4, !tbaa !8
  %i.c = icmp eq i32 %.val, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @mca_coll_sm_reduce_intra(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @mca_coll_sm_reduce_intra(ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #2
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i32 @mca_coll_sm_reduce_intra(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef %6) #2
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.1 = phi i32 [ %i.f, %bb.e ], [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.g = icmp eq i32 %.1, 0
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @mca_coll_sm_bcast_intra(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %5, ptr noundef %6) #2
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.i = phi i32 [ %i.h, %bb.g ], [ %.1, %bb.f ]
  ret i32 %i.i
}

declare i32 @mca_coll_sm_reduce_intra(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @mca_coll_sm_bcast_intra(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = !{!9, !5, i64 220}
!9 = !{!"ompi_communicator_t", !10, i64 0, !19, i64 96, !20, i64 160, !21, i64 168, !22, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !23, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !24, i64 264, !24, i64 272, !25, i64 280, !26, i64 288, !27, i64 296, !28, i64 304, !30, i64 312, !5, i64 320, !31, i64 328, !32, i64 336, !33, i64 344, !34, i64 352, !35, i64 360, !5, i64 368, !5, i64 372, !36, i64 376, !36, i64 377, !36, i64 378}
!10 = !{!"opal_infosubscriber_t", !11, i64 0, !14, i64 16, !18, i64 88}
!11 = !{!"opal_object_t", !12, i64 0, !5, i64 8}
!12 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"opal_hash_table_t", !11, i64 0, !15, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !17, i64 64}
!15 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!18 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!19 = !{!"opal_mutex_t", !11, i64 0, !6, i64 16, !5, i64 56}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!"ompi_comm_extended_cid_t", !16, i64 0, !6, i64 8}
!22 = !{!"ompi_comm_extended_cid_block_t", !21, i64 0, !16, i64 16, !6, i64 24, !6, i64 25}
!23 = !{!"p1 int", !13, i64 0}
!24 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!25 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!26 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!27 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!28 = !{!"p2 _ZTS20ompi_peruse_handle_t", !29, i64 0}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!31 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!32 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!33 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!34 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!35 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!36 = !{!"_Bool", !6, i64 0}
end_hunk_0
