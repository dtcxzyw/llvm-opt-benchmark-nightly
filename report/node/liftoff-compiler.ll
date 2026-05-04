inline.NumInlined: 20818
inline.NumDeleted: 3929
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE6DecodeEv:bb.a
  %i.kq = icmp ult i32 %i.kp, 17
  %i.kr = load ptr, ptr %i.kj, align 8
  %i.ks = select i1 %i.kq, ptr %i.kj, ptr %i.kr
  %i.kt = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 20
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE6DecodeEv:bb.a

.lr.ph40.i.i.i:                                   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18ParameterProcessor20MaybeCollectRegisterEv.exit11.i.i.i
  store i8 %i.kz, ptr %i.kk, align 4
  store i8 0, ptr %i.kl, align 1
  store i8 %i.kz, ptr %i.km, align 2
  store i8 %i.ld, ptr %i.kn, align 1
  store i48 %.sroa.0.0.i.i.i.i.i.i, ptr %i.kh, align 8
end_hunk_1
