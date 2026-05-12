inline.NumInlined: 78
inline.NumDeleted: 55
begin_hunk_0_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not26 = icmp eq ptr %2, %1
  br i1 %.not26, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #11
          to label %.noexc12 unwind label %bb.d   ; 5 uses

.noexc12:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %4 = load ptr, ptr %0, align 8, !tbaa !13       ; 4 uses
  %5 = load ptr, ptr %3, align 8, !tbaa !16
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %4 to i64                     ; 2 uses
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

10:                                               ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %4, i64 %8, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %10, %.noexc12
  %.not.i8.i = icmp eq ptr %4, null
  br i1 %.not.i8.i, label %.noexc12.a, label %11

11:                                               ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %12 = load ptr, ptr %i.e, align 8, !tbaa !17
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %7
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %14) #12
  br label %.noexc12.a

.noexc12.a:                                       ; preds = %11, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  store ptr %i.f, ptr %3, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 5 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt8seed_seqC2IPjEET_S2_:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %15 = load ptr, ptr %i.e, align 8, !tbaa !17
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %16, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %17) #12
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
end_hunk_2
