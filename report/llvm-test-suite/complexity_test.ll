inline.NumInlined: 660
inline.NumDeleted: 124
begin_hunk_0_@_Z16BM_Complexity_O1RN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.k, align 32, !tbaa !38  ; 3 uses
  %.not31 = icmp eq ptr %i.m, %i.n
  br i1 %.not31, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

end_hunk_0
begin_hunk_1_@_Z16BM_Complexity_O1RN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.o, ptr %i.p, align 8, !tbaa !40
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.iw = load ptr, ptr %15, align 8, !tbaa !59, !alias.scope !76, !nonnull !43, !noundef !43
  %i.ix = trunc nuw nsw i32 %4 to i8
  %i.iy = or disjoint i8 %i.ix, 48                ; 2 uses
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !65
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i395 unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i395: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i392
  %i.nn = load ptr, ptr %31, align 8, !tbaa !59, !alias.scope !85, !nonnull !43, !noundef !43
  store i8 %i.iy, ptr %i.nn, align 1, !tbaa !65
  %i.no = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.56, i64 noundef 16)
          to label %.noexc407 unwind label %bb.de ; 6 uses
end_hunk_3
begin_hunk_4_@_Z17BM_Complexity_O_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !38  ; 3 uses
  %.not33 = icmp eq ptr %i.o, %i.p
  br i1 %.not33, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

end_hunk_4
begin_hunk_5_@_Z17BM_Complexity_O_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !40
end_hunk_5
begin_hunk_6_@_Z17BM_Complexity_O_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

_ZNK9benchmark5State10iterationsEv.exit21.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit21, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit23
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.j, align 32, !tbaa !38 ; 3 uses
  %.not34 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not34, label %bb.f, label %_ZNK9benchmark5State5rangeEm.exit26

end_hunk_6
begin_hunk_7_@_Z17BM_Complexity_O_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  unreachable

_ZNK9benchmark5State5rangeEm.exit26:              ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = sitofp i64 %i.ar to double
  %i.at = fmul nnan double %i.as, 4.200000e+01
end_hunk_7
begin_hunk_8_@_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !38  ; 3 uses
  %.not35 = icmp eq ptr %i.o, %i.p
  br i1 %.not35, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

end_hunk_8
begin_hunk_9_@_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !40
end_hunk_9
begin_hunk_10_@_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi:_ZN9benchmark5State13StateIteratorC2EPS0_.exit

_ZNK9benchmark5State10iterationsEv.exit21.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit21, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit23
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.am = load ptr, ptr %i.j, align 32, !tbaa !38 ; 3 uses
  %.not32 = icmp eq ptr %i.al, %i.am
  br i1 %.not32, label %bb.e, label %_ZNK9benchmark5State5rangeEm.exit

end_hunk_10
begin_hunk_11_@_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = load i64, ptr %i.am, align 8, !tbaa !39
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 4.200000e+01
end_hunk_11
