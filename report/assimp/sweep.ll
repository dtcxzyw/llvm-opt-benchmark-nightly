inline.NumInlined: 129
inline.NumDeleted: 49
begin_hunk_0_@_ZN3p2t5Sweep16NewFrontTriangleERNS_12SweepContextERNS_5PointERNS_4NodeE:bb.a
  store double %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN3p2t5Sweep16NewFrontTriangleERNS_12SweepContextERNS_5PointERNS_4NodeE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIPN3p2t4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN3p2t5Sweep16NewFrontTriangleERNS_12SweepContextERNS_5PointERNS_4NodeE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %4 = load ptr, ptr %i.n, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %6) #18
  br label %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN3p2t4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN3p2t4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
end_hunk_2
