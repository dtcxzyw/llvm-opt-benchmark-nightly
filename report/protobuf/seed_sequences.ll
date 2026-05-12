inline.NumInlined: 78
inline.NumDeleted: 55
begin_hunk_0_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not26 = icmp eq ptr %2, %1
  br i1 %.not26, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #11
          to label %.noexc12.a unwind label %bb.d ; 4 uses

.noexc12.a:                                       ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  store ptr %i.f, ptr %3, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #12
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
end_hunk_2
