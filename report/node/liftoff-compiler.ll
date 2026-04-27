inline.NumInlined: 20819
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
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler10ReturnImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE:bb.a
bb.x:                                             ; preds = %bb.w, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15dynamic_tieringEv.exit.thread
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !5, !noundef !6
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i, label %bb.y

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %bb.x
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 7, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 26, i32 noundef 8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %3, align 4
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 5, ptr noundef nonnull %2, i32 noundef 1) #25
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 0) #25
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 2) #25
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 5, i8 4, i64 32, i32 noundef 8) #25
  %4 = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %5 = and i32 %4, 32
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %7, label %6

6:                                                ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #25
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.1

7:                                                ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #25
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.1

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.1: ; preds = %6, %7
  %8 = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %9 = and i32 %8, 32
  %.not.i.i.i.1 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.1, label %11, label %10

10:                                               ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.1
  call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #25
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.i.1

11:                                               ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.1
  call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #25
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.i.1

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.i.1: ; preds = %11, %10
  call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 1) #25
  %i.cl = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #25
  call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 7, i64 %i.cl) #25
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.sroa.6.sroa.0.0 = phi i32 [ %.046, %bb.d ], [ 0, %bb.b ], [ %.046, %bb.c ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.d ], [ 262144, %bb.b ], [ 4456448, %bb.c ]
  %i.r = phi ptr [ inttoptr (i64 6 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.b ], [ inttoptr (i64 3 to ptr), %bb.c ] ; 2 uses
  %i.s = add nsw i8 %i.m, -16                     ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 240
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %.lr.ph, %bb.c
  %.sroa.6.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6.sroa.4.0.extract.shift, %bb.c ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.6.sroa.0.0 = phi i32 [ %.045, %bb.c ], [ 0, %.lr.ph ], [ %.045, %bb.b ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %.lr.ph ], [ 4456448, %bb.b ]
  %i.j = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %.lr.ph ], [ inttoptr (i64 3 to ptr), %bb.b ] ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i32 %.sroa.6.sroa.0.0, 240
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.sroa.0.0.insert.insert to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm16LiftoffAssembler15PrepareTailCallEii:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit46
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit31: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.2181.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %bb.a ], [ 4456448, %bb.b ]
  %.sroa.6182.sroa.0.0 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ %i.i, %bb.b ]
  %.sroa.6182.sroa.4.sroa.0.0 = phi i32 [ %.sroa.6182.sroa.4.0.extract.shift, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.k = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %bb.a ], [ inttoptr (i64 3 to ptr), %bb.b ]
  %.sroa.6182.sroa.0.0.insert.ext = and i32 %.sroa.6182.sroa.0.0, 248
  %.sroa.6182.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6182.sroa.4.sroa.0.0, %.sroa.6182.sroa.0.0.insert.ext
  %.sroa.6182.0.insert.ext = zext i32 %.sroa.6182.sroa.0.0.insert.insert to i64
  %.sroa.6182.0.insert.shift = shl nuw i64 %.sroa.6182.0.insert.ext, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6182.0.insert.shift, %.sroa.2181.0
  %.sroa.2181.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.sroa.2181.0.insert.insert, ptr nonnull %i.k, i32 noundef 8) #25
  %i.l = sub nsw i64 %indvars.iv, %i.d
end_hunk_5
