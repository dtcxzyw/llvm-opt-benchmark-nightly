inline.NumInlined: 5606
inline.NumDeleted: 3138
begin_hunk_0_@_ZN2v88internal4wasm12NativeModuleC2ENS1_19WasmEnabledFeaturesENS1_20WasmDetectedFeaturesENS1_18CompileTimeImportsENS0_13VirtualMemoryESt10shared_ptrIKNS1_10WasmModuleEES7_INS0_8CountersEEPS7_IS2_E:bb.a
  br label %_ZSt11make_sharedIN2v88internal4wasm22WasmModuleCoverageDataEJRKjEESt10shared_ptrIT_EDpOT0_.exit

_ZSt11make_sharedIN2v88internal4wasm22WasmModuleCoverageDataEJRKjEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.ao, %_ZNSt10unique_ptrIA_S_IN2v88internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS3_EES4_IS7_EED2Ev.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.ho, %_ZNSt10unique_ptrIA_S_IN2v88internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS3_EES4_IS7_EED2Ev.exit.i.i.i.i.i.i.i.i ], [ null, %bb.ao ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.hp, align 8, !noalias !102
  %i.hq = getelementptr inbounds nuw i8, ptr %i.he, i64 32
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEE:bb.a
  br i1 %.not194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ag = shl nuw nsw i64 %3, 4
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #34 ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %0, align 8
  store ptr %i.ah, ptr %16, align 8
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %3
end_hunk_1
