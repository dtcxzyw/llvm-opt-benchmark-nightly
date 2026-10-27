Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/macro-assembler-x64?download=true
inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0_@_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm:bb.a
  %.not36 = icmp eq i64 %i.d, 0
  br i1 %.not36, label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = trunc nuw nsw i64 %i.d to i8
  %i.v = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.w = and i32 %i.v, 32
  %.not.i.i39 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 115, i8 2, i8 %1, i8 %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase5PsrlqINS0_11XMMRegisterEhJEEEvT_T0_DpT1_.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2, i8 %1, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext 115) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase5PsrlqINS0_11XMMRegisterEhJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5PsrlqINS0_11XMMRegisterEhJEEEvT_T0_DpT1_.exit: ; preds = %bb.n, %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  store i8 %i.u, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.x, align 8
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.p:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %2, 4294967296
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = trunc nuw i64 %2 to i32
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEj(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i32 noundef %i.ab)
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.r:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %2, i8 0, i32 noundef 8) #15
  %i.ac = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ad = and i32 %i.ac, 32
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal9Assembler5vmovqENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 10) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal9Assembler4movqENS0_11XMMRegisterENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 10) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5XorpdINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.t, %bb.s, %bb.d, %bb.c, %_ZN2v88internal24SharedMacroAssemblerBase5PsrlqINS0_11XMMRegisterEhJEEEvT_T0_DpT1_.exit, %bb.l, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEmm(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 noundef %2)
  %i.b = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.c = and i32 %i.b, 32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 108, i8 %1, i8 %1, i8 %1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase10PunpcklqdqINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %1, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext 108) #15
  br label %_ZN2v88internal24SharedMacroAssemblerBase10PunpcklqdqINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 noundef %3)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %2, i8 0, i32 noundef 8) #15
  %i.d = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.e = and i32 %i.d, 32
  %.not65.i.i = icmp eq i32 %i.e, 0
  br i1 %.not65.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 34, i8 %1, i8 %1, i8 10, i32 noundef 1, i32 noundef 3, i32 noundef 128, i32 noundef 5) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  store i8 1, ptr %i.g, align 1, !alias.scope !113
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.f, align 8
  br label %_ZN2v88internal24SharedMacroAssemblerBase10PunpcklqdqINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler6pinsrqENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 10, i8 noundef zeroext 1) #15, !inline_history !1
  br label %_ZN2v88internal24SharedMacroAssemblerBase10PunpcklqdqINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase10PunpcklqdqINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler6PinsrqENS0_11XMMRegisterES2_NS0_8RegisterEhPj(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2, i8 %3, i8 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not65.i = icmp eq i32 %i.b, 0
  br i1 %.not65.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not53.i = icmp eq ptr %5, null
  br i1 %.not53.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr %5, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.k)
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 34, i8 %1, i8 %2, i8 %3, i32 noundef 1, i32 noundef 3, i32 noundef 128, i32 noundef 5) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store i8 %4, ptr %i.m, align 1, !alias.scope !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.l, align 8
  br label %_ZN2v88internal24SharedMacroAssemblerBase11PinsrHelperINS0_8RegisterEEEvPNS0_9AssemblerEMS4_FvNS0_11XMMRegisterES6_T_hEMS4_FvS6_S7_hES6_S6_S7_hPjSt8optionalINS0_10CpuFeatureEE.exit

bb.e:                                             ; preds = %bb.a
  %.not66.i = icmp eq i8 %1, %2
  br i1 %.not66.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %2) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr %5, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZN2v88internal9Assembler6pinsrqENS0_11XMMRegisterENS0_8RegisterEh(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i8 %3, i8 noundef zeroext %4) #15, !inline_history !1
  br label %_ZN2v88internal24SharedMacroAssemblerBase11PinsrHelperINS0_8RegisterEEEvPNS0_9AssemblerEMS4_FvNS0_11XMMRegisterES6_T_hEMS4_FvS6_S7_hES6_S6_S7_hPjSt8optionalINS0_10CpuFeatureEE.exit

_ZN2v88internal24SharedMacroAssemblerBase11PinsrHelperINS0_8RegisterEEEvPNS0_9AssemblerEMS4_FvNS0_11XMMRegisterES6_T_hEMS4_FvS6_S7_hES6_S6_S7_hPjSt8optionalINS0_10CpuFeatureEE.exit: ; preds = %bb.d, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 4294967296
  br i1 %i.d, label %bb.c, label %_ZN2v88internal14MacroAssembler14GetSmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %1, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14MacroAssembler14GetSmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i: ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.a, i8 0, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 59, i8 %1, i8 10, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.i = load i8, ptr %i.h, align 1, !range !7
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal18MacroAssemblerBase20IndirectLoadConstantENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, ptr nonnull %2) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.k, i8 4, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit.sink.split

_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit.sink.split: ; preds = %bb.f, %bb.e
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 59, i8 %1, i8 10, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %_ZN2v88internal14MacroAssembler3CmpENS0_8RegisterENS0_6TaggedINS0_3SmiEEE.exit.sink.split, %_ZN2v88internal14MacroAssembler14GetSmiConstantENS0_6TaggedINS0_3SmiEEE.exit.i, %bb.c
  ret void
}

declare void @_ZN2v88internal18MacroAssemblerBase20IndirectLoadConstantENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436), i8, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6HandleINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, ptr %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %3, align 8                ; 3 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.a, 4294967296
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 10, i8 10, i32 noundef 4) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6TaggedINS0_3SmiEEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.a, i8 0, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6TaggedINS0_3SmiEEE.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.i = load i8, ptr %i.h, align 1, !range !7
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal18MacroAssemblerBase20IndirectLoadConstantENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, ptr nonnull %3) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE.exit: ; preds = %bb.e
  %i.k = ptrtoint ptr %3 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.k, i8 4, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6TaggedINS0_3SmiEEE.exit

_ZN2v88internal14MacroAssembler3CmpENS0_7OperandENS0_6TaggedINS0_3SmiEEE.exit: ; preds = %bb.f, %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE.exit, %bb.d, %bb.c
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 57, i8 10, i64 %1, ptr %2, i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, ptr %2, i8 noundef signext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.e = load i8, ptr %i.d, align 1, !range !7
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal18MacroAssemblerBase20IndirectLoadConstantENS0_8RegisterENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, ptr %2) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %i.g, i8 %3, i32 noundef 8) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler12CompareRangeENS0_8RegisterEjj(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  %i.c = sub i32 0, %2                            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.d, align 8
  switch i8 %1, label %bb.d [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %scevgep = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.e = and i8 %1, 7
  %i.f = or disjoint i8 %i.e, 32
  store i8 %i.f, ptr %scevgep, align 1
  %i.g = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = lshr i8 %1, 3
  store i64 2, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ 2, %bb.c ]       ; 3 uses
  %i.j = phi i8 [ 0, %bb.b ], [ %i.h, %bb.c ]
  %i.k = sext i32 %i.c to i64
  %i.l = add nsw i64 %i.k, 128
  %i.m = icmp ult i64 %i.l, 256
  %i.n = and i8 %1, 7                             ; 2 uses
  %i.o = icmp samesign ult i8 %1, 16              ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = or disjoint i8 %i.n, 64
  store i8 %i.p, ptr %i.b, align 2
  tail call void @llvm.assume(i1 %i.o)
  %i.q = trunc i32 %i.c to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  store i8 %i.q, ptr %i.r, align 1
  %i.s = add nuw nsw i64 %i.i, 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.f:                                             ; preds = %bb.d
  %i.t = or disjoint i8 %i.n, -128
  store i8 %i.t, ptr %i.b, align 2
  tail call void @llvm.assume(i1 %i.o)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  store i32 %i.c, ptr %i.u, align 1
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 4
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.w, %bb.f ], [ %i.s, %bb.e ]
  %.pn = lshr i8 %1, 3
  %.sink = or i8 %i.j, %.pn
  store i8 %.sink, ptr %i.a, align 1
  %i.x = load i64, ptr %4, align 8
  %.cast = inttoptr i64 %storemerge to ptr
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %i.x, ptr %.cast, i32 noundef 4) #15
  %i.y = sub i32 %3, %2
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %.sink37 = phi i32 [ %i.y, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ], [ %3, %bb.a ]
  %.sink36 = phi i8 [ 10, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit ], [ %1, %bb.a ]
  %.sroa.0.0.insert.ext = zext i32 %.sink37 to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i8 %.sink36, i64 %.sroa.0.0.insert.ext, i32 noundef 4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler15JumpIfIsInRangeENS0_8RegisterEjjPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN2v88internal14MacroAssembler12CompareRangeENS0_8RegisterEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 4 uses
  %i.c = sub i32 0, %2                            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %6, align 8
  store i64 1, ptr %i.d, align 8
  switch i8 %1, label %._crit_edge [
    i8 4, label %bb.c
    i8 12, label %bb.c
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre = and i8 %1, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.b
  %scevgep.i = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.e = and i8 %1, 7                             ; 2 uses
  %i.f = or disjoint i8 %i.e, 32
  store i8 %i.f, ptr %scevgep.i, align 1
  %i.g = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = lshr i8 %1, 3
  store i64 2, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i8 [ %.pre, %._crit_edge ], [ %i.e, %bb.c ] ; 2 uses
  %i.i = phi i64 [ 1, %._crit_edge ], [ 2, %bb.c ] ; 3 uses
  %i.j = phi i8 [ 0, %._crit_edge ], [ %i.h, %bb.c ]
  %i.k = sext i32 %i.c to i64
  %i.l = add nsw i64 %i.k, 128
  %i.m = icmp ult i64 %i.l, 256
  %i.n = icmp samesign ult i8 %1, 16              ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = or disjoint i8 %.pre-phi, 64
  store i8 %i.o, ptr %i.b, align 2
  tail call void @llvm.assume(i1 %i.n)
  %i.p = trunc i32 %i.c to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  store i8 %i.p, ptr %i.q, align 1
  %i.r = add nuw nsw i64 %i.i, 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = or disjoint i8 %.pre-phi, -128
  store i8 %i.s, ptr %i.b, align 2
  tail call void @llvm.assume(i1 %i.n)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  store i32 %i.c, ptr %i.t, align 1
  %i.u = load i64, ptr %i.d, align 8
  %i.v = add i64 %i.u, 4
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %bb.f, %bb.e
  %storemerge.i = phi i64 [ %i.v, %bb.f ], [ %i.r, %bb.e ]
  %.pn.i = lshr i8 %1, 3
  %.sink.i = or i8 %i.j, %.pn.i
  store i8 %.sink.i, ptr %i.a, align 1
  %i.w = load i64, ptr %6, align 8
  %.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_leaENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.w, ptr %.cast.i, i32 noundef 4) #15
  %i.x = sub i32 %3, %2
  br label %_ZN2v88internal14MacroAssembler12CompareRangeENS0_8RegisterEjj.exit

_ZN2v88internal14MacroAssembler12CompareRangeENS0_8RegisterEjj.exit: ; preds = %bb.a, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  %.sink37.i = phi i32 [ %i.x, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i ], [ %3, %bb.a ]
  %.sink36.i = phi i8 [ 10, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i ], [ %1, %bb.a ]
  %.sroa.0.0.insert.ext.i = zext i32 %.sink37.i to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 7, i8 %.sink36.i, i64 %.sroa.0.0.insert.ext.i, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 6, ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler4PushENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
end_hunk_0
