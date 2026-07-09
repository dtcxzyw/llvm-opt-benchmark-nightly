inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0_@_ZN2v88internal14MacroAssembler15TailCallRuntimeENS0_7Runtime10FunctionIdE:bb.a

declare noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler23JumpToExternalReferenceERKNS0_17ExternalReferenceEb(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal8Builtins6CEntryEiNS0_8ArgvModeEbb.exit:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 3, i64 %.sroa.0.0.copyload)
  %spec.select = select i1 %2, i32 770, i32 771
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %spec.select)
  ret void
}

declare i64 @_ZN2v88internal17ExternalReference6CreateENS0_7Runtime10FunctionIdE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN2v88internal18MacroAssemblerBase12BuiltinEntryENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i64 %i.c, i8 13, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 10, i1 noundef zeroext false) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  tail call void @_ZN2v88internal9Assembler8near_jmpElNS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 noundef %i.d, i8 noundef signext 14) #15
  br label %bb.e

_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit: ; preds = %bb.a
  %i.e = icmp slt i32 %1, 7
  %i.f = icmp ne i32 %1, -1
  %spec.select.i.i.i = and i1 %i.e, %i.f
  %i.g = select i1 %spec.select.i.i.i, i32 -40, i32 20912
  %i.h = shl nsw i32 %1, 3
  %i.i = add nsw i32 %i.g, %i.h                   ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 128
  %i.l = icmp ult i64 %i.k, 256                   ; 2 uses
  %i.m = shl i32 %i.i, 24
  %i.n = or disjoint i32 %i.m, 4521984
  %.sroa.0.3.insert.insert13 = zext i32 %i.n to i64
  %.sroa.0.3.insert.ext = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.3.insert.shift, 8716288
  %.sroa.0.0 = select i1 %i.l, i64 %.sroa.0.3.insert.insert13, i64 %.sroa.0.3.insert.insert
  %storemerge.i = select i1 %i.l, i64 2, i64 5
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.0, 256
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  tail call void @_ZN2v88internal9Assembler3jmpENS0_7OperandEb(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.1.insert.insert, ptr nonnull %.fca.1.load.cast.i, i1 noundef zeroext false) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 58992
  %i.r = tail call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i32 noundef %1) #15
  tail call void @_ZN2v88internal9Assembler3jmpENS0_6HandleINS0_4CodeEEENS0_9RelocInfo4ModeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr %i.r, i8 noundef signext 1) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal14MacroAssembler25EntryFromBuiltinAsOperandENS0_7BuiltinE.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler30GenerateTailCallToReturnedCodeENS0_7Runtime10FunctionIdE8JumpMode(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
_ZN2v88internal10FrameScopeD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 426 ; 3 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  store i8 1, ptr %i.a, align 2
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5, i8 4, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5pushqENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 46) #15
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #15
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 32, i32 noundef 4, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #15
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #15
  %i.c = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef %1) #15
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef %i.c, i32 noundef 1)
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0) #15
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 32, i32 noundef 5, i32 noundef 8) #15
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 2) #15
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7) #15
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 4, i8 5, i32 noundef 8) #15, !inline_history !12
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 5) #15, !inline_history !12
  store i8 %i.b, ptr %i.a, align 2
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 15, i64 390529024, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 4) #15
  tail call void @_ZN2v88internal14MacroAssembler33LoadEntrypointFromJSDispatchTableENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 1, i8 15)
  tail call void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 1, i1 noundef zeroext false) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler6SmiTagENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 32, i32 noundef 4, i32 noundef 8) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14MacroAssembler16SmiUntagUnsignedENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN2v88internal9Assembler5shiftENS0_8RegisterENS0_9ImmediateEii(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 32, i32 noundef 5, i32 noundef 8) #15
  ret void
}

declare void @_ZN2v88internal9Assembler3jmpENS0_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(408), i8, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i32 0, 313) i32 @_ZNK2v88internal14MacroAssembler31RequiredStackSizeForCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(436) %0, i32 noundef %1, i8 %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not.i.i.i = icmp eq i8 %2, -1
  br i1 %.not.i.i.i, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %2 to i16
  %i.c = shl nuw i16 1, %i.b
  %i.d = and i16 %i.c, 4039
  %i.e = xor i16 %i.d, 4039
  %i.f = tail call range(i16 0, 10) i16 @llvm.ctpop.i16(i16 %i.e)
  %i.g = shl nuw nsw i16 %i.f, 3
  %i.h = zext nneg i16 %i.g to i32
  br label %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit

_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.1.i = phi i32 [ 72, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = icmp eq i32 %1, 1
  %i.j = add nuw nsw i32 %.sroa.0.1.i, 240
  %spec.select = select i1 %i.i, i32 %i.j, i32 %.sroa.0.1.i
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler15PushCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not.i.i.i = icmp eq i8 %2, -1
  br i1 %.not.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit

_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit: ; preds = %bb.a
  %i.a = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.a)
  %i.b = zext nneg i8 %2 to i16
  %i.c = shl nuw i16 1, %i.b
  %i.d = and i16 %i.c, 4039                       ; 2 uses
  %i.e = xor i16 %i.d, 4039
  %.not10.i = icmp eq i16 %i.d, 4039
  br i1 %.not10.i, label %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader: ; preds = %bb.a, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit
  %.sroa.0.011.i.ph = phi i16 [ %i.e, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit ], [ 4039, %bb.a ]
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i
  %.012.i = phi i32 [ %i.h, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader ]
  %.sroa.0.011.i = phi i16 [ %i.j, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i ], [ %.sroa.0.011.i.ph, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.preheader ] ; 3 uses
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.011.i, i1 true)
  %i.g = trunc nuw nsw i16 %i.f to i8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.g) #15
  %i.h = add nuw nsw i32 %.012.i, 8               ; 2 uses
  %i.i = add nsw i16 %.sroa.0.011.i, -1
  %i.j = and i16 %i.i, %.sroa.0.011.i             ; 2 uses
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i

_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit ], [ %i.h, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i ] ; 2 uses
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel, label %bb.f

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel: ; preds = %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 240, i32 noundef 8) #15
  %i.l = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.m = and i32 %i.l, 32
  %.not.i.i31.i.peel = icmp eq i32 %i.m, 0
  br i1 %.not.i.i31.i.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 0) #15
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 0) #15
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader: ; preds = %bb.b, %bb.c
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 604241920, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 16, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %.sroa.0.073.i = phi i16 [ %i.t, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 32766, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.073.i, i1 true)
  %i.o = trunc nuw nsw i16 %i.n to i8             ; 2 uses
  %.sroa.0.1.insert.mask = and i64 %.sroa.0.0, 255
  %i.p = icmp samesign ult i64 %indvars.iv.i, 128 ; 2 uses
  %.sroa.0.4.insert.shift16 = shl i64 %indvars.iv.i, 32
  %.sroa.0.2.insert.insert10 = or disjoint i64 %.sroa.0.4.insert.shift16, %.sroa.0.1.insert.mask
  %. = select i1 %i.p, i64 608436224, i64 612630528
  %.26 = select i1 %i.p, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.2.insert.insert10, %. ; 3 uses
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = and i32 %i.q, 32
  %.not.i.i31.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i31.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.4.insert.insert, ptr nonnull %.26, i8 %i.o) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.0.4.insert.insert, ptr nonnull %.26, i8 %i.o) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i: ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16
  %i.s = add i16 %.sroa.0.073.i, -2
  %i.t = and i16 %i.s, %.sroa.0.073.i             ; 2 uses
  %.not.i7 = icmp eq i16 %i.t, 0
  br i1 %.not.i7, label %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i, !llvm.loop !13

_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  %i.u = add nsw i32 %.0.lcssa.i, 240
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit, %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit
  %.0 = phi i32 [ %i.u, %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit ], [ %.0.lcssa.i, %_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_8RegisterEEE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i16 %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %1)
  %i.c = zext nneg i16 %i.b to i32
  %i.d = mul i32 %2, %i.c                         ; 5 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext.i = zext i32 %i.d to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #15
  br label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %bb.b, %bb.c
  %i.f = icmp eq i32 %2, 8
  br i1 %i.f, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.split

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel: ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit
  %i.g = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %1, i1 true)
  %i.h = trunc nuw nsw i16 %i.g to i8             ; 2 uses
  %i.i = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.j = and i32 %i.i, 32
  %.not.i.i.us.peel = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.us.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.h, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel

bb.e:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i8 %i.h) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel: ; preds = %bb.e, %bb.d
  %i.k = add i16 %1, -1
  %i.l = and i16 %i.k, %1                         ; 2 uses
  %.not.us.peel = icmp eq i16 %i.l, 0
  br i1 %.not.us.peel, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us
  %.01874.us = phi i32 [ %i.s, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ], [ 8, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ] ; 3 uses
  %.sroa.0.073.us = phi i16 [ %i.u, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ], [ %i.l, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.073.us, i1 true)
  %i.n = trunc nuw nsw i16 %i.m to i8             ; 2 uses
  %i.o = icmp samesign ult i32 %.01874.us, 128    ; 2 uses
  %.sroa.5.0 = select i1 %i.o, i64 4456448, i64 8650752
  %i.p = select i1 %i.o, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.13.0.insert.ext = zext nneg i32 %.01874.us to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 32
  %.sroa.392.0.insert.mask = or i64 %.sroa.13.0.insert.shift, %.sroa.5.0
  %.sroa.087.0.insert.mask = or i64 %.sroa.392.0.insert.mask, 603979776 ; 2 uses
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = and i32 %i.q, 32
  %.not.i.i.us = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.n, i8 0, i64 %.sroa.087.0.insert.mask, ptr nonnull %i.p, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us

bb.g:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.087.0.insert.mask, ptr nonnull %i.p, i8 %i.n) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us: ; preds = %bb.g, %bb.f
  %i.s = add nuw nsw i32 %.01874.us, 8
  %i.t = add i16 %.sroa.0.073.us, -2
  %i.u = and i16 %i.t, %.sroa.0.073.us            ; 2 uses
  %.not.us = icmp eq i16 %i.u, 0
  br i1 %.not.us, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us, !llvm.loop !15

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.split: ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit
  %i.v = sext i32 %2 to i64
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.split, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %indvars.iv = phi i64 [ 0, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.split ], [ %indvars.iv.next, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 6 uses
  %.sroa.0.073 = phi i16 [ %1, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit.split ], [ %i.af, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.073, i1 true)
  %i.x = trunc nuw nsw i16 %i.w to i8             ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, 0
  br i1 %i.y, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit
  %i.z = add nsw i64 %indvars.iv, 128
  %i.aa = icmp ult i64 %i.z, 256
  br i1 %i.aa, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.7.sroa.4.0.extract.shift = and i64 %indvars.iv, 4294967040
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.h, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit, %bb.i
  %.sroa.3.0 = phi i64 [ 8650752, %bb.i ], [ 262144, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 4456448, %bb.h ]
  %.sroa.7.sroa.0.0 = phi i64 [ %indvars.iv, %bb.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ %indvars.iv, %bb.h ]
  %.sroa.7.sroa.4.sroa.0.0 = phi i64 [ %.sroa.7.sroa.4.0.extract.shift, %bb.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 0, %bb.h ]
  %i.ab = phi ptr [ inttoptr (i64 6 to ptr), %bb.i ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ inttoptr (i64 3 to ptr), %bb.h ] ; 2 uses
  %.sroa.7.sroa.0.0.insert.ext = and i64 %.sroa.7.sroa.0.0, 255
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.4.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.sroa.0.0.insert.insert, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 603979776 ; 2 uses
  %i.ac = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ad = and i32 %i.ac, 32
  %.not.i.i31 = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.ab, i8 %i.x) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.k:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.ab, i8 %i.x) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %bb.j, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.v
  %i.ae = add i16 %.sroa.0.073, -1
  %i.af = and i16 %i.ae, %.sroa.0.073             ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

.loopexit:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ], [ %i.d, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ], [ %i.d, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler14PopCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel, label %bb.f

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel: ; preds = %bb.a
  %i.b = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.c = and i32 %i.b, 32
  %.not.i.i31.i.peel = icmp eq i32 %i.c, 0
  br i1 %.not.i.i31.i.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #15
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.peel
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #15
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader: ; preds = %bb.b, %bb.c
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 604241920, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 16, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %.sroa.032.073.i = phi i16 [ %i.j, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 32766, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.032.073.i, i1 true)
  %i.e = trunc nuw nsw i16 %i.d to i8             ; 2 uses
  %.sroa.0.1.insert.mask = and i64 %.sroa.0.0, 255
  %i.f = icmp samesign ult i64 %indvars.iv.i, 128 ; 2 uses
  %.sroa.0.4.insert.shift16 = shl i64 %indvars.iv.i, 32
  %.sroa.0.2.insert.insert10 = or disjoint i64 %.sroa.0.4.insert.shift16, %.sroa.0.1.insert.mask
  %. = select i1 %i.f, i64 608436224, i64 612630528
  %.26 = select i1 %i.f, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.2.insert.insert10, %. ; 3 uses
  %i.g = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.h = and i32 %i.g, 32
  %.not.i.i31.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i31.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.0.4.insert.insert, ptr nonnull %.26) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.0.4.insert.insert, ptr nonnull %.26) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i: ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16
  %i.i = add i16 %.sroa.032.073.i, -2
  %i.j = and i16 %i.i, %.sroa.032.073.i           ; 2 uses
  %.not.i = icmp eq i16 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i, !llvm.loop !16

_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 0, i8 4, i64 240, i32 noundef 8) #15
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit, %bb.a
  %.0 = phi i32 [ 240, %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi.exit ], [ 0, %bb.a ]
  %.not.i.i.i = icmp eq i8 %2, -1
  br i1 %.not.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit

_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit: ; preds = %bb.f
  %i.k = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext nneg i8 %2 to i16
  %i.m = shl nuw i16 1, %i.l
  %i.n = and i16 %i.m, 4039                       ; 2 uses
  %i.o = xor i16 %i.n, 4039
  %.not12.i = icmp eq i16 %i.n, 4039
  br i1 %.not12.i, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader

_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader: ; preds = %bb.f, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit
  %.sroa.0.013.i.ph = phi i16 [ %i.o, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit ], [ 4039, %bb.f ]
  br label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i
  %.014.i = phi i32 [ %i.t, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader ]
  %.sroa.0.013.i = phi i16 [ %i.x, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i ], [ %.sroa.0.013.i.ph, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i.preheader ] ; 3 uses
  %i.p = zext nneg i16 %.sroa.0.013.i to i32
  %i.q = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 true)
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = xor i8 %i.r, 31
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.s) #15
  %i.t = add nuw nsw i32 %.014.i, 8               ; 2 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.013.i, i1 true)
  %i.v = lshr exact i16 -32768, %i.u
  %i.w = xor i16 %i.v, -1
  %i.x = and i16 %.sroa.0.013.i, %i.w             ; 2 uses
  %.not.i7 = icmp eq i16 %i.x, 0
  br i1 %.not.i7, label %_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i

_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_8RegisterEEE.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZNK2v88internal11RegListBaseINS0_8RegisterEEmiES2_.exit ], [ %i.t, %_ZN2v88internal11RegListBaseINS0_8RegisterEE15ReverseIteratorppEv.exit.i ]
  %i.y = add nsw i32 %.0.lcssa.i, %.0
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i16 %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i16 %1, 0
  br i1 %i.a, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %2, 8
  br i1 %i.b, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel, label %.preheader.split

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel: ; preds = %.preheader
  %i.c = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %1, i1 true)
  %i.d = trunc nuw nsw i16 %i.c to i8             ; 2 uses
  %i.e = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.f = and i32 %i.e, 32
  %.not.i.i.us.peel = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.us.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %i.d, i8 0, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel

bb.c:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.d, i64 604241920, ptr nonnull inttoptr (i64 2 to ptr)) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel: ; preds = %bb.c, %bb.b
  %i.g = add i16 %1, -1
  %i.h = and i16 %i.g, %1                         ; 2 uses
  %.not.us.peel = icmp eq i16 %i.h, 0
  br i1 %.not.us.peel, label %.split.us, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us
  %.01874.us = phi i32 [ %i.o, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ], [ 8, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ] ; 3 uses
  %.sroa.032.073.us = phi i16 [ %i.q, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ], [ %i.h, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ] ; 3 uses
  %i.i = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.032.073.us, i1 true)
  %i.j = trunc nuw nsw i16 %i.i to i8             ; 2 uses
  %i.k = icmp samesign ult i32 %.01874.us, 128    ; 2 uses
  %.sroa.5.0 = select i1 %i.k, i64 4456448, i64 8650752
  %i.l = select i1 %i.k, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.13.0.insert.ext = zext nneg i32 %.01874.us to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 32
  %.sroa.390.0.insert.mask = or i64 %.sroa.13.0.insert.shift, %.sroa.5.0
  %.sroa.085.0.insert.mask = or i64 %.sroa.390.0.insert.mask, 603979776 ; 2 uses
  %i.m = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.n = and i32 %i.m, 32
  %.not.i.i.us = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %i.j, i8 0, i64 %.sroa.085.0.insert.mask, ptr nonnull %i.l, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us

bb.e:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.j, i64 %.sroa.085.0.insert.mask, ptr nonnull %i.l) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us: ; preds = %bb.e, %bb.d
  %i.o = add nuw nsw i32 %.01874.us, 8            ; 2 uses
  %i.p = add i16 %.sroa.032.073.us, -2
  %i.q = and i16 %i.p, %.sroa.032.073.us          ; 2 uses
  %.not.us = icmp eq i16 %i.q, 0
  br i1 %.not.us, label %.split.us, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us, !llvm.loop !17

.preheader.split:                                 ; preds = %.preheader
  %i.r = sext i32 %2 to i64
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

.split.us.loopexit76:                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %i.s = trunc nsw i64 %indvars.iv.next to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us, %.split.us.loopexit76
  %.us-phi = phi i32 [ %i.s, %.split.us.loopexit76 ], [ 8, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us.peel ], [ %i.o, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.us ] ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %.us-phi to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #15
  br label %bb.j

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %.preheader.split, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %indvars.iv = phi i64 [ 0, %.preheader.split ], [ %indvars.iv.next, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 6 uses
  %.sroa.032.073 = phi i16 [ %1, %.preheader.split ], [ %i.ac, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 3 uses
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.032.073, i1 true)
  %i.u = trunc nuw nsw i16 %i.t to i8             ; 2 uses
  %i.v = icmp eq i64 %indvars.iv, 0
  br i1 %i.v, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit
  %i.w = add nsw i64 %indvars.iv, 128
  %i.x = icmp ult i64 %i.w, 256
  br i1 %i.x, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.7.sroa.4.0.extract.shift = and i64 %indvars.iv, 4294967040
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit, %bb.g
  %.sroa.3.0 = phi i64 [ 8650752, %bb.g ], [ 262144, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 4456448, %bb.f ]
  %.sroa.7.sroa.0.0 = phi i64 [ %indvars.iv, %bb.g ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ %indvars.iv, %bb.f ]
  %.sroa.7.sroa.4.sroa.0.0 = phi i64 [ %.sroa.7.sroa.4.0.extract.shift, %bb.g ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 0, %bb.f ]
  %i.y = phi ptr [ inttoptr (i64 6 to ptr), %bb.g ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ inttoptr (i64 3 to ptr), %bb.f ] ; 2 uses
  %.sroa.7.sroa.0.0.insert.ext = and i64 %.sroa.7.sroa.0.0, 255
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i64 %.sroa.7.sroa.4.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.sroa.0.0.insert.insert, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 603979776 ; 2 uses
  %i.z = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.aa = and i32 %i.z, 32
  %.not.i.i31 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.u, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.y) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

bb.i:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.u, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.y) #15
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit: ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.r ; 2 uses
  %i.ab = add i16 %.sroa.032.073, -1
  %i.ac = and i16 %i.ab, %.sroa.032.073           ; 2 uses
  %.not = icmp eq i16 %i.ac, 0
  br i1 %.not, label %.split.us.loopexit76, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

bb.j:                                             ; preds = %bb.a, %.split.us
  %.0 = phi i32 [ %.us-phi, %.split.us ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
