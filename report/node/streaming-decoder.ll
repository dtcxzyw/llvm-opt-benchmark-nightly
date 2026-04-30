inline.NumInlined: 1506
inline.NumDeleted: 885
begin_hunk_0_@_ZN2v88internal4wasm21AsyncStreamingDecoder6FinishEb:bb.a
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %_ZN2v84base11OwnedVectorIhED2Ev.exit, %_ZNKSt14default_deleteIN2v88internal4wasm18StreamingProcessorEEclEPS3_.exit.i.i.i.i.i, %bb.o, %bb.n, %.thread, %bb.m
  %i.dk = phi ptr [ null, %_ZN2v84base11OwnedVectorIhED2Ev.exit ], [ %.pre, %_ZNKSt14default_deleteIN2v88internal4wasm18StreamingProcessorEEclEPS3_.exit.i.i.i.i.i ], [ null, %bb.o ], [ null, %bb.n ], [ %.pre69, %.thread ], [ null, %bb.m ]
  %.not.i.i33.not = icmp eq ptr %i.dk, null       ; 2 uses
  %i.dl = select i1 %.not.i.i33.not, ptr %i.c, ptr %i.a ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  store ptr null, ptr %i.dl, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.051.0, ptr %3, align 8
  store i64 %.sroa.10.0, ptr %4, align 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
end_hunk_0
