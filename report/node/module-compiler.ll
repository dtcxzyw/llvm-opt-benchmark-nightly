inline.NumInlined: 5481
inline.NumDeleted: 2947
begin_hunk_0_@_ZN2v88internal4wasm11CompileLazyEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi:bb.a
  %.val.i = load ptr, ptr %i.y, align 8           ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 704
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = icmp ne i8 %i.aa, 0                     ; 2 uses
  %brmerge.i.i = or i1 %i.ab, %i.x
  br i1 %brmerge.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i.thread

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm11CompileLazyEPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEi:bb.a
  br label %bb.d

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i: ; preds = %bb.c
  %.mux.i.i = select i1 %i.ab, i16 514, i16 257   ; 3 uses
  %.sroa.06.0.extract.trunc.i = trunc i16 %.mux.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i16 %.mux.i.i, 8
  %.sroa.5.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.5.0.extract.shift.i to i8 ; 2 uses
  br i1 %i.x, label %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge, label %bb.d

_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i._ZN2v88internal4wasm12_GLOBAL__N_123GetLazyCompilationTiersEPNS1_12NativeModuleEjNS1_10DebugStateE.exit_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_124GetDefaultTiersPerModuleEPNS1_12NativeModuleENS1_10DebugStateEb.exit.i
end_hunk_1
