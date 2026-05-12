inline.NumInlined: 225
inline.NumDeleted: 110
begin_hunk_0_@_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_:bb.a
bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_1
begin_hunk_2_@_ZN10ODDLParser7DDLNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_mPS0_:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
end_hunk_2
begin_hunk_3_@_ZN10ODDLParser7DDLNode12attachParentEPS0_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.e, label %bb.d
end_hunk_3
begin_hunk_4_@_ZN10ODDLParser7DDLNode12attachParentEPS0_:bb.a
bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_4
begin_hunk_5_@_ZN10ODDLParser7DDLNode12attachParentEPS0_:bb.a
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
end_hunk_5
begin_hunk_6_@_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @_ZN10ODDLParser7DDLNode16s_allocatedNodesE, align 8 ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 6 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_6
begin_hunk_7_@_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #20
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
end_hunk_7
