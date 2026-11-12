Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-x64?download=true
inline.NumInlined: 3912
inline.NumDeleted: 462
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_

declare void @_ZN2v88internal14MacroAssembler16RecordWriteFieldENS0_8RegisterEiS2_S2_NS0_14SaveFPRegsModeE8SmiCheck13ReadOnlyCheckNS0_14SlotDescriptorE(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef, i8, i8, i32 noundef, i32 noundef, i32 noundef, i64) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #1

declare i64 @_ZN2v88internal17ExternalReference35debug_hook_on_function_call_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare { i64, ptr } @_ZN2v88internal14MacroAssembler26ExternalReferenceAsOperandENS0_17ExternalReferenceENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i64, i8) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_ZN2v88internal17ExternalReference33debug_suspended_generator_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler50LoadEntrypointAndParameterCountFromJSDispatchTableENS0_8RegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, i8) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler15PushTaggedFieldENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i64, ptr, i8) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler12IsObjectTypeENS0_8RegisterENS0_12InstanceTypeES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext, i8) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408), i8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins35Generate_InterpreterEntryTrampolineEPNS0_14MacroAssemblerENS1_30InterpreterEntryTrampolineModeE(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 align 2 !guid !35 {
_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit218:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %4 = alloca %"class.std::initializer_list.520", align 8 ; 5 uses
  %5 = alloca [3 x %"class.std::tuple.521"], align 8 ; 12 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %9 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %10 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %11 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %12 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %13 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %14 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %15 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %16 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  tail call void @_ZN2v88internal14MacroAssembler30AssertInSandboxedExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(436) %0) #8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 11, i64 524746752, ptr nonnull inttoptr (i64 2 to ptr)) #8
  tail call void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 1128464640, ptr nonnull inttoptr (i64 2 to ptr), i64 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 0, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 186, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i16 184, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %6, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i16 185, ptr %i.l, align 8
  store ptr %5, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.m, align 8
  call void @_ZN2v88internal14MacroAssembler30LoadTrustedUnknownPointerFieldENS0_8RegisterENS0_7OperandES2_RKSt16initializer_listISt5tupleIJNS0_12InstanceTypeEPNS0_5LabelENS7_8DistanceEEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12, i64 121831680, ptr nonnull inttoptr (i64 2 to ptr), i8 10, ptr noundef nonnull align 8 dereferenceable(16) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal14MacroAssembler32LoadInterpreterDataBytecodeArrayENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12, i8 12) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.n, align 4
  call void @_ZN2v88internal14MacroAssembler18LoadFeedbackVectorENS0_8RegisterES2_PNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i8 7, ptr noundef nonnull %8, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4movbENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 339935232, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 4, i8 10, i64 4294967288) #8
  call void @_ZN2v88internal9Assembler4movbENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 339935232, ptr nonnull inttoptr (i64 2 to ptr), i8 10) #8
  call void @_ZN2v88internal9Assembler8emit_incENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 188940288, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %8) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.p = load i8, ptr %i.o, align 2, !range !16, !noundef !17
  store i8 1, ptr %i.o, align 2
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 5, i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 6) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i64 63, i32 noundef 4) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 12) #8
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i8 9) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  store i32 0, ptr %9, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.q, align 4
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 202471899392, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 43, i8 0, i8 1, i32 noundef 8) #8
  %i.r = call { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1) #8 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 0, i64 %i.s, ptr %i.t, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 2, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store i32 0, ptr %10, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  store i32 0, ptr %11, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.v, align 4
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i16 noundef zeroext 0) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %11, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %10) #8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %11) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 5, i8 1, i64 8, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 13, ptr noundef nonnull %10, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  store i32 0, ptr %12, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %i.w, align 4
  call void @_ZN2v88internal9Assembler7movsxlqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 236831637760, ptr nonnull inttoptr (i64 3 to ptr)) #8
  call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i8 1, i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %12, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3443785728, ptr nonnull inttoptr (i64 3 to ptr), i8 2, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  store i32 0, ptr %13, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  store i32 0, ptr %14, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.y, align 4
  %i.z = call { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 0) #8 ; 2 uses
  %i.aa = extractvalue { i64, ptr } %i.z, 0
  %i.ab = extractvalue { i64, ptr } %i.z, 1
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 4, i64 %i.aa, ptr %i.ab, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 2, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  store i32 0, ptr %15, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.ac, align 4
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %15) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i64 @_ZN2v88internal17ExternalReference34interpreter_dispatch_table_addressEPNS0_7IsolateE(ptr noundef %i.ae) #8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 15, i64 %i.af) #8
  call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 201589504, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 3607364352, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %i.ag = icmp eq i32 %1, 0
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 55464 ; 2 uses
  br i1 %i.ag, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit218
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  call void @_ZN2v88internal4Heap33SetInterpreterEntryReturnPCOffsetEi(ptr noundef nonnull align 8 dereferenceable(2992) %i.ai, i32 noundef %i.aq) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit199

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit218
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = add i64 %i.ar, -55464
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 9840
  %17 = load i64, ptr %i.au, align 8
  %18 = lshr i64 %17, 32
  %19 = trunc nuw i64 %18 to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp eq i32 %19, %i.bc
  br i1 %i.bd, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit199, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  unreachable

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit199: ; preds = %bb.b, %bb.a
  call void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 12, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr)) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  store i32 0, ptr %16, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 0, ptr %i.be, align 4
  call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 201589504, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call fastcc void @_ZN2v88internalL29AdvanceBytecodeOffsetOrReturnEPNS0_14MacroAssemblerENS0_8RegisterES3_S3_S3_S3_PNS0_5LabelE(ptr noundef nonnull %0, ptr noundef %16)
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %16) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler11emit_movzxwENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 860028928, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i64 3896836096, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 3, i8 1, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler5cmovqENS0_9ConditionENS0_8RegisterES3_(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 12, i8 3, i8 1) #8
  call void @_ZN2v88internal9Assembler5leaveEv(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  call void @_ZN2v88internal14MacroAssembler13DropArgumentsENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i8 1) #8
  call void @_ZN2v88internal9Assembler3retEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %13) #8
  %i.bf = call i8 @_ZN2v88internal14MacroAssembler14GetSmiConstantENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 266287972352) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.bf, i32 noundef 8) #8
  %i.bg = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 212) #8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = sext i8 %i.bi to i32
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.bg, i32 noundef %i.bj) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 12, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 9, i64 63, i32 noundef 4) #8
  call void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i16 noundef zeroext 0) #8
  call void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i8 12) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 1, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %7) #8
  call void @_ZN2v88internal14MacroAssembler30GenerateTailCallToReturnedCodeENS0_7Runtime10FunctionIdE8JumpMode(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 66, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %6) #8
  call void @_ZN2v88internal14MacroAssembler30GenerateTailCallToReturnedCodeENS0_7Runtime10FunctionIdE8JumpMode(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 68, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %9) #8
  %i.bk = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 171) #8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = sext i8 %i.bm to i32
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.bk, i32 noundef %i.bn) #8
  call void @_ZN2v88internal9Assembler4int3Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  store i8 %i.p, ptr %i.o, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler30AssertInSandboxedExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler18LoadFeedbackVectorENS0_8RegisterES2_PNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436), i8, i8) local_unnamed_addr #1

declare void @_ZN2v88internal9Assembler7movsxlqENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408), i8, i64, ptr) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #1

declare i64 @_ZN2v88internal17ExternalReference34interpreter_dispatch_table_addressEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal4Heap33SetInterpreterEntryReturnPCOffsetEi(ptr noundef nonnull align 8 dereferenceable(2992), i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN2v88internal9Assembler4callENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internalL29AdvanceBytecodeOffsetOrReturnEPNS0_14MacroAssemblerENS0_8RegisterES3_S3_S3_S3_PNS0_5LabelE(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !guid !36 {
_ZN2v88internal7OperandC2ENS0_8RegisterES2_NS0_11ScaleFactorEi.exit73:
  %2 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  %3 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %4 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %5 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 8, i8 9, i32 noundef 8) #8
  %i.a = tail call i64 @_ZN2v88internal17ExternalReference27bytecode_size_table_addressEv() #8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i64 %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4
  tail call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 3, i64 3) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 7, ptr noundef nonnull %2, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_incENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 9, i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler5testbENS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 1) #8
  call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 201589504, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef nonnull %3, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 1, i64 212, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %3) #8
  call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 1, i64 424, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #8
  call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 3, i64 183) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 3, i64 189) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i32 0, ptr %5, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.e, align 4
  call void @_ZN2v88internal9Assembler25immediate_arithmetic_op_8EhNS0_8RegisterENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 3, i64 149) #8
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 5, ptr noundef nonnull %5, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 9, i8 8, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4, i32 noundef 0) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %5) #8
  call void @_ZN2v88internal9Assembler11emit_movzxbENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 419692544, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 3, i8 9, i8 10, i32 noundef 4) #8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare void @_ZN2v88internal14MacroAssembler30GenerateTailCallToReturnedCodeENS0_7Runtime10FunctionIdE8JumpMode(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Builtins40Generate_InterpreterPushArgsThenCallImplEPNS0_14MacroAssemblerENS0_19ConvertReceiverModeENS0_23InterpreterPushArgsModeE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !37 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = icmp eq i32 %2, 1                        ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i32 noundef 4) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i8 0, i32 noundef 4) #8
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal14MacroAssembler18StackOverflowCheckENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i8 1, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler4negqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2) #8
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 37904187392, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler9PushArrayENS0_8RegisterES2_S2_NS1_14PushArrayOrderE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i8 1, i8 2, i32 noundef 1) #8
  br i1 %i.b, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %.critedge31

.thread:                                          ; preds = %bb.c
  tail call void @_ZN2v88internal9Assembler8emit_decENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i32 noundef 4) #8
  call void @_ZN2v88internal14MacroAssembler18StackOverflowCheckENS0_8RegisterEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2, i8 1, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler4negqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 2) #8
  call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 37904187392, ptr nonnull inttoptr (i64 3 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal14MacroAssembler9PushArrayENS0_8RegisterES2_S2_NS1_14PushArrayOrderE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i8 1, i8 2, i32 noundef 1) #8
  call void @_ZN2v88internal14MacroAssembler8PushRootENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436) %0, i16 noundef zeroext 0) #8
  br i1 %i.b, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %.critedge31.thread

.critedge31.thread:                               ; preds = %.thread
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  br label %_ZN2v88internal8Builtins4CallENS0_19ConvertReceiverModeE.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %.thread, %bb.d
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 4165140480, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  br label %bb.f

.critedge31:                                      ; preds = %bb.d
  call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10) #8
  %i.d = icmp ult i32 %1, 3
  br i1 %i.d, label %_ZN2v88internal8Builtins4CallENS0_19ConvertReceiverModeE.exit, label %bb.e

end_hunk_0
