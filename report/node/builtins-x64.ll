inline.NumInlined: 3912
inline.NumDeleted: 462
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
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
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit313: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  %.sroa.091.0.copyload = select i1 %i.c, i8 9, i8 5 ; 3 uses
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 0) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  tail call void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 55168) #8
  %10 = or disjoint i8 %.sroa.088.0.copyload.sroa.speculated, 64
  %.sroa.0926.2.insert.ext = zext nneg i8 %10 to i64
  %.sroa.0926.2.insert.shift = shl nuw nsw i64 %.sroa.0926.2.insert.ext, 16 ; 2 uses
  %.sroa.0926.3.insert.insert = or disjoint i64 %.sroa.0926.2.insert.shift, 939524096
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %.sroa.088.0.copyload.sroa.speculated, i64 %.sroa.0926.3.insert.insert, ptr nonnull inttoptr (i64 2 to ptr)) #8
  %i.g = tail call i64 @_ZN2v88internal17ExternalReference16wasm_start_stackEv() #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  %.sroa.0714.2.insert.shift720 = shl nuw nsw i64 %.sroa.0714.2.insert.ext719, 16
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.0714.2.insert.shift720, ptr nonnull inttoptr (i64 1 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 138870784, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  %.sroa.0924.3.insert.insert = or disjoint i64 %.sroa.0926.2.insert.shift, 134217728
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.0924.3.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i8 %.sroa.088.0.copyload.sroa.speculated, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3762618368, ptr nonnull inttoptr (i64 2 to ptr), i8 6, i32 noundef 8) #8
  %11 = and i8 %.sroa.091.0.copyload, 5
  %12 = or disjoint i8 %11, 64
  %13 = lshr i8 %.sroa.091.0.copyload, 3
  %.sroa.3.0.insert.ext = zext nneg i8 %12 to i64
  %.sroa.3.0.insert.shift = shl nuw nsw i64 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext nneg i8 %13 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.insert, 268435456
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 10, i64 %.sroa.2.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 3628400640, ptr nonnull inttoptr (i64 2 to ptr), i8 10, i32 noundef 8) #8
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit242.4
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_121JSToWasmWrapperHelperEPNS0_14MacroAssemblerENS0_4wasm7PromiseE:_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit327
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 273088512, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 0, i64 3, i32 noundef 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 43, i8 4, i8 0, i32 noundef 8) #8
  %14 = or disjoint i8 %.sroa.088.0.copyload.sroa.speculated, 64
  %.sroa.3890.0.insert.ext = zext nneg i8 %14 to i64
  %.sroa.3890.0.insert.shift = shl nuw nsw i64 %.sroa.3890.0.insert.ext, 16
  %.sroa.3890.0.insert.insert = or disjoint i64 %.sroa.3890.0.insert.shift, 268435456
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.3890.0.insert.insert, ptr nonnull inttoptr (i64 2 to ptr), i8 4, i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 11, i64 541523968, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 3, i64 675741696, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #8
end_hunk_3
