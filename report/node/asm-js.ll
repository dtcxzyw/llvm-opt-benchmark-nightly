inline.NumInlined: 1543
inline.NumDeleted: 666
begin_hunk_0_@_ZN2v88internal19AsmJsCompilationJob15FinalizeJobImplENS0_12DirectHandleINS0_18SharedFunctionInfoEEEPNS0_7IsolateE:bb.a
  store i8 %i.ao, ptr %i.al, align 1, !noalias !23
  br label %_ZN2v84base11OwnedVectorIKhEC2IhQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IhQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.024.0 = phi ptr [ %i.al, %bb.d ], [ %i.al, %bb.c ], [ %i.al, %bb.e ], [ null, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ]
  store ptr %.sroa.024.0, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aj, ptr %10, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
end_hunk_0
