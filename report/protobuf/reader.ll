inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only:bb.a
  br label %upb_WireReader_ReadSize.exit.i.thread

upb_EpsCopyInputStream_HasErrorHandler.exit.i19:  ; preds = %bb.j
  %i.ap = tail call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i39, i64 noundef %i.an, ptr noundef nonnull %3), !inline_history !17 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1
  %i.ar = extractvalue { ptr, i64 } %i.ap, 0      ; 2 uses
  %.not.i16 = icmp eq ptr %i.ar, null
end_hunk_0
begin_hunk_1_@_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only:bb.a
  br i1 %.not54, label %bb.l, label %bb.m

bb.l:                                             ; preds = %upb_WireReader_ReadSize.exit.i.thread, %upb_EpsCopyInputStream_HasErrorHandler.exit.i19
  %i.aw = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3) #3, !inline_history !17
  br label %_upb_WireReader_SkipValue.exit

bb.m:                                             ; preds = %upb_WireReader_ReadSize.exit.i.thread
end_hunk_1
begin_hunk_2_@_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only:bb.a
  br label %_upb_WireReader_SkipValue.exit

bb.n:                                             ; preds = %bb.e
  %i.ay = tail call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i39, i32 noundef %.02538, i32 noundef range(i32 0, 2147483647) %i.a, ptr noundef nonnull %3), !inline_history !17
  br label %_upb_WireReader_SkipValue.exit

bb.o:                                             ; preds = %bb.e
  %i.az = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3) #3, !inline_history !17
  br label %_upb_WireReader_SkipValue.exit

_upb_WireReader_SkipValue.exit:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, %bb.l, %bb.m, %bb.n, %bb.o
end_hunk_2
begin_hunk_3_@upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only
!14 = !{!9, !10, i64 8}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!9, !12, i64 40}
!17 = distinct !{null}
end_hunk_3
