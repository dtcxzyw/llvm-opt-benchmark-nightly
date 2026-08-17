inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal8compiler12_GLOBAL__N_131AddDisplacementToAddressingModeENS1_14AddressingModeE:bb.a
bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br label %bb.l

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i8 [ 18, %bb.i ], [ 7, %bb.b ], [ 8, %bb.c ], [ 9, %bb.d ], [ 10, %bb.e ], [ 15, %bb.f ], [ 16, %bb.g ], [ 17, %bb.h ], [ 2, %bb.a ]
  ret i8 %.0
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector13IsCommutativeENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector9IsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector12IsReallyUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft11StructGetOp11outputs_repEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca [1 x %"class.v8::internal::compiler::turboshaft::RegisterRepresentation"], align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.i, align 4
  %i.j = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32 %.sroa.0.0.copyload.i.i) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn6 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ]
  %.fca.0.insert.i.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn6, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.i.pn, i64 1, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft21LoadDataViewElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.ext
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 1, 1
  ret { ptr, i64 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._ZNK2v88internal8compiler10turboshaft18LoadTypedElementOp11outputs_repEv, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN2v88internal8compiler10turboshaft12VectorForRepENS2_22RegisterRepresentationEE5table, i64 %switch.ext
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 1, 1
  ret { ptr, i64 } %.fca.1.insert.i.i
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZN2v88internal8compiler10turboshaft17RepresentationForENS0_4wasm9ValueTypeE(i32) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector6IsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare noundef i32 @_ZN2v88internal8compiler19InstructionSequence19NextVirtualRegisterEv(ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352), i8 noundef zeroext, i32 noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector15IsProtectedLoadENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i32) local_unnamed_addr #10

declare noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSelector21CanCoverProtectedLoadENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752), i32, i32) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector20UpdateSourcePositionEPNS1_11InstructionENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), ptr noundef, i32) local_unnamed_addr #10

declare noundef zeroext i8 @_ZNK2v88internal8compiler19InstructionSequence17GetRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352), i32 noundef) local_unnamed_addr #10

declare void @_ZN2v88internal8compiler19InstructionSelector20MarkAsRepresentationENS0_21MachineRepresentationENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752), i8 noundef zeroext, i32) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_129VisitCompareWithMemoryOperandEPNS1_19InstructionSelectorEjNS1_10turboshaft7OpIndexENS1_18InstructionOperandEPNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 noundef range(i32 183, 191) %1, i32 %2, i64 %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::X64OperandGenerator", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %6 = alloca [6 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.e = call noundef zeroext i8 @_ZN2v88internal8compiler19X64OperandGenerator32GetEffectiveAddressMemoryOperandENS1_10turboshaft7OpIndexEPNS1_18InstructionOperandEPmNS1_16OperandGenerator15RegisterUseKindE(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef 0)
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.f
  store i64 %3, ptr %i.h, align 8
  %i.i = load i32, ptr %4, align 8
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 136
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.l, i32 %.sroa.0.0.copyload.i) #25
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = or disjoint i64 %i.o, 377957122049
  %i.q = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.q, i32 %.sroa.0.0.copyload.i) #25
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.r
  store i64 %i.p, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 132
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.u, align 4 ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.v, i32 %.sroa.0.0.copyload.i23) #25
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = or disjoint i64 %i.y, 34359738369
  %i.aa = load ptr, ptr %i.d, align 8
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %i.aa, i32 %.sroa.0.0.copyload.i23) #25
  %i.ab = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ab
  store i64 %i.z, ptr %i.ad, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i64 [ %i.ac, %bb.b ], [ %i.g, %bb.a ]
  %i.af = zext i8 %i.e to i32
  %i.ag = shl nuw nsw i32 %i.af, 9
  %i.ah = or disjoint i32 %i.ag, %1
  %i.ai = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjmPNS1_18InstructionOperandEmS4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %i.ah, i64 noundef 0, ptr noundef null, i64 noundef %i.ae, ptr noundef nonnull %6, ptr noundef nonnull %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal8compiler12_GLOBAL__N_112VisitCompareEPNS1_19InstructionSelectorEjNS1_18InstructionOperandES5_PNS1_17FlagsContinuationE(ptr noundef nonnull %0, i32 noundef range(i32 183, 0) %1, i64 %2, i64 %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %5 = alloca [4 x %"class.v8::internal::compiler::InstructionOperand"], align 16 ; 7 uses
  %i.a = load i32, ptr %4, align 8
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 %2, ptr %5, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.c, align 8
  %.ptr25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 18
  br i1 %i.f, label %bb.c, label %7

bb.c:                                             ; preds = %bb.b
  store i8 19, ptr %i.d, align 4
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 132
  br label %bb.d

7:                                                ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 136
  br label %bb.d

bb.d:                                             ; preds = %7, %bb.c
  %.sroa.0.0.copyload.i27.sink39.in = phi ptr [ %8, %7 ], [ %6, %bb.c ]
  %.sink38 = phi i64 [ 132, %7 ], [ 136, %bb.c ]
  %.sroa.0.0.copyload.i27.sink39 = load i32, ptr %.sroa.0.0.copyload.i27.sink39.in, align 4 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #25
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i27.sink39) #25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %.sink38
  %.sroa.0.0.copyload.i28.sink37 = load i32, ptr %i.h, align 4 ; 2 uses
  %i.i = tail call noundef i32 @_ZN2v88internal8compiler19InstructionSelector18GetVirtualRegisterENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i28.sink37) #25
  tail call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i28.sink37) #25
  %.sink.in.in = zext i32 %i.i to i64
  %.sink.in = shl nuw nsw i64 %.sink.in.in, 3
  %.sink = or disjoint i64 %.sink.in, 34359738369
  %.sink36.in.in = zext i32 %i.g to i64
  %.sink36.in = shl nuw nsw i64 %.sink36.in.in, 3
  %.sink36 = or disjoint i64 %.sink36.in, 377957122049
  store i64 %.sink36, ptr %.ptr25, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sink, ptr %i.j, align 8
  %i.k = call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjmPNS1_18InstructionOperandEmS4_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %1, i64 noundef 0, ptr noundef null, i64 noundef 4, ptr noundef nonnull %5, ptr noundef nonnull %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN2v88internal8compiler19InstructionSelector20EmitWithContinuationEjNS1_18InstructionOperandES3_PNS1_17FlagsContinuationE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef nonnull %4) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i16 0, 773) i16 @_ZN2v88internal8compiler12_GLOBAL__N_127MachineTypeForNarrowWordAndEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr %.0.val.8.val, i32 %0, i32 %1) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %.0.val.8.val to i64        ; 5 uses
  %i.b = zext i32 %0 to i64
  %i.c = add i64 %i.b, %i.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.0.0.copyload.i.i34 = load i32, ptr %i.f, align 4 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i34 to i64
  %i.h = add i64 %i.g, %i.a
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %.not.i = icmp eq i8 %i.j, 75
  br i1 %.not.i, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %spec.select.i = icmp ult i8 %i.l, 2
  br i1 %spec.select.i, label %bb.b, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread: ; preds = %bb.a, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %i.m = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.n = add i64 %i.m, %i.a
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %.not.i35 = icmp eq i8 %i.p, 75
  br i1 %.not.i35, label %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, label %.thread

_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %spec.select.i37 = icmp ult i8 %i.r, 2
  br i1 %spec.select.i37, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit
  %.sroa.03.0 = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38 ], [ %.sroa.0.0.copyload.i.i34, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit ] ; 2 uses
  %.not15 = icmp eq i32 %.sroa.03.0, -1
  br i1 %.not15, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = zext i32 %.sroa.03.0 to i64
  %i.t = add i64 %i.s, %i.a
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = load i8, ptr %i.u, align 4
  %.not.i39 = icmp eq i8 %i.v, 75
  br i1 %.not.i39, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  %switch.i = icmp ult i8 %i.x, 2
  br i1 %switch.i, label %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i: ; preds = %bb.d
  %i.y = icmp eq i8 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %sext.i.i = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext.i.i, 32
  %.0.i.i = select i1 %i.y, i64 %i.ab, i64 %i.aa
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit: ; preds = %bb.c, %bb.d, %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i
  %.0 = phi i64 [ %.0.i.i, %_ZNK2v88internal8compiler10turboshaft10ConstantOp15signed_integralEv.exit.i ], [ undef, %bb.d ], [ undef, %bb.c ] ; 2 uses
  %i.ac = zext i32 %1 to i64
  %i.ad = add i64 %i.ac, %i.a
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i40 = icmp eq i8 %i.af, 75
  br i1 %.not.i40, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load i8, ptr %i.ag, align 4             ; 2 uses
  %switch.i42 = icmp ult i8 %i.ah, 2
  br i1 %switch.i42, label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit46, label %.thread

_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit46: ; preds = %bb.e
  %i.ai = icmp eq i8 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %sext.i.i44 = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext.i.i44, 32
  %.0.i.i45 = select i1 %i.ai, i64 %i.al, i64 %i.ak ; 2 uses
  %i.am = icmp sgt i64 %.0, -1
  %i.an = icmp sgt i64 %.0.i.i45, -1
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit46
  %i.ao = tail call i64 @llvm.umax.i64(i64 %.0, i64 %.0.i.i45) ; 6 uses
  %.not = icmp samesign ugt i64 %i.ao, 127
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not28 = icmp samesign ugt i64 %i.ao, 255
  br i1 %.not28, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not29 = icmp samesign ugt i64 %i.ao, 32767
  br i1 %.not29, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not30 = icmp samesign ugt i64 %i.ao, 65535
  br i1 %.not30, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %.not31 = icmp samesign ugt i64 %i.ao, 2147483647
  br i1 %.not31, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not32 = icmp samesign ugt i64 %i.ao, 4294967295
  %spec.select = select i1 %.not32, i16 0, i16 772
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit, %bb.e, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38, %bb.b, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit46
  %.sroa.024.3 = phi i16 [ 0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit ], [ 0, %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit46 ], [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.thread ], [ %spec.select, %bb.k ], [ 0, %bb.b ], [ 0, %_ZN2v88internal8compiler12_GLOBAL__N_113IsIntConstantEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit38 ], [ 0, %bb.e ], [ 516, %bb.j ], [ 514, %bb.f ], [ 771, %bb.i ], [ 515, %bb.h ], [ 770, %bb.g ]
  ret i16 %.sroa.024.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i16 @_ZN2v88internal8compiler12_GLOBAL__N_120MachineTypeForNarrowEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexES6_(ptr nofree noundef nonnull readonly captures(none) %0, i32 %1, i32 %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = zext i32 %2 to i64                       ; 2 uses
  %i.f = add i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i8, ptr %i.g, align 4
  %i.i = icmp eq i8 %i.h, 77
  br i1 %i.i, label %bb.b, label %._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge

._ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = zext i32 %1 to i64                      ; 2 uses
  %.pre78 = add i64 %i.d, %.pre
  %.pre80 = inttoptr i64 %.pre78 to ptr
  br label %_ZNK2v88internal8compiler10turboshaft16OperationMatcher27MatchSignedIntegralConstantENS2_1VINS2_3AnyEEEPl.exit.threadthread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !203
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !203
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, %i.e
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !noalias !203
  %cond = icmp eq i8 %i.q, 77
  br i1 %cond, label %_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24, !noalias !203
  unreachable

_ZN2v88internal8compiler19InstructionSelector9load_viewENS1_10turboshaft7OpIndexE.exit: ; preds = %bb.b
  %i.r = tail call i16 @_ZNK2v88internal8compiler10turboshaft6LoadOp12machine_typeEv(ptr noundef nonnull align 4 dereferenceable(12) %i.p) #25 ; 2 uses
  %.sroa.050.0.extract.trunc = trunc i16 %i.r to i8 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i16 %i.r, 8    ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = zext i32 %1 to i64                       ; 9 uses
  %i.x = add i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr                 ; 10 uses
  %i.z = load i8, ptr %i.y, align 4               ; 2 uses
  %.not.i = icmp eq i8 %i.z, 75
end_hunk_0
