inline.NumInlined: 378
inline.NumDeleted: 277
begin_hunk_0_@_ZN2v88internal4wasm20SyncStreamingDecoder6FinishEb:bb.a
  store ptr %i.cb, ptr %i.bz, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IhQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IhQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.j
  %i.ck = phi ptr [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.cb, %bb.n ], [ %i.ca, %bb.j ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.cl, align 8
  store i8 0, ptr %i.ck, align 1
  store ptr %.sroa.044.1, ptr %6, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.b, ptr %7, align 8
  %i.cm = call ptr @_ZN2v88internal4wasm10WasmEngine11SyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEE(ptr noundef nonnull align 8 dereferenceable(8488) %i.br, ptr noundef %i.bs, i32 %.sroa.03.0.copyload, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #15 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8               ; 2 uses
end_hunk_0
