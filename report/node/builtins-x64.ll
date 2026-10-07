Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-x64?download=true
inline.NumInlined: 3912
inline.NumDeleted: 462
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 %.sroa.12.0.insert.insert95, ptr nonnull %i.u) #8
  %indvars.iv.next.5 = add i32 %1, -96            ; 4 uses
  %i.v = icmp eq i32 %indvars.iv.next.5, 0
  br i1 %i.v, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4
  %i.w = add nsw i64 %i.a, 32
  %i.x = icmp ult i64 %i.w, 256
  br i1 %i.x, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.36.sroa.24.0.extract.shift199 = and i32 %indvars.iv.next.5, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4, %bb.l, %bb.m
  %.sroa.12.5 = phi i64 [ 4456448, %bb.l ], [ 8650752, %bb.m ], [ 262144, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.5 = phi i32 [ %indvars.iv.next.5, %bb.l ], [ %indvars.iv.next.5, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.24.sroa.0.5 = phi i32 [ 0, %bb.l ], [ %.sroa.36.sroa.24.0.extract.shift199, %bb.m ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %i.y = phi ptr [ inttoptr (i64 3 to ptr), %bb.l ], [ inttoptr (i64 6 to ptr), %bb.m ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4 ]
  %.sroa.36.sroa.0.0.insert.ext163 = and i32 %.sroa.36.sroa.0.5, 255
  %.sroa.36.sroa.0.0.insert.insert165 = or disjoint i32 %.sroa.36.sroa.24.sroa.0.5, %.sroa.36.sroa.0.0.insert.ext163
  %.sroa.36.0.insert.ext147 = zext i32 %.sroa.36.sroa.0.0.insert.insert165 to i64
  %.sroa.36.0.insert.shift148 = shl nuw i64 %.sroa.36.0.insert.ext147, 32
  %.sroa.30.0.insert.insert125 = or disjoint i64 %.sroa.36.0.insert.shift148, %.sroa.12.5
  %.sroa.12.0.insert.insert100 = or disjoint i64 %.sroa.30.0.insert.insert125, 603979776
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 %.sroa.12.0.insert.insert100, ptr nonnull %i.y) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 96, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  ret void
}

declare void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins30Generate_WasmLiftoffFrameSetupEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit74:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5, i8 4) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 8) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 4152754176, ptr nonnull inttoptr (i64 5 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 68304503552, ptr nonnull inttoptr (i64 3 to ptr)) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  call void @_ZN2v88internal14MacroAssembler9JumpIfSmiENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, ptr noundef nonnull %1, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 24, i32 noundef 8) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426
  store i8 1, ptr %i.c, align 2
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  %i.d = call noundef i32 @_ZN2v88internal14SaveWasmParamsEPNS0_14MacroAssemblerE(ptr noundef nonnull %0)
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 4) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.e = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 588) #8
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.e, i32 noundef 3) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i8 0, i32 noundef 8) #8
  call void @_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi(ptr noundef nonnull %0, i32 noundef %i.d)
  call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 8, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins24Generate_WasmCompileLazyEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit:
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.c, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  %i.e = tail call noundef i32 @_ZN2v88internal14SaveWasmParamsEPNS0_14MacroAssemblerE(ptr noundef nonnull %0)
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.f = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 587) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.f, i32 noundef 2) #8
  tail call void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i8 0, i32 noundef 8) #8
  tail call void @_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi(ptr noundef nonnull %0, i32 noundef %i.e)
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 15, i64 927334400, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 23) #8
  store i8 %i.d, ptr %i.c, align 2
  store i8 %i.b, ptr %i.a, align 1
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins23Generate_WasmDebugBreakEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal10FrameScopeC2EPNS0_14MacroAssemblerENS0_10StackFrame4TypeENS_14SourceLocationE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 425 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.c, align 2
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 128, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 481644773376, ptr nonnull inttoptr (i64 3 to ptr), i8 7) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 412925296640, ptr nonnull inttoptr (i64 3 to ptr), i8 6) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 344205819904, ptr nonnull inttoptr (i64 3 to ptr), i8 5) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 275486343168, ptr nonnull inttoptr (i64 3 to ptr), i8 4) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 206766866432, ptr nonnull inttoptr (i64 3 to ptr), i8 3) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 1) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.e = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 594) #8
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.e, i32 noundef 0) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 206766866432, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 275486343168, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 344205819904, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 412925296640, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler6movdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 7, i64 481644773376, ptr nonnull inttoptr (i64 3 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 128, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15) #8
  tail call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 8) #8
  store i8 %i.d, ptr %i.c, align 2
  tail call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  store i8 %i.b, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins27Generate_JSToWasmWrapperAsmEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef nonnull %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327:
  %2 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %3 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %4 = alloca [4 x %"class.v8::internal::Register"], align 4 ; 4 uses
  %5 = alloca [2 x %"class.v8::internal::Register"], align 1 ; 5 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = icmp eq i32 %1, 0                        ; 3 uses
  %i.b = icmp eq i32 %1, 2
  %i.c = or i1 %i.a, %i.b                         ; 3 uses
  %i.d = select i1 %i.c, i32 7, i32 6             ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %i.d) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 32, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 407175168, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %.sroa.088.0.copyload.sroa.speculated = select i1 %i.c, i8 3, i8 7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = icmp eq i32 %1, 1                        ; 5 uses
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit320.thread, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit313

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit320.thread: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 8) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit313: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  %.sroa.091.0.copyload = select i1 %i.c, i8 9, i8 5 ; 3 uses
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i32 noundef 55168) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 943915008, ptr nonnull inttoptr (i64 2 to ptr)) #8
  %i.g = tail call i64 @_ZN2v88internal17ExternalReference16wasm_start_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i8 6, ptr %5, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 7, ptr %i.h, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef nonnull %0, i64 %i.g, i8 3, ptr noundef nonnull %6, i8 -1, ptr nonnull %5, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i32 noundef 55168) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.091.0.copyload, i8 5, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 406847488, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 541065216, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 0) #8
  call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 88, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 458752, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 196608, ptr nonnull inttoptr (i64 1 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 138870784, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 138608640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 6, i32 noundef 8) #8
  %i.i = and i8 %.sroa.091.0.copyload, 5
  %i.j = or disjoint i8 %i.i, 64
  %i.k = lshr i8 %.sroa.091.0.copyload, 3
  %.sroa.3.0.insert.ext = zext nneg i8 %i.j to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext nneg i8 %i.k to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 268435456
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.sroa.2.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit320.thread, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit313
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 273088512, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 3, i32 noundef 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 43, i8 4, i8 0, i32 noundef 8) #8
  %i.l = or disjoint i8 %.sroa.088.0.copyload.sroa.speculated, 64
  %.sroa.3890.0.insert.ext = zext nneg i8 %i.l to i64
  %.sroa.3890.0.insert.shift = shl nuw nsw i64 %.sroa.3890.0.insert.ext, 16
  %.sroa.3890.0.insert.insert = or disjoint i64 %.sroa.3890.0.insert.shift, 268435456
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.3890.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 11, i64 541523968, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 675741696, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler19LoadWasmCodePointerENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 407306240, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 1480786176, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.m, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.n, align 4
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 1, i8 3, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 13, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 5, i8 3, i64 8, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 196608, ptr nonnull inttoptr (i64 1 to ptr)) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 196864, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i64 138608896, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 272826624, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 407044352, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 9, i64 541262080, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %i.o = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.p = and i32 %i.o, 32
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 1, i8 0, i64 675479808, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 675479808, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.a, %bb.b
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = and i32 %i.q, 32
  %.not.i.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 2, i8 0, i64 809697536, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1

bb.d:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i64 809697536, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1: ; preds = %bb.d, %bb.c
  %i.s = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.t = and i32 %i.s, 32
  %.not.i.i.2 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 3, i8 0, i64 943915264, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2

bb.f:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 943915264, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2: ; preds = %bb.f, %bb.e
  %i.u = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.v = and i32 %i.u, 32
  %.not.i.i.3 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 4, i8 0, i64 1078132992, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3

bb.h:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 4, i64 1078132992, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3: ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.x = and i32 %i.w, 32
  %.not.i.i.4 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 5, i8 0, i64 1212350720, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4

bb.j:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5, i64 1212350720, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4: ; preds = %bb.j, %bb.i
  %i.y = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.z = and i32 %i.y, 32
  %.not.i.i.5 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 6, i8 0, i64 1346568448, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.5

bb.l:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 1346568448, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.5

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.5: ; preds = %bb.l, %bb.k
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit227

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit227: ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.5
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220: ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.5, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit227
  call void @_ZN2v88internal14MacroAssembler35CallWasmCodePointerNoSignatureCheckENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %i.aa = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ab = and i32 %i.aa, 32
  %.not.i.i375 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i375, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 1, i8 0, i64 406913024, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220
  call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 406913024, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.n
  %i.ac = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ad = and i32 %i.ac, 32
  %.not.i.i376 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i376, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 2, i8 0, i64 541130752, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit377

bb.p:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 541130752, ptr nonnull inttoptr (i64 2 to ptr), i8 2) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit377

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit377: ; preds = %bb.o, %bb.p
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 675348480, ptr nonnull inttoptr (i64 2 to ptr), i8 0, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 809566208, ptr nonnull inttoptr (i64 2 to ptr), i8 2, i32 noundef 8) #8
  %. = select i1 %i.f, i64 272957440, i64 3628400640
  %.933 = select i1 %i.f, i64 407175168, i64 3762618368
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 %., ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 %.933, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125GetContextFromImplicitArgEPNS0_14MacroAssemblerENS0_8RegisterE(ptr noundef nonnull %0, i8 0)
  call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1316) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store i32 0, ptr %9, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ae, align 4
  br i1 %i.f, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit377
  %i.af = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.r, label %bb.t, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) #8
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15CallDescriptors21call_descriptor_data_E, i64 25680), ptr @_ZZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc, align 8
  %i.ai = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZN2v88internal12_GLOBAL__N_135GenerateExceptionHandlingLandingPadEPNS0_14MacroAssemblerEPNS0_5LabelE.exit, label %bb.y, !prof !8

bb.y:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit53.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.63) #9
  unreachable

_ZN2v88internal12_GLOBAL__N_135GenerateExceptionHandlingLandingPadEPNS0_14MacroAssemblerEPNS0_5LabelE.exit: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit53.i
  %i.az = ptrtoint ptr %i.am to i64
  %i.ba = ptrtoint ptr %i.ao to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.aw, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_135GenerateExceptionHandlingLandingPadEPNS0_14MacroAssemblerEPNS0_5LabelE.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins38Generate_WasmReturnPromiseOnSuspendAsmEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins38Generate_JSToWasmStressSwitchStacksAsmEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins27Generate_WasmToJsWrapperAsmEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 5, i8 4, i64 48, i32 noundef 8) #8
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 1, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1: ; preds = %bb.a, %bb.b
  %i.c = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.d = and i32 %i.c, 32
  %.not.i.i.1 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 2, i8 0, i64 34968174592, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.1
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 34968174592, ptr nonnull inttoptr (i64 3 to ptr), i8 2) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2: ; preds = %bb.d, %bb.c
  %i.e = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.f = and i32 %i.e, 32
  %.not.i.i.2 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 3, i8 0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.2
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 69327912960, ptr nonnull inttoptr (i64 3 to ptr), i8 3) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3: ; preds = %bb.f, %bb.e
  %i.g = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.h = and i32 %i.g, 32
  %.not.i.i.3 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 4, i8 0, i64 103687651328, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4

bb.h:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.3
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 103687651328, ptr nonnull inttoptr (i64 3 to ptr), i8 4) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4: ; preds = %bb.h, %bb.g
  %i.i = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.j = and i32 %i.i, 32
  %.not.i.i.4 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 5, i8 0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5

bb.j:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.4
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 138047389696, ptr nonnull inttoptr (i64 3 to ptr), i8 5) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5: ; preds = %bb.j, %bb.i
  %i.k = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.l = and i32 %i.k, 32
  %.not.i.i.5 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 6, i8 0, i64 172407128064, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.5

bb.l:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.5
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 172407128064, ptr nonnull inttoptr (i64 3 to ptr), i8 6) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.5

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit.5: ; preds = %bb.l, %bb.k
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 9) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #8
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 701) #8
  ret void
}

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins34Generate_WasmTrapHandlerLandingPadEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 10, i64 1, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10) #8
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1369) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins20Generate_WasmSuspendEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit62:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca [2 x %"class.v8::internal::Register"], align 1 ; 5 uses
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 32, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  tail call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i32 noundef 55168) #8
  tail call void @_ZN2v88internal14MacroAssembler24LoadExternalPointerFieldENS0_8RegisterENS0_7OperandENS0_8TagRangeINS0_18ExternalPointerTagEEES2_NS1_19IsolateRootLocationE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i64 121634816, ptr nonnull inttoptr (i64 2 to ptr), i32 1835036, i8 10, i32 noundef 1) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 943849472, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 55168, i8 1) #8
  tail call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i64 255852544, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 55176, i8 2) #8
  %i.b = tail call i64 @_ZN2v88internal17ExternalReference18wasm_suspend_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i8 1, ptr %2, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.c, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef nonnull %0, i64 %i.b, i8 3, ptr noundef nonnull %1, i8 -1, ptr nonnull %2, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 390070272, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 406913024, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 541130752, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpENS0_7OperandEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 675348480, ptr nonnull inttoptr (i64 2 to ptr), i1 noundef zeroext false) #8
  call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #8
  call void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler24LoadExternalPointerFieldENS0_8RegisterENS0_7OperandENS0_8TagRangeINS0_18ExternalPointerTagEEES2_NS1_19IsolateRootLocationE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr, i32, i8, i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef %0, i64 %1, i8 range(i8 3, 10) %2, ptr noundef %3, i8 range(i8 -1, 3) %4, ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.8.val ; 2 uses
  %.not13 = icmp samesign eq i64 %.8.val, 0       ; 2 uses
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.c = load i8, ptr %i.b, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.b, align 2
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i8 %2) #8
  %i.d = tail call i64 @_ZN2v88internal17ExternalReference17wasm_return_stackEv() #8
  %i.e = tail call noundef zeroext i1 @_ZN2v88internaleqENS0_17ExternalReferenceES1_(i64 %1, i64 %i.d) #8 ; 2 uses
  %.not11 = icmp eq i8 %4, -1                     ; 2 uses
  %i.f = select i1 %.not11, i32 5, i32 6
  %i.g = select i1 %i.e, i32 2, i32 %i.f          ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %i.g) #8
  br i1 %.not11, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.h, %.lr.ph ], [ %.0.val, %bb.a ] ; 2 uses
  %.sroa.022.0.copyload = load i8, ptr %.014, align 1
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.022.0.copyload) #8
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i8 %4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  br i1 %i.e, label %_ZN2v88internal10FrameScopeD2Ev.exit, label %_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit

_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit:     ; preds = %bb.c
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i8 4) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i8 5) #8
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 8, i64 1, ptr %3, i32 noundef 8) #8
  br label %_ZN2v88internal10FrameScopeD2Ev.exit

_ZN2v88internal10FrameScopeD2Ev.exit:             ; preds = %bb.c, %_ZN2v88internal7OperandC2EPNS0_5LabelEi.exit
  %i.i = tail call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 %i.i) #8
  %i.j = tail call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, i32 noundef %i.g, i32 noundef 1, ptr noundef null) #8 ; 0 uses
  store i8 %i.c, ptr %i.b, align 2
  br i1 %.not13, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %.lr.ph16, %_ZN2v88internal10FrameScopeD2Ev.exit
  ret void

.lr.ph16:                                         ; preds = %_ZN2v88internal10FrameScopeD2Ev.exit, %.lr.ph16
  %.sroa.01.015 = phi ptr [ %i.k, %.lr.ph16 ], [ %i.a, %_ZN2v88internal10FrameScopeD2Ev.exit ]
  %i.k = getelementptr inbounds i8, ptr %.sroa.01.015, i64 -1 ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.k, align 1
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.0.0.copyload) #8
  %i.l = icmp eq ptr %i.k, %.0.val
  br i1 %i.l, label %._crit_edge17, label %.lr.ph16, !llvm.loop !12
}

declare i64 @_ZN2v88internal17ExternalReference18wasm_suspend_stackEv() local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436), i64, ptr, i64 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins19Generate_WasmResumeEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_125Generate_WasmResumeHelperEPNS0_14MacroAssemblerENS0_4wasm8OnResumeE(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_125Generate_WasmResumeHelperEPNS0_14MacroAssemblerENS0_4wasm8OnResumeE(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %3 = alloca [1 x %"class.v8::internal::Register"], align 1 ; 4 uses
  tail call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  tail call void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 32, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 524746752, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 256311296, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal14MacroAssembler23LoadTrustedPointerFieldENS0_8RegisterENS0_7OperandENS0_18IndirectPointerTagES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i64 122093568, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 19984723346456576, i8 10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  tail call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i32 noundef 55168) #8
  tail call void @_ZN2v88internal14MacroAssembler24LoadExternalPointerFieldENS0_8RegisterENS0_7OperandENS0_8TagRangeINS0_18ExternalPointerTagEEES2_NS1_19IsolateRootLocationE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 121765888, ptr nonnull inttoptr (i64 2 to ptr), i32 1835036, i8 10, i32 noundef 1) #8
  tail call void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 55168, i8 3) #8
  %i.b = tail call i64 @_ZN2v88internal17ExternalReference17wasm_resume_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i8 3, ptr %3, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef nonnull %0, i64 %i.b, i8 9, ptr noundef nonnull %2, i8 2, ptr nonnull %3, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 407175168, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  %.not = icmp eq i32 %1, 0
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 407044096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 541261824, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i64 0) #8
  %i.c = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 155) #8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %i.f = sext i8 %i.e to i32
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.c, i32 noundef %i.f) #8
  br label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87
  call void @_ZN2v88internal9Assembler3jmpENS0_7OperandEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 675479552, ptr nonnull inttoptr (i64 2 to ptr), i1 noundef zeroext false) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal9Assembler7endbr64Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  call void @_ZN2v88internal14MacroAssembler10LeaveFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins19Generate_WasmRejectEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_125Generate_WasmResumeHelperEPNS0_14MacroAssemblerENS0_4wasm8OnResumeE(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins27Generate_WasmOnStackReplaceEPNS0_14MacroAssemblerE(ptr noundef nonnull %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins15Generate_CEntryEPNS0_14MacroAssemblerEiNS0_8ArgvModeEbb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = add i32 %1, -3
  %i.b = icmp ult i32 %i.a, -2
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal14MacroAssembler11ExitSandboxEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 427
  store i8 1, ptr %i.c, align 1
  %i.d = zext i1 %4 to i32
  %i.e = select i1 %3, i32 27, i32 3
  tail call void @_ZN2v88internal14MacroAssembler14EnterExitFrameEiNS0_10StackFrame4TypeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %i.d, i32 noundef %i.e, i8 3) #8
  %i.f = icmp eq i32 %2, 0                        ; 2 uses
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, label %bb.d

_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit: ; preds = %bb.c
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i64 37669306368, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit, %bb.c
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 12, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 12, i8 12, i32 noundef 4) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 @_ZN2v88internal17ExternalReference6CreateENS0_16IsolateAddressIdEPNS0_7IsolateE(i32 noundef 12, ptr noundef %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.j, align 4
  %i.k = tail call { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.i, i8 10) #8 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  tail call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i64 %i.l, ptr %i.m, i64 0) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 12, i8 4, i32 noundef 8) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.o = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.n, align 2
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0) #8
  %i.p = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 %i.p) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6, i8 12) #8
end_hunk_1
