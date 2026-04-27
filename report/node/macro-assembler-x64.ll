inline.NumInlined: 3362
inline.NumDeleted: 638
begin_hunk_0_@_ZN2v88internal14MacroAssembler15PushCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 16, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %.sroa.0.073.i = phi i16 [ %i.t, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 32766, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.073.i, i1 true)
  %i.o = trunc nuw nsw i16 %i.n to i8             ; 2 uses
  %i.p = icmp samesign ult i64 %indvars.iv.i, 128 ; 2 uses
  %.sroa.0.4.insert.shift16 = shl i64 %indvars.iv.i, 32
  %. = select i1 %i.p, i64 608436224, i64 612630528
  %.26 = select i1 %i.p, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift16, %. ; 2 uses
  %i.q = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.r = and i32 %i.q, 32
  %.not.i.i31.i = icmp eq i32 %i.r, 0
end_hunk_0
begin_hunk_1_@_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %bb.b, %bb.c
  %i.f = icmp eq i32 %2, 8
  br i1 %i.f, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader: ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit
  %3 = sext i32 %2 to i64
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel: ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit
  %i.g = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %1, i1 true)
end_hunk_1
begin_hunk_2_@_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a
  %.not.us = icmp eq i16 %i.u, 0
  br i1 %.not.us, label %.loopexit, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us, !llvm.loop !15

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %indvars.iv = phi i64 [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ], [ %indvars.iv.next, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 6 uses
  %.sroa.0.073 = phi i16 [ %1, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ], [ %i.ae, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.073, i1 true)
  %i.w = trunc nuw nsw i16 %i.v to i8             ; 2 uses
  %i.x = icmp eq i64 %indvars.iv, 0
end_hunk_2
begin_hunk_3_@_ZN2v88internal14MacroAssembler7PushAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.h, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit, %bb.i
  %.sroa.6.sroa.4.sroa.0.0 = phi i64 [ %.sroa.6.sroa.4.0.extract.shift, %bb.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 0, %bb.h ]
  %.sroa.6.sroa.0.0 = phi i64 [ %indvars.iv, %bb.i ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ %indvars.iv, %bb.h ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.i ], [ 262144, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 4456448, %bb.h ]
  %i.aa = phi ptr [ inttoptr (i64 6 to ptr), %bb.i ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ inttoptr (i64 3 to ptr), %bb.h ] ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i64 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.sroa.0.0.insert.insert, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776 ; 2 uses
  %i.ab = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.ac = and i32 %i.ab, 32
end_hunk_3
begin_hunk_4_@_ZN2v88internal14MacroAssembler14PopCallerSavedENS0_14SaveFPRegsModeENS0_8RegisterE:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 16, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %.sroa.032.073.i = phi i16 [ %i.j, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit.i ], [ 32766, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit.i.preheader ] ; 3 uses
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.032.073.i, i1 true)
  %i.e = trunc nuw nsw i16 %i.d to i8             ; 2 uses
  %i.f = icmp samesign ult i64 %indvars.iv.i, 128 ; 2 uses
  %.sroa.0.4.insert.shift16 = shl i64 %indvars.iv.i, 32
  %. = select i1 %i.f, i64 608436224, i64 612630528
  %.26 = select i1 %i.f, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 6 to ptr) ; 2 uses
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift16, %. ; 2 uses
  %i.g = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.h = and i32 %i.g, 32
  %.not.i.i31.i = icmp eq i32 %i.h, 0
end_hunk_4
begin_hunk_5_@_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i32 %2, 8
  br i1 %i.b, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader: ; preds = %.preheader
  %3 = sext i32 %2 to i64
  br label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us.peel: ; preds = %.preheader
  %i.c = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %1, i1 true)
end_hunk_5
begin_hunk_6_@_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a
  %.not.us = icmp eq i16 %i.q, 0
  br i1 %.not.us, label %.split.us, label %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.us, !llvm.loop !17

.split.us.loopexit76:                             ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %i.r = trunc nsw i64 %indvars.iv.next to i32
  br label %.split.us
end_hunk_6
begin_hunk_7_@_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 %.sroa.0.0.insert.ext, i32 noundef 8) #15
  br label %bb.j

_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit: ; preds = %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit
  %indvars.iv = phi i64 [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ], [ %indvars.iv.next, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 6 uses
  %.sroa.032.073 = phi i16 [ %1, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit.preheader ], [ %i.ab, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratorppEv.exit ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.032.073, i1 true)
  %i.t = trunc nuw nsw i16 %i.s to i8             ; 2 uses
  %i.u = icmp eq i64 %indvars.iv, 0
end_hunk_7
begin_hunk_8_@_ZN2v88internal14MacroAssembler6PopAllENS0_11RegListBaseINS0_11XMMRegisterEEEi:bb.a
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.f, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit, %bb.g
  %.sroa.6.sroa.4.sroa.0.0 = phi i64 [ %.sroa.6.sroa.4.0.extract.shift, %bb.g ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 0, %bb.f ]
  %.sroa.6.sroa.0.0 = phi i64 [ %indvars.iv, %bb.g ], [ 0, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ %indvars.iv, %bb.f ]
  %.sroa.2.0 = phi i64 [ 8650752, %bb.g ], [ 262144, %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ 4456448, %bb.f ]
  %i.x = phi ptr [ inttoptr (i64 6 to ptr), %bb.g ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal11RegListBaseINS0_11XMMRegisterEE8IteratordeEv.exit ], [ inttoptr (i64 3 to ptr), %bb.f ] ; 2 uses
  %.sroa.6.sroa.0.0.insert.ext = and i64 %.sroa.6.sroa.0.0, 255
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.4.sroa.0.0, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.sroa.0.0.insert.insert, 32
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.2.0
  %.sroa.2.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, 603979776 ; 2 uses
  %i.y = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.z = and i32 %i.y, 32
end_hunk_8
