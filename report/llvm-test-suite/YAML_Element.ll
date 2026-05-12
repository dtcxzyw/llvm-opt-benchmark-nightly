inline.NumInlined: 304
inline.NumDeleted: 126
begin_hunk_0_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %4 = load ptr, ptr %i.i, align 8, !tbaa !20
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %6) #13
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_2
begin_hunk_3_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d
end_hunk_3
begin_hunk_4_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_4
begin_hunk_5_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %4 = load ptr, ptr %i.i, align 8, !tbaa !20
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %6) #13
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_5
begin_hunk_6_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d
end_hunk_6
begin_hunk_7_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx:bb.a
bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_7
begin_hunk_8_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %4 = load ptr, ptr %i.i, align 8, !tbaa !20
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %6) #13
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_8
begin_hunk_9_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d
end_hunk_9
begin_hunk_10_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_10
begin_hunk_11_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %4 = load ptr, ptr %i.i, align 8, !tbaa !20
  %5 = ptrtoint ptr %4 to i64
  %6 = sub i64 %5, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %6) #13
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_11
begin_hunk_12_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c
end_hunk_12
begin_hunk_13_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_13
begin_hunk_14_@_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %3 = load ptr, ptr %i.i, align 8, !tbaa !20
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %5) #13
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_14
