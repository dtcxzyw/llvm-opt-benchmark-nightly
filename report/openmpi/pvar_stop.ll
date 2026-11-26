Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pvar_stop?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ompi_mpit_init_count = external global i32, align 4

@MPI_T_pvar_stop = weak alias i32 (ptr, ptr), ptr @PMPI_T_pvar_stop

; Function Attrs: nounwind uwtable
define i32 @PMPI_T_pvar_stop(ptr nofree noundef captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load volatile i32, ptr @ompi_mpit_init_count, align 4, !tbaa !9
  %.not17 = icmp eq i32 %i.a, 0
  br i1 %.not17, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ompi_mpit_lock() #2
  %i.b = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load volatile ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %.not1319 = icmp eq ptr %i.e, %i.c
  br i1 %.not1319, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.021 = phi i32 [ %.1, %bb.e ], [ 0, %bb.c ]    ; 2 uses
  %.01020 = phi ptr [ %i.k, %bb.e ], [ %i.e, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01020, i64 136
  %i.g = load i8, ptr %i.f, align 8, !tbaa !23, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.01020, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.phi.trans.insert22 = getelementptr i8, ptr %.pre, i64 68
  %.val.pre = load i32, ptr %.phi.trans.insert22, align 4, !tbaa !30 ; 2 uses
  %2 = and i32 %.val.pre, 256
  %.not = icmp ne i32 %2, 0
  %or.cond.not29 = select i1 %i.h, i1 true, i1 %.not
  %3 = and i32 %.val.pre, 256
  %.not18 = icmp eq i32 %3, 0
  %or.cond28 = select i1 %or.cond.not29, i1 %.not18, i1 false
  br i1 %or.cond28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.i = tail call i32 @mca_base_pvar_handle_stop(ptr noundef nonnull %.01020) #2
  %.not.i = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not.i, i32 %.021, i32 65
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %.021, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01020, i64 16
  %i.k = load volatile ptr, ptr %i.j, align 8, !tbaa !31 ; 2 uses
  %.not13 = icmp eq ptr %i.k, %i.c
  br i1 %.not13, label %.loopexit, label %.lr.ph, !llvm.loop !8

bb.f:                                             ; preds = %bb.b
  %i.l = tail call i32 @mca_base_pvar_handle_stop(ptr noundef %1) #2
  %.not.i15 = icmp eq i32 %i.l, 0
  %..i16 = select i1 %.not.i15, i32 0, i32 65
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.f
  %.2 = phi i32 [ %..i16, %bb.f ], [ 0, %bb.c ], [ %.1, %bb.e ]
  tail call void @ompi_mpit_unlock() #2
  %i.m = tail call i32 @ompit_opal_to_mpit_error(i32 noundef %.2) #2
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit
  %.011 = phi i32 [ %i.m, %.loopexit ], [ 55, %bb.a ]
  ret i32 %.011
}

declare void @ompi_mpit_lock() local_unnamed_addr #1

declare void @ompi_mpit_unlock() local_unnamed_addr #1

declare i32 @ompit_opal_to_mpit_error(i32 noundef) local_unnamed_addr #1

declare i32 @mca_base_pvar_handle_stop(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !32}
!9 = !{!5, !5, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS12opal_class_t", !10, i64 0}
!12 = !{!"opal_object_t", !11, i64 0, !5, i64 8}
!13 = !{!"p1 _ZTS16opal_list_item_t", !10, i64 0}
!14 = !{!"opal_list_item_t", !12, i64 0, !13, i64 16, !13, i64 24, !5, i64 32}
!15 = !{!"long", !4, i64 0}
!16 = !{!"opal_list_t", !12, i64 0, !14, i64 16, !15, i64 56}
!17 = !{!"mca_base_pvar_session_t", !12, i64 0, !16, i64 16}
!18 = !{!17, !13, i64 48}
!19 = !{!"p1 _ZTS23mca_base_pvar_session_t", !10, i64 0}
!20 = !{!"p1 _ZTS15mca_base_pvar_t", !10, i64 0}
!21 = !{!"_Bool", !4, i64 0}
!22 = !{!"mca_base_pvar_handle_t", !14, i64 0, !14, i64 40, !19, i64 80, !20, i64 88, !10, i64 96, !5, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !21, i64 136}
!23 = !{!22, !21, i64 136}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!22, !20, i64 88}
!27 = !{!"p1 omnipotent char", !10, i64 0}
!28 = !{!"p1 _ZTS19mca_base_var_enum_t", !10, i64 0}
!29 = !{!"mca_base_pvar_t", !12, i64 0, !5, i64 16, !27, i64 24, !27, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !28, i64 56, !5, i64 64, !5, i64 68, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !16, i64 104}
!30 = !{!29, !5, i64 68}
!31 = !{!14, !13, i64 16}
!32 = !{!"llvm.loop.mustprogress"}
end_hunk_0
