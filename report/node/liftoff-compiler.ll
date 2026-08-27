Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI32DivUEPS8_NS1_10WasmOpcodeE:bb.a
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E0_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI32RemSEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E1_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI32RemUEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E2_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32AndEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 4, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 4) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_andiENS0_8RegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 1, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_andENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32IorEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 1, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 4) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_oriENS0_8RegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 1, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler11emit_i32_orENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32XorEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 6, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 4) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_xoriENS0_8RegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 1, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_xorENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32ShlEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %i.bc = and i32 %.sroa.443.0.copyload.i, 31
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bc to i64
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i, i32 noundef 4, i32 noundef 4) #24
  %i.bd = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.be = or i32 %i.bd, %.pre-phi7
  store i32 %i.be, ptr %.phi.trans.insert.i.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bg = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i32 %i.bp, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit
  %i.bs = phi i32 [ %i.br, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bk, %i.bu
  br i1 %i.bv, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bw = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bk, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store ptr %i.bx, ptr %i.w, align 8
  store i8 1, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 1, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bs, ptr %i.ca, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_shlENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI32ShrSEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %i.bc = and i32 %.sroa.443.0.copyload.i, 31
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bc to i64
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i, i32 noundef 7, i32 noundef 4) #24
  %i.bd = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.be = or i32 %i.bd, %.pre-phi7
  store i32 %i.be, ptr %.phi.trans.insert.i.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bg = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i32 %i.bp, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit
  %i.bs = phi i32 [ %i.br, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bk, %i.bu
  br i1 %i.bv, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bw = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bk, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store ptr %i.bx, ptr %i.w, align 8
  store i8 1, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 1, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bs, ptr %i.ca, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_sarENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI32ShrUEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 4) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %i.bc = and i32 %.sroa.443.0.copyload.i, 31
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bc to i64
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i, i32 noundef 5, i32 noundef 4) #24
  %i.bd = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.be = or i32 %i.bd, %.pre-phi7
  store i32 %i.be, ptr %.phi.trans.insert.i.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bg = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i32 %i.bp, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit
  %i.bs = phi i32 [ %i.br, %bb.k ], [ 36, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bk, %i.bu
  br i1 %i.bv, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bw = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bk, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store ptr %i.bx, ptr %i.w, align 8
  store i8 1, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 1, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bs, ptr %i.ca, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_shrENS0_8RegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32RolEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rolEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %i.u)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI32RorEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5648, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %i.u)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_i_iiENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI64ClzEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 1
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 1)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -4       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE23BuildSimpleOperator_l_lENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.026.0.copyload.i = load i64, ptr %i.y, align 4 ; 3 uses
  %.sroa.026.sroa.527.0.extract.shift.i = lshr i64 %.sroa.026.0.copyload.i, 32 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI64DivUEPS8_NS1_10WasmOpcodeE:bb.a
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E4_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI64RemSEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E5_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI64RemUEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E6_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull align 8 dereferenceable(1284) %i.u, ptr nonnull readonly align 8 dereferenceable(1536) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI64AndEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 8) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 4, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 8) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 40, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_andiENS1_15LiftoffRegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 2, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_andENS1_15LiftoffRegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI64IorEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 8) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 1, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 8) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 40, %_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 2, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler11emit_i64_orENS1_15LiftoffRegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI64XorEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12 ; 2 uses
  %.sroa.042.0.copyload.i = load i8, ptr %i.y, align 4
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.z = icmp eq i8 %.sroa.042.0.copyload.i, 2
  br i1 %i.z, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  store ptr %i.y, ptr %i.w, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -24 ; 2 uses
  %.sroa.044.0.copyload.i = load i64, ptr %i.aa, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift.i = lshr i64 %.sroa.044.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.aa, ptr %i.w, align 8
  %i.ab = and i64 %.sroa.044.0.copyload.i, 255
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ae = and i64 %.sroa.044.sroa.545.0.extract.shift.i, 255
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift.i to i32
  %i.ak = and i32 %i.aj, 255
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.am = shl nuw i32 1, %i.ak
  %i.an = xor i32 %i.am, -1
  %i.ao = load i32, ptr %i.al, align 8
  %i.ap = and i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.046.4.extract.trunc.i = trunc i64 %.sroa.044.sroa.545.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.d
  %i.aq = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 %.sroa.044.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.g
  %.sroa.07.0.i.i = phi i8 [ %.sroa.046.4.extract.trunc.i, %bb.g ], [ %i.aq, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 7 uses
  %2 = zext nneg i8 %.sroa.07.0.i.i to i32
  %3 = shl nuw i32 1, %2                          ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 3 uses
  %4 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.ar = and i32 %3, %4
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, label %._crit_edge.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.as = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.as)
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.at = and i32 %3, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = xor i32 %4, -1
  %i.aw = and i32 %i.au, %i.av                    ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i2, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aw, i1 true)
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.010.2.i.i = phi i8 [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 5 uses
  %i.ba = icmp samesign ult i8 %.sroa.010.2.i.i, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp samesign ult i8 %.sroa.07.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  %.not.i.i = icmp eq i8 %.sroa.010.2.i.i, %.sroa.07.0.i.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef 8) #24
  %.pre = zext nneg i8 %.sroa.010.2.i.i to i32
  %.pre6 = shl nuw nsw i32 1, %.pre
  br label %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, %bb.j
  %.pre-phi7 = phi i32 [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %3, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.pre6, %bb.j ]
  %.sroa.010.2.i.i5 = phi i8 [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.thread ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i ], [ %.sroa.010.2.i.i, %bb.j ] ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.443.0.copyload.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i8 noundef zeroext 6, i8 %.sroa.010.2.i.i5, i64 %.sroa.0.0.insert.ext.i.i, i32 noundef 8) #24
  %i.bc = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bd = or i32 %i.bc, %.pre-phi7
  store i32 %i.bd, ptr %.phi.trans.insert.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bf = zext nneg i8 %.sroa.010.2.i.i5 to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bj, %i.bl
  br i1 %i.bm, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i32 %i.bo, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit
  %i.br = phi i32 [ %i.bq, %bb.k ], [ 40, %_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp eq ptr %i.bj, %i.bt
  br i1 %i.bu, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, !prof !7

bb.l:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.l, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  %i.bv = phi ptr [ %.pre.i.i.i, %bb.l ], [ %i.bj, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store ptr %i.bw, ptr %i.w, align 8
  store i8 1, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 2, ptr %i.bx, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i8 %.sroa.010.2.i.i5, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.br, ptr %i.bz, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

bb.m:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_xorENS1_15LiftoffRegisterES3_S3_ to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE12DecodeI64ShlEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_shlENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_shliENS1_15LiftoffRegisterES3_i to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI64ShrSEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_sarENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_sariENS1_15LiftoffRegisterES3_i to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE13DecodeI64ShrUEPS8_NS1_10WasmOpcodeE(ptr noundef %0, i32 %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val.i.i = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val.i.i, i64 -448
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %i.c, 2
  %.not.i.i.i.i = icmp ugt i32 %i.m, %i.l
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef 2)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  store ptr %i.o, ptr %i.e, align 8
  store i32 5904, ptr %i.o, align 4
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.s = load i8, ptr %i.r, align 8, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit, !prof !16

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %i.u, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_shrENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_shriENS1_15LiftoffRegisterES3_i to i64))
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE24BuildSimpleOperator_l_llENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeESA_EQfraaoosr3stdE9is_same_vISA_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESB_EEENSt11conditionalIXeqsZT_Li1EENS1_9ValueBaseIS4_EESt5arrayISF_XsZT_EEE4typeEDpT_.exit.i.i, %bb.c
  ret i32 1
}

end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS6_EESE_PSC_:bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE1ELS5_1EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EMS6_FvS7_S7_iEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_shlENS0_8RegisterES3_S3_ to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shliENS0_8RegisterES3_i to i64))
  br label %bb.cb

bb.au:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE1ELS5_1EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EMS6_FvS7_S7_iEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_sarENS0_8RegisterES3_S3_ to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_sariENS0_8RegisterES3_i to i64))
  br label %bb.cb

bb.av:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE1ELS5_1EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EMS6_FvS7_S7_iEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i32_shrENS0_8RegisterES3_S3_ to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i32_shriENS0_8RegisterES3_i to i64))
  br label %bb.cb

bb.aw:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rolEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %bb.cb

bb.ax:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %bb.cb

bb.ay:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_shlENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_shliENS1_15LiftoffRegisterES3_i to i64))
  br label %bb.cb

bb.az:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_sarENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_sariENS1_15LiftoffRegisterES3_i to i64))
  br label %bb.cb

bb.ba:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_shrENS1_15LiftoffRegisterES3_NS0_8RegisterE to i64), i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_shriENS1_15LiftoffRegisterES3_i to i64))
  br label %bb.cb

bb.bb:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE2EXadL_ZNS0_17ExternalReference15wasm_word64_rolEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %bb.cb

bb.bc:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE2EXadL_ZNS0_17ExternalReference15wasm_word64_rorEvEEEEvv(ptr noundef nonnull align 8 dereferenceable(1284) %0)
  br label %bb.cb

bb.bd:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_addENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.be:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_subENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bf:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_mulENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bg:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_divENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bh:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_minENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bi:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f32_maxENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bj:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE3ELS5_3ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler17emit_f32_copysignENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bk:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_addENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bl:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_subENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bm:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_mulENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bn:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_divENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bo:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_minENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bp:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_f64_maxENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.bq:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE4ELS5_4ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_11XMMRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler17emit_f64_copysignENS0_11XMMRegisterES3_S3_ to i64))
  br label %bb.cb

bb.br:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bs:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E0_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bt:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E1_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bu:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E2_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bv:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E3_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bw:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E4_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bx:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E5_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.by:                                            ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EZNS3_5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeERKNS1_9ValueBaseIS8_EESG_PSE_EUlNS1_15LiftoffRegisterESI_SI_E6_EEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %0, ptr %1)
  br label %bb.cb

bb.bz:                                            ; preds = %bb.a
  store i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler21emit_ptrsize_set_condENS0_9ConditionENS0_8RegisterENS1_15LiftoffRegisterES5_ to i64), ptr %25, align 8, !alias.scope !657
  %.repack7.i211 = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %.repack7.i211, align 8, !alias.scope !657
  %i.aq = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 4, ptr %i.aq, align 8, !alias.scope !657
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE10ELS5_1ELb0ELS5_0ENS3_18EmitFnWithFirstArgIMNS1_16LiftoffAssemblerEFvNS0_9ConditionENS0_8RegisterENS1_15LiftoffRegisterESA_ES8_EEEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg") align 8 %25)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE1ELS5_1EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EMS6_FvS7_S7_iEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -12 ; 2 uses
  %.sroa.042.0.copyload = load i8, ptr %i.d, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %i.e = icmp eq i8 %.sroa.042.0.copyload, 2
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -24 ; 2 uses
  %.sroa.044.0.copyload = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift = lshr i64 %.sroa.044.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.f, ptr %i.b, align 8
  %i.g = and i64 %.sroa.044.0.copyload, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = and i64 %.sroa.044.sroa.545.0.extract.shift, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift to i32
  %i.p = and i32 %i.o, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = shl nuw i32 1, %i.p
  %i.s = xor i32 %i.r, -1
  %i.t = load i32, ptr %i.q, align 8
  %i.u = and i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.046.4.extract.trunc = trunc i64 %.sroa.044.sroa.545.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.b
  %i.v = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.044.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.046.4.extract.trunc, %bb.e ], [ %i.v, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 4 uses
  %3 = zext nneg i8 %.sroa.07.0.i to i32
  %4 = shl nuw i32 1, %3                          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %5 = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.w = and i32 %4, %5
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.x = and i32 %4, 37839
  %i.y = xor i32 %i.x, 37839                      ; 2 uses
  %i.z = xor i32 %5, -1
  %i.aa = and i32 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.y) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit, %bb.f, %bb.g
  %.sroa.010.2.i = phi i8 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ], [ %.sroa.07.0.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit ] ; 5 uses
  %i.ae = and i64 %2, 1
  %.not.i40 = icmp eq i64 %i.ae, 0
  br i1 %.not.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 %2
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load ptr, ptr %i.ah, align 8, !nosanitize !6
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.aj = inttoptr i64 %2 to ptr
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit: ; preds = %bb.h, %bb.i
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  %i.al = icmp samesign ult i8 %.sroa.010.2.i, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.am)
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.010.2.i, i8 %.sroa.07.0.i, i32 noundef %.sroa.443.0.copyload) #24, !inline_history !660
  %i.an = zext nneg i8 %.sroa.010.2.i to i32
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = load i32, ptr %.phi.trans.insert.i, align 8
  %i.aq = or i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %.phi.trans.insert.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.as = zext nneg i8 %.sroa.010.2.i to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i32 %i.bb, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.j, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit
  %i.be = phi i32 [ %i.bd, %bb.j ], [ 36, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS0_8RegisterES6_iEJNS1_15LiftoffRegisterES9_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vISA_E.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.aw, %i.bg
  br i1 %i.bh, label %bb.k, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !7

bb.k:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, %bb.k
  %i.bi = phi ptr [ %.pre.i.i, %bb.k ], [ %i.aw, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store ptr %i.bj, ptr %i.b, align 8
  store i8 1, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 1, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i8 %.sroa.010.2.i, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.be, ptr %i.bm, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS0_8RegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -12 ; 3 uses
  %.sroa.047.0.copyload = load i64, ptr %i.d, align 4 ; 3 uses
  %.sroa.047.sroa.548.0.extract.shift = lshr i64 %.sroa.047.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.d, ptr %i.b, align 8
  %i.e = and i64 %.sroa.047.0.copyload, 255
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.h = and i64 %.sroa.047.sroa.548.0.extract.shift, 255
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = trunc nuw i64 %.sroa.047.sroa.548.0.extract.shift to i32
  %i.n = and i32 %i.m, 255
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.p = shl nuw i32 1, %i.n
  %i.q = xor i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = and i32 %i.r, %i.q
  store i32 %i.s, ptr %i.o, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.052.4.extract.trunc = trunc i64 %.sroa.047.sroa.548.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.a
  %i.t = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.047.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %i.u = phi ptr [ %i.d, %bb.d ], [ %.pre, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 2 uses
  %.sroa.07.0.i = phi i8 [ %.sroa.052.4.extract.trunc, %bb.d ], [ %i.t, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 4 uses
  %i.v = zext nneg i8 %.sroa.07.0.i to i32
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -12 ; 2 uses
  %.sroa.049.0.copyload = load i64, ptr %i.x, align 4 ; 3 uses
  %.sroa.049.sroa.551.0.extract.shift = lshr i64 %.sroa.049.0.copyload, 32 ; 3 uses
  %.sroa.650.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -4
  %.sroa.650.0.copyload = load i32, ptr %.sroa.650.0..sroa_idx, align 4
  store ptr %i.x, ptr %i.b, align 8
  %i.y = and i64 %.sroa.049.0.copyload, 255
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32, !prof !16

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ab = and i64 %.sroa.049.sroa.551.0.extract.shift, 255
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc nuw i64 %.sroa.049.sroa.551.0.extract.shift to i32
  %i.ah = and i32 %i.ag, 255
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.aj = shl nuw i32 1, %i.ah
  %i.ak = xor i32 %i.aj, -1
  %i.al = load i32, ptr %i.ai, align 8
  %i.am = and i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.055.4.extract.trunc = trunc i64 %.sroa.049.sroa.551.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.an = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.049.0.copyload, i32 %.sroa.650.0.copyload, i32 %i.w) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37: ; preds = %bb.g, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32
  %.sroa.07.0.i36 = phi i8 [ %.sroa.055.4.extract.trunc, %bb.g ], [ %i.an, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32 ] ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.ao = load i32, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.ap = zext nneg i8 %.sroa.07.0.i36 to i32
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37
  %i.as = and i32 %i.w, %i.ao
  %.not.i.i.1 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.1, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %._crit_edge.i

end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI32CmpOpILNS1_10WasmOpcodeE76EEEvPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI32CmpOpILNS1_10WasmOpcodeE77EEEvPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %.16.val, ptr %.24.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868", align 8 ; 4 uses
  %i.a = ptrtoint ptr %.24.val to i64
  %i.b = ptrtoint ptr %.16.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit:   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3:  ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %i.h = icmp eq i8 %i.f, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.j = load i8, ptr %i.i, align 8
  %.not = icmp eq i8 %i.j, 0
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.old1 = load i8, ptr %.old, align 8
  %.not.old = icmp eq i8 %.old1, 0
  br i1 %.not.old, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.c:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 77, ptr %i.k, align 8
  br label %bb.d

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread: ; preds = %bb.a, %bb.b, %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3
  store i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler17emit_i32_set_condENS0_9ConditionENS0_8RegisterES4_S4_ to i64), ptr %1, align 8, !alias.scope !683
  %.repack7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.repack7.i, align 8, !alias.scope !683
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 6, ptr %i.l, align 8, !alias.scope !683
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0ENS3_18EmitFnWithFirstArgIMNS1_16LiftoffAssemblerEFvNS0_9ConditionENS0_8RegisterES9_S9_ES8_EEEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868") align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI32CmpOpILNS1_10WasmOpcodeE78EEEvPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %.16.val, ptr %.24.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868", align 8 ; 4 uses
  %i.a = ptrtoint ptr %.24.val to i64
  %i.b = ptrtoint ptr %.16.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit:   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3:  ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %i.h = icmp eq i8 %i.f, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.j = load i8, ptr %i.i, align 8
  %.not = icmp eq i8 %i.j, 0
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.old1 = load i8, ptr %.old, align 8
  %.not.old = icmp eq i8 %.old1, 0
  br i1 %.not.old, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.c:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 78, ptr %i.k, align 8
  br label %bb.d

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread: ; preds = %bb.a, %bb.b, %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3
  store i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler17emit_i32_set_condENS0_9ConditionENS0_8RegisterES4_S4_ to i64), ptr %1, align 8, !alias.scope !686
  %.repack7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.repack7.i, align 8, !alias.scope !686
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 13, ptr %i.l, align 8, !alias.scope !686
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0ENS3_18EmitFnWithFirstArgIMNS1_16LiftoffAssemblerEFvNS0_9ConditionENS0_8RegisterES9_S9_ES8_EEEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868") align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI32CmpOpILNS1_10WasmOpcodeE79EEEvPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr %.16.val, ptr %.24.val) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868", align 8 ; 4 uses
  %i.a = ptrtoint ptr %.24.val to i64
  %i.b = ptrtoint ptr %.16.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit:   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 13
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3:  ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %i.h = icmp eq i8 %i.f, 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.j = load i8, ptr %i.i, align 8
  %.not = icmp eq i8 %i.j, 0
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.b:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit
  %.old = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.old1 = load i8, ptr %.old, align 8
  %.not.old = icmp eq i8 %.old1, 0
  br i1 %.not.old, label %bb.c, label %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread

bb.c:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i32 79, ptr %i.k, align 8
  br label %bb.d

_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread: ; preds = %bb.a, %bb.b, %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3
  store i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler17emit_i32_set_condENS0_9ConditionENS0_8RegisterES4_S4_ to i64), ptr %1, align 8, !alias.scope !689
  %.repack7.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.repack7.i, align 8, !alias.scope !689
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 3, ptr %i.l, align 8, !alias.scope !689
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0ENS3_18EmitFnWithFirstArgIMNS1_16LiftoffAssemblerEFvNS0_9ConditionENS0_8RegisterES9_S9_ES8_EEEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg.868") align 8 %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9lookaheadEih.exit3.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE2ELS5_2EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EMS6_FvS7_S7_lEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -12 ; 2 uses
  %.sroa.041.0.copyload = load i8, ptr %i.d, align 4
  %.sroa.442.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.442.0.copyload = load i32, ptr %.sroa.442.0..sroa_idx, align 4
  %i.e = icmp eq i8 %.sroa.041.0.copyload, 2
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -24 ; 2 uses
  %.sroa.043.0.copyload = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.043.sroa.544.0.extract.shift = lshr i64 %.sroa.043.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.f, ptr %i.b, align 8
  %i.g = and i64 %.sroa.043.0.copyload, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = and i64 %.sroa.043.sroa.544.0.extract.shift, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i64 %.sroa.043.sroa.544.0.extract.shift to i32
  %i.p = and i32 %i.o, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = shl nuw i32 1, %i.p
  %i.s = xor i32 %i.r, -1
  %i.t = load i32, ptr %i.q, align 8
  %i.u = and i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.045.4.extract.trunc = trunc i64 %.sroa.043.sroa.544.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.b
  %i.v = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.043.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.045.4.extract.trunc, %bb.e ], [ %i.v, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 3 uses
  %1 = zext nneg i8 %.sroa.07.0.i to i32
  %2 = shl nuw i32 1, %1                          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %3 = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.w = and i32 %2, %3
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.x = and i32 %2, 37839
  %i.y = xor i32 %i.x, 37839                      ; 2 uses
  %i.z = xor i32 %3, -1
  %i.aa = and i32 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.y) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit, %bb.f, %bb.g
  %.sroa.010.2.i = phi i8 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ], [ %.sroa.07.0.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit ] ; 4 uses
  %i.ae = sext i32 %.sroa.442.0.copyload to i64
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_addiENS1_15LiftoffRegisterES3_l(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.010.2.i, i8 %.sroa.07.0.i, i64 noundef %i.ae)
  %i.af = zext nneg i8 %.sroa.010.2.i to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = load i32, ptr %.phi.trans.insert.i, align 8
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %.phi.trans.insert.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ak = zext i8 %.sroa.010.2.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i32 %i.at, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.h, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.aw = phi i32 [ %i.av, %bb.h ], [ 40, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ao, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !7

bb.i:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, %bb.i
  %i.ba = phi ptr [ %.pre.i.i, %bb.i ], [ %i.ao, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store ptr %i.bb, ptr %i.b, align 8
  store i8 1, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 2, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i8 %.sroa.010.2.i, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.aw, ptr %i.be, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 ptrtoint (ptr @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_addENS1_15LiftoffRegisterES3_S3_ to i64))
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_addiENS1_15LiftoffRegisterES3_l(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 6 uses
  %i.a = add i64 %3, 2147483648
  %i.b = icmp ult i64 %i.a, 4294967296
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ult i64 %3, 4294967296
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %3, i32 noundef 4) #24
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %3, i8 0, i32 noundef 8) #24
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.c, %bb.d
  %i.c = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i8 %2, %1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 %2, i8 10, i32 noundef 8) #24
  br label %bb.q

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit
  %i.f = and i8 %2, 7
  %i.g = or disjoint i8 %i.f, 16
  %i.h = lshr i8 %2, 3
  %i.i = or disjoint i8 %i.h, 2
  switch i8 %2, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit [
    i8 5, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %bb.f, %bb.g
  %.sroa.1364.0 = phi ptr [ inttoptr (i64 3 to ptr), %bb.g ], [ inttoptr (i64 2 to ptr), %bb.f ]
  %.sroa.7.0 = phi i64 [ 4456448, %bb.g ], [ 262144, %bb.f ]
  %.sroa.10.0.insert.ext = zext nneg i8 %i.g to i64
  %.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.10.0.insert.ext, 24
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.7.0
  %.sroa.2.0.insert.ext = zext nneg i8 %i.i to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.2.0.insert.shift
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.2.0.insert.insert, ptr nonnull %.sroa.1364.0, i32 noundef 8) #24
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.j = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i8 %2, %1
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.insert.ext = and i64 %3, 4294967295
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 %2, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #24
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 5 uses
  %i.o = trunc nsw i64 %3 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.p, align 8
  switch i8 %2, label %bb.l [
    i8 4, label %bb.k
    i8 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %scevgep62 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.q = and i8 %2, 7
  %i.r = or disjoint i8 %i.q, 32
  store i8 %i.r, ptr %scevgep62, align 1
  %i.s = lshr i8 %2, 3
  store i64 2, ptr %i.p, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.t = phi ptr [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 2 to ptr), %bb.k ]
  %i.u = phi i64 [ 1, %bb.j ], [ 2, %bb.k ]       ; 3 uses
  %i.v = phi i8 [ 0, %bb.j ], [ %i.s, %bb.k ]     ; 3 uses
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  switch i8 %2, label %bb.n [
    i8 5, label %.thread
    i8 13, label %.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.x = and i8 %2, 7
  store i8 %i.x, ptr %i.n, align 2
  %i.y = lshr i8 %2, 3
  %i.z = or i8 %i.v, %i.y
  store i8 %i.z, ptr %i.m, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.o:                                             ; preds = %bb.l
  %i.aa = add nsw i64 %3, 128
  %i.ab = icmp ult i64 %i.aa, 256
  br i1 %i.ab, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.m, %bb.m, %bb.o
  %i.ac = and i8 %2, 7
  %i.ad = or disjoint i8 %i.ac, 64
  store i8 %i.ad, ptr %i.n, align 2
  %i.ae = lshr i8 %2, 3
  %i.af = or i8 %i.v, %i.ae
  store i8 %i.af, ptr %i.m, align 1
  %i.ag = trunc nsw i64 %3 to i8
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_:bb.a
  %i.ah = and i32 %i.ag, 255
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.aj = shl nuw i32 1, %i.ah
  %i.ak = xor i32 %i.aj, -1
  %i.al = load i32, ptr %i.ai, align 8
  %i.am = and i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.055.4.extract.trunc = trunc i64 %.sroa.049.sroa.551.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.an = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.049.0.copyload, i32 %.sroa.650.0.copyload, i32 %i.w) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37: ; preds = %bb.g, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32
  %.sroa.07.0.i36 = phi i8 [ %.sroa.055.4.extract.trunc, %bb.g ], [ %i.an, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit32 ] ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.ao = load i32, ptr %.phi.trans.insert.i, align 8 ; 3 uses
  %i.ap = zext nneg i8 %.sroa.07.0.i36 to i32
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37
  %i.as = and i32 %i.w, %i.ao
  %.not.i.i.1 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.1, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %i.at = and i32 %i.ao, 37839                    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.at, 37839
  br i1 %.not.i.i.i, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %._crit_edge.i
  %i.au = xor i32 %i.at, 37839
  %i.av = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true)
  %i.aw = trunc nuw nsw i32 %i.av to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.ax = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37, %bb.h, %bb.i, %bb.j
  %.sroa.010.2.i = phi i8 [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.07.0.i36, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit37 ], [ %.sroa.07.0.i, %bb.h ] ; 4 uses
  %i.ay = and i64 %1, 1
  %.not.i43 = icmp eq i64 %i.ay, 0
  br i1 %.not.i43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 %1
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load ptr, ptr %i.bb, align 8, !nosanitize !6
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit

bb.l:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.bd = inttoptr i64 %1 to ptr
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit: ; preds = %bb.k, %bb.l
  %i.be = phi ptr [ %i.bc, %bb.k ], [ %i.bd, %bb.l ]
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.010.2.i, i8 %.sroa.07.0.i36, i8 %.sroa.07.0.i) #24, !inline_history !692
  %i.bf = zext nneg i8 %.sroa.010.2.i to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = load i32, ptr %.phi.trans.insert.i, align 8
  %i.bi = or i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %.phi.trans.insert.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.bk = zext i8 %.sroa.010.2.i to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i32 %i.bt, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.m, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit
  %i.bw = phi i32 [ %i.bv, %bb.m ], [ 40, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_S6_EJS6_S6_S6_EEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bo, %i.by
  br i1 %i.bz, label %bb.n, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !7

bb.n:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, %bb.n
  %i.ca = phi ptr [ %.pre.i.i, %bb.n ], [ %i.bo, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store ptr %i.cb, ptr %i.b, align 8
  store i8 1, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store i8 2, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i8 %.sroa.010.2.i, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.bw, ptr %i.ce, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_mulENS1_15LiftoffRegisterES3_S3_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3) #4 comdat align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i8 %1, %3
  br i1 %i.d, label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler5imulqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %1, %2
  br i1 %.not.i, label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler5imulqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler5imulqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit

_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler5imulqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink.i = phi i8 [ %2, %bb.a ], [ %3, %bb.c ], [ %3, %bb.b ]
  tail call void @_ZN2v88internal9Assembler9emit_imulENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %.sink.i, i32 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE2ELS5_2EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EMS6_FvS7_S7_iEEEvT1_T2_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -12 ; 2 uses
  %.sroa.042.0.copyload = load i8, ptr %i.d, align 4
  %.sroa.443.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.443.0.copyload = load i32, ptr %.sroa.443.0..sroa_idx, align 4
  %i.e = icmp eq i8 %.sroa.042.0.copyload, 2
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -24 ; 2 uses
  %.sroa.044.0.copyload = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.044.sroa.545.0.extract.shift = lshr i64 %.sroa.044.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.f, ptr %i.b, align 8
  %i.g = and i64 %.sroa.044.0.copyload, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = and i64 %.sroa.044.sroa.545.0.extract.shift, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i64 %.sroa.044.sroa.545.0.extract.shift to i32
  %i.p = and i32 %i.o, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = shl nuw i32 1, %i.p
  %i.s = xor i32 %i.r, -1
  %i.t = load i32, ptr %i.q, align 8
  %i.u = and i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.046.4.extract.trunc = trunc i64 %.sroa.044.sroa.545.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.b
  %i.v = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.044.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.046.4.extract.trunc, %bb.e ], [ %i.v, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 3 uses
  %3 = zext nneg i8 %.sroa.07.0.i to i32
  %4 = shl nuw i32 1, %3                          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %5 = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.w = and i32 %4, %5
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.x = and i32 %4, 37839
  %i.y = xor i32 %i.x, 37839                      ; 2 uses
  %i.z = xor i32 %5, -1
  %i.aa = and i32 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.y) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit, %bb.f, %bb.g
  %.sroa.010.2.i = phi i8 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ], [ %.sroa.07.0.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit ] ; 4 uses
  %i.ae = and i64 %2, 1
  %.not.i40 = icmp eq i64 %i.ae, 0
  br i1 %.not.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 %2
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load ptr, ptr %i.ah, align 8, !nosanitize !6
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit
  %i.aj = inttoptr i64 %2 to ptr
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit: ; preds = %bb.h, %bb.i
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.010.2.i, i8 %.sroa.07.0.i, i32 noundef %.sroa.443.0.copyload) #24, !inline_history !693
  %i.al = zext nneg i8 %.sroa.010.2.i to i32
  %i.am = shl nuw i32 1, %i.al
  %i.an = load i32, ptr %.phi.trans.insert.i, align 8
  %i.ao = or i32 %i.an, %i.am
  store i32 %i.ao, ptr %.phi.trans.insert.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.aq = zext i8 %.sroa.010.2.i to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i32 %i.az, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.j, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit
  %i.bc = phi i32 [ %i.bb, %bb.j ], [ 40, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.au, %i.be
  br i1 %i.bf, label %bb.k, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !7

bb.k:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, %bb.k
  %i.bg = phi ptr [ %.pre.i.i, %bb.k ], [ %i.au, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store ptr %i.bh, ptr %i.b, align 8
  store i8 1, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 2, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i8 %.sroa.010.2.i, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.bc, ptr %i.bk, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_2ELb0ELS5_0EMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_S7_EEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_andENS1_15LiftoffRegisterES3_S3_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3) #4 comdat align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i8 %1, %3
  br i1 %i.d, label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4andqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %1, %2
  br i1 %.not.i, label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4andqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4andqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit

_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4andqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink.i = phi i8 [ %2, %bb.a ], [ %3, %bb.c ], [ %3, %bb.b ]
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 35, i8 %1, i8 %.sink.i, i32 noundef 8) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_oriENS1_15LiftoffRegisterES3_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i32 noundef %3) #4 comdat align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %1, %2
  br i1 %.not.i, label %_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler3orqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler3orqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit

_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler3orqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.ext.i = zext i32 %3 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 1, i8 %1, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12emit_i64_xorENS1_15LiftoffRegisterES3_S3_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3) #4 comdat align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i8 %1, %3
  %i.e = icmp eq i8 %1, %2                        ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #24
  br label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %_ZN2v88internal9Assembler4xorqIJNS0_8RegisterES3_EEEvDpT_.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal9Assembler4xorqIJNS0_8RegisterES3_EEEvDpT_.exit8.i

_ZN2v88internal9Assembler4xorqIJNS0_8RegisterES3_EEEvDpT_.exit8.i: ; preds = %bb.f, %bb.e
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %3, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit

_ZN2v88internal4wasm7liftoff20EmitCommutativeBinOpIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterES6_EEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS8_EEEEvPNS1_16LiftoffAssemblerES6_S6_S6_.exit: ; preds = %bb.c, %bb.d, %_ZN2v88internal9Assembler4xorqIJNS0_8RegisterES3_EEEvDpT_.exit8.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler13emit_i64_xoriENS1_15LiftoffRegisterES3_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i32 noundef %3) #4 comdat align 2 {
bb.a:
  %i.a = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %.not.i = icmp eq i8 %1, %2
  br i1 %.not.i, label %_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2, i32 noundef 8) #24
  br label %_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit

_ZN2v88internal4wasm7liftoff23EmitCommutativeBinOpImmIXadL_ZNS0_9Assembler4xorqIJNS0_8RegisterENS0_9ImmediateEEEEvDpT_EEXadL_ZNS4_4movqIJS6_S6_EEEvS9_EEEEvPNS1_16LiftoffAssemblerES6_S6_i.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.ext.i = zext i32 %3 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 6, i8 %1, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE2ELS5_1ELb0ELS5_0ENS3_18EmitFnWithFirstArgIMNS1_16LiftoffAssemblerEFvNS0_9ConditionENS0_8RegisterENS1_15LiftoffRegisterESA_ES8_EEEEvT3_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef readonly byval(%"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::EmitFnWithFirstArg") align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvv:bb.a
  %i.y = and i64 %.sroa.038.0.copyload.i, 255
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit22.i, !prof !16

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ab = and i64 %.sroa.038.sroa.540.0.extract.shift.i, 255
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc nuw i64 %.sroa.038.sroa.540.0.extract.shift.i to i32
  %i.ah = and i32 %i.ag, 255
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.aj = shl nuw i32 1, %i.ah
  %i.ak = xor i32 %i.aj, -1
  %i.al = load i32, ptr %i.ai, align 8
  %i.am = and i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.044.4.extract.trunc.i = trunc i64 %.sroa.038.sroa.540.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit22.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.an = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %.sroa.038.0.copyload.i, i32 %.sroa.639.0.copyload.i, i32 %i.w) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit22.i, %bb.g
  %.sroa.07.0.i26.i = phi i8 [ %.sroa.044.4.extract.trunc.i, %bb.g ], [ %i.an, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit22.i ] ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.ao = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 3 uses
  %i.ap = zext nneg i8 %.sroa.07.0.i26.i to i32
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.ao
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i
  %i.as = and i32 %i.ao, %i.w
  %.not.i.i.1.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.1.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.at = and i32 %i.ao, 37839                    ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.at, 37839
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.au = xor i32 %i.at, 37839
  %i.av = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true)
  %i.aw = trunc nuw nsw i32 %i.av to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i
  %.sroa.010.2.i.i = phi i8 [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.07.0.i26.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit27.i ], [ %.sroa.07.0.i.i, %bb.h ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i8 1, ptr %1, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %.sroa.07.0.i26.i, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 1, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 1, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.sroa.07.0.i.i, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.be, align 4
  %i.bf = tail call i64 @_ZN2v88internal17ExternalReference15wasm_word32_rorEv() #24
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv(ptr noundef nonnull align 8 dereferenceable(1284) %0) #24
  call void @_ZN2v88internal4wasm16LiftoffAssembler5CallCESt16initializer_listINS1_15LiftoffVarStateEENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nonnull %1, i64 2, i64 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.bg = icmp eq i8 %.sroa.010.2.i.i, 0
  br i1 %i.bg, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  call void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.010.2.i.i, i8 0, i8 noundef zeroext 1) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i: ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  %i.bh = zext nneg i8 %.sroa.010.2.i.i to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.bk = or i32 %i.bj, %i.bi
  store i32 %i.bk, ptr %.phi.trans.insert.i.i, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.bm = zext i8 %.sroa.010.2.i.i to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i32 %i.bv, 4
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.l, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i
  %i.by = phi i32 [ %i.bx, %bb.l ], [ 36, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_20EmitBitRotationCCallILNS1_9ValueKindE1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_JS8_S8_S8_EEEvT_DpT0_Qntsr3stdE28is_member_function_pointer_vISA_E.exit.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.bq, %i.ca
  br i1 %i.cb, label %bb.m, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_20EmitBitRotationCCallILS5_1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_EEvT3_.exit, !prof !7

bb.m:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_20EmitBitRotationCCallILS5_1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_EEvT3_.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9EmitBinOpILNS1_9ValueKindE1ELS5_1ELb0ELS5_0EZNS3_20EmitBitRotationCCallILS5_1EXadL_ZNS0_17ExternalReference15wasm_word32_rorEvEEEEvvEUlNS1_15LiftoffRegisterES8_S8_E_EEvT3_.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, %bb.m
  %i.cc = phi ptr [ %.pre.i.i.i, %bb.m ], [ %i.bq, %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i ] ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store ptr %i.cd, ptr %i.b, align 8
  store i8 1, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 1, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i8 %.sroa.010.2.i.i, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.by, ptr %i.cg, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_NS0_8RegisterEEMS5_FvS6_S6_iEEEvT_T0_(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -12 ; 5 uses
  %.sroa.029.0.copyload.i = load i8, ptr %i.d, align 4
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.430.0.copyload.i = load i32, ptr %.sroa.430.0..sroa_idx.i, align 4
  %i.e = icmp eq i8 %.sroa.029.0.copyload.i, 2
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -24 ; 2 uses
  %.sroa.031.0.copyload.i = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.031.sroa.532.0.extract.shift.i = lshr i64 %.sroa.031.0.copyload.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  store ptr %i.f, ptr %i.b, align 8
  %i.g = and i64 %.sroa.031.0.copyload.i, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = and i64 %.sroa.031.sroa.532.0.extract.shift.i, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i64 %.sroa.031.sroa.532.0.extract.shift.i to i32
  %i.p = and i32 %i.o, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = shl nuw i32 1, %i.p
  %i.s = xor i32 %i.r, -1
  %i.t = load i32, ptr %i.q, align 8
  %i.u = and i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.033.4.extract.trunc.i = trunc i64 %.sroa.031.sroa.532.0.extract.shift.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i: ; preds = %bb.b
  %i.v = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %.sroa.031.0.copyload.i, i32 %.sroa.6.0.copyload.i, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i, %bb.e
  %.sroa.07.0.i.i = phi i8 [ %.sroa.033.4.extract.trunc.i, %bb.e ], [ %i.v, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i ] ; 3 uses
  %3 = zext nneg i8 %.sroa.07.0.i.i to i32
  %4 = shl nuw i32 1, %3                          ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %5 = load i32, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.w = and i32 %4, %5
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %i.x = and i32 %4, 37839
  %i.y = xor i32 %i.x, 37839                      ; 2 uses
  %i.z = xor i32 %5, -1
  %i.aa = and i32 %i.y, %i.z                      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ad = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 %i.y) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i: ; preds = %bb.g, %bb.f, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i
  %.sroa.010.2.i.i = phi i8 [ %i.ad, %bb.g ], [ %i.ac, %bb.f ], [ %.sroa.07.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i ] ; 5 uses
  %i.ae = and i64 %2, 1
  %.not.i24.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i24.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 %2
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load ptr, ptr %i.ah, align 8, !nosanitize !6
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i
  %i.aj = inttoptr i64 %2 to ptr
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.010.2.i.i, i8 %.sroa.07.0.i.i, i32 noundef %.sroa.430.0.copyload.i) #24, !inline_history !696
  %i.al = zext nneg i8 %.sroa.010.2.i.i to i32
  %i.am = shl nuw i32 1, %i.al
  %i.an = load i32, ptr %.phi.trans.insert.i.i, align 8
  %i.ao = or i32 %i.an, %i.am
  store i32 %i.ao, ptr %.phi.trans.insert.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.aq = zext i8 %.sroa.010.2.i.i to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp sgt i32 %i.az, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i32 %i.az, 8
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i.i: ; preds = %bb.j, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i
  %i.bc = phi i32 [ %i.bb, %bb.j ], [ 40, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES6_iEJS6_S6_iEEEvT_DpT0_Qsr3stdE28is_member_function_pointer_vIS9_E.exit.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.au, %i.be
  br i1 %i.bf, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit.sink.split.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler12EmitBinOpImmILNS1_9ValueKindE2ELS5_2EZNS3_12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES8_NS0_8RegisterEEMS7_FvS8_S8_iEEEvT_T0_EUlS8_S8_S8_E_SD_EEvT1_T2_.exit, !prof !7

bb.k:                                             ; preds = %bb.a
  %.sroa.035.0.copyload.i.i = load i64, ptr %i.d, align 4 ; 3 uses
  %.sroa.035.sroa.536.0.extract.shift.i.i = lshr i64 %.sroa.035.0.copyload.i.i, 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.c, i64 -4
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  store ptr %i.d, ptr %i.b, align 8
  %i.bg = and i64 %.sroa.035.0.copyload.i.i, 255
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i.i, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.bj = and i64 %.sroa.035.sroa.536.0.extract.shift.i.i, 255
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = trunc nuw i64 %.sroa.035.sroa.536.0.extract.shift.i.i to i32
  %i.bp = and i32 %i.bo, 255
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.br = shl nuw i32 1, %i.bp
  %i.bs = xor i32 %i.br, -1
  %i.bt = load i32, ptr %i.bq, align 8
  %i.bu = and i32 %i.bt, %i.bs
  store i32 %i.bu, ptr %i.bq, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.040.4.extract.trunc.i.i = trunc i64 %.sroa.035.sroa.536.0.extract.shift.i.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i.i: ; preds = %bb.k
  %i.bv = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %.sroa.035.0.copyload.i.i, i32 %.sroa.6.0.copyload.i.i, i32 0) #24
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i.i, %bb.n
  %i.bw = phi ptr [ %i.d, %bb.n ], [ %.pre.i.i, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i.i ] ; 2 uses
  %.sroa.07.0.i.i.i = phi i8 [ %.sroa.040.4.extract.trunc.i.i, %bb.n ], [ %i.bv, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit.i.i ] ; 4 uses
  %i.bx = zext nneg i8 %.sroa.07.0.i.i.i to i32
  %i.by = shl nuw i32 1, %i.bx                    ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 -12 ; 2 uses
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bz, align 4 ; 3 uses
  %.sroa.037.sroa.539.0.extract.shift.i.i = lshr i64 %.sroa.037.0.copyload.i.i, 32 ; 3 uses
  %.sroa.638.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %.sroa.638.0.copyload.i.i = load i32, ptr %.sroa.638.0..sroa_idx.i.i, align 4
  store ptr %i.bz, ptr %i.b, align 8
  %i.ca = and i64 %.sroa.037.0.copyload.i.i, 255
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.o, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit20.i.i, !prof !16

bb.o:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.cd = and i64 %.sroa.037.sroa.539.0.extract.shift.i.i, 255
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = trunc nuw i64 %.sroa.037.sroa.539.0.extract.shift.i.i to i32
  %i.cj = and i32 %i.ci, 255
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cl = shl nuw i32 1, %i.cj
  %i.cm = xor i32 %i.cl, -1
  %i.cn = load i32, ptr %i.ck, align 8
  %i.co = and i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.ck, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.043.4.extract.trunc.i.i = trunc i64 %.sroa.037.sroa.539.0.extract.shift.i.i to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit20.i.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.i.i
  %i.cp = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i64 %.sroa.037.0.copyload.i.i, i32 %.sroa.638.0.copyload.i.i, i32 %i.by) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit20.i.i, %bb.q
  %.sroa.07.0.i24.i.i = phi i8 [ %.sroa.043.4.extract.trunc.i.i, %bb.q ], [ %i.cp, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit20.i.i ] ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.cq = load i32, ptr %.phi.trans.insert.i.i.i, align 8 ; 3 uses
  %i.cr = zext nneg i8 %.sroa.07.0.i24.i.i to i32
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.cq
  %.not.i.i.i25.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i25.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i
  %i.cu = and i32 %i.cq, %i.by
  %.not.i.i.1.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.1.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r
  %i.cv = and i32 %i.cq, 37839                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cv, 37839
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.cw = xor i32 %i.cv, 37839
  %i.cx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cw, i1 true)
  %i.cy = trunc nuw nsw i32 %i.cx to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i
  %.sroa.010.2.i.i.i = phi i8 [ %i.cz, %bb.t ], [ %i.cy, %bb.s ], [ %.sroa.07.0.i24.i.i, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit25.i.i ], [ %.sroa.07.0.i.i.i, %bb.r ] ; 5 uses
  %i.da = icmp samesign ult i8 %.sroa.07.0.i.i.i, 16
  tail call void @llvm.assume(i1 %i.da)
  %i.db = and i64 %1, 1
  %.not.i.i.i31.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i31.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i
  %i.dc = load ptr, ptr %0, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 %1
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load ptr, ptr %i.de, align 8, !nosanitize !6
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_NS0_8RegisterEEMS6_FvS7_S7_iEEEvT_T0_EUlS7_S7_S7_E_JS7_S7_S7_EEEvSD_DpT0_Qntsr3stdE28is_member_function_pointer_vISD_E.exit.i.i

bb.v:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassESt16initializer_listINS1_15LiftoffRegisterEENS1_14LiftoffRegListE.exit.i.i
  %i.dg = inttoptr i64 %1 to ptr
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_NS0_8RegisterEEMS6_FvS7_S7_iEEEvT_T0_EUlS7_S7_S7_E_JS7_S7_S7_EEEvSD_DpT0_Qntsr3stdE28is_member_function_pointer_vISD_E.exit.i.i

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10CallEmitFnIZNS3_12EmitI64ShiftIMNS1_16LiftoffAssemblerEFvNS1_15LiftoffRegisterES7_NS0_8RegisterEEMS6_FvS7_S7_iEEEvT_T0_EUlS7_S7_S7_E_JS7_S7_S7_EEEvSD_DpT0_Qntsr3stdE28is_member_function_pointer_vISD_E.exit.i.i: ; preds = %bb.v, %bb.u
  %i.dh = phi ptr [ %i.df, %bb.u ], [ %i.dg, %bb.v ]
end_hunk_5
