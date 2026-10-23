Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/baseline-compiler?download=true
inline.NumInlined: 4099
inline.NumDeleted: 1620
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal8baseline16BaselineCompiler17VisitForInPrepareEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = sub i32 -72, %i.t                       ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 128
  %i.ae = icmp ult i64 %i.ad, 256                 ; 2 uses
  %i.af = shl i32 %i.ab, 24
  %i.ag = or disjoint i32 %i.af, 4521984
  %.sroa.0.3.insert.insert12.i.i15 = zext i32 %i.ag to i64
  %.sroa.0.3.insert.ext.i.i16 = zext i32 %i.ab to i64
  %.sroa.0.3.insert.shift.i.i17 = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i16, 24
  %.sroa.0.3.insert.insert.i.i18 = or disjoint i64 %.sroa.0.3.insert.shift.i.i17, 8716288
  %.sroa.0.0.i.i19 = select i1 %i.ae, i64 %.sroa.0.3.insert.insert12.i.i15, i64 %.sroa.0.3.insert.insert.i.i18
  %storemerge.i.i.i20 = select i1 %i.ae, i64 2, i64 5
  %.fca.1.load.cast.i.i.i21 = inttoptr i64 %storemerge.i.i.i20 to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.aa, i64 %.sroa.0.0.i.i19, ptr nonnull %.fca.1.load.cast.i.i.i21, i8 2, i32 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler14VisitForInNextEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Operand", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.b = tail call i64 @_ZNK2v88internal11interpreter21BytecodeArrayIterator22GetRegisterPairOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 2) #16 ; 2 uses
  %.sroa.04.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.45.0.extract.shift = lshr i64 %i.b, 32
  %.sroa.45.0.extract.trunc = trunc nuw i64 %.sroa.45.0.extract.shift to i32
  %i.c = tail call noundef i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator15GetIndexOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 3) #16
  %i.d = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0) #16
  %i.e = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 1) #16
  store i64 3494182912, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.f, align 8
  tail call void @_ZN2v88internal8baseline16BaselineCompiler11CallBuiltinILNS0_7BuiltinE994EJjNS0_11interpreter8RegisterES6_S6_S6_NS0_7OperandEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(680) %0, i32 noundef %i.c, i32 %i.d, i32 %.sroa.45.0.extract.trunc, i32 %.sroa.04.0.extract.trunc, i32 %i.e, ptr noundef nonnull byval(%"class.v8::internal::Operand") align 8 %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler14VisitForInStepEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
_ZN2v88internal8baseline17BaselineAssembler20RegisterFrameOperandENS0_11interpreter8RegisterE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef 0) #16
  %i.c = shl i32 %i.b, 3
  %i.d = sub i32 -56, %i.c                        ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = add nsw i64 %i.e, 128
  %i.g = icmp ult i64 %i.f, 256                   ; 2 uses
  %i.h = shl i32 %i.d, 24
  %i.i = or disjoint i32 %i.h, 4521984
  %.sroa.0.3.insert.insert9 = zext i32 %i.i to i64
  %.sroa.0.3.insert.ext = zext i32 %i.d to i64
  %.sroa.0.3.insert.shift = shl nuw nsw i64 %.sroa.0.3.insert.ext, 24
  %.sroa.0.3.insert.insert = or disjoint i64 %.sroa.0.3.insert.shift, 8716288
  %.sroa.0.0 = select i1 %i.g, i64 %.sroa.0.3.insert.insert9, i64 %.sroa.0.3.insert.insert
  %storemerge.i = select i1 %i.g, i64 2, i64 5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN2v88internal14MacroAssembler14SmiAddConstantENS0_7OperandENS0_6TaggedINS0_3SmiEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.k, i64 %.sroa.0.0, ptr nonnull %.fca.1.load.cast.i, i64 4294967296) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler14VisitForOfNextEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 0) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.d = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 0) #16
  %i.e = tail call i32 @_ZNK2v88internal11interpreter21BytecodeArrayIterator18GetRegisterOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 1) #16
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = shl i32 %i.d, 3
  %i.h = sub i32 -56, %i.g                        ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = add nsw i64 %i.i, 128
  %i.k = icmp ult i64 %i.j, 256                   ; 2 uses
  %i.l = shl i32 %i.h, 24
  %i.m = or disjoint i32 %i.l, 4521984
  %.sroa.0.3.insert.insert12.i.i.i.i = zext i32 %i.m to i64
  %.sroa.0.3.insert.ext.i.i.i.i = zext i32 %i.h to i64
  %.sroa.0.3.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i.i.i, 24
  %.sroa.0.3.insert.insert.i.i.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i.i.i, 8716288
  %.sroa.0.0.i.i.i.i = select i1 %i.k, i64 %.sroa.0.3.insert.insert12.i.i.i.i, i64 %.sroa.0.3.insert.insert.i.i.i.i
  %storemerge.i.i.i.i.i = select i1 %i.k, i64 2, i64 5
  %.fca.1.load.cast.i.i.i.i.i = inttoptr i64 %storemerge.i.i.i.i.i to ptr
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.f, i8 0, i64 %.sroa.0.0.i.i.i.i, ptr nonnull %.fca.1.load.cast.i.i.i.i.i) #16
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = shl i32 %i.e, 3
  %i.p = sub i32 -56, %i.o                        ; 3 uses
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, 128
  %i.s = icmp ult i64 %i.r, 256                   ; 2 uses
  %i.t = shl i32 %i.p, 24
  %i.u = or disjoint i32 %i.t, 4521984
  %.sroa.0.3.insert.insert12.i.i.i.i.i = zext i32 %i.u to i64
  %.sroa.0.3.insert.ext.i.i.i.i.i = zext i32 %i.p to i64
  %.sroa.0.3.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i.i.i.i, 24
  %.sroa.0.3.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i.i.i.i, 8716288
  %.sroa.0.0.i.i.i.i.i = select i1 %i.s, i64 %.sroa.0.3.insert.insert12.i.i.i.i.i, i64 %.sroa.0.3.insert.insert.i.i.i.i.i
  %storemerge.i.i.i.i.i.i = select i1 %i.s, i64 2, i64 5
  %.fca.1.load.cast.i.i.i.i.i.i = inttoptr i64 %storemerge.i.i.i.i.i.i to ptr
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.n, i8 3, i64 %.sroa.0.0.i.i.i.i.i, ptr nonnull %.fca.1.load.cast.i.i.i.i.i.i) #16
  %i.v = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.v, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.w = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler11CallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %i.w, i32 noundef 999) #16
  %i.x = tail call i64 @_ZNK2v88internal11interpreter21BytecodeArrayIterator22GetRegisterPairOperandEi(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 2) #16 ; 2 uses
  %.sroa.013.0.extract.trunc.i = trunc i64 %i.x to i32
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = shl i32 %.sroa.013.0.extract.trunc.i, 3
  %i.aa = sub i32 -56, %i.z                       ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 128
  %i.ad = icmp ult i64 %i.ac, 256                 ; 2 uses
  %i.ae = shl i32 %i.aa, 24
  %i.af = or disjoint i32 %i.ae, 4521984
  %.sroa.0.3.insert.insert12.i.i.i = zext i32 %i.af to i64
  %.sroa.0.3.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.0.3.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i.i, 24
  %.sroa.0.3.insert.insert.i.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i.i, 8716288
  %.sroa.0.0.i.i.i = select i1 %i.ad, i64 %.sroa.0.3.insert.insert12.i.i.i, i64 %.sroa.0.3.insert.insert.i.i.i
  %storemerge.i.i.i.i = select i1 %i.ad, i64 2, i64 5
  %.fca.1.load.cast.i.i.i.i = inttoptr i64 %storemerge.i.i.i.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.y, i64 %.sroa.0.0.i.i.i, ptr nonnull %.fca.1.load.cast.i.i.i.i, i8 0, i32 noundef 8) #16
  %i.ag = load ptr, ptr %i.a, align 8
  %sh.diff.i = lshr i64 %i.x, 29
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ah = and i32 %tr.sh.diff.i, -8
  %i.ai = sub i32 -56, %i.ah                      ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.aj, 128
  %i.al = icmp ult i64 %i.ak, 256                 ; 2 uses
  %i.am = shl i32 %i.ai, 24
  %i.an = or disjoint i32 %i.am, 4521984
  %.sroa.0.3.insert.insert12.i.i6.i = zext i32 %i.an to i64
  %.sroa.0.3.insert.ext.i.i7.i = zext i32 %i.ai to i64
  %.sroa.0.3.insert.shift.i.i8.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i7.i, 24
  %.sroa.0.3.insert.insert.i.i9.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i8.i, 8716288
  %.sroa.0.0.i.i10.i = select i1 %i.al, i64 %.sroa.0.3.insert.insert12.i.i6.i, i64 %.sroa.0.3.insert.insert.i.i9.i
  %storemerge.i.i.i11.i = select i1 %i.al, i64 2, i64 5
  %.fca.1.load.cast.i.i.i12.i = inttoptr i64 %storemerge.i.i.i11.i to ptr
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ag, i64 %.sroa.0.0.i.i10.i, ptr nonnull %.fca.1.load.cast.i.i.i12.i, i8 2, i32 noundef 8) #16
  %i.ao = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler3PopENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.ao, i8 0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler22VisitSetPendingMessageEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::baseline::BaselineAssembler::ScratchRegisterScope", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  store ptr %i.a, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i32, ptr %i.f, align 8
  br label %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit

_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.j = add nsw i32 %i.h, 1
  store i32 %i.j, ptr %i.i, align 8
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr @_ZN2v88internal8baseline6detailL17kScratchRegistersE, i64 %i.k
  %.sroa.0.0.copyload.i24 = load i8, ptr %i.l, align 1 ; 11 uses
  %i.m = load ptr, ptr %0, align 8
  %i.n = call i64 @_ZN2v88internal17ExternalReference26address_of_pending_messageEPNS0_12LocalIsolateE(ptr noundef %i.m) #16
  %i.o = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %i.o, i8 %.sroa.0.0.copyload.i24, i64 %i.n) #16
  %i.p = load i32, ptr %i.i, align 8              ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.i, align 8
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN2v88internal8baseline6detailL17kScratchRegistersE, i64 %i.r
  %.sroa.0.0.copyload.i25 = load i8, ptr %i.s, align 1 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %i.t, i8 %.sroa.0.0.copyload.i25, i8 0) #16
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
  %i.u = and i8 %.sroa.0.0.copyload.i24, 7
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

bb.d:                                             ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit
  %i.v = and i8 %.sroa.0.0.copyload.i24, 7
  %i.w = or disjoint i8 %i.v, 64
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20: ; preds = %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge, %bb.c, %bb.d
  %.sroa.476.0 = phi i8 [ %i.w, %bb.d ], [ %.pre, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ %i.u, %bb.c ]
  %.sroa.677.1 = phi i64 [ 0, %bb.d ], [ 0, %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ 603979776, %bb.c ]
  %i.x = phi ptr [ inttoptr (i64 2 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.c ]
  %.sroa.275.0 = lshr i8 %.sroa.0.0.copyload.i24, 3
  %.sroa.476.0.insert.ext = zext i8 %.sroa.476.0 to i64
  %.sroa.476.0.insert.shift = shl nuw nsw i64 %.sroa.476.0.insert.ext, 16
  %.sroa.275.0.insert.ext = zext nneg i8 %.sroa.275.0 to i64
  %.sroa.275.0.insert.shift = shl nuw nsw i64 %.sroa.275.0.insert.ext, 8
  %.sroa.275.0.insert.mask.masked = or i64 %.sroa.677.1, %.sroa.476.0.insert.shift
  %.sroa.074.0.insert.mask = or i64 %.sroa.275.0.insert.mask.masked, %.sroa.275.0.insert.shift
  %i.y = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.y, i8 0, i64 %.sroa.074.0.insert.mask, ptr %i.x) #16
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
  %i.z = and i8 %.sroa.0.0.copyload.i24, 7
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20
  %i.aa = and i8 %.sroa.0.0.copyload.i24, 7
  %i.ab = or disjoint i8 %i.aa, 64
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge, %bb.e, %bb.f
  %.sroa.6.1 = phi i64 [ 0, %bb.f ], [ 0, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ 603979776, %bb.e ]
  %.sroa.4.0 = phi i8 [ %i.ab, %bb.f ], [ %.pre67, %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ %i.z, %bb.e ]
  %i.ac = phi ptr [ inttoptr (i64 2 to ptr), %bb.f ], [ inttoptr (i64 1 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit20._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.e ]
  %.sroa.2.0 = lshr i8 %.sroa.0.0.copyload.i24, 3
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext nneg i8 %.sroa.2.0 to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.mask.masked = or i64 %.sroa.6.1, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.mask = or i64 %.sroa.2.0.insert.mask.masked, %.sroa.2.0.insert.shift
  %i.ad = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %i.ad, i64 %.sroa.0.0.insert.mask, ptr %i.ac, i8 %.sroa.0.0.copyload.i25, i32 noundef 8) #16
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler10VisitThrowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i8 0) #16
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 155) #16
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.d, ptr noundef %i.e, i32 noundef 1) #16
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.f) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler12VisitReThrowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.b, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.c = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4PushENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i8 0) #16
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 177) #16
  tail call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.d, ptr noundef %i.e, i32 noundef 1) #16
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.f) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler11VisitReturnEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sub i64 %i.f, %i.e
  %i.j = trunc i64 %i.i to i32
  %.neg6 = add i32 %i.h, %i.j
  %i.k = load i8, ptr %i.b, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.m = load i8, ptr %i.l, align 8
  %i.n = lshr i8 %i.m, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.o
  %i.q = zext i8 %i.k to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %.neg7 = sub i32 %.neg6, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 51
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  tail call void @_ZN2v88internal8baseline6detail21ArgumentSettingHelperINS0_28BaselineLeaveFrameDescriptorELi0ELb1EJiiEE3SetEPNS1_17BaselineAssemblerEii(ptr noundef nonnull %i.ab, i32 noundef %i.aa, i32 noundef %.neg7)
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @_ZN2v88internal14MacroAssembler15TailCallBuiltinENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(436) %i.ac, i32 noundef 99) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler30VisitThrowReferenceErrorIfHoleEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler11CompareRootENS0_8RegisterENS0_9RootIndexE14ComparisonMode(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i8 0, i16 noundef zeroext 1, i32 noundef 0) #16
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i32 noundef 5, ptr noundef nonnull %1, i32 noundef 1) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load ptr, ptr %0, align 8
  %i.f = call ptr @_ZNK2v88internal11interpreter21BytecodeArrayIterator26GetConstantForIndexOperandINS0_12LocalIsolateEEENS0_6HandleINS0_6ObjectEEEiPT_(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef 0, ptr noundef %i.e) #16
  %i.g = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.g, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.h = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4PushENS0_6HandleINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(436) %i.h, ptr %i.f) #16
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 170) #16
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.i, ptr noundef %i.j, i32 noundef 1) #16
  %i.k = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.k) #16
  %i.l = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.l, ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler30VisitThrowSuperNotCalledIfHoleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler11CompareRootENS0_8RegisterENS0_9RootIndexE14ComparisonMode(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i8 0, i16 noundef zeroext 1, i32 noundef 0) #16
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i32 noundef 5, ptr noundef nonnull %1, i32 noundef 1) #16
  %i.d = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.d, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 45) #16
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.e, ptr noundef %i.f, i32 noundef 0) #16
  %i.g = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.g) #16
  %i.h = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.h, ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler37VisitThrowSuperAlreadyCalledIfNotHoleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  tail call void @_ZN2v88internal14MacroAssembler11CompareRootENS0_8RegisterENS0_9RootIndexE14ComparisonMode(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i8 0, i16 noundef zeroext 1, i32 noundef 0) #16
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(436) %i.c, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 1) #16
  %i.d = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %i.d, i8 6, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr)) #16
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call noundef ptr @_ZN2v88internal7Runtime13FunctionForIdENS1_10FunctionIdE(i32 noundef 44) #16
  call void @_ZN2v88internal14MacroAssembler11CallRuntimeEPKNS0_7Runtime8FunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %i.e, ptr noundef %i.f, i32 noundef 0) #16
  %i.g = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.g) #16
  %i.h = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.h, ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8baseline16BaselineCompiler31VisitThrowIfNotSuperConstructorEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %3 = alloca %"class.v8::internal::baseline::BaselineAssembler::ScratchRegisterScope", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 0, ptr %2, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 11 uses
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i32, ptr %i.g, align 8
  br label %_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit

_ZN2v88internal8baseline17BaselineAssembler20ScratchRegisterScopeC2EPS2_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %3, ptr %i.d, align 8
  %i.k = add nsw i32 %i.i, 1
end_hunk_0
