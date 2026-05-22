inline.NumInlined: 3912
inline.NumDeleted: 462
begin_hunk_0_@_ZN2v88internal17RestoreWasmParamsEPNS0_14MacroAssemblerEi:bb.a
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
  %.sroa.088.0.copyload.sroa.speculated = select i1 %i.c, i8 3, i8 7 ; 9 uses
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
  tail call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 55168) #8
  %i.g = or disjoint i8 %.sroa.088.0.copyload.sroa.speculated, 64
  %.sroa.0926.2.insert.ext = zext nneg i8 %i.g to i64
  %.sroa.0926.2.insert.shift = shl nuw nsw i64 %.sroa.0926.2.insert.ext, 16 ; 2 uses
  %.sroa.0926.3.insert.insert = or disjoint i64 %.sroa.0926.2.insert.shift, 939524096
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.088.0.copyload.sroa.speculated, i64 %.sroa.0926.3.insert.insert, ptr nonnull inttoptr (i64 2 to ptr)) #8
  %i.h = tail call i64 @_ZN2v88internal17ExternalReference16wasm_start_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i8 6, ptr %5, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 7, ptr %i.i, align 1
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef nonnull %0, i64 %i.h, i8 %.sroa.088.0.copyload.sroa.speculated, ptr noundef nonnull %6, i8 -1, ptr nonnull %5, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i32 noundef 55168) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.091.0.copyload, i8 5, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_7OperandEl(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i64 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 4, i64 406847488, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i64 541065216, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 0) #8
  call void @_ZN2v88internal14MacroAssembler10EnterFrameENS0_10StackFrame4TypeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 7) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 88, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.088.0.copyload.sroa.speculated, i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 458752, ptr nonnull inttoptr (i64 1 to ptr), i32 noundef 8) #8
  %.sroa.0714.2.insert.ext719 = zext nneg i8 %.sroa.088.0.copyload.sroa.speculated to i64
  %.sroa.0714.2.insert.shift720 = shl nuw nsw i64 %.sroa.0714.2.insert.ext719, 16
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.0714.2.insert.shift720, ptr nonnull inttoptr (i64 1 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 138870784, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %.sroa.0924.3.insert.insert = or disjoint i64 %.sroa.0926.2.insert.shift, 134217728
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.0924.3.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 6, i32 noundef 8) #8
  %i.j = and i8 %.sroa.091.0.copyload, 5
  %i.k = or disjoint i8 %i.j, 64
  %i.l = lshr i8 %.sroa.091.0.copyload, 3
  %.sroa.3.0.insert.ext = zext nneg i8 %i.k to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext nneg i8 %i.l to i64
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
  %i.m = or disjoint i8 %.sroa.088.0.copyload.sroa.speculated, 64
  %.sroa.3890.0.insert.ext = zext nneg i8 %i.m to i64
  %.sroa.3890.0.insert.shift = shl nuw nsw i64 %.sroa.3890.0.insert.ext, 16
  %.sroa.3890.0.insert.insert = or disjoint i64 %.sroa.3890.0.insert.shift, 268435456
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.3890.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 11, i64 541523968, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 675741696, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler19LoadWasmCodePointerENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 407306240, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 1480786176, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.n, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.o, align 4
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
  %i.p = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.q = and i32 %i.p, 32
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 1, i8 0, i64 675479808, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 675479808, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.a, %bb.b
  %i.r = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.s = and i32 %i.r, 32
  %.not.i.i.1 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 2, i8 0, i64 809697536, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1

bb.d:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i64 809697536, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1: ; preds = %bb.d, %bb.c
  %i.t = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.u = and i32 %i.t, 32
  %.not.i.i.2 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 3, i8 0, i64 943915264, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2

bb.f:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.1
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 943915264, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2: ; preds = %bb.f, %bb.e
  %i.v = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.w = and i32 %i.v, 32
  %.not.i.i.3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 4, i8 0, i64 1078132992, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3

bb.h:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.2
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 4, i64 1078132992, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3: ; preds = %bb.h, %bb.g
  %i.x = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.y = and i32 %i.x, 32
  %.not.i.i.4 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 5, i8 0, i64 1212350720, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4

bb.j:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.3
  call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5, i64 1212350720, ptr nonnull inttoptr (i64 2 to ptr)) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit.4: ; preds = %bb.j, %bb.i
  %i.z = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.aa = and i32 %i.z, 32
  %.not.i.i.5 = icmp eq i32 %i.aa, 0
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
  %i.ab = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ac = and i32 %i.ab, 32
  %.not.i.i375 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i375, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220
  call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 1, i8 0, i64 406913024, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit220
  call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 406913024, ptr nonnull inttoptr (i64 2 to ptr), i8 1) #8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.n
  %i.ad = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ae = and i32 %i.ad, 32
  %.not.i.i376 = icmp eq i32 %i.ae, 0
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
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.af, align 4
  br i1 %i.f, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal24SharedMacroAssemblerBase5MovsdINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit377
  %i.ag = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %bb.t, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ai = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) #8
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15CallDescriptors21call_descriptor_data_E, i64 25680), ptr @_ZZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc, align 8
  %i.aj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_126SwitchBackAndReturnPromiseEPNS0_14MacroAssemblerENS0_8RegisterES4_NS0_4wasm7PromiseEPNS0_5LabelEE4desc) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %i.a, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit55.i, label %.critedge.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit55.i: ; preds = %bb.t
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i8 0, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i32 noundef 55176) #8
  call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 390070272, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 6, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125GetContextFromImplicitArgEPNS0_14MacroAssemblerENS0_8RegisterE(ptr noundef nonnull %0, i8 6)
  call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 8, i32 noundef 55168) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 943718656, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 55168, i8 7) #8
  %i.ak = call i64 @_ZN2v88internal17ExternalReference17wasm_return_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store <4 x i8> <i8 0, i8 3, i8 6, i8 7>, ptr %4, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_112SwitchStacksEPNS0_14MacroAssemblerENS0_17ExternalReferenceENS0_8RegisterEPNS0_5LabelES5_St16initializer_listIS5_E(ptr noundef nonnull %0, i64 %i.ak, i8 8, ptr noundef null, i8 -1, ptr nonnull %4, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
end_hunk_0
