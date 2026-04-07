begin_hunk_0_@_ZN6duckdb24ExplainStatementVerifierC2ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE:._crit_edge.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.e) #9, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb24ExplainStatementVerifierC2ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE:._crit_edge.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.l) #9, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit7: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i6
  %i.p = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

end_hunk_1
begin_hunk_2_@_ZN6duckdb24ExplainStatementVerifier6CreateERKNS_12SQLStatementENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSB_SC_EEELb1EEE:bb.a
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %4, align 8, !tbaa !15, !noalias !21
  store i64 %i.e, ptr %3, align 8, !tbaa !15, !noalias !21
  store ptr null, ptr %4, align 8, !tbaa !15, !noalias !21
  invoke void @_ZN6duckdb24ExplainStatementVerifierC1ENS_10unique_ptrINS_12SQLStatementESt14default_deleteIS2_ELb1EEENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSD_SE_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull %3, ptr %2)
          to label %bb.b unwind label %bb.c, !noalias !21

bb.b:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !15, !noalias !21 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17, !noalias !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !21
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.f) #9, !noalias !21, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8, !tbaa !15, !noalias !21 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.k, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17, !noalias !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !21
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.k) #9, !noalias !21, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit6.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i5.i, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.d) #10, !noalias !21
  br label %.body

_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.d, ptr %0, align 8, !tbaa !25
  %i.o = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
end_hunk_2
begin_hunk_3_@_ZN6duckdb24ExplainStatementVerifier6CreateERKNS_12SQLStatementENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSB_SC_EEELb1EEE:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.o) #9, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24ExplainStatementVerifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb24ExplainStatementVerifier6CreateERKNS_12SQLStatementENS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSB_SC_EEELb1EEE:bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.t) #9, !inline_history !19
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit5: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i4
end_hunk_4
begin_hunk_5_@_Znwm
!16 = !{!"p1 _ZTSN6duckdb12SQLStatementE", !10, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = distinct !{null, null}
!20 = !{!12, !9, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN6duckdb9make_uniqINS_24ExplainStatementVerifierEJNS_10unique_ptrINS_12SQLStatementESt14default_deleteIS3_ELb1EEERNS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSE_SF_EEELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!23 = distinct !{!23, !"_ZN6duckdb9make_uniqINS_24ExplainStatementVerifierEJNS_10unique_ptrINS_12SQLStatementESt14default_deleteIS3_ELb1EEERNS_12optional_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSE_SF_EEELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!24 = distinct !{null, null, null}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17StatementVerifierELb0EE", !27, i64 0}
!27 = !{!"p1 _ZTSN6duckdb17StatementVerifierE", !10, i64 0}
end_hunk_5
