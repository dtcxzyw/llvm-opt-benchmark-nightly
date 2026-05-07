inline.NumInlined: 20842
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
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  %9 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %10 = alloca %"class.v8::internal::wasm::(anonymous namespace)::PrototypeSetupSequenceDetector", align 8 ; 44 uses
  %11 = alloca %"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::ElseState", align 8 ; 15 uses
  %12 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 21 uses
  %13 = alloca %"class.v8::internal::FixedSizeSignature.784", align 8 ; 7 uses
  %14 = alloca [2 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 11 uses
  %15 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 5, ptr noundef nonnull %11, i32 noundef 1) #24
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 5, i8 4, i64 40, i32 noundef 8) #24
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 4, i32 noundef 8) #24
  %scevgep.i94 = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 9 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 9 uses
  %19 = load i32, ptr %i.aq, align 8
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %19, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.fx = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 0, i8 noundef signext 0) ; 2 uses
  %i.fy = extractvalue { i64, ptr } %i.fx, 0
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.fy, ptr %i.fz, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 116
  %i.gb = load i32, ptr %i.ga, align 4
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.gb, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.gc = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 4, i8 noundef signext 0) ; 2 uses
  %i.gd = extractvalue { i64, ptr } %i.gc, 0
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.gd, ptr %i.ge, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.gg = load i32, ptr %i.gf, align 8
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.gg, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.gh = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 8, i8 noundef signext 0) ; 2 uses
  %i.gi = extractvalue { i64, ptr } %i.gh, 0
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.gi, ptr %i.gj, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 124
  %i.gl = load i32, ptr %i.gk, align 4
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.gl, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.gm = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 12, i8 noundef signext 0) ; 2 uses
  %i.gn = extractvalue { i64, ptr } %i.gm, 0
end_hunk_6
begin_hunk_7_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.gn, ptr %i.go, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.gq = load i32, ptr %i.gp, align 8
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.gq, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.gr = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 16, i8 noundef signext 0) ; 2 uses
  %i.gs = extractvalue { i64, ptr } %i.gr, 0
end_hunk_7
begin_hunk_8_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.gs, ptr %i.gt, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 132
  %i.gv = load i32, ptr %i.gu, align 4
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.gv, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.gw = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 20, i8 noundef signext 0) ; 2 uses
  %i.gx = extractvalue { i64, ptr } %i.gw, 0
end_hunk_8
begin_hunk_9_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.gx, ptr %i.gy, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.ha = load i32, ptr %i.gz, align 8
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.ha, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.hb = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 24, i8 noundef signext 0) ; 2 uses
  %i.hc = extractvalue { i64, ptr } %i.hb, 0
end_hunk_9
begin_hunk_10_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.hc, ptr %i.hd, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 140
  %i.hf = load i32, ptr %i.he, align 4
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.hf, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.hg = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 28, i8 noundef signext 0) ; 2 uses
  %i.hh = extractvalue { i64, ptr } %i.hg, 0
end_hunk_10
begin_hunk_11_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_:bb.a
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %i.hh, ptr %i.hi, i8 %.sroa.06.0.i.i88, i32 noundef 4) #24
  %i.hj = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.hk = load i32, ptr %i.hj, align 8
  store i32 5648, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fv, i8 0, i64 12, i1 false)
  store ptr null, ptr %i.fw, align 8
  store i32 %i.hk, ptr %scevgep.i94, align 4
  call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i88, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %12)
  %i.hl = call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef 32, i8 noundef signext 0) ; 2 uses
  %i.hm = extractvalue { i64, ptr } %i.hl, 0
end_hunk_11
