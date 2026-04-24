inline.NumInlined: 20819
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10AtomicWaitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindERKNS1_21MemoryAccessImmediateE:bb.a

bb.z:                                             ; preds = %bb.y, %_ZN2v88internal4wasm16LiftoffAssembler14PeekToRegisterEiNS1_14LiftoffRegListE.exit78
  %i.ev = phi i32 [ 1362, %_ZN2v88internal4wasm16LiftoffAssembler14PeekToRegisterEiNS1_14LiftoffRegListE.exit78 ], [ 1363, %bb.y ]
  %.sroa.5.0.insert.ext.i = phi i32 [ 151060480, %_ZN2v88internal4wasm16LiftoffAssembler14PeekToRegisterEiNS1_14LiftoffRegListE.exit78 ], [ 151584768, %bb.y ]
  %i.ew = phi i8 [ 1, %_ZN2v88internal4wasm16LiftoffAssembler14PeekToRegisterEiNS1_14LiftoffRegListE.exit78 ], [ 9, %bb.y ]
  %.sroa.08.0 = phi i8 [ %.sroa.011.0.i74, %_ZN2v88internal4wasm16LiftoffAssembler14PeekToRegisterEiNS1_14LiftoffRegListE.exit78 ], [ 0, %bb.y ]
  %i.ex = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -12
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10AtomicWaitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindERKNS1_21MemoryAccessImmediateE:bb.a
  store i64 4, ptr %i.fd, align 8, !alias.scope !1137
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.fc, ptr %i.fe, align 8, !alias.scope !1137
  %.sroa.4.0.insert.ext.i = zext nneg i8 %i.bs to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.ext.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, 1
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.fc, align 8, !alias.scope !1137
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fg = load i32, ptr %i.ff, align 4
end_hunk_1
