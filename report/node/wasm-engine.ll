inline.NumInlined: 5629
inline.NumDeleted: 3011
begin_hunk_0_@_ZN2v88internal4wasm10WasmEngine26SyncCompileTranslatedAsmJsEPNS0_7IsolateEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEENS0_12DirectHandleINS0_6ScriptEEENS7_6VectorIS9_EENSB_INS0_10HeapNumberEEENS0_12LanguageModeE:bb.a
  %.pre = load ptr, ptr %11, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm22AsmJsOffsetInformationEEclEPS3_.exit.i.i.i.i, %bb.p
  %i.bx = phi ptr [ %.pre, %_ZNKSt14default_deleteIN2v88internal4wasm22AsmJsOffsetInformationEEclEPS3_.exit.i.i.i.i ], [ %i.bu, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.by = load ptr, ptr %i.d, align 8
  %.sroa.07.0.copyload = load i64, ptr %10, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm10WasmEngine26SyncCompileTranslatedAsmJsEPNS0_7IsolateEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEENS0_12DirectHandleINS0_6ScriptEEENS7_6VectorIS9_EENSB_INS0_10HeapNumberEEENS0_12LanguageModeE:bb.a
  store ptr null, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.cb, align 8
  store ptr null, ptr %11, align 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ce = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  store ptr %i.ce, ptr %16, align 8
  %i.cf = load i64, ptr %i.ak, align 8
  store i64 %i.cf, ptr %19, align 8
  store i64 0, ptr %i.ak, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm10WasmEngine11SyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEE:bb.a
  store ptr %i.ey, ptr %i.ew, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.ak
  %i.fh = phi ptr [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ey, %bb.ak ], [ %i.ex, %bb.ag ]
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.fi, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm10WasmEngine11SyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsEPNS1_12ErrorThrowerENS_4base11OwnedVectorIKhEE:bb.a
  store ptr %i.dd, ptr %16, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.fj, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fk = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  store ptr %i.fk, ptr %17, align 8
  %i.fl = load i64, ptr %i.az, align 8
  store i64 %i.fl, ptr %19, align 8
  store i64 0, ptr %i.az, align 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm10WasmEngine12AsyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsESt10shared_ptrINS1_25CompilationResultResolverEENS_4base11OwnedVectorIKhEEPKc:bb.a
  store ptr %i.au, ptr %i.as, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.k
  %i.bd = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.au, %bb.k ], [ %i.at, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 1
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bf = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  store ptr %i.bf, ptr %11, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %19, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm10WasmEngine12AsyncCompileEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsESt10shared_ptrINS1_25CompilationResultResolverEENS_4base11OwnedVectorIKhEEPKc:bb.a
  store ptr %i.ld, ptr %i.lb, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit84

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit84: ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i79, %bb.bq
  %i.lm = phi ptr [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i79 ], [ %i.ld, %bb.bq ], [ %i.lc, %bb.bm ]
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.ln, align 8
  store i8 0, ptr %i.lm, align 1
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lo = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  store ptr %i.lo, ptr %17, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8
  store i64 %i.lq, ptr %20, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm10WasmEngine21CreateAsyncCompileJobEPNS0_7IsolateENS1_19WasmEnabledFeaturesENS1_18CompileTimeImportsENS_4base11OwnedVectorIKhEENS0_12DirectHandleINS0_7ContextEEEPKcSt10shared_ptrINS1_25CompilationResultResolverEEi:bb.a
  store ptr %i.aa, ptr %i.y, align 8
  br label %_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKhEC2IS2_Qsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.i
  %i.aj = phi ptr [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.aa, %bb.i ], [ %i.z, %bb.e ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 1
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.al = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  store ptr %i.al, ptr %10, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %12, align 8
end_hunk_6
