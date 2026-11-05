Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoongArchISelDAGToDAG?download=true
inline.NumInlined: 1463
inline.NumDeleted: 443
begin_hunk_0_@_ZN4llvm22SelectionDAGISelLegacy20runOnMachineFunctionERNS_15MachineFunctionE

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN4llvm15callDefaultCtorINS_27LoongArchDAGToDAGISelLegacyEEEPNS_4PassEv() #0 comdat {
bb.a:
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #18
  unreachable
}

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, i16, ptr) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::ArrayRef.249") align 8) local_unnamed_addr #2

declare void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i16, ptr, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT22isExtended128BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT22isExtended256BitVectorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

declare { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #7

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN4llvm16SelectionDAGISel16SelectCodeCommonEPNS_6SDNodeEPKhjS4_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN4llvm16SelectionDAGISel20runOnMachineFunctionERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm9MemSDNode17getMergedOrderingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = lshr i16 %i.e, 8
  %i.g = and i16 %i.f, 15                         ; 4 uses
  %i.h = lshr i16 %i.e, 12                        ; 4 uses
  %i.i = icmp eq i16 %i.g, 4
  %i.j = icmp eq i16 %i.h, 5
  %or.cond.i.i = and i1 %i.j, %i.i
  br i1 %or.cond.i.i, label %_ZNK4llvm17MachineMemOperand17getMergedOrderingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i16 %i.g, 5
  %i.l = icmp eq i16 %i.h, 4
  %or.cond3.i.i = and i1 %i.l, %i.k
  br i1 %or.cond3.i.i, label %_ZNK4llvm17MachineMemOperand17getMergedOrderingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i16 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm14isStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.m
  %i.o = zext nneg i16 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !408, !range !225, !noundef !226
  %i.r = trunc nuw i8 %i.q to i1
  %.v.i = select i1 %i.r, i16 %i.g, i16 %i.h
  %i.s = zext nneg i16 %.v.i to i32
  br label %_ZNK4llvm17MachineMemOperand17getMergedOrderingEv.exit

_ZNK4llvm17MachineMemOperand17getMergedOrderingEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.s, %bb.c ], [ 6, %bb.b ], [ 6, %bb.a ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm5APInteqEm(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #19
  %i.e = sub i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.e, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.c, ptr %0, ptr %i.g
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !107
  %i.h = icmp eq i64 %.0.i, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.i = phi i1 [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3EVT6bitsLEES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = load i16, ptr %0, align 8, !tbaa !236    ; 3 uses
  %.not.i.i = icmp eq i16 %i.a, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %2
  %.not4.i = select i1 %.not.i.i, i1 %i.d, i1 false
  br i1 %.not4.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i16 %1, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.e, align 8
  %.not.i.i8 = icmp eq i16 %i.a, 0
  br i1 %.not.i.i8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %i.a to i64
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = tail call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.d, %bb.c
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.not.i5.i = icmp eq i16 %1, 0
  br i1 %.not.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %i.j = zext i16 %1 to i64
  %i.k = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %.sroa.0.0.copyload.i.i6.i = load i64, ptr %i.l, align 16
  %.sroa.2.0..sroa_idx.i.i7.i = getelementptr i8, ptr %i.k, i64 -8
  %.sroa.2.0.copyload.i.i8.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i, align 8
  %.fca.0.insert.i.i9.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i, 0
  %.fca.1.insert.i.i10.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i, i8 %.sroa.2.0.copyload.i.i8.i, 1
  br label %_ZNK4llvm3EVT11knownBitsLEES0_.exit.a

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %i.m = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  br label %_ZNK4llvm3EVT11knownBitsLEES0_.exit.a

_ZNK4llvm3EVT11knownBitsLEES0_.exit.a:            ; preds = %bb.e, %bb.f
  %.pn.i11.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %.fca.1.extract2.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %.fca.0.extract1.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %.fca.0.extract.i = extractvalue { i64, i8 } %.pn.i11.i, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %.pn.i11.i, 1
  %i.n = trunc nuw i8 %.fca.1.extract2.i to i1
  %.not.i13.i = xor i1 %i.n, true
  %i.o = trunc nuw i8 %.fca.1.extract.i to i1
  %or.cond.i.i = select i1 %.not.i13.i, i1 true, i1 %i.o
  %4 = icmp ule i64 %.fca.0.extract1.i, %.fca.0.extract.i
  %.0.i.i.a = select i1 %or.cond.i.i, i1 %4, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK4llvm3EVT11knownBitsLEES0_.exit.a
  %.0 = phi i1 [ %.0.i.i.a, %_ZNK4llvm3EVT11knownBitsLEES0_.exit.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm16ConstantFPSDNode5isOneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.f, ptr %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 8
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNK4llvm10ConstantFP5isOneEv.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #19
  br label %_ZNK4llvm10ConstantFP5isOneEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #19
  br label %_ZNK4llvm10ConstantFP5isOneEv.exit

_ZNK4llvm10ConstantFP5isOneEv.exit:               ; preds = %bb.a, %bb.c, %bb.d
  %i.l = phi i32 [ -2147483648, %bb.a ], [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  %i.m = icmp eq i32 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2Ef(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 3 uses
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef %1) #17
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #17
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7APFloat14bitcastToAPIntEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !107
  %.not = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7APFloatC2Ed(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 3 uses
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %1) #17
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #17
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %2) #17
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm23LoongArchTargetLowering16isFPImmVLDILegalERKNS_7APFloatENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518448), ptr noundef nonnull align 8 dereferenceable(24), i16, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail9IEEEFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm6detail13DoubleAPFloat15getExactLog2AbsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #8

declare void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24), float noundef) unnamed_addr #2

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #5

declare void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

declare void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm21LoongArchDAGToDAGISel15selectVSplatImmILj5ELj0ELb0EEEbNS_7SDValueERS2_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 1, ptr %i.a, align 8, !tbaa !106
  store i64 0, ptr %4, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.c, align 8, !tbaa !96 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !228
  store i16 %.sroa.0.0.copyload.i, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.d, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %.sroa.0.0.copyload.i to i64
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !96
  %i.i = insertvalue { i16, ptr } poison, i16 %i.h, 0
  %i.j = insertvalue { i16, ptr } %i.i, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.k = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.b, %bb.c
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.l, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not.i12 = icmp eq i16 %i.l, 0
  br i1 %.not.i12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.o = zext i16 %i.l to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.e:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.r = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.d, %bb.e
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.fca.1.extract6 = extractvalue { i64, i8 } %.pn.i, 1
  %i.s = trunc nuw i8 %.fca.1.extract6 to i1
  br i1 %i.s, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract5 = extractvalue { i64, i8 } %.pn.i, 0
  %i.t = trunc i64 %.fca.0.extract5 to i32        ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !94
  %i.w = icmp eq i32 %i.v, 248
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !227
  %.sroa.015.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !116
end_hunk_0
