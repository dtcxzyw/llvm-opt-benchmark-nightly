Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenPrepare?download=true
inline.NumInlined: 15763
inline.NumDeleted: 7319
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvm5APInt11isSameValueERKS0_S2_b:bb.a

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.u) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInteqERKS0_.exit14, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNK4llvm5APInteqERKS0_.exit

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.d) #27
  br label %_ZZN4llvm5APInt11isSameValueERKS0_S2_bENKUlS2_jE_clES2_j.exit15

bb.o:                                             ; preds = %bb.m
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.d) #27
  br label %_ZZN4llvm5APInt11isSameValueERKS0_S2_bENKUlS2_jE_clES2_j.exit15

_ZZN4llvm5APInt11isSameValueERKS0_S2_bENKUlS2_jE_clES2_j.exit15: ; preds = %bb.n, %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !452
  %i.y = icmp ult i32 %i.x, 65
  br i1 %i.y, label %_ZNK4llvm5APInteqERKS0_.exit17, label %bb.p

_ZNK4llvm5APInteqERKS0_.exit17:                   ; preds = %_ZZN4llvm5APInt11isSameValueERKS0_S2_bENKUlS2_jE_clES2_j.exit15
  %i.z = load i64, ptr %4, align 8, !tbaa !295
  %i.aa = load i64, ptr %1, align 8, !tbaa !295
  %i.ab = icmp eq i64 %i.z, %i.aa
  br label %_ZN4llvm5APIntD2Ev.exit18

bb.p:                                             ; preds = %_ZZN4llvm5APInt11isSameValueERKS0_S2_bENKUlS2_jE_clES2_j.exit15
  %i.ac = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %1) #31 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !295   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #30
  br label %_ZN4llvm5APIntD2Ev.exit18

_ZN4llvm5APIntD2Ev.exit18:                        ; preds = %_ZNK4llvm5APInteqERKS0_.exit17, %bb.p, %bb.q
  %.0.i1621 = phi i1 [ %i.ab, %_ZNK4llvm5APInteqERKS0_.exit17 ], [ %i.ac, %bb.p ], [ %i.ac, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZNK4llvm5APInteqERKS0_.exit

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit18, %bb.d, %bb.c
  %.1 = phi i1 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %.0.i13, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i1621, %_ZN4llvm5APIntD2Ev.exit18 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4llvm31recognizeBSwapOrBitReverseIdiomEPNS_11InstructionEbbRNS_15SmallVectorImplIS1_EE(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN4llvm5ValueEEZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERNS0_11InstructionEE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2722
  %.val2 = load ptr, ptr %1, align 8, !tbaa !337
  tail call fastcc void @_ZN12_GLOBAL__N_114CodeGenPrepare30removeAllAssertingVHReferencesEPN4llvm5ValueE(ptr noundef nonnull align 8 dereferenceable(1128) %.val, ptr noundef %.val2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN4llvm5ValueEEZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERNS0_11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERN4llvm11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !76
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERN4llvm11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !772
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERN4llvm11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !381
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERN4llvm11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_114CodeGenPrepare14makeBitReverseERN4llvm11InstructionEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef ptr @_ZN4llvm26FoldReturnIntoUncondBranchEPNS_10ReturnInstEPNS_10BasicBlockES3_PNS_14DomTreeUpdaterE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_13IntrinsicInstELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !75
  %i.g = load i32, ptr %i.a, align 8, !tbaa !163
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !163
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !163
  ret void
}

declare noundef zeroext i1 @_ZN4llvm24attributesPermitTailCallEPKNS_8FunctionEPKNS_11InstructionEPKNS_10ReturnInstERKNS_18TargetLoweringBaseEPb(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !75
  %i.g = load i32, ptr %i.a, align 8, !tbaa !163
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !163
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !163
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !75
  %i.g = load i32, ptr %i.a, align 8, !tbaa !163
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !163
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !163
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm21TargetLibraryInfoImpl10getLibFuncERKNS_8FunctionERNS_7LibFuncE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvENK3$_1clElPN4llvm5ValueEPNS2_17GetElementPtrInstE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::IRBuilder", align 8   ; 20 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"struct.std::pair.1338", align 8
  %9 = alloca %"class.llvm::AssertingVH", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !409    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !373  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !423, !nonnull !72, !align !362
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.g = tail call noundef ptr @_ZNK4llvm10DataLayout12getIndexTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef nonnull %i.c) #27
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !373  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 254
  %spec.select.i.i.i = icmp eq i32 %i.k, 18
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !421
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !422
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.a, %bb.b
  %i.o = phi i32 [ %.pre.i, %bb.b ], [ %i.j, %bb.a ]
  %i.p = lshr i32 %i.o, 8
  %i.q = tail call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.p) #27 ; 2 uses
  %i.r = load i8, ptr %2, align 8, !tbaa !274     ; 2 uses
  %i.s = icmp ult i8 %i.r, 30
  br i1 %i.s, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !301  ; 4 uses
  switch i8 %i.r, label %.preheader.preheader [
    i8 87, label %bb.d
    i8 36, label %bb.e
  ]

.preheader.preheader:                             ; preds = %bb.c
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %11 = load ptr, ptr %10, align 8, !tbaa !270
  br label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.v = tail call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.u) #27 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i64 } %i.v, 0 ; 2 uses
  %.fca.1.extract2.i = extractvalue { ptr, i64 } %i.v, 1
  %.not.i.i = icmp eq ptr %.fca.0.extract1.i, null
  %.sroa.8.8.insert.ext81 = select i1 %.not.i.i, i64 0, i64 %.fca.1.extract2.i
  br label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %2, i64 -96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !279
  %i.y = getelementptr i8, ptr %i.a, i64 56
  %.val = load ptr, ptr %i.y, align 8, !tbaa !216
  %i.z = tail call noundef nonnull align 8 dereferenceable(204) ptr @_ZN4llvm21GenericDomTreeUpdaterINS_14DomTreeUpdaterENS_13DominatorTreeENS_17PostDominatorTreeEE10getDomTreeEv(ptr noundef nonnull align 8 dereferenceable(658) %.val) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.ac, align 8
  %i.ad = call noundef ptr @_ZN4llvm9SplitEdgeEPNS_10BasicBlockES1_PNS_13DominatorTreeEPNS_8LoopInfoEPNS_16MemorySSAUpdaterERKNS_5TwineE(ptr noundef %i.u, ptr noundef %i.x, ptr noundef nonnull %i.z, ptr noundef %i.ab, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(34) %4) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ae = call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #27 ; 2 uses
  %.fca.0.extract1.i57 = extractvalue { ptr, i64 } %i.ae, 0 ; 2 uses
  %.fca.1.extract2.i58 = extractvalue { ptr, i64 } %i.ae, 1
  %.not.i.i59 = icmp eq ptr %.fca.0.extract1.i57, null
  %.sroa.8.8.insert.ext77 = select i1 %.not.i.i59, i64 0, i64 %.fca.1.extract2.i58
  br label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.f:                                             ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2723, !nonnull !72, !align !362
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !405
  %i.ai = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ah) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !253
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24 ; 2 uses
  %i.am = tail call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.al) #27 ; 2 uses
  %.fca.0.extract1.i64 = extractvalue { ptr, i64 } %i.am, 0 ; 2 uses
  %.fca.1.extract2.i65 = extractvalue { ptr, i64 } %i.am, 1
  %.not.i.i66 = icmp eq ptr %.fca.0.extract1.i64, null
  %.sroa.8.8.insert.ext = select i1 %.not.i.i66, i64 0, i64 %.fca.1.extract2.i65
  br label %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.preheader.preheader, %bb.e, %bb.d, %bb.f
  %.sroa.8.0 = phi i64 [ %.sroa.8.8.insert.ext, %bb.f ], [ %.sroa.8.8.insert.ext81, %bb.d ], [ %.sroa.8.8.insert.ext77, %bb.e ], [ 0, %.preheader.preheader ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract1.i64, %bb.f ], [ %.fca.0.extract1.i, %bb.d ], [ %.fca.0.extract1.i57, %bb.e ], [ %11, %.preheader.preheader ] ; 3 uses
  %.1 = phi ptr [ %i.al, %bb.f ], [ %i.u, %bb.d ], [ %i.ad, %bb.e ], [ %i.u, %.preheader.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %.1) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !342
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !344
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !346
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !348
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.au, align 8, !tbaa !355
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.av, align 8, !tbaa !356
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i8 0, ptr %i.aw, align 4, !tbaa !357
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 69
  store i8 2, ptr %i.ax, align 1, !tbaa !358
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 70
  store i8 7, ptr %i.ay, align 2, !tbaa !359
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.ap, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.aq, align 8, !tbaa !63
  store ptr %.1, ptr %i.az, align 8, !tbaa !360
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.0.0, ptr %i.ba, align 8
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.45.0.extract.trunc.i.i = trunc i64 %.sroa.8.0 to i16
  store i16 %.sroa.45.0.extract.trunc.i.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.1, i64 48
  %.not.i.i69 = icmp eq ptr %.sroa.0.0, %i.bb
  br i1 %.not.i.i69, label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -24
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bc) #27
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !424
  store i64 %i.be, ptr %5, align 8, !tbaa !424
  br label %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit

_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit: ; preds = %_ZSt9__advanceIN4llvm21ilist_iterator_w_bitsINS0_12ilist_detail12node_optionsINS0_11InstructionELb0ELb0EvLb1ENS0_10BasicBlockEEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %bb.g
  %i.bf = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.g, i64 noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2724, !nonnull !72, !align !362
  store ptr %2, ptr %i.bh, align 8, !tbaa !337
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !373
  %.not54 = icmp eq ptr %i.bj, %i.q
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.bk, align 8
  %i.bl = call noundef ptr @_ZN4llvm13IRBuilderBase17CreatePointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull %2, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(34) %6)
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !2724, !nonnull !72, !align !362 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !337
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit
  %i.bn = phi ptr [ %.pre, %bb.h ], [ %2, %_ZN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEC2EPNS_10BasicBlockENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ES4_EELb0ELb0EEEPNS_6MDNodeENS_8ArrayRefINS_17OperandBundleDefTIPNS_5ValueEEEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bp, align 1, !tbaa !341
  store ptr @.str.131, ptr %7, align 8, !tbaa !295
  store i8 3, ptr %i.bo, align 8, !tbaa !340
  %i.bq = call noundef ptr @_ZN4llvm13IRBuilderBase12CreatePtrAddEPNS_5ValueES2_RKNS_5TwineENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %i.bn, ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(34) %7, i32 0)
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !2724, !nonnull !72, !align !362 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !337
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !337
  store ptr %i.bt, ptr %9, align 8, !tbaa !396
  call void @_ZN4llvm8SmallSetINS_11AssertingVHINS_5ValueEEELj2ESt4lessIS3_EE10insertImplIS3_EESt4pairINS_16SmallSetIteratorIS3_Lj2ES5_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.1338") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #27
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElElN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %5 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %6 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %7 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %8 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %9 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %10 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %11 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %12 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %13 = alloca %"class.llvm::AssertingVH.625", align 8 ; 4 uses
  %14 = alloca %"struct.std::pair.623", align 8   ; 5 uses
  %15 = alloca %"struct.std::pair.623", align 8   ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 760 ; 20 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 768 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 780 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 776 ; 12 uses
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph99

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEET_SE_SE_T0_.exit"
  %i.m = icmp eq i64 %i.ai, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph99, !llvm.loop !2725

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa95 = phi i64 [ %i.c, %.lr.ph ], [ %i.re, %bb.b ]
  %.037.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.lcssa115.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.n = lshr exact i64 %.lcssa95, 4              ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = lshr i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.013.i.i.i = phi i64 [ %i.p, %._crit_edge ], [ %i.v, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.013.i.i.i ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !337
  store ptr null, ptr %i.r, align 8, !tbaa !337
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !400
  store ptr %i.s, ptr %15, align 8, !tbaa !398
  store i64 %i.u, ptr %i.q, align 8, !tbaa !400
  call fastcc void @"_ZSt13__adjust_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr noundef %0, i64 noundef %.013.i.i.i, i64 noundef %i.n, ptr nofree noundef align 8 dead_on_return dereferenceable(16) %15, ptr %3)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.v = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_RT0_.exit.i.i.thread", label %bb.c, !llvm.loop !2726

"_ZSt11__make_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_RT0_.exit.i.i.thread": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %"_ZSt11__make_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_RT0_.exit.i.i.thread"
  %.01.i.i = phi ptr [ %.037.lcssa, %"_ZSt11__make_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_RT0_.exit.i.i.thread" ], [ %i.x, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.01.i.i, i64 -16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !337
  store ptr null, ptr %i.x, align 8, !tbaa !337
  %i.z = getelementptr inbounds i8, ptr %.01.i.i, i64 -8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !400
  %i.ab = load ptr, ptr %0, align 8, !tbaa !337
  store ptr null, ptr %0, align 8, !tbaa !337
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !398
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !81
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !400
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = sub i64 %i.ad, %i.a                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 4
  store ptr %i.y, ptr %14, align 8, !tbaa !398
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !400
  call fastcc void @"_ZSt13__adjust_heapIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElElS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_T0_SF_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr nofree noundef align 8 dead_on_return dereferenceable(16) %14, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.ag = icmp sgt i64 %i.ae, 16
  br i1 %i.ag, label %bb.d, label %"_ZSt14__partial_sortIPSt4pairIN4llvm11AssertingVHINS1_17GetElementPtrInstEEElEN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !2727

.lr.ph99:                                         ; preds = %.lr.ph, %bb.b
  %.0153698 = phi i64 [ %i.ai, %bb.b ], [ %2, %.lr.ph ]
  %.03797 = phi ptr [ %.1.lcssa115.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %i.ah = phi i64 [ %i.re, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ai = add nsw i64 %.0153698, -1               ; 3 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 8 uses
  %i.al = getelementptr inbounds i8, ptr %.03797, i64 -16 ; 8 uses
  %.val42.i.i = load ptr, ptr %i.e, align 8, !tbaa !398 ; 4 uses
  %.val43.i.i = load i64, ptr %i.f, align 8, !tbaa !400 ; 4 uses
  %.val44.i.i = load ptr, ptr %i.ak, align 8, !tbaa !398 ; 3 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 8      ; 7 uses
  %.val45.i.i = load i64, ptr %i.am, align 8, !tbaa !400 ; 3 uses
  %i.an = icmp eq ptr %.val42.i.i, %.val44.i.i
  br i1 %i.an, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EclIPSt4pairIN4llvm11AssertingVHINS8_17GetElementPtrInstEEElESD_EEbT_T0_.exit.thread.i.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph99
  %.not.i.i.i.i = icmp eq i64 %.val43.i.i, %.val45.i.i
  br i1 %.not.i.i.i.i, label %.split.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_114CodeGenPrepare20splitLargeGEPOffsetsEvE3$_0EclIPSt4pairIN4llvm11AssertingVHINS8_17GetElementPtrInstEEElESD_EEbT_T0_.exit.i.i"

.split.i.i:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr %.val42.i.i, ptr %12, align 8, !tbaa !398
  %i.ao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_11AssertingVHINS_17GetElementPtrInstEEEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %12)
end_hunk_0
