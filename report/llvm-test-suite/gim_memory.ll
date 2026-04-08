inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@_Z10gim_allocam:bb.a
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr %i.c(i64 noundef %0), !inline_history !10
  br label %_Z9gim_allocm.exit

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_Z11gim_reallocPvmm:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr %i.a(i64 noundef %2), !inline_history !10
  br label %_Z9gim_allocm.exit

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_Z11gim_reallocPvmm:bb.a
  br i1 %.not4.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.e(ptr noundef nonnull %0), !inline_history !11
  br label %_Z8gim_freePv.exit

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@llvm.umin.i64
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{ptr @_Z9gim_allocm}
!11 = !{ptr @_Z8gim_freePv}
end_hunk_3
