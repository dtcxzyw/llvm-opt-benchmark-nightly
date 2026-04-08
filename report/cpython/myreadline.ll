inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0_@PyOS_StdioReadline:bb.a

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @PyOS_InputHook, align 8, !tbaa !18
  %i.w = tail call i32 %i.v() #10, !inline_history !32 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
end_hunk_0
begin_hunk_1_@PyOS_StdioReadline:bb.a
  br label %.thread

select.unfold:                                    ; preds = %bb.q, %bb.n
  store i8 0, ptr %i.q, align 1, !tbaa !33
  br label %.loopexit67

bb.r:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@PyOS_StdioReadline:bb.a
  %i.ah = add i64 %i.ag, %.039                    ; 3 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %.not51 = icmp eq i8 %i.ak, 10
  br i1 %.not51, label %.loopexit67, label %bb.d, !llvm.loop !34

.loopexit67:                                      ; preds = %bb.r, %select.unfold
  %.24166 = phi i64 [ %.039, %select.unfold ], [ %i.ah, %bb.r ]
end_hunk_2
begin_hunk_3_@fputs
!29 = !{!"_err_stackitem", !17, i64 0, !25, i64 8}
!30 = !{!"p1 _ZTS11_PyExitData", !13, i64 0}
!31 = !{!"", !8, i64 0, !9, i64 4}
!32 = distinct !{null}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_3
