Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK4llvm18TargetLoweringBase20shouldConvertFpToSatEjNS_3EVTES1_:bb.a
  %.0.i = phi i1 [ false, %bb.b ], [ false, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %spec.select.i, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i ], [ true, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase34preferSelectsOverBooleanArithmeticENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase22shouldPreservePtrArithERKNS_8FunctionENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, i16 %2, ptr %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase31canTransformPtrArithOutOfBoundsERKNS_8FunctionENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, i16 %2, ptr %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase32isComplexDeinterleavingSupportedEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase41isComplexDeinterleavingOperationSupportedENS_30ComplexDeinterleavingOperationEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetLoweringBase25getPreferredFPToIntOpcodeEjNS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(518435) %0, i32 noundef %1, i16 %2, ptr %3, i16 %4, ptr %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq i16 %4, 1
  %i.a = icmp eq ptr %5, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.a, i1 false ; 4 uses
  br i1 %.not4.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i16 %4, 0
  br i1 %.not.i.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = zext i16 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !747
  %.not.i = icmp ne ptr %i.e, null
  %.not.i5.i = icmp ult i32 %1, 537
  %or.cond.i = and i1 %.not.i5.i, %.not.i
  br i1 %or.cond.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not.i5.old.i = icmp ult i32 %1, 537
  br i1 %.not.i5.old.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.c
  %.pre-phi.i = phi i64 [ %i.c, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [537 x i8], ptr %i.f, i64 %.pre-phi.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.j = load i8, ptr %i.i, align 1, !tbaa !401
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.j, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit
  switch i32 %1, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread [
    i32 241, label %bb.d
    i32 147, label %bb.f
    i32 478, label %bb.h
  ]

bb.d:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i16.i = icmp eq i16 %4, 0
  br i1 %.not.i16.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i20

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i20: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = zext i16 %4 to i64                       ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !747
  %.not.i21 = icmp eq ptr %i.o, null
  br i1 %.not.i21, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit: ; preds = %bb.d, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i20
  %.pre-phi = phi i64 [ %i.m, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i20 ], [ 1, %bb.d ]
  %i.p = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %.pre-phi
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 6424
  %i.r = load i8, ptr %i.q, align 1, !tbaa !401
  %i.s = and i8 %i.r, -5
  %spec.select.i = icmp eq i8 %i.s, 0
  br i1 %spec.select.i, label %bb.j, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i16.i24 = icmp eq i16 %4, 0
  br i1 %.not.i16.i24, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i25

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i25: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = zext i16 %4 to i64                       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !747
  %.not.i26 = icmp eq ptr %i.w, null
  br i1 %.not.i26, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29: ; preds = %bb.f, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i25
  %.pre-phi42 = phi i64 [ %i.u, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i25 ], [ 1, %bb.f ]
  %i.x = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %.pre-phi42
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6330
  %i.z = load i8, ptr %i.y, align 1, !tbaa !401
  %i.aa = and i8 %i.z, -5
  %spec.select.i27 = icmp eq i8 %i.aa, 0
  br i1 %spec.select.i27, label %bb.j, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i16.i32 = icmp eq i16 %4, 0
  br i1 %.not.i16.i32, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i33

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i33: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = zext i16 %4 to i64                      ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !747
  %.not.i34 = icmp eq ptr %i.ae, null
  br i1 %.not.i34, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37: ; preds = %bb.h, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i33
  %.pre-phi44 = phi i64 [ %i.ac, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i33 ], [ 1, %bb.h ]
  %i.af = getelementptr inbounds nuw [537 x i8], ptr %0, i64 %.pre-phi44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 6663
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !401
  %i.ai = and i8 %i.ah, -5
  %spec.select.i35 = icmp eq i8 %i.ai, 0
  br i1 %spec.select.i35, label %bb.j, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i33, %bb.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i25, %bb.g, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i20, %bb.e, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit.thread, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread
  %.0 = phi i32 [ 146, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit29 ], [ %1, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread ], [ %1, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit ], [ 240, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit ], [ 479, %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit37 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetLoweringBase29createComplexDeinterleavingIRERNS_13IRBuilderBaseENS_30ComplexDeinterleavingOperationENS_29ComplexDeinterleavingRotationEPNS_5ValueES6_S6_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @_ZNK4llvm18TargetLoweringBase16finalizeLoweringERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase31shouldMergeStoreOfLoadsOverCallENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %1, ptr %2, i16 %3, ptr %4) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase14shouldLocalizeERKNS_12MachineInstrEPKNS_19TargetTransformInfoE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase13isExtFreeImplEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering21useTopologicalSortingEv(ptr noundef nonnull align 8 dereferenceable(518435) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering26isSDNodeSourceOfDivergenceEPKNS_6SDNodeEPNS_20FunctionLoweringInfoEPNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering19isReassocProfitableERNS_12SelectionDAGENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %2, i32 %3, ptr %4, i32 %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.a, align 8, !tbaa !748 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.e, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.b, align 8, !tbaa !748 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.b ], [ %.sroa.018.022.i.i, %bb.a ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !432
  %i.e = icmp ne i32 %i.d, %3                     ; 2 uses
  %i.f = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.e, i1 true, i1 %i.f    ; 2 uses
  br i1 %cond.i.i, label %bb.b, label %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i

_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i: ; preds = %.lr.ph.i.i, %bb.b
  %.315.i.ph.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.214.i.i, %bb.b ]
  %i.g = icmp eq i32 %.315.i.ph.i, 0
  %i.h = select i1 %cond.i.i, i1 %i.g, i1 false
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.a, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i
  %.not.lcssa.i.i = phi i1 [ false, %bb.a ], [ %i.h, %_ZNK4llvm6SDNode15hasNUsesOfValueEjj.exit.loopexit.i ]
  ret i1 %.not.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering19isReassocProfitableERNS_19MachineRegisterInfoENS_8RegisterES3_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %2, i32 %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %1, i32 %2) #27
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering21isSDNodeAlwaysUniformEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering25getPreIndexedAddressPartsEPNS_6SDNodeERNS_7SDValueES4_RNS_3ISD14MemIndexedModeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(920) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering26getPostIndexedAddressPartsEPNS_6SDNodeES2_RNS_7SDValueES4_RNS_3ISD14MemIndexedModeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering15isIndexingLegalERNS_12MachineInstrENS_8RegisterES3_bRNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 %2, i32 %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(520) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm14TargetLowering17getJumpTableRegTyERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i16 %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef 0) #27
  ret i16 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm14TargetLowering25LowerCustomJumpTableEntryEPKNS_20MachineJumpTableInfoEPKNS_17MachineBasicBlockEjRNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(2208) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  unreachable
}

declare noundef ptr @_ZNK4llvm14TargetLowering28getPICJumpTableRelocBaseExprEPKNS_15MachineFunctionEjRNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(2208)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering23isInlineAsmTargetBranchERKNS_15SmallVectorImplINS_9StringRefEEEj(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering15visitMaskedLoadERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueEPNS_17MachineMemOperandERS6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef byval(%"class.llvm::SDValue") align 8 %7, ptr noundef byval(%"class.llvm::SDValue") align 8 %8, ptr noundef byval(%"class.llvm::SDValue") align 8 %9) unnamed_addr #1 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering16visitMaskedStoreERNS_12SelectionDAGERKNS_5SDLocENS_7SDValueEPNS_17MachineMemOperandES6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %3, i32 %4, ptr noundef %5, ptr noundef byval(%"class.llvm::SDValue") align 8 %6, ptr noundef byval(%"class.llvm::SDValue") align 8 %7, ptr noundef byval(%"class.llvm::SDValue") align 8 %8) unnamed_addr #1 comdat align 2 {
bb.a:
  unreachable
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering24findOptimalMemOpLoweringERNS_11LLVMContextERSt6vectorINS_3EVTESaIS4_EEjRKNS_5MemOpEjjRKNS_13AttributeListEPS4_(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(17), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering28targetShrinkDemandedConstantENS_7SDValueERKNS_5APIntES4_RNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering32shouldSimplifyDemandedVectorEltsENS_7SDValueERKNS0_17TargetLoweringOptE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm14TargetLowering34getPreferredShrunkVectorSizeInBitsENS_7SDValueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK4llvm14TargetLowering29computeKnownBitsForTargetNodeENS_7SDValueERNS_9KnownBitsERKNS_5APIntERKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering30computeKnownBitsForTargetInstrERNS_18GISelValueTrackingENS_8RegisterERNS_9KnownBitsERKNS_5APIntERKNS_19MachineRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 1, i32, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering33computeKnownFPClassForTargetInstrERNS_18GISelValueTrackingENS_8RegisterERNS_12KnownFPClassERKNS_5APIntERKNS_19MachineRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 1, i32, ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) unnamed_addr #4

declare i8 @_ZNK4llvm14TargetLowering31computeKnownAlignForTargetInstrERNS_18GISelValueTrackingENS_8RegisterERKNS_19MachineRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 1, i32, ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering37computeKnownBitsForStackObjectPointerERNS_9KnownBitsERKNS_15MachineFunctionENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(1065), i8) unnamed_addr #4

declare noundef i32 @_ZNK4llvm14TargetLowering31ComputeNumSignBitsForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare noundef i32 @_ZNK4llvm14TargetLowering32computeNumSignBitsForTargetInstrERNS_18GISelValueTrackingENS_8RegisterERKNS_5APIntERKNS_19MachineRegisterInfoEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 1, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering39SimplifyDemandedVectorEltsForTargetNodeENS_7SDValueERKNS_5APIntERS2_S5_RNS0_17TargetLoweringOptEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering33SimplifyDemandedBitsForTargetNodeENS_7SDValueERKNS_5APIntES4_RNS_9KnownBitsERNS0_17TargetLoweringOptEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) unnamed_addr #4

declare { ptr, i32 } @_ZNK4llvm14TargetLowering44SimplifyMultipleUseDemandedBitsForTargetNodeENS_7SDValueERKNS_5APIntES4_RNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering45isGuaranteedNotToBeUndefOrPoisonForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGENS_15UndefPoisonKindEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering35canCreateUndefOrPoisonForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGENS_15UndefPoisonKindEbj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #4

declare noundef ptr @_ZNK4llvm14TargetLowering25getTargetConstantFromLoadEPNS_10LoadSDNodeE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef) unnamed_addr #4

declare void @_ZNK4llvm14TargetLowering32computeKnownFPClassForTargetNodeENS_7SDValueERNS_12KnownFPClassERKNS_5APIntERKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 4 dereferenceable(6), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering28isKnownNeverNaNForTargetNodeENS_7SDValueERKNS_5APIntERKNS_12SelectionDAGEbj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i1 noundef zeroext, i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering25isSplatValueForTargetNodeENS_7SDValueERKNS_5APIntERS2_RKNS_12SelectionDAGEj(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(920), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering29isTargetCanonicalConstantNodeENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !423
  %i.c = add i32 %i.b, -175
  %spec.select = icmp ult i32 %i.c, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering23isTargetCanonicalSelectEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZNK4llvm14TargetLowering13unwrapAddressENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i32 %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %2, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK4llvm14TargetLowering14isGAPlusOffsetEPNS_6SDNodeERPKNS_11GlobalValueERl(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm14TargetLowering29isDesirableToCommuteWithShiftEPKNS_6SDNodeENS_12CombineLevelE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !426 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2173 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit

_ZNK4llvm6SDNode9hasOneUseEv.exit:                ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2176
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !423
  %i.j = icmp eq i32 %i.i, 227
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !425
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !431
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2173 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i2, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread, label %_ZNK4llvm6SDNode9hasOneUseEv.exit4

_ZNK4llvm6SDNode9hasOneUseEv.exit4:               ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2176
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit4, %bb.b
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread:         ; preds = %bb.c, %bb.a, %_ZNK4llvm6SDNode9hasOneUseEv.exit4, %_ZNK4llvm6SDNode9hasOneUseEv.exit, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit4 ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
