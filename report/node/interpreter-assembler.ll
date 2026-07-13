inline.NumInlined: 2001
inline.NumDeleted: 588
begin_hunk_0_@_ZN2v88internal11interpreter20InterpreterAssembler27BytecodeOperandUnsignedByteEi:bb.a
  br i1 %i.q, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !419
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !422
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !422
  %i.r = load ptr, ptr %6, align 8, !noalias !422
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !422
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.r, ptr noundef nonnull dead_on_return %7) #17, !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !419
  %i.s = load ptr, ptr %8, align 8, !noalias !419
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.s) #17, !noalias !419
  store i8 1, ptr %i.o, align 1, !noalias !419
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17, !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = load i8, ptr %i.a, align 8, !noalias !428
  %i.x = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.w) #17, !noalias !428
  br i1 %i.x, label %bb.c, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.c:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.z = load i8, ptr %i.y, align 1, !range !118, !noalias !428, !noundef !119
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #17, !noalias !431
  %i.ad = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !434
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !428
  %i.af = load ptr, ptr %5, align 8, !noalias !428
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %i.af) #17, !noalias !428
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, %bb.c, %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #17, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ai = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ah, ptr %3, align 8, !noalias !440
  store ptr %i.ai, ptr %4, align 8, !noalias !440
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load ptr, ptr %10, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.ak = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 770, ptr noundef %i.v, ptr noundef %i.aj) #17, !noalias !443
  store ptr %i.ak, ptr %0, align 8, !alias.scope !446
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler25BytecodeOperandSignedByteEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.28") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !noalias !451
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !noalias !451
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes15kOperandOffsetsE, i64 %i.f
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !noalias !451
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !noalias !451
  %i.n = sext i32 %i.m to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef %i.n) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !range !118, !noalias !454, !noundef !119
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !457
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !457
  %i.r = load ptr, ptr %6, align 8, !noalias !457
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !457
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.r, ptr noundef nonnull dead_on_return %7) #17, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !454
  %i.s = load ptr, ptr %8, align 8, !noalias !454
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %i.s) #17, !noalias !454
  store i8 1, ptr %i.o, align 1, !noalias !454
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #17, !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = load i8, ptr %i.a, align 8, !noalias !463
  %i.x = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.w) #17, !noalias !463
  br i1 %i.x, label %bb.c, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.c:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.z = load i8, ptr %i.y, align 1, !range !118, !noalias !463, !noundef !119
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #17, !noalias !466
  %i.ad = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !469
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !463
  %i.af = load ptr, ptr %5, align 8, !noalias !463
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %i.af) #17, !noalias !463
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, %bb.c, %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #17, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ai = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ah, ptr %3, align 8, !noalias !475
  store ptr %i.ai, ptr %4, align 8, !noalias !475
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aj = load ptr, ptr %10, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.ak = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 514, ptr noundef %i.v, ptr noundef %i.aj) #17, !noalias !478
  store ptr %i.ak, ptr %0, align 8, !alias.scope !481
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandReadUnalignedEiNS0_11MachineTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.1") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2, i16 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::TNode.9", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::TNode.7", align 8 ; 8 uses
  %7 = alloca %"class.v8::internal::TNode.12", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::TNode.12", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 8 uses
  %10 = alloca [4 x %"class.v8::internal::TNode.1"], align 16 ; 7 uses
  %11 = alloca %"class.v8::internal::TNode.14", align 8 ; 8 uses
  %12 = alloca %"class.v8::internal::TNode.14", align 8 ; 8 uses
  %13 = alloca %"class.v8::internal::TNode.11", align 8 ; 4 uses
  %14 = alloca %"class.v8::internal::TNode.1", align 8 ; 4 uses
  %15 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %16 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %17 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %18 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %19 = alloca %"class.v8::internal::TNode.1", align 8 ; 2 uses
  %.sroa.025.0.extract.trunc = trunc i16 %3 to i8
  %.sroa.2.0.extract.shift = lshr i16 %3, 8
  %.sroa.2.0.extract.trunc = trunc nuw i16 %.sroa.2.0.extract.shift to i8
  switch i8 %.sroa.025.0.extract.trunc, label %bb.c [
    i8 3, label %.preheader
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.preheader

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #18
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.b
  %.016 = phi i32 [ 4, %bb.b ], [ 2, %bb.a ]      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.a = add i8 %.sroa.2.0.extract.trunc, -2
  %switch.and = and i8 %i.a, -3
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.b = add nsw i32 %.016, -1                    ; 2 uses
  %i.c = add nsw i32 %i.b, %2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 105 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %wide.trip.count = zext nneg i32 %.016 to i64   ; 2 uses
  %spec.select.peel = select i1 %switch.selectcmp, i16 514, i16 770
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.i = sext i32 %i.c to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.j = load i8, ptr %i.d, align 8, !noalias !486
  %i.k = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.j) #17, !noalias !486
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel

bb.d:                                             ; preds = %.preheader
  %i.l = load i8, ptr %i.e, align 1, !range !118, !noalias !486, !noundef !119
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel

bb.e:                                             ; preds = %bb.d
  %i.n = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !noalias !489
  %i.o = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !492
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.f, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel

bb.f:                                             ; preds = %bb.e
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !486
  %i.q = load ptr, ptr %9, align 8, !noalias !486
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.q) #17, !noalias !486
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel: ; preds = %bb.f, %bb.e, %bb.d, %.preheader
  %i.r = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.s = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.r, ptr %7, align 8, !noalias !498
  store ptr %i.s, ptr %8, align 8, !noalias !498
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.t = load i8, ptr %i.g, align 1, !range !118, !noalias !501, !noundef !119
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.peel.next, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !504
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !504
  %i.v = load ptr, ptr %4, align 8, !noalias !504
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !504
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.v, ptr noundef nonnull dead_on_return %5) #17, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !501
  %i.w = load ptr, ptr %6, align 8, !noalias !501
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.w) #17, !noalias !501
  store i8 1, ptr %i.g, align 1, !noalias !501
  br label %.peel.next

.peel.next:                                       ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit.peel, %bb.g
  %i.x = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.y = load ptr, ptr %12, align 8
  %i.z = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %spec.select.peel, ptr noundef %i.x, ptr noundef %i.y) #17
  store ptr %i.z, ptr %10, align 16, !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.h

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.aa = zext nneg i32 %i.b to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

bb.h:                                             ; preds = %.peel.next, %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = sub i32 %i.c, %i.ae
  %i.ag = sext i32 %i.af to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ag) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ah = load i8, ptr %i.d, align 8, !noalias !486
  %i.ai = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.ah) #17, !noalias !486
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load i8, ptr %i.e, align 1, !range !118, !noalias !486, !noundef !119
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !noalias !489
  %i.am = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !492
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.k, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !486
  %i.ao = load ptr, ptr %9, align 8, !noalias !486
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %i.ao) #17, !noalias !486
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ap = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.aq = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.ap, ptr %7, align 8, !noalias !498
  store ptr %i.aq, ptr %8, align 8, !noalias !498
  call void @_ZN2v88internal8compiler13CodeAssembler9IntPtrAddENS0_5TNodeINS0_5WordTEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.12") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ar = load i8, ptr %i.g, align 1, !range !118, !noalias !501, !noundef !119
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !504
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %4, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !504
  %i.at = load ptr, ptr %4, align 8, !noalias !504
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !504
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.at, ptr noundef nonnull dead_on_return %5) #17, !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !504
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !501
  %i.au = load ptr, ptr %6, align 8, !noalias !501
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.au) #17, !noalias !501
  store i8 1, ptr %i.g, align 1, !noalias !501
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit, %bb.l
  %i.av = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #17, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aw = load ptr, ptr %12, align 8
  %i.ax = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8) %1, i16 770, ptr noundef %i.av, ptr noundef %i.aw) #17
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv
  store ptr %i.ax, ptr %i.ay, align 8, !noalias !510
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %bb.h, !llvm.loop !513

._crit_edge:                                      ; preds = %.lr.ph
  store ptr %i.bf, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv32 = phi i64 [ %i.ad, %.lr.ph.preheader ], [ %indvars.iv.next33, %.lr.ph ]
  %.028 = phi i32 [ 1, %.lr.ph.preheader ], [ %i.bg, %.lr.ph ] ; 2 uses
  %i.az = phi ptr [ %i.ac, %.lr.ph.preheader ], [ %i.bf, %.lr.ph ]
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ba = shl nsw i32 %.028, 3
  call void @_ZN2v88internal8compiler13CodeAssembler13Int32ConstantEi(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.11") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ba) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv.next33
  %i.bc = load ptr, ptr %i.bb, align 8
  store ptr %i.bc, ptr %15, align 8
  %i.bd = load ptr, ptr %13, align 8
  store ptr %i.bd, ptr %16, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16) #17
  %i.be = load ptr, ptr %14, align 8
  store ptr %i.be, ptr %18, align 8
  store ptr %i.az, ptr %19, align 8
  call void @_ZN2v88internal8compiler13CodeAssembler8Word32OrENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.1") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #17
  %i.bf = load ptr, ptr %17, align 8, !noalias !516 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.bg = add nuw nsw i32 %.028, 1                ; 2 uses
  %exitcond35.not = icmp eq i32 %i.bg, %.016
  br i1 %exitcond35.not, label %._crit_edge, label %.lr.ph, !llvm.loop !519
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN2v88internal8compiler13CodeAssembler4LoadENS0_11MachineTypeEPNS1_4NodeES5_(ptr noundef nonnull align 8 dereferenceable(8), i16, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler9Word32ShlENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.1") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler13CodeAssembler8Word32OrENS0_5TNodeINS0_7Word32TEEES5_(ptr dead_on_unwind writable sret(%"class.v8::internal::TNode.1") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter20InterpreterAssembler28BytecodeOperandUnsignedShortEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::internal::TNode.29") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::TNode.12", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::TNode.9", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::TNode.7", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::TNode.14", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::TNode.14", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [1696 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes15kOperandOffsetsE, i64 %i.f
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 107 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !range !118, !noalias !520, !noundef !119
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !523
  call void @_ZN2v88internal11interpreter20InterpreterAssembler26GetInterpretedFramePointerEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.9") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !523
  %i.q = load ptr, ptr %6, align 8, !noalias !523
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(108) %1, i64 noundef -32) #17, !noalias !523
  call void @_ZN2v88internal8compiler13CodeAssembler14LoadFullTaggedEPNS1_4NodeENS0_5TNodeINS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.7") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %i.q, ptr noundef nonnull dead_on_return %7) #17, !noalias !520
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !523
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !520
  %i.r = load ptr, ptr %8, align 8, !noalias !520
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.r) #17, !noalias !520
  store i8 1, ptr %i.n, align 1, !noalias !520
  br label %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #17, !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.v = load i8, ptr %i.a, align 8, !noalias !529
  %i.w = call noundef zeroext i1 @_ZN2v88internal11interpreter9Bytecodes26MakesCallAlongCriticalPathENS1_8BytecodeE(i8 noundef zeroext %i.v) #17, !noalias !529
  br i1 %i.w, label %bb.c, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.c:                                             ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.y = load i8, ptr %i.x, align 1, !range !118, !noalias !529, !noundef !119
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ab = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #17, !noalias !532
  %i.ac = call noundef ptr @_ZN2v88internal8compiler13CodeAssembler16UntypedParameterEi(ptr noundef nonnull align 8 dereferenceable(108) %1, i32 noundef 1) #17, !noalias !535
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal11interpreter20InterpreterAssembler20ReloadBytecodeOffsetEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(108) %1), !noalias !529
  %i.ae = load ptr, ptr %5, align 8, !noalias !529
  call void @_ZN2v88internal8compiler21CodeAssemblerVariable4BindEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %i.ae) #17, !noalias !529
  br label %_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit

_ZN2v88internal11interpreter20InterpreterAssembler14BytecodeOffsetEv.exit: ; preds = %_ZN2v88internal11interpreter20InterpreterAssembler26BytecodeArrayTaggedPointerEv.exit, %bb.c, %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = call noundef ptr @_ZNK2v88internal8compiler21CodeAssemblerVariable5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #17, !noalias !538
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ah = sext i32 %i.m to i64
  call void @_ZN2v88internal8compiler13CodeAssembler14IntPtrConstantEl(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.14") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ah) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
end_hunk_0
