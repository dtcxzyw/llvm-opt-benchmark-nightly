Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE8DecodeGCEPS8_NS1_10WasmOpcodeE:bb.a
  %i.apd = and i64 %.sroa.04.0.i.i.i801.i, 4294967295 ; 2 uses
  %i.ape = icmp ugt i64 %i.apc, %i.apd
  tail call void @llvm.assume(i1 %i.ape)
  %i.apf = getelementptr inbounds nuw [24 x i8], ptr %i.aoy, i64 %i.apd ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8
  store ptr %i.apg, ptr %i.aor, align 8
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apf, i64 22
  %i.api = load i8, ptr %i.aph, align 2, !range !960, !noundef !961
  store i8 %i.api, ptr %i.aos, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %i.apj = icmp ult i32 %.sroa.04.0.extract.trunc.i.i803.i, 1048576
  br i1 %i.apj, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit807.i, label %bb.fu, !prof !963

bb.fu:                                            ; preds = %bb.ft
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) #27
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit807.i: ; preds = %bb.ft
  %i.apk = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i = load ptr, ptr %i.apk, align 8
  %i.apl = getelementptr inbounds i8, ptr %.val.i, i64 -448
  %i.apm = load i32, ptr %i.apl, align 8
  %i.apn = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.apo = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 3 uses
  %i.app = load ptr, ptr %i.apo, align 8          ; 2 uses
  %i.apq = load ptr, ptr %i.apn, align 8
  %i.apr = ptrtoint ptr %i.app to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  %i.apu = lshr exact i64 %i.apt, 2
  %i.apv = trunc i64 %i.apu to i32
  %i.apw = add i32 %i.apm, 4
  %.not.i.i475.i = icmp ugt i32 %i.apw, %i.apv
  br i1 %.not.i.i475.i, label %bb.fv, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i, !prof !962

bb.fv:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit807.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 4)
  %.pre1228.i = load ptr, ptr %i.apo, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.fv, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit807.i
  %i.apx = phi ptr [ %i.app, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit807.i ], [ %.pre1228.i, %bb.fv ]
  %i.apy = getelementptr i8, ptr %i.apx, i64 -16  ; 2 uses
  store ptr %i.apy, ptr %i.apo, align 8
  %i.apz = load <2 x i64>, ptr %i.apy, align 4
  store <2 x i64> %i.apz, ptr %37, align 16
  %i.aqa = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.aqb = load i8, ptr %i.aqa, align 8, !range !960, !noundef !961
  %i.aqc = trunc nuw i8 %i.aqb to i1
  br i1 %i.aqc, label %bb.fw, label %bb.fx, !prof !963

bb.fw:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 160
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9ArrayFillEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERNS1_19ArrayIndexImmediateERKNS1_9ValueBaseIS6_EESF_SF_SF_(ptr noundef nonnull align 8 dereferenceable(1284) %i.aqd, ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(17) %36, ptr noundef nonnull align 4 dereferenceable(4) %37)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeESA_SB_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vISB_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.aqe = add nuw nsw i32 %.sroa.5.0.i.i.i802.i, %.sroa.7.0.extract.trunc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.fy:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.aqf = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %.sroa.7.0.extract.shift ; 2 uses
  %i.aqh = load i8, ptr %i.aqg, align 1           ; 2 uses
  %.not.i.i.i.i818.i = icmp sgt i8 %i.aqh, -1
  br i1 %.not.i.i.i.i818.i, label %bb.fz, label %bb.ga, !prof !963

bb.fz:                                            ; preds = %bb.fy
  %i.aqi = zext nneg i8 %i.aqh to i64
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.aqj = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.aqg) ; 4 uses
  %i.aqk = icmp ult i64 %i.aqj, 25769803776
  tail call void @llvm.assume(i1 %i.aqk)
  %i.aql = icmp samesign ugt i64 %i.aqj, 4294967295
  tail call void @llvm.assume(i1 %i.aql)
  %i.aqm = lshr i64 %i.aqj, 32
  %i.aqn = trunc nuw nsw i64 %i.aqm to i32
  %.pre1226.i = load ptr, ptr %i.b, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.aqo = phi ptr [ %i.aqf, %bb.fz ], [ %.pre1226.i, %bb.ga ]
  %.sroa.04.0.i.i.i819.i = phi i64 [ %i.aqi, %bb.fz ], [ %i.aqj, %bb.ga ] ; 2 uses
  %.sroa.5.0.i.i.i820.i = phi i32 [ 1, %bb.fz ], [ %i.aqn, %bb.ga ] ; 3 uses
  %.sroa.04.0.extract.trunc.i.i821.i = trunc i64 %.sroa.04.0.i.i.i819.i to i32 ; 3 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %38, i64 4
  store i32 %.sroa.5.0.i.i.i820.i, ptr %i.aqp, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i821.i, ptr %38, align 8
  %i.aqq = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aqt = load ptr, ptr %i.aqs, align 8          ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 152
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 160
  %i.aqw = load ptr, ptr %i.aqv, align 8
  %i.aqx = load ptr, ptr %i.aqu, align 8          ; 2 uses
  %i.aqy = ptrtoint ptr %i.aqw to i64
  %i.aqz = ptrtoint ptr %i.aqx to i64
  %i.ara = sub i64 %i.aqy, %i.aqz
  %i.arb = sdiv exact i64 %i.ara, 24
  %i.arc = and i64 %.sroa.04.0.i.i.i819.i, 4294967295 ; 2 uses
  %i.ard = icmp ugt i64 %i.arb, %i.arc
  tail call void @llvm.assume(i1 %i.ard)
  %i.are = getelementptr inbounds nuw [24 x i8], ptr %i.aqx, i64 %i.arc ; 2 uses
  %i.arf = load ptr, ptr %i.are, align 8          ; 2 uses
  store ptr %i.arf, ptr %i.aqq, align 8
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 22
  %i.arh = load i8, ptr %i.arg, align 2, !range !960, !noundef !961 ; 2 uses
  store i8 %i.arh, ptr %i.aqr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %.sroa.7.0.extract.shift
  %i.arj = zext nneg i32 %.sroa.5.0.i.i.i820.i to i64
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.arj ; 2 uses
  %i.arl = load i8, ptr %i.ark, align 1           ; 2 uses
  %.not.i.i.i824.i = icmp sgt i8 %i.arl, -1
  br i1 %.not.i.i.i824.i, label %bb.gc, label %bb.gd, !prof !963

bb.gc:                                            ; preds = %bb.gb
  %i.arm = zext nneg i8 %i.arl to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i

bb.gd:                                            ; preds = %bb.gb
  %i.arn = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull %i.ark) ; 4 uses
  %i.aro = icmp ult i64 %i.arn, 25769803776
  tail call void @llvm.assume(i1 %i.aro)
  %i.arp = icmp samesign ugt i64 %i.arn, 4294967295
  tail call void @llvm.assume(i1 %i.arp)
  %i.arq = lshr i64 %i.arn, 32
  %i.arr = trunc nuw nsw i64 %i.arq to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i: ; preds = %bb.gd, %bb.gc
  %.sroa.04.0.i.i825.i = phi i64 [ %i.arm, %bb.gc ], [ %i.arn, %bb.gd ] ; 2 uses
  %.sroa.5.0.i.i826.i = phi i32 [ 1, %bb.gc ], [ %i.arr, %bb.gd ] ; 2 uses
  %.sroa.04.0.extract.trunc.i827.i = trunc i64 %.sroa.04.0.i.i825.i to i32 ; 4 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i32 %.sroa.04.0.extract.trunc.i827.i, ptr %39, align 4
  store i32 %.sroa.5.0.i.i826.i, ptr %i.ars, align 4
  %i.art = getelementptr inbounds nuw i8, ptr %i.arf, i64 4
  %.sroa.0.0.copyload.i829.i = load i32, ptr %i.art, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  %i.aru = and i64 %.sroa.04.0.i.i825.i, 4294967295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  switch i32 %.sroa.0.0.copyload.i829.i, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i [
    i32 6928, label %bb.ge
    i32 7184, label %bb.ge
    i32 7440, label %bb.gf
  ]

bb.ge:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i

bb.gf:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i: ; preds = %bb.gf, %bb.ge, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i
  %.sroa.0.0.i830.i = phi i32 [ 5648, %bb.ge ], [ 6160, %bb.gf ], [ %.sroa.0.0.copyload.i829.i, %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit828.i ]
  store i32 %.sroa.0.0.i830.i, ptr %41, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  call void @_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %40, i64 noundef %i.aru, ptr noundef nonnull align 4 dereferenceable(4) %41, ptr noundef nonnull align 1 dereferenceable(1) %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val517.i = load ptr, ptr %i.arv, align 8
  %i.arw = getelementptr inbounds i8, ptr %.val517.i, i64 -448
  %i.arx = load i32, ptr %i.arw, align 8
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.asa = load ptr, ptr %i.arz, align 8          ; 2 uses
  %i.asb = load ptr, ptr %i.ary, align 8
  %i.asc = ptrtoint ptr %i.asa to i64
  %i.asd = ptrtoint ptr %i.asb to i64
  %i.ase = sub i64 %i.asc, %i.asd
  %i.asf = lshr exact i64 %i.ase, 2
  %i.asg = trunc i64 %i.asf to i32
  %i.ash = add i32 %i.arx, %.sroa.04.0.extract.trunc.i827.i
  %.not.i.i334.i = icmp ugt i32 %i.ash, %i.asg
  br i1 %.not.i.i334.i, label %bb.gg, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !962

bb.gg:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i
  call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef %.sroa.04.0.extract.trunc.i827.i)
  %.pre1227.i = load ptr, ptr %i.arz, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.gg, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i
  %i.asi = phi ptr [ %.pre1227.i, %bb.gg ], [ %i.asa, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit831.i ] ; 2 uses
  %.not2.i833.i = icmp eq i32 %.sroa.04.0.extract.trunc.i827.i, 0
  br i1 %.not2.i833.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit836.i, label %.lr.ph.preheader.i834.i

.lr.ph.preheader.i834.i:                          ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.neg.i835.i = mul nsw i64 %i.aru, -4
  %i.asj = getelementptr i8, ptr %i.asi, i64 %.neg.i835.i ; 2 uses
  store ptr %i.asj, ptr %i.arz, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit836.i

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit836.i: ; preds = %.lr.ph.preheader.i834.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.ask = phi ptr [ %i.asi, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i ], [ %i.asj, %.lr.ph.preheader.i834.i ]
  %i.asl = icmp ult i32 %.sroa.04.0.extract.trunc.i.i821.i, 1048576
  br i1 %i.asl, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit840.i, label %bb.gh, !prof !963

bb.gh:                                            ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit836.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) #27
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit840.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE3popEj.exit836.i
  %i.asm = shl nuw nsw i8 %i.arh, 4
  %i.asn = or disjoint i8 %i.asm, 99
  %i.aso = zext nneg i8 %i.asn to i32
  %i.asp = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i821.i, 8
  %i.asq = or disjoint i32 %i.asp, %i.aso         ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.089.0.copyload.i = load i32, ptr %i.asr, align 8
  %i.ass = and i32 %.sroa.089.0.copyload.i, 8
  %.not.i841.i = icmp eq i32 %i.ass, 0
  br i1 %.not.i841.i, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit844.i, label %bb.gi, !prof !963

bb.gi:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit840.i
  %i.ast = or disjoint i32 %i.asq, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit844.i

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit844.i: ; preds = %bb.gi, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit840.i
  %.sroa.0.0.i843.i = phi i32 [ %i.ast, %bb.gi ], [ %i.asq, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit840.i ]
  store i32 %.sroa.0.0.i843.i, ptr %i.ask, align 4
  %i.asu = load ptr, ptr %i.arz, align 8
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 4
  store ptr %i.asv, ptr %i.arz, align 8
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.asx = load i8, ptr %i.asw, align 8, !range !960, !noundef !961
  %i.asy = trunc nuw i8 %i.asx to i1
  br i1 %i.asy, label %bb.gj, label %bb.gk, !prof !963

bb.gj:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit844.i
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 160
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13ArrayNewFixedEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateEPKNS1_9ValueBaseIS6_EEPSH_(ptr noundef nonnull align 8 dereferenceable(1284) %i.asz, ptr noundef nonnull align 8 dereferenceable(1536) %0, ptr noundef nonnull align 8 dereferenceable(17) %38, ptr noundef nonnull align 4 dereferenceable(8) %39)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit844.i
  %i.ata = add nuw nsw i32 %.sroa.5.0.i.i.i820.i, %.sroa.7.0.extract.trunc
  %i.atb = add nuw nsw i32 %i.ata, %.sroa.5.0.i.i826.i
  %i.atc = load ptr, ptr %40, align 8             ; 3 uses
  %.not.i.i.i845.i = icmp eq ptr %i.atc, null
  br i1 %.not.i.i.i845.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.atd = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.ate = load ptr, ptr %i.atd, align 8
  %i.atf = ptrtoint ptr %i.ate to i64
  %i.atg = ptrtoint ptr %i.atc to i64
  %i.ath = sub i64 %i.atf, %i.atg
  call void @_ZdlPvm(ptr noundef nonnull %i.atc, i64 noundef %i.ath) #26
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.gn:                                            ; preds = %bb.e
  %i.ati = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val519.i = load ptr, ptr %i.ati, align 8
  %i.atj = getelementptr inbounds i8, ptr %.val519.i, i64 -448
  %i.atk = load i32, ptr %i.atj, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.atn = load ptr, ptr %i.atm, align 8          ; 2 uses
  %i.ato = load ptr, ptr %i.atl, align 8
  %i.atp = ptrtoint ptr %i.atn to i64
  %i.atq = ptrtoint ptr %i.ato to i64
  %i.atr = sub i64 %i.atp, %i.atq
  %i.ats = lshr exact i64 %i.atr, 2
  %i.att = trunc i64 %i.ats to i32
  %i.atu = add i32 %i.atk, 1
  %.not.i.i323.i = icmp ugt i32 %i.atu, %i.att
  br i1 %.not.i.i323.i, label %bb.go, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit325.i, !prof !962

bb.go:                                            ; preds = %bb.gn
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre1225.i = load ptr, ptr %i.atm, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit325.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit325.i: ; preds = %bb.go, %bb.gn
  %i.atv = phi ptr [ %i.atn, %bb.gn ], [ %.pre1225.i, %bb.go ]
  %i.atw = getelementptr i8, ptr %i.atv, i64 -4   ; 2 uses
  store ptr %i.atw, ptr %i.atm, align 8
  store i32 3073, ptr %i.atw, align 4
  %i.atx = load ptr, ptr %i.atm, align 8
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 4
  store ptr %i.aty, ptr %i.atm, align 8
  %i.atz = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.aua = load i8, ptr %i.atz, align 8, !range !960, !noundef !961
  %i.aub = trunc nuw i8 %i.aua to i1
  br i1 %i.aub, label %bb.gp, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !963

bb.gp:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit325.i
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6RefI31EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPSB_(ptr noundef nonnull align 8 dereferenceable(1284) %i.auc)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

bb.gq:                                            ; preds = %bb.e
  %i.aud = load ptr, ptr %i.r, align 8            ; 2 uses
  %i.aue = load i64, ptr %i.aud, align 8
  %i.auf = or i64 %i.aue, 16
  store i64 %i.auf, ptr %i.aud, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val520.i = load ptr, ptr %i.aug, align 8
  %i.auh = getelementptr inbounds i8, ptr %.val520.i, i64 -448
  %i.aui = load i32, ptr %i.auh, align 8
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.aul = load ptr, ptr %i.auk, align 8          ; 2 uses
  %i.aum = load ptr, ptr %i.auj, align 8
  %i.aun = ptrtoint ptr %i.aul to i64
  %i.auo = ptrtoint ptr %i.aum to i64
  %i.aup = sub i64 %i.aun, %i.auo
  %i.auq = lshr exact i64 %i.aup, 2
  %i.aur = trunc i64 %i.auq to i32
  %i.aus = add i32 %i.aui, 1
  %.not.i.i.i2 = icmp ugt i32 %i.aus, %i.aur
  br i1 %.not.i.i.i2, label %bb.gr, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i, !prof !962

bb.gr:                                            ; preds = %bb.gq
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre1224.i = load ptr, ptr %i.auk, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.gr, %bb.gq
  %i.aut = phi ptr [ %i.aul, %bb.gq ], [ %.pre1224.i, %bb.gr ]
  %i.auu = getelementptr i8, ptr %i.aut, i64 -4   ; 2 uses
  store ptr %i.auu, ptr %i.auk, align 8
  store i32 3089, ptr %i.auu, align 4
  %i.auv = load ptr, ptr %i.auk, align 8
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  store ptr %i.auw, ptr %i.auk, align 8
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.auy = load i8, ptr %i.aux, align 8, !range !960, !noundef !961
  %i.auz = trunc nuw i8 %i.auy to i1
  br i1 %i.auz, label %bb.gs, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !963

bb.gs:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vISA_SC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6RefI31EPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EEPSB_(ptr noundef nonnull align 8 dereferenceable(1284) %i.ava)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE4PeekEi.exit467.i: ; preds = %bb.e
  %i.avb = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val490.i = load ptr, ptr %i.avb, align 8
  %i.avc = getelementptr inbounds i8, ptr %.val490.i, i64 -448
  %i.avd = load i32, ptr %i.avc, align 8
  %i.ave = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.avg = load ptr, ptr %i.avf, align 8          ; 2 uses
  %i.avh = load ptr, ptr %i.ave, align 8
  %i.avi = ptrtoint ptr %i.avg to i64
  %i.avj = ptrtoint ptr %i.avh to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %i.avl = lshr exact i64 %i.avk, 2
  %i.avm = trunc i64 %i.avl to i32
  %i.avn = add i32 %i.avd, 1
  %.not.i.i347.i = icmp ugt i32 %i.avn, %i.avm
  br i1 %.not.i.i347.i, label %bb.gt, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit350.i, !prof !962

bb.gt:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE4PeekEi.exit467.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre1223.i = load ptr, ptr %i.avf, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit350.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit350.i: ; preds = %bb.gt, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE4PeekEi.exit467.i
  %i.avo = phi ptr [ %i.avg, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE4PeekEi.exit467.i ], [ %.pre1223.i, %bb.gt ]
  %i.avp = getelementptr i8, ptr %i.avo, i64 -4   ; 3 uses
  store ptr %i.avp, ptr %i.avf, align 8
  %.sroa.03.0.copyload.i855.i = load i32, ptr %i.avp, align 4
  store i32 5648, ptr %i.avp, align 4
  %i.avq = load ptr, ptr %i.avf, align 8
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  store ptr %i.avr, ptr %i.avf, align 8
  %i.avs = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.avt = load i8, ptr %i.avs, align 8, !range !960, !noundef !961
  %i.avu = trunc nuw i8 %i.avt to i1
  br i1 %i.avu, label %bb.gu, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeGCImplEPNS8_9TraceLineENS1_10WasmOpcodeE.exit, !prof !963

bb.gu:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_19IndependentHeapTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESC_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISG_XsZT_EEE4typeEDpT_.exit350.i
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.avx = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  %i.avy = load ptr, ptr %i.avx, align 8          ; 2 uses
  %i.avz = getelementptr inbounds i8, ptr %i.avy, i64 -12 ; 2 uses
  %.sroa.07.0.copyload.i856.i = load i64, ptr %i.avz, align 4 ; 3 uses
  %.sroa.07.sroa.58.0.extract.shift.i857.i = lshr i64 %.sroa.07.0.copyload.i856.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i858.i = getelementptr inbounds i8, ptr %i.avy, i64 -4
  %.sroa.6.0.copyload.i859.i = load i32, ptr %.sroa.6.0..sroa_idx.i858.i, align 4
  store ptr %i.avz, ptr %i.avx, align 8
  %i.awa = and i64 %.sroa.07.0.copyload.i856.i, 255
  %i.awb = icmp eq i64 %i.awa, 1
  br i1 %i.awb, label %bb.gv, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i860.i, !prof !963

end_hunk_0
