inline.NumInlined: 223
inline.NumDeleted: 140
begin_hunk_0_@_ZNSt6vectorIlSaIlEEaSERKS1_:bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIlSaIlEEaSERKS1_:bb.a
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %2 = load ptr, ptr %0, align 8, !tbaa !41       ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  %3 = load ptr, ptr %i.g, align 8, !tbaa !44
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %6) #16
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
end_hunk_1
