begin_hunk_0
  store i32 %i.j, ptr %i.i, align 8
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN2v88internal8baseline6detailL17kScratchRegistersE, i64 %i.k
  %.sroa.0.0.copyload.i24 = load i8, ptr %i.l, align 1 ; 11 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = call i64 @_ZN2v88internal17ExternalReference26address_of_pending_messageEPNS0_12LocalIsolateE(ptr noundef %i.m) #17
  %i.o = load ptr, ptr %i.a, align 8
end_hunk_0
begin_hunk_1
  %.sroa.0.0.copyload.i25 = load i8, ptr %i.s, align 1 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %.sroa.0.0.copyload.i25, i8 0) #17
  switch i8 %.sroa.0.0.copyload.i24, label %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge [
    i8 12, label %bb.c
    i8 4, label %bb.c
    i8 13, label %bb.d
    i8 5, label %bb.d
  ]

_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge: ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit
  %.pre = and i8 %.sroa.0.0.copyload.i24, 7
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

bb.c:                                             ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit
  %2 = and i8 %.sroa.0.0.copyload.i24, 7          ; 2 uses
  %i.u = or disjoint i8 %2, 32
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 24
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

bb.d:                                             ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit
  %3 = and i8 %.sroa.0.0.copyload.i24, 7
  %i.x = or disjoint i8 %3, 64
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20: ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge, %bb.c, %bb.d
  %.sroa.476.0 = phi i8 [ %i.x, %bb.d ], [ %.pre, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ %2, %bb.c ]
  %.sroa.677.1 = phi i64 [ 0, %bb.d ], [ 0, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ %i.w, %bb.c ]
  %i.y = phi ptr [ inttoptr (i64 2 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.c ]
  %.sroa.275.0 = lshr i8 %.sroa.0.0.copyload.i24, 3
  %.sroa.476.0.insert.ext = zext i8 %.sroa.476.0 to i64
  %.sroa.476.0.insert.shift = shl nuw nsw i64 %.sroa.476.0.insert.ext, 16
end_hunk_1
begin_hunk_2
  %.sroa.074.0.insert.mask = or i64 %.sroa.275.0.insert.mask.masked, %.sroa.275.0.insert.shift
  %i.z = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.z, i8 0, i64 %.sroa.074.0.insert.mask, ptr %i.y) #17
  switch i8 %.sroa.0.0.copyload.i24, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge [
    i8 12, label %bb.e
    i8 4, label %bb.e
    i8 13, label %bb.f
    i8 5, label %bb.f
  ]

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge: ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  %.pre67 = and i8 %.sroa.0.0.copyload.i24, 7
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  %4 = and i8 %.sroa.0.0.copyload.i24, 7          ; 2 uses
  %i.aa = or disjoint i8 %4, 32
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 24
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  %5 = and i8 %.sroa.0.0.copyload.i24, 7
  %i.ad = or disjoint i8 %5, 64
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge, %bb.e, %bb.f
  %.sroa.6.1 = phi i64 [ 0, %bb.f ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ %i.ac, %bb.e ]
  %.sroa.4.0 = phi i8 [ %i.ad, %bb.f ], [ %.pre67, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ %4, %bb.e ]
  %i.ae = phi ptr [ inttoptr (i64 2 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %.sroa.2.0 = lshr i8 %.sroa.0.0.copyload.i24, 3
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
end_hunk_2
