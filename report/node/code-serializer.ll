Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/code-serializer?download=true
inline.NumInlined: 2045
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2v88internal14CodeSerializer19SerializeObjectImplENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE:bb.a
.critedge95:                                      ; preds = %bb.az
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10) #19
  unreachable

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %3, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hw = load ptr, ptr %i.a, align 8
  store ptr %i.hw, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.0206.0, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.ia, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN2v88internal21TorqueGeneratedScriptINS0_6ScriptENS0_6StructEE16set_context_dataENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal21TorqueGeneratedScriptINS0_6ScriptENS0_6StructEE16set_context_dataENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %_ZN2v88internal6HandleINS0_13DependentCodeEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %.critedge86, %.critedge88, %bb.ai, %bb.aj, %bb.z, %bb.y, %_ZN2v88internal21TorqueGeneratedScriptINS0_6ScriptENS0_6StructEE24set_host_defined_optionsENS0_6TaggedINS0_10FixedArrayEEENS0_16WriteBarrierModeE.exit108, %bb.ba, %bb.al, %bb.ak
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer13SerializeRootENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer22SerializeBackReferenceENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(600), i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal10Serializer32SerializeReadOnlyObjectReferenceENS0_6TaggedINS0_10HeapObjectEEEPNS0_16SnapshotByteSinkE(ptr noundef nonnull align 8 dereferenceable(600), i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21TorqueGeneratedScriptINS0_6ScriptENS0_6StructEE16set_context_dataENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.04.0.copyload = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.04.0.copyload, 39
  %i.b = inttoptr i64 %i.a to ptr
  store atomic volatile i64 %1, ptr %i.b monotonic, align 8
  %.sroa.02.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %i.c = add i64 %.sroa.02.0.copyload, 39         ; 2 uses
  %i.d = icmp sgt i32 %2, 1
  %i.e = trunc i64 %1 to i1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %.sroa.02.0.copyload, -262144
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 262144         ; 2 uses
  %i.i = and i64 %i.h, 32
  %.not.i.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.h, 25
  %.not38.i.i = icmp eq i64 %i.j, 0
  br i1 %.not38.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %1, -262144
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i28.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i28.i.i, 25
  %.not39.i.i = icmp eq i64 %i.m, 0
  br i1 %.not39.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload, i64 noundef %i.c, i64 %1) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br i1 %.not.i.i, label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload, i64 %i.c, i64 %1) #18
  br label %_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit

_ZN2v88internal12WriteBarrier8ForValueINS0_5UnionIJNS0_3SmiENS0_6SymbolENS0_9UndefinedEEEEEEvNS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotENS8_IT_EENS0_16WriteBarrierModeE.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14CodeSerializer16SerializeGenericENS0_6HandleINS0_10HeapObjectEEENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(604) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Serializer::ObjectSerializer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal10Serializer16ObjectSerializerE, i64 16), ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %i.h, align 8
  call void @_ZN2v88internal10Serializer16ObjectSerializer9SerializeENS0_22SerializerDeserializer8SlotTypeE(ptr noundef nonnull align 8 dereferenceable(44) %3, i32 noundef %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18SharedFunctionInfo22SetActiveBytecodeArrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8 ; 6 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i: ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 185
  br i1 %i.k, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i
  %i.l = add i64 %i.c, 51
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i32, ptr %i.m monotonic, align 4
  %i.o = and i32 %i.n, 15
  %i.p = icmp eq i32 %i.o, 10
  br i1 %i.p, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.21) #19
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i
  %i.q = add i64 %i.c, 7
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.s, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i ], [ %i.c, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.t = trunc i64 %.sroa.06.0.i to i1
  br i1 %i.t, label %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit, label %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit.thread

_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i
  %i.u = add nsw i64 %.sroa.06.0.i, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 186
  br i1 %i.aa, label %bb.c, label %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit.thread

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit
  %.sroa.0.0.copyload.i.i.i4 = load i64, ptr %0, align 8
  %i.ab = add i64 %.sroa.0.0.copyload.i.i.i4, 7
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac acquire, align 8 ; 6 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i6, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5

_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i6: ; preds = %bb.c
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = icmp eq i16 %i.ak, 185
  br i1 %i.al, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i7, label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i7: ; preds = %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i6
  %i.am = add i64 %i.ad, 51
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load atomic volatile i32, ptr %i.an monotonic, align 4
  %i.ap = and i32 %i.ao, 15
  %i.aq = icmp eq i32 %i.ap, 10
  br i1 %i.aq, label %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i8, label %bb.d, !prof !14

bb.d:                                             ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i7
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.21) #19
  unreachable

_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i8: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.i7
  %i.ar = add i64 %i.ad, 7
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5

_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5: ; preds = %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i8, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i6, %bb.c
  %.sroa.07.0.i = phi i64 [ %i.at, %_ZNK2v88internal4Code28bytecode_or_interpreter_dataEv.exit.i8 ], [ %i.ad, %_ZN2v88internal2IsINS0_4CodeENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i6 ], [ %i.ad, %bb.c ] ; 2 uses
  %i.au = trunc i64 %.sroa.07.0.i to i1
  br i1 %i.au, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i, !prof !25

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5
  %i.av = add nsw i64 %.sroa.07.0.i, -1           ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp eq i16 %i.ba, 186
  br i1 %i.bb, label %_ZNK2v88internal18SharedFunctionInfo16interpreter_dataENS0_17IsolateForSandboxE.exit, label %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i, !prof !15

_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.thread.i.i: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i, %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i5
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22) #19
  unreachable

_ZNK2v88internal18SharedFunctionInfo16interpreter_dataENS0_17IsolateForSandboxE.exit: ; preds = %_ZN2v88internal8NullOrIsINS0_15InterpreterDataENS0_6ObjectEEEbNS0_6TaggedIT0_EE.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store atomic volatile i64 %1, ptr %i.bc monotonic, align 8
  %i.bd = trunc i64 %1 to i1
  br i1 %i.bd, label %bb.e, label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16interpreter_dataENS0_17IsolateForSandboxE.exit
  %2 = or disjoint i64 %i.av, 1                   ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bf = and i64 %i.av, -262144
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 262144       ; 2 uses
  %i.bi = and i64 %i.bh, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = and i64 %i.bh, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not38.i.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bk = and i64 %1, -262144
  %i.bl = inttoptr i64 %i.bk to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bl, align 262144
  %i.bm = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not39.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %2, i64 noundef %i.be, i64 %1) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %2, i64 %i.be, i64 %1) #18
  br label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit

_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit.thread: ; preds = %_ZN2v88internal7TryCastINS0_4CodeENS0_6ObjectENS0_6TaggedEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit.thread.i, %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.bn = add i64 %.sroa.01.0.copyload.i.i.i, 7
  %i.bo = inttoptr i64 %i.bn to ptr
  store atomic volatile i64 %1, ptr %i.bo release, align 8
  %.sroa.05.0.copyload.i.i = load i64, ptr %0, align 8
  %i.bp = add i64 %.sroa.05.0.copyload.i.i, 15
  %i.bq = inttoptr i64 %i.bp to ptr
  store atomic volatile i64 -4294967296, ptr %i.bq release, align 8
  %.sroa.02.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.br = add i64 %.sroa.02.0.copyload.i.i, 7     ; 2 uses
  %i.bs = trunc i64 %1 to i1
  br i1 %i.bs, label %bb.j, label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit.thread
  %i.bt = and i64 %.sroa.02.0.copyload.i.i, -262144
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load i64, ptr %i.bu, align 262144       ; 2 uses
  %i.bw = and i64 %i.bv, 32
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %i.bv, 25
  %.not38.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not38.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.by = and i64 %1, -262144
  %i.bz = inttoptr i64 %i.by to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i = load i64, ptr %i.bz, align 262144
  %i.ca = and i64 %.sroa.0.0.copyload.i28.i.i.i.i, 25
  %.not39.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i.i, i64 noundef %i.br, i64 %1) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i, label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i.i, i64 %i.br, i64 %1) #18
  br label %_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15InterpreterData18set_bytecode_arrayENS0_6TaggedINS0_13BytecodeArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.n, %bb.m, %_ZNK2v88internal18SharedFunctionInfo18HasInterpreterDataENS0_17IsolateForSandboxE.exit.thread, %bb.i, %bb.h, %_ZNK2v88internal18SharedFunctionInfo16interpreter_dataENS0_17IsolateForSandboxE.exit
  ret void
}

declare noundef i32 @_ZN2v88internal18SharedFunctionInfo23cached_tiering_decisionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN2v88internal18SharedFunctionInfo27set_cached_tiering_decisionENS0_21CachedTieringDecisionE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo23SloppyEvalCanExtendVarsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN2v88internal13DependentCode20empty_dependent_codeERKNS0_13ReadOnlyRootsE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK2v88internal9ScopeInfo14dependent_codeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !50
  %i.d = add i64 %.sroa.0.0.copyload.i.i.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !51 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !52
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !53
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !54
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !55
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !56
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !57
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE14dependent_codeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !58
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload.i.i.i, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !57
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE14dependent_codeEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23) #19, !noalias !57
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE14dependent_codeEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %i.z = icmp sgt i64 %i.f, 322122547199
  %i.aa = select i1 %i.z, i64 8, i64 0
  %i.ab = and i32 %i.c, 15
  %i.ac = icmp eq i32 %i.ab, 5
  %i.ad = select i1 %i.ac, i64 56, i64 48
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  %i.af = ashr i64 %i.f, 29
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = add nsw i64 %i.ae, %i.ag
  %i.ai = icmp slt i64 %i.f, 322122547200
  %i.aj = select i1 %i.ai, i64 %i.ag, i64 0
  %i.ak = add nsw i64 %i.ah, %i.aj
  %i.al = lshr i32 %i.g, 7
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.ak, %i.an
  %i.ap = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.not.i.i.i.i.i.i.i.i, i64 0, i64 16
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = lshr i32 %i.i, 11
  %i.at = and i32 %i.as, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = lshr i32 %i.j, 19
  %i.ax = and i32 %i.aw, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %i.ba = add nsw i64 %i.az, %i.y
  %i.bb = add nsw i64 %i.ba, %storemerge.i.i.i.i.i
  %i.bc = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !59 ; 0 uses
  %i.bd = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %sext.i.i = shl i64 %i.bb, 32
  %i.be = ashr exact i64 %sext.i.i, 32
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8
  ret i64 %i.bh
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE18set_dependent_codeENS0_6TaggedINS0_13WeakArrayListEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !84
  %i.d = add i64 %.sroa.0.0.copyload.i, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !85 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !86
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !87
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !88
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !89
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !90
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !91
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !92
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload.i, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !91
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23) #19, !noalias !91
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE19DependentCodeOffsetEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %i.z = icmp sgt i64 %i.f, 322122547199
  %i.aa = select i1 %i.z, i64 8, i64 0
  %i.ab = and i32 %i.c, 15
  %i.ac = icmp eq i32 %i.ab, 5
  %i.ad = select i1 %i.ac, i64 56, i64 48
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  %i.af = ashr i64 %i.f, 29
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = add nsw i64 %i.ae, %i.ag
  %i.ai = icmp slt i64 %i.f, 322122547200
  %i.aj = select i1 %i.ai, i64 %i.ag, i64 0
  %i.ak = add nsw i64 %i.ah, %i.aj
  %i.al = lshr i32 %i.g, 7
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.ak, %i.an
  %i.ap = and i32 %i.h, 12288
end_hunk_0
