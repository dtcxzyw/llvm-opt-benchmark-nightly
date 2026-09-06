Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeVectorTypes?download=true
inline.NumInlined: 7664
inline.NumDeleted: 1461
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4llvm16DAGTypeLegalizer29SplitVecOp_PARTIAL_REDUCE_MLAEPNS_6SDNodeE:bb.a
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.x, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.x, 1
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %.fca.0.extract4, ptr %8, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.y, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret { ptr, i32 } %i.z
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG17getBoolExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTES5_(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::EVT") align 8) local_unnamed_addr #3

declare hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer12JoinIntegersENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(2640), ptr, i32, ptr, i32) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12SelectionDAG18UpdateNodeOperandsEPNS_6SDNodeENS_7SDValueES3_(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr, i32, ptr, i32) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getAnyExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_NS_18MachinePointerInfoES6_NS_10MaybeAlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, i16, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG14getMaskedStoreENS_7SDValueERKNS_5SDLocES1_S1_S1_S1_NS_3EVTEPNS_17MachineMemOperandENS_3ISD14MemIndexedModeEbb(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG16getMaskedScatterENS_8SDVTListENS_3EVTERKNS_5SDLocENS_8ArrayRefINS_7SDValueEEEPNS_17MachineMemOperandENS_3ISD12MemIndexTypeEb(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef byval(%"class.llvm::ArrayRef.50") align 8, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG12getScatterVPENS_8SDVTListENS_3EVTERKNS_5SDLocENS_8ArrayRefINS_7SDValueEEEPNS_17MachineMemOperandENS_3ISD12MemIndexTypeE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef byval(%"class.llvm::ArrayRef.50") align 8, ptr noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, i32 } @_ZNK4llvm14TargetLowering20scalarizeVectorStoreEPNS_11StoreSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i16, ptr } @_ZNK4llvm3EVT32changeVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !207    ; 3 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !38
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.h, align 16
  %i.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.split.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i

.split.i.i:                                       ; preds = %bb.b
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true) ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 10
  br i1 %i.m, label %switch.lookup.i.i, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i

switch.lookup.i.i:                                ; preds = %.split.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.l to i16
  %switch.offset.i.i = add nuw nsw i16 %switch.idx.cast.i.i, 2
  br label %_ZN4llvm3MVT12getIntegerVTEj.exit.i

_ZN4llvm3MVT12getIntegerVTEj.exit.i:              ; preds = %switch.lookup.i.i, %.split.i.i, %bb.b
  %.sroa.0.0.i.i = phi i16 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !217
  %i.q = add i16 %i.a, -216
  %spec.select.i.i.i = icmp ult i16 %i.q, -53
  %.sroa.0.0.extract.trunc.i.i = zext i16 %i.p to i32 ; 2 uses
  br i1 %spec.select.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i
  %i.r = tail call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %.sroa.0.0.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.s = insertvalue { i16, ptr } poison, i16 %i.r, 0
  %i.t = insertvalue { i16, ptr } %i.s, ptr null, 1
  br label %_ZNK4llvm3MVT32changeVectorElementTypeToIntegerEv.exit

bb.d:                                             ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i
  %i.u = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.v = insertvalue { i16, ptr } poison, i16 %i.u, 0
  %i.w = insertvalue { i16, ptr } %i.v, ptr null, 1
  br label %_ZNK4llvm3MVT32changeVectorElementTypeToIntegerEv.exit

bb.e:                                             ; preds = %bb.a
  %i.x = tail call { i16, ptr } @_ZNK4llvm3EVT40changeExtendedVectorElementTypeToIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  br label %_ZNK4llvm3MVT32changeVectorElementTypeToIntegerEv.exit

_ZNK4llvm3MVT32changeVectorElementTypeToIntegerEv.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.fca.1.insert.merged = phi { i16, ptr } [ %i.x, %bb.e ], [ %i.t, %bb.c ], [ %i.w, %bb.d ]
  ret { i16, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer12ModifyToTypeENS_7SDValueENS_3EVTEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2640) %0, ptr %1, i32 %2, i16 %3, ptr %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::ArrayRef.50", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.50", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 4 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %16 = alloca %"class.llvm::SDLoc", align 8      ; 15 uses
  %17 = alloca %"class.llvm::SmallVector.231", align 8 ; 10 uses
  %18 = alloca %"class.llvm::ArrayRef.50", align 8 ; 3 uses
  %19 = alloca %"class.llvm::SmallVector.231", align 8 ; 11 uses
  %20 = alloca %"class.llvm::SmallVector.231", align 8 ; 11 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store i16 %3, ptr %14, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr %4, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.e, align 8, !tbaa !38 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !40 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %15, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  store i64 %i.h, ptr %16, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !64
  store i32 %i.k, ptr %i.i, align 8, !tbaa !66
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, %3
  %i.l = icmp eq ptr %.sroa.21.0.copyload.i.i, %4
  %.not4.i = select i1 %.not.i.i, i1 %i.l, i1 false
  br i1 %.not4.i, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.n = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !217
  %i.q = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.q, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.p to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.d:                                             ; preds = %bb.b
  %i.r = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #16
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.c ], [ %i.r, %bb.d ] ; 3 uses
  %.not.i129 = icmp eq i16 %3, 0
  br i1 %.not.i129, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.s = zext i16 %3 to i64
  %i.t = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !217
  %i.w = add i16 %3, -163
  %spec.select.i.i.i130 = icmp ult i16 %i.w, 53
  %.sroa.2.0.insert.shift.i.i.i131 = select i1 %spec.select.i.i.i130, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i132 = zext i16 %i.v to i64
  %.sroa.0.0.insert.insert.i.i.i133 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i131, %.sroa.0.0.insert.ext.i.i.i132
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit136

bb.f:                                             ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit
  %i.x = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #16
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit136

_ZNK4llvm3EVT21getVectorElementCountEv.exit136:   ; preds = %bb.e, %bb.f
  %.sroa.0.0.in.i134 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i133, %bb.e ], [ %i.x, %bb.f ] ; 4 uses
  %.sroa.0187.4.extract.shift213 = lshr i64 %.sroa.0.0.in.i134, 32
  %.sroa.0187.4.extract.trunc = trunc i64 %.sroa.0187.4.extract.shift213 to i8
  %.sroa.0197.4.extract.shift214 = lshr i64 %.sroa.0.0.in.i, 32
  %.sroa.0197.4.extract.trunc = trunc i64 %.sroa.0197.4.extract.shift214 to i8
  %.not.i137 = icmp eq i8 %.sroa.0187.4.extract.trunc, %.sroa.0197.4.extract.trunc
  br i1 %.not.i137, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit, label %_ZNK4llvm3EVT21getVectorElementCountEv.exit136._ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread_crit_edge

_ZNK4llvm3EVT21getVectorElementCountEv.exit136._ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread_crit_edge: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit136
  %.pre237 = trunc i64 %.sroa.0.0.in.i to i32
  %.pre238 = trunc i64 %.sroa.0.0.in.i134 to i32
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit136
  %.sroa.0187.0.extract.trunc = trunc i64 %.sroa.0.0.in.i134 to i32 ; 6 uses
  %.sroa.0197.0.extract.trunc = trunc i64 %.sroa.0.0.in.i to i32 ; 6 uses
  %i.y = urem i32 %.sroa.0187.0.extract.trunc, %.sroa.0197.0.extract.trunc
  %i.z = udiv exact i32 %.sroa.0187.0.extract.trunc, %.sroa.0197.0.extract.trunc ; 6 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.g, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139

bb.g:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.ab = zext i32 %i.z to i64                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ac, ptr %17, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 16, ptr %i.ae, align 4, !tbaa !205
  %i.af = icmp ugt i32 %.sroa.0197.0.extract.trunc, %.sroa.0187.0.extract.trunc
  br i1 %i.af, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp ugt i32 %i.z, 16
  br i1 %i.ag, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %17, ptr noundef nonnull %i.ac, i64 noundef %i.ab, i64 noundef 16) #14
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !204 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.z, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !203
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.h
  %i.ah = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr [16 x i8], ptr %i.ah, i64 %.pre-phi.i.i3.i ; 2 uses
  %i.ak = sub nsw i64 %i.ab, %.pre-phi.i.i3.i
  %i.al = shl nsw i64 %i.ak, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.al, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !167
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !168
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  store i32 %i.z, ptr %i.ad, align 8, !tbaa !204
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit: ; preds = %bb.g, %.sink.split.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60, !nonnull !61, !align !62 ; 2 uses
  %.sroa.0107.0.copyload = load i16, ptr %15, align 8, !tbaa !38 ; 2 uses
  %.sroa.2109.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !40 ; 2 uses
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit
  %i.aq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.0107.0.copyload, ptr %.sroa.2109.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #14
  br label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ap, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0107.0.copyload, ptr %.sroa.2109.0.copyload) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %.sroa.5111.0 = extractvalue { ptr, i32 } %.pn, 1 ; 5 uses
  %.sroa.0110.0 = extractvalue { ptr, i32 } %.pn, 0 ; 5 uses
  %i.as = load ptr, ptr %17, align 8, !tbaa !203  ; 8 uses
  store ptr %1, ptr %i.as, align 8, !tbaa !44
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !45
  %.not220 = icmp eq i32 %.sroa.0187.0.extract.trunc, %.sroa.0197.0.extract.trunc
  br i1 %.not220, label %._crit_edge224, label %.lr.ph223.preheader

.lr.ph223.preheader:                              ; preds = %bb.k
  %i.at = add i32 %i.z, -1                        ; 2 uses
  %i.au = add i32 %i.z, -2
  %xtraiter253 = and i32 %i.at, 3                 ; 3 uses
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter = and i32 %i.at, -4
  br label %.lr.ph223

._crit_edge224.loopexit.unr-lcssa:                ; preds = %.lr.ph223
  %lcmp.mod254.not = icmp eq i32 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %._crit_edge224, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223.preheader
  %indvars.iv232.epil.init = phi i64 [ 1, %.lr.ph223.preheader ], [ %indvars.iv.next233.3, %._crit_edge224.loopexit.unr-lcssa ]
  %lcmp.mod255 = icmp ne i32 %xtraiter253, 0
  call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph223.epil

.lr.ph223.epil:                                   ; preds = %.lr.ph223.epil, %.lr.ph223.epil.preheader
  %indvars.iv232.epil = phi i64 [ %indvars.iv.next233.epil, %.lr.ph223.epil ], [ %indvars.iv232.epil.init, %.lr.ph223.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph223.epil ], [ 0, %.lr.ph223.epil.preheader ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv232.epil ; 2 uses
  store ptr %.sroa.0110.0, ptr %i.aw, align 8, !tbaa !44
  %.sroa.5111.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %.sroa.5111.0, ptr %.sroa.5111.0..sroa_idx.epil, align 8, !tbaa !45
  %indvars.iv.next233.epil = add nuw nsw i64 %indvars.iv232.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter253
  br i1 %epil.iter.cmp.not, label %._crit_edge224, label %.lr.ph223.epil, !llvm.loop !671

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223.epil, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.090.0.copyload = load i16, ptr %14, align 8, !tbaa !38
  %.sroa.292.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !40
  store ptr %i.as, ptr %18, align 8, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ba = load i32, ptr %i.ad, align 8, !tbaa !204
  %i.bb = zext i32 %i.ba to i64
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !196
  %i.bc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ay, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %.sroa.090.0.copyload, ptr %.sroa.292.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %18) #14 ; 2 uses
  %.fca.0.extract86 = extractvalue { ptr, i32 } %i.bc, 0
  %.fca.1.extract87 = extractvalue { ptr, i32 } %i.bc, 1
  %i.bd = load ptr, ptr %17, align 8, !tbaa !203  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ac
  br i1 %i.be, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge224
  call void @free(ptr noundef %i.bd) #14
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %._crit_edge224, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.x

.lr.ph223:                                        ; preds = %.lr.ph223, %.lr.ph223.preheader.new
  %indvars.iv232 = phi i64 [ 1, %.lr.ph223.preheader.new ], [ %indvars.iv.next233.3, %.lr.ph223 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph223.preheader.new ], [ %niter.next.3, %.lr.ph223 ]
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv232 ; 2 uses
  store ptr %.sroa.0110.0, ptr %i.bf, align 8, !tbaa !44
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %.sroa.5111.0, ptr %.sroa.5111.0..sroa_idx, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv232 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.sroa.0110.0, ptr %i.bh, align 8, !tbaa !44
  %.sroa.5111.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 %.sroa.5111.0, ptr %.sroa.5111.0..sroa_idx.1, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv232 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %.sroa.0110.0, ptr %i.bj, align 8, !tbaa !44
  %.sroa.5111.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 %.sroa.5111.0, ptr %.sroa.5111.0..sroa_idx.2, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv232 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.0110.0, ptr %i.bl, align 8, !tbaa !44
  %.sroa.5111.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store i32 %.sroa.5111.0, ptr %.sroa.5111.0..sroa_idx.3, align 8, !tbaa !45
  %indvars.iv.next233.3 = add nuw nsw i64 %indvars.iv232, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge224.loopexit.unr-lcssa, label %.lr.ph223, !llvm.loop !672

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139: ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit
  %i.bm = urem i32 %.sroa.0197.0.extract.trunc, %.sroa.0187.0.extract.trunc
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread

bb.m:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !60, !nonnull !61, !align !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %1, ptr %11, align 8, !tbaa !44
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %2, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !45
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %16, i1 noundef zeroext false) #14 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.bq, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.bq, 1
  store ptr %.fca.0.extract1.i, ptr %12, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.br = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bp, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %16, i16 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.fca.0.extract76 = extractvalue { ptr, i32 } %i.br, 0
  %.fca.1.extract77 = extractvalue { ptr, i32 } %i.br, 1
  br label %bb.x

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread: ; preds = %_ZNK4llvm3EVT21getVectorElementCountEv.exit136._ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread_crit_edge, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139
  %.sroa.0187.0.extract.trunc193.pre-phi = phi i32 [ %.pre238, %_ZNK4llvm3EVT21getVectorElementCountEv.exit136._ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread_crit_edge ], [ %.sroa.0187.0.extract.trunc, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139 ] ; 6 uses
  %.sroa.0197.0.extract.trunc203.pre-phi = phi i32 [ %.pre237, %_ZNK4llvm3EVT21getVectorElementCountEv.exit136._ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread_crit_edge ], [ %.sroa.0197.0.extract.trunc, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.bs = and i64 %.sroa.0.0.in.i134, 4294967295  ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.bt, ptr %19, align 8, !tbaa !203
  %i.bu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !204
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 12
  store i32 16, ptr %i.bv, align 4, !tbaa !205
  %i.bw = icmp eq i64 %i.bs, 0
  br i1 %i.bw, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit152, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread
  %i.bx = icmp samesign ugt i64 %i.bs, 16
  br i1 %i.bx, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i146, label %.lr.ph.preheader.i.i.i140

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i146: ; preds = %bb.n
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %19, ptr noundef nonnull %i.bt, i64 noundef %i.bs, i64 noundef 16) #14
  %.pre.i.i.i147 = load i32, ptr %i.bu, align 8, !tbaa !204
  %.pre13.i.i.i148 = zext i32 %.pre.i.i.i147 to i64 ; 2 uses
  %.not11.i.i.i149 = icmp samesign eq i64 %i.bs, %.pre13.i.i.i148
  br i1 %.not11.i.i.i149, label %.sink.split.i.i.i145, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i150

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i150: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i146
  %.pre.i151 = load ptr, ptr %19, align 8, !tbaa !203
  br label %.lr.ph.preheader.i.i.i140

.lr.ph.preheader.i.i.i140:                        ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i150, %bb.n
  %i.by = phi ptr [ %.pre.i151, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i150 ], [ %i.bt, %bb.n ] ; 2 uses
  %.pre-phi.i.i3.i141 = phi i64 [ %.pre13.i.i.i148, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i150 ], [ 0, %bb.n ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bs
  %i.ca = getelementptr [16 x i8], ptr %i.by, i64 %.pre-phi.i.i3.i141 ; 2 uses
  %i.cb = sub nsw i64 %i.bs, %.pre-phi.i.i3.i141
  %i.cc = shl nsw i64 %i.cb, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.ca, i8 0, i64 %i.cc, i1 false)
  br label %.lr.ph.i.i.i142

.lr.ph.i.i.i142:                                  ; preds = %.lr.ph.i.i.i142, %.lr.ph.preheader.i.i.i140
  %.012.i.i.i143 = phi ptr [ %i.ce, %.lr.ph.i.i.i142 ], [ %i.ca, %.lr.ph.preheader.i.i.i140 ] ; 3 uses
  store ptr null, ptr %.012.i.i.i143, align 8, !tbaa !167
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i143, i64 8
  store i32 0, ptr %i.cd, align 8, !tbaa !168
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i143, i64 16 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not.i.i.i144, label %.sink.split.i.i.i145, label %.lr.ph.i.i.i142, !llvm.loop !0

.sink.split.i.i.i145:                             ; preds = %.lr.ph.i.i.i142, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i146
  store i32 %.sroa.0187.0.extract.trunc193.pre-phi, ptr %i.bu, align 8, !tbaa !204
  %.pre = load i16, ptr %14, align 8, !tbaa !207
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit152

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit152: ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread, %.sink.split.i.i.i145
  %i.cf = phi i16 [ %3, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit139.thread ], [ %.pre, %.sink.split.i.i.i145 ] ; 2 uses
  %.not.i153 = icmp eq i16 %i.cf, 0
  br i1 %.not.i153, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit152
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !38
  %i.ck = insertvalue { i16, ptr } poison, i16 %i.cj, 0
  %i.cl = insertvalue { i16, ptr } %i.ck, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit152
  %i.cm = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #14
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.o, %bb.p
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.cl, %bb.o ], [ %i.cm, %bb.p ] ; 2 uses
  %i.cn = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 4 uses
  %i.co = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1 ; 4 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.sroa.0197.0.extract.trunc203.pre-phi, i32 %.sroa.0187.0.extract.trunc193.pre-phi) ; 7 uses
  %.not225 = icmp eq i32 %.sroa.speculated, 0     ; 2 uses
  br i1 %.not225, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.211.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.24.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
end_hunk_0
begin_hunk_1_@_ZN4llvm16DAGTypeLegalizer19WidenVecRes_BITCASTEPNS_6SDNodeE:bb.a
  %.sroa.21.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.21.0.copyload.i.i211 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i210, align 8, !tbaa !40 ; 3 uses
  store i16 %.sroa.0.0.copyload.i.i209, ptr %8, align 8, !tbaa !38
  store ptr %.sroa.21.0.copyload.i.i211, ptr %i.g, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i16 %.sroa.0.0.copyload.i.i209, ptr %5, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i211, ptr %i.cf, align 8
  %i.cg = load i16, ptr %9, align 8, !tbaa !207   ; 5 uses
  %.not.i.i.i214 = icmp eq i16 %i.cg, %.sroa.0.0.copyload.i.i209
  %i.ch = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %.sroa.21.0.copyload.i.i211
  %.not4.i.i215 = select i1 %.not.i.i.i214, i1 %i.ci, i1 false
  br i1 %.not4.i.i215, label %_ZNK4llvm3EVT6bitsEqES0_.exit237.thread, label %bb.s

_ZNK4llvm3EVT6bitsEqES0_.exit237.thread:          ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.x

bb.s:                                             ; preds = %bb.r
  %.not.i.i216 = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i216, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = zext i16 %i.cg to i64
  %i.ck = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cj ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -16
  %.sroa.0.0.copyload.i.i.i217 = load i64, ptr %i.cl, align 16
  %.sroa.2.0..sroa_idx.i.i.i218 = getelementptr i8, ptr %i.ck, i64 -8
  %.sroa.2.0.copyload.i.i.i219 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i218, align 8
  %.fca.0.insert.i.i.i220 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i217, 0
  %.fca.1.insert.i.i.i221 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i220, i8 %.sroa.2.0.copyload.i.i.i219, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i222

bb.u:                                             ; preds = %bb.s
  %i.cm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i222

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i222:         ; preds = %bb.u, %bb.t
  %.pn.i.i223 = phi { i64, i8 } [ %.fca.1.insert.i.i.i221, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %.fca.0.extract1.i224 = extractvalue { i64, i8 } %.pn.i.i223, 0
  %.fca.1.extract2.i225 = extractvalue { i64, i8 } %.pn.i.i223, 1
  %.not.i9.i226 = icmp eq i16 %.sroa.0.0.copyload.i.i209, 0
  br i1 %.not.i9.i226, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i222
  %i.cn = zext i16 %.sroa.0.0.copyload.i.i209 to i64
  %i.co = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %.sroa.0.0.copyload.i.i10.i227 = load i64, ptr %i.cp, align 16
  %.sroa.2.0..sroa_idx.i.i11.i228 = getelementptr i8, ptr %i.co, i64 -8
  %.sroa.2.0.copyload.i.i12.i229 = load i8, ptr %.sroa.2.0..sroa_idx.i.i11.i228, align 8
  %.fca.0.insert.i.i13.i230 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i10.i227, 0
  %.fca.1.insert.i.i14.i231 = insertvalue { i64, i8 } %.fca.0.insert.i.i13.i230, i8 %.sroa.2.0.copyload.i.i12.i229, 1
  br label %_ZNK4llvm3EVT6bitsEqES0_.exit237

bb.w:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i222
  %i.cq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  br label %_ZNK4llvm3EVT6bitsEqES0_.exit237

_ZNK4llvm3EVT6bitsEqES0_.exit237:                 ; preds = %bb.v, %bb.w
  %.pn.i15.i233 = phi { i64, i8 } [ %.fca.1.insert.i.i14.i231, %bb.v ], [ %i.cq, %bb.w ] ; 2 uses
  %.fca.0.extract.i234 = extractvalue { i64, i8 } %.pn.i15.i233, 0
  %.fca.1.extract.i235 = extractvalue { i64, i8 } %.pn.i15.i233, 1
  %i.cr = icmp eq i64 %.fca.0.extract1.i224, %.fca.0.extract.i234
  %i.cs = icmp eq i8 %.fca.1.extract2.i225, %.fca.1.extract.i235
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK4llvm3EVT6bitsEqES0_.exit237.thread, %_ZNK4llvm3EVT6bitsEqES0_.exit237
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %.fca.0.extract115, ptr %15, align 8, !tbaa !44
  %.sroa.14.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract116, ptr %.sroa.14.0..sroa_idx347, align 8, !tbaa !45
  %.sroa.22.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i32 %.sroa.22.0.copyload, ptr %.sroa.22.0..sroa_idx354, align 4
  %i.cv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.cu, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %i.cg, ptr %i.ch, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #14
  br label %bb.bh

bb.y:                                             ; preds = %bb.q, %.split, %_ZNK4llvm3EVT6bitsEqES0_.exit237, %_ZNK4llvm3EVT8isVectorEv.exit, %bb.a
  %i.cw = phi i16 [ %i.s, %bb.a ], [ %i.cg, %_ZNK4llvm3EVT6bitsEqES0_.exit237 ], [ %i.s, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %i.ao, %bb.q ], [ %i.s, %.split ] ; 2 uses
  %.sroa.0342.1 = phi ptr [ %.sroa.0342.0.copyload, %bb.a ], [ %.fca.0.extract115, %_ZNK4llvm3EVT6bitsEqES0_.exit237 ], [ %.sroa.0342.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.fca.0.extract167, %bb.q ], [ %.sroa.0342.0.copyload, %.split ] ; 4 uses
  %.sroa.14.1 = phi i32 [ %.sroa.14.0.copyload, %bb.a ], [ %.fca.1.extract116, %_ZNK4llvm3EVT6bitsEqES0_.exit237 ], [ %.sroa.14.0.copyload, %_ZNK4llvm3EVT8isVectorEv.exit ], [ %.fca.1.extract168, %bb.q ], [ %.sroa.14.0.copyload, %.split ] ; 4 uses
  %.not.i238 = icmp eq i16 %i.cw, 0
  br i1 %.not.i238, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -16
  %.sroa.0.0.copyload.i.i239 = load i64, ptr %i.cz, align 16
  %.sroa.2.0..sroa_idx.i.i240 = getelementptr i8, ptr %i.cy, i64 -8
  %.sroa.2.0.copyload.i.i241 = load i8, ptr %.sroa.2.0..sroa_idx.i.i240, align 8
  %.fca.0.insert.i.i242 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i239, 0
  %.fca.1.insert.i.i243 = insertvalue { i64, i8 } %.fca.0.insert.i.i242, i8 %.sroa.2.0.copyload.i.i241, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit245

bb.aa:                                            ; preds = %bb.y
  %i.da = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit245

_ZNK4llvm3EVT13getSizeInBitsEv.exit245:           ; preds = %bb.z, %bb.aa
  %.pn.i244 = phi { i64, i8 } [ %.fca.1.insert.i.i243, %bb.z ], [ %i.da, %bb.aa ] ; 2 uses
  %.fca.0.extract92 = extractvalue { i64, i8 } %.pn.i244, 0 ; 3 uses
  %.fca.1.extract93 = extractvalue { i64, i8 } %.pn.i244, 1
  %i.db = trunc nuw i8 %.fca.1.extract93 to i1
  br i1 %i.db, label %bb.ab, label %_ZNK4llvm8TypeSizecvmEv.exit246

bb.ab:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit245
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit246:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit245
  %i.dc = trunc i64 %.fca.0.extract92 to i32      ; 4 uses
  %i.dd = load i16, ptr %8, align 8, !tbaa !207   ; 4 uses
  %.not.i247 = icmp eq i16 %i.dd, 0
  br i1 %.not.i247, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit254, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit254.thread

_ZNK4llvm3EVT13getSizeInBitsEv.exit254:           ; preds = %_ZNK4llvm8TypeSizecvmEv.exit246
  %i.de = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16 ; 2 uses
  %.fca.1.extract87 = extractvalue { i64, i8 } %i.de, 1
  %i.df = trunc nuw i8 %.fca.1.extract87 to i1
  br i1 %i.df, label %bb.ac, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit254.thread:    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit246
  %i.dg = zext i16 %i.dd to i64                   ; 2 uses
  %i.dh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.dg ; 2 uses
  %.sroa.2.0..sroa_idx.i.i249 = getelementptr i8, ptr %i.dh, i64 -8
  %.sroa.2.0.copyload.i.i250 = load i8, ptr %.sroa.2.0..sroa_idx.i.i249, align 8
  %i.di = trunc nuw i8 %.sroa.2.0.copyload.i.i250 to i1
  br i1 %i.di, label %bb.ac, label %.split.i.i

bb.ac:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit254.thread, %_ZNK4llvm3EVT13getSizeInBitsEv.exit254
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

.split.i.i:                                       ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit254.thread
  %i.dj = getelementptr i8, ptr %i.dh, i64 -16
  %.sroa.0.0.copyload.i.i248 = load i64, ptr %i.dj, align 16
  %i.dk = trunc i64 %.sroa.0.0.copyload.i.i248 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.dl = add i16 %i.dd, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.dl, 197
  br i1 %spec.select.i.i.i.i, label %bb.ad, label %bb.af

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit254
  %.fca.0.extract86 = extractvalue { i64, i8 } %i.de, 0
  %i.dm = trunc i64 %.fca.0.extract86 to i32      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.dn = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.split.i.i
  %i.do = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.dg
  %i.dp = getelementptr i8, ptr %i.do, i64 -2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !38
  %i.dr = insertvalue { i16, ptr } poison, i16 %i.dq, 0
  %i.ds = insertvalue { i16, ptr } %i.dr, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.ae:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.dt = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.af:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.du = phi i32 [ %i.dm, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %i.dk, %.split.i.i ]
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.dv = insertvalue { i16, ptr } poison, i16 %i.dd, 0
  %i.dw = insertvalue { i16, ptr } %i.dv, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dx = phi i32 [ %i.du, %bb.af ], [ %i.dk, %bb.ad ], [ %i.dm, %bb.ae ] ; 2 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.dw, %bb.af ], [ %i.ds, %bb.ad ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.dy = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.dy, ptr %4, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ea = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.ea, ptr %i.dz, align 8
  %.not.i.i257 = icmp eq i16 %i.dy, 0
  br i1 %.not.i.i257, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.eb = zext i16 %i.dy to i64
  %i.ec = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -16
  %.sroa.0.0.copyload.i.i.i258 = load i64, ptr %i.ed, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.ah:                                            ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ee = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  %i.ef = extractvalue { i64, i8 } %i.ee, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.ag, %bb.ah
  %.pn.i.i260 = phi i64 [ %.sroa.0.0.copyload.i.i.i258, %bb.ag ], [ %i.ef, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.eg = trunc i64 %.pn.i.i260 to i32            ; 2 uses
  %i.eh = urem i32 %i.dc, %i.eg
  %i.ei = udiv exact i32 %i.dc, %i.eg
  %i.ej = icmp eq i32 %i.eh, 0
  br i1 %i.ej, label %bb.ai, label %.thread375

bb.ai:                                            ; preds = %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.ek = load i16, ptr %8, align 8, !tbaa !207   ; 4 uses
  %.not.i261 = icmp ne i16 %i.ek, 248
  %i.el = load ptr, ptr %i.g, align 8
  %i.em = icmp ne ptr %i.el, null
  %i.en = select i1 %.not.i261, i1 true, i1 %i.em
  br i1 %i.en, label %bb.aj, label %.thread375

bb.aj:                                            ; preds = %bb.ai
  %.not.i262 = icmp eq i16 %i.ek, 0
  br i1 %.not.i262, label %_ZNK4llvm3EVT8isVectorEv.exit264, label %.split372

.split372:                                        ; preds = %bb.aj
  %i.eo = add i16 %i.ek, -19
  %spec.select.i.i263 = icmp ult i16 %i.eo, 197
  br i1 %spec.select.i.i263, label %bb.ak, label %bb.aq

_ZNK4llvm3EVT8isVectorEv.exit264:                 ; preds = %bb.aj
  %i.ep = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br i1 %i.ep, label %bb.al, label %bb.aq

bb.ak:                                            ; preds = %.split372
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.eq = zext nneg i16 %i.ek to i64
  %i.er = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -2
  %i.et = load i16, ptr %i.es, align 2, !tbaa !38
  %i.eu = insertvalue { i16, ptr } poison, i16 %i.et, 0
  %i.ev = insertvalue { i16, ptr } %i.eu, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.al:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit264
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.ew = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.ak, %bb.al
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.ev, %bb.ak ], [ %i.ew, %bb.al ] ; 2 uses
  %i.ex = udiv i32 %i.dc, %i.dx
  %i.ey = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 5 uses
  store i16 %i.ey, ptr %16, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fa = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1 ; 2 uses
  store ptr %i.fa, ptr %i.ez, align 8
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !158
  %i.fe = and i64 %.fca.0.extract92, 4294967295
  %.not.i266 = icmp eq i16 %i.ey, 0
  br i1 %.not.i266, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.ff = zext i16 %i.ey to i64
  %i.fg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -16
  %.sroa.0.0.copyload.i.i267 = load i64, ptr %i.fh, align 16
  %.sroa.2.0..sroa_idx.i.i268 = getelementptr i8, ptr %i.fg, i64 -8
  %.sroa.2.0.copyload.i.i269 = load i8, ptr %.sroa.2.0..sroa_idx.i.i268, align 8
  %.fca.0.insert.i.i270 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i267, 0
  %.fca.1.insert.i.i271 = insertvalue { i64, i8 } %.fca.0.insert.i.i270, i8 %.sroa.2.0.copyload.i.i269, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit273

bb.an:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.fi = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit273

_ZNK4llvm3EVT13getSizeInBitsEv.exit273:           ; preds = %bb.am, %bb.an
  %.pn.i272 = phi { i64, i8 } [ %.fca.1.insert.i.i271, %bb.am ], [ %i.fi, %bb.an ] ; 2 uses
  %.fca.1.extract74 = extractvalue { i64, i8 } %.pn.i272, 1
  %i.fj = trunc nuw i8 %.fca.1.extract74 to i1
  br i1 %i.fj, label %bb.ao, label %_ZNK4llvm8TypeSizecvmEv.exit274

bb.ao:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit273
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit274:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit273
  %.fca.0.extract73 = extractvalue { i64, i8 } %.pn.i272, 0
  %i.fk = udiv i64 %i.fe, %.fca.0.extract73
  %i.fl = trunc nuw i64 %i.fk to i32              ; 2 uses
  %i.fm = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.ey, i32 noundef %i.fl) ; 2 uses
  %.not.i275 = icmp eq i16 %i.fm, 0
  br i1 %.not.i275, label %bb.ap, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

bb.ap:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit274
  %i.fn = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i16 %i.ey, ptr %i.fa, i32 noundef %i.fl, i1 noundef zeroext false) #14 ; 2 uses
  %i.fo = extractvalue { i16, ptr } %i.fn, 0
  %i.fp = extractvalue { i16, ptr } %i.fn, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit274, %bb.ap
  %.sroa.3.0.i = phi ptr [ %i.fp, %bb.ap ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit274 ]
  %.sroa.0.0.i = phi i16 [ %i.fo, %bb.ap ], [ %i.fm, %_ZNK4llvm8TypeSizecvmEv.exit274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.fq = zext i32 %i.ex to i64
  br label %bb.av

bb.aq:                                            ; preds = %.split372, %_ZNK4llvm3EVT8isVectorEv.exit264
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !167
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !168
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !36
  %i.fx = zext i32 %i.fu to i64
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.fx ; 2 uses
  %.sroa.0.0.copyload.i.i278 = load i16, ptr %i.fy, align 8, !tbaa !38 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i279 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.21.0.copyload.i.i280 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i279, align 8, !tbaa !40 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i278, ptr %17, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.21.0.copyload.i.i280, ptr %i.fz, align 8
  %i.ga = and i64 %.fca.0.extract92, 4294967295
  %.not.i283 = icmp eq i16 %.sroa.0.0.copyload.i.i278, 0
  br i1 %.not.i283, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = zext i16 %.sroa.0.0.copyload.i.i278 to i64
  %i.gc = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.gb ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %.sroa.0.0.copyload.i.i284 = load i64, ptr %i.gd, align 16
  %.sroa.2.0..sroa_idx.i.i285 = getelementptr i8, ptr %i.gc, i64 -8
  %.sroa.2.0.copyload.i.i286 = load i8, ptr %.sroa.2.0..sroa_idx.i.i285, align 8
  %.fca.0.insert.i.i287 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i284, 0
  %.fca.1.insert.i.i288 = insertvalue { i64, i8 } %.fca.0.insert.i.i287, i8 %.sroa.2.0.copyload.i.i286, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit290

bb.as:                                            ; preds = %bb.aq
  %i.ge = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit290

_ZNK4llvm3EVT13getSizeInBitsEv.exit290:           ; preds = %bb.ar, %bb.as
  %.pn.i289 = phi { i64, i8 } [ %.fca.1.insert.i.i288, %bb.ar ], [ %i.ge, %bb.as ] ; 2 uses
  %.fca.1.extract70 = extractvalue { i64, i8 } %.pn.i289, 1
  %i.gf = trunc nuw i8 %.fca.1.extract70 to i1
  br i1 %i.gf, label %bb.at, label %_ZNK4llvm8TypeSizecvmEv.exit291

bb.at:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit290
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit291:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit290
  %.fca.0.extract69 = extractvalue { i64, i8 } %.pn.i289, 0
  %i.gg = udiv i64 %i.ga, %.fca.0.extract69       ; 2 uses
  %i.gh = trunc nuw i64 %i.gg to i32              ; 2 uses
  %i.gi = load ptr, ptr %i.k, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !158
  %i.gl = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.copyload.i.i278, i32 noundef %i.gh) ; 2 uses
  %.not.i292 = icmp eq i16 %i.gl, 0
  br i1 %.not.i292, label %bb.au, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297

bb.au:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit291
  %i.gm = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i16 %.sroa.0.0.copyload.i.i278, ptr %.sroa.21.0.copyload.i.i280, i32 noundef %i.gh, i1 noundef zeroext false) #14 ; 2 uses
  %i.gn = extractvalue { i16, ptr } %i.gm, 0
  %i.go = extractvalue { i16, ptr } %i.gm, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit291, %bb.au
  %.sroa.3.0.i293 = phi ptr [ %i.go, %bb.au ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit291 ]
  %.sroa.0.0.i294 = phi i16 [ %i.gn, %bb.au ], [ %i.gl, %_ZNK4llvm8TypeSizecvmEv.exit291 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.sroa.9315.0 = phi ptr [ %.sroa.3.0.i, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %.sroa.3.0.i293, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297 ] ; 3 uses
  %.sroa.0311.0 = phi i16 [ %.sroa.0.0.i, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %.sroa.0.0.i294, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297 ] ; 5 uses
  %.0189 = phi i64 [ %i.fq, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %i.gg, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit297 ]
  %.not.i298 = icmp eq i16 %.sroa.0311.0, 0
  br i1 %.not.i298, label %.thread375, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.av
  %i.gp = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.gr = zext i16 %.sroa.0311.0 to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !269
  %.not = icmp eq ptr %i.gt, null
  br i1 %.not, label %.thread375, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.gu = load i16, ptr %8, align 8, !tbaa !207   ; 3 uses
  %.not.i299 = icmp eq i16 %i.gu, 0
  br i1 %.not.i299, label %_ZNK4llvm3EVT8isVectorEv.exit301, label %.split374

.split374:                                        ; preds = %bb.aw
  %i.gv = add i16 %i.gu, -19
  %spec.select.i.i300 = icmp ult i16 %i.gv, 197
  br i1 %spec.select.i.i300, label %bb.ax, label %bb.bf

_ZNK4llvm3EVT8isVectorEv.exit301:                 ; preds = %bb.aw
  %i.gw = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br i1 %i.gw, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %.split374, %_ZNK4llvm3EVT8isVectorEv.exit301
  %i.gx = urem i32 %i.dc, %i.dx
end_hunk_1
begin_hunk_2_@_ZN4llvm16DAGTypeLegalizer24WidenVecRes_BUILD_VECTOREPNS_6SDNodeE:bb.a

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i
  %.09.i.i.i.i.unr = phi ptr [ %i.ch, %.lr.ph.i.i.i.preheader.i ], [ %i.cj, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.by, %.lr.ph.i.i.i.preheader.i ], [ %i.ci, %.lr.ph.i.i.i.i.prol ]
  %i.ck = icmp ult i32 %i.bx, 8
  br i1 %i.ck, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i = phi i64 [ %i.cs, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract4, ptr %.09.i.i.i.i, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store ptr %.fca.0.extract4, ptr %i.cl, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.1, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32
  store ptr %.fca.0.extract4, ptr %i.cm, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 40
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.2, align 8, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  store ptr %.fca.0.extract4, ptr %i.cn, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 56
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.3, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 64
  store ptr %.fca.0.extract4, ptr %i.co, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.4, align 8, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 80
  store ptr %.fca.0.extract4, ptr %i.cp, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 88
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.5, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96
  store ptr %.fca.0.extract4, ptr %i.cq, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 104
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.6, align 8, !tbaa !45
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 112
  store ptr %.fca.0.extract4, ptr %i.cr, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 120
  store i32 %.fca.1.extract5, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.7, align 8, !tbaa !45
  %i.cs = add nsw i64 %.068.i.i.i.i, -8           ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 128
  %.not.i.i.i.i.7 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.7, label %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre4.i = load i32, ptr %i.ba, align 8, !tbaa !204
  br label %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit

_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i
  %i.cu = phi i32 [ %.pre4.i, %_ZSt20uninitialized_fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.loopexit.i ], [ %i.cg, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE28reserveForParamAndGetAddressERS1_m.exit.i ]
  %i.cv = add i32 %i.cu, %i.bx                    ; 2 uses
  store i32 %i.cv, ptr %i.ba, align 8, !tbaa !204
  %i.cw = load ptr, ptr %i.ab, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.01.0.copyload = load i16, ptr %6, align 8, !tbaa !38
  %.sroa.23.0.copyload = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.cx = zext i32 %i.cv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.pre34, ptr %2, align 8, !tbaa !211
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cx, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !212
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cw, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cz = load ptr, ptr %7, align 8, !tbaa !203   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.az
  br i1 %i.da, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit
  call void @free(ptr noundef %i.cz) #14
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EED2Ev.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE6appendEmS1_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret { ptr, i32 } %i.cy
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer26WidenVecRes_CONCAT_VECTORSEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.50", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"struct.std::pair.382", align 8    ; 4 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 14 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %11 = alloca %"class.llvm::SmallVector.231", align 8 ; 13 uses
  %12 = alloca %"class.llvm::ArrayRef.50", align 8 ; 3 uses
  %13 = alloca %"class.llvm::SmallVector.236", align 8 ; 10 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::ArrayRef.199", align 8 ; 3 uses
  %16 = alloca %"class.llvm::SmallVector.231", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.i, align 8, !tbaa !38 ; 7 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !40 ; 4 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.k = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !158
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.q, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !40
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call { i16, ptr } %i.t(ptr noundef nonnull align 8 dereferenceable(518435) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #14 ; 2 uses
  %i.v = extractvalue { i16, ptr } %i.u, 0        ; 5 uses
  store i16 %i.v, ptr %9, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.x = extractvalue { i16, ptr } %i.u, 1
  store ptr %i.x, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !63
  store i64 %i.z, ptr %10, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !64
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !200 ; 10 uses
  %i.af = zext i16 %i.ae to i32                   ; 6 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.382") align 8 %7, ptr noundef nonnull align 8 dereferenceable(518435) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #14
  %i.ak = load i8, ptr %7, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %.not = icmp eq i8 %i.ak, 7                     ; 2 uses
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = zext i16 %i.v to i64
  %i.am = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !217
  %i.ap = add i16 %i.v, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.ap, 53
  %.sroa.2.0.insert.shift.i.i.i.i = select i1 %spec.select.i.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %i.ao to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit:    ; preds = %bb.c, %bb.d
  %.sroa.0.0.in.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i, %bb.c ], [ %i.aq, %bb.d ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.in.i.i to i32 ; 3 uses
  %.not.i.i171 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i171, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit
  %i.ar = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.as = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !217
  %i.av = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i172 = icmp ult i16 %i.av, 53
  %.sroa.2.0.insert.shift.i.i.i.i173 = select i1 %spec.select.i.i.i.i172, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i174 = zext i16 %i.au to i64
  %.sroa.0.0.insert.insert.i.i.i.i175 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i173, %.sroa.0.0.insert.ext.i.i.i.i174
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit178

bb.f:                                             ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit
  %i.aw = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br label %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit178

_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit178: ; preds = %bb.e, %bb.f
  %.sroa.0.0.in.i.i176 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i.i175, %bb.e ], [ %i.aw, %bb.f ]
  %.sroa.0.0.extract.trunc.i177 = trunc i64 %.sroa.0.0.in.i.i176 to i32 ; 2 uses
  %i.ax = urem i32 %.sroa.0.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i177
  %i.ay = udiv exact i32 %.sroa.0.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i177 ; 8 uses
  %.not170 = icmp eq i32 %i.ax, 0
  br i1 %.not170, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %_ZNK4llvm3EVT23getVectorMinNumElementsEv.exit178
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !60, !nonnull !61, !align !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ba = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.az, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %.fca.0.extract117 = extractvalue { ptr, i32 } %i.ba, 0 ; 5 uses
  %.fca.1.extract118 = extractvalue { ptr, i32 } %i.ba, 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.bb = zext i32 %i.ay to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.bc, ptr %11, align 8, !tbaa !203
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !204
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 16, ptr %i.be, align 4, !tbaa !205
  %17 = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  br i1 %17, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp ugt i32 %i.ay, 16
  br i1 %i.bf, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %11, ptr noundef nonnull %i.bc, i64 noundef %i.bb, i64 noundef 16) #14
  %.pre.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !204 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !203
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.h
  %i.bg = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.bc, %bb.h ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.h ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bb
  %i.bi = getelementptr [16 x i8], ptr %i.bg, i64 %.pre-phi.i.i3.i ; 2 uses
  %i.bj = sub nsw i64 %i.bb, %.pre-phi.i.i3.i
  %i.bk = shl nsw i64 %i.bj, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %i.bi, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !167
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.bl, align 8, !tbaa !168
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bh
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  store i32 %i.ay, ptr %i.bd, align 8, !tbaa !204
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit: ; preds = %bb.g, %.sink.split.i.i.i
  %.not250 = icmp eq i16 %i.ae, 0
  br i1 %.not250, label %.preheader222, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit
  %wide.trip.count = zext i16 %i.ae to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bn = icmp eq i16 %i.ae, 1
  br i1 %i.bn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph

.preheader222.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader222, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader222.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader222.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod302 = trunc i16 %i.ae to i1
  call void @llvm.assume(i1 %lcmp.mod302)
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %indvars.iv.epil.init
  %i.bq = load ptr, ptr %11, align 8, !tbaa !203
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.br, ptr noundef nonnull align 8 dereferenceable(12) %i.bp, i64 12, i1 false), !tbaa.struct !166
  br label %.preheader222

.preheader222:                                    ; preds = %.lr.ph.epil.preheader, %.preheader222.loopexit.unr-lcssa, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit
  %.not169224 = icmp eq i32 %i.ay, %i.af
  %.pre = load ptr, ptr %11, align 8, !tbaa !203  ; 6 uses
  br i1 %.not169224, label %._crit_edge, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %.preheader222
  %i.bs = sub i32 %i.ay, %i.af
  %xtraiter303 = and i32 %i.bs, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i32 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph226.prol.loopexit, label %.lr.ph226.prol

.lr.ph226.prol:                                   ; preds = %.lr.ph226.preheader, %.lr.ph226.prol
  %.0158225.prol = phi i32 [ %i.bv, %.lr.ph226.prol ], [ %i.af, %.lr.ph226.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph226.prol ], [ 0, %.lr.ph226.preheader ]
  %i.bt = zext i32 %.0158225.prol to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.bt ; 2 uses
  store ptr %.fca.0.extract117, ptr %i.bu, align 8, !tbaa !44
  %.sroa.4125.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.4125.0..sroa_idx.prol, align 8, !tbaa !45
  %i.bv = add i32 %.0158225.prol, 1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter303
  br i1 %prol.iter.cmp.not, label %.lr.ph226.prol.loopexit, label %.lr.ph226.prol, !llvm.loop !683

.lr.ph226.prol.loopexit:                          ; preds = %.lr.ph226.prol, %.lr.ph226.preheader
  %.0158225.unr = phi i32 [ %i.af, %.lr.ph226.preheader ], [ %i.bv, %.lr.ph226.prol ]
  %i.bw = sub i32 %i.af, %i.ay
  %i.bx = icmp ugt i32 %i.bw, -4
  br i1 %i.bx, label %._crit_edge, label %.lr.ph226

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load ptr, ptr %11, align 8, !tbaa !203
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %i.bz, i64 12, i1 false), !tbaa.struct !166
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.cc, i64 %indvars.iv.next
  %i.ce = load ptr, ptr %11, align 8, !tbaa !203
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr noundef nonnull align 8 dereferenceable(12) %i.cd, i64 12, i1 false), !tbaa.struct !166
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader222.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !684

._crit_edge:                                      ; preds = %.lr.ph226.prol.loopexit, %.lr.ph226, %.preheader222
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.0107.0.copyload = load i16, ptr %9, align 8, !tbaa !38
  %.sroa.2109.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !40
  store ptr %.pre, ptr %12, align 8, !tbaa !195
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ci = load i32, ptr %i.bd, align 8, !tbaa !204
  %i.cj = zext i32 %i.ci to i64
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !196
  %i.ck = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cg, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 %.sroa.0107.0.copyload, ptr %.sroa.2109.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %12) #14
  %i.cl = load ptr, ptr %11, align 8, !tbaa !203  ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bc
  br i1 %i.cm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cl) #14
  br label %bb.j

.lr.ph226:                                        ; preds = %.lr.ph226.prol.loopexit, %.lr.ph226
  %.0158225 = phi i32 [ %i.cy, %.lr.ph226 ], [ %.0158225.unr, %.lr.ph226.prol.loopexit ] ; 5 uses
  %i.cn = zext i32 %.0158225 to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.cn ; 2 uses
  store ptr %.fca.0.extract117, ptr %i.co, align 8, !tbaa !44
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.4125.0..sroa_idx, align 8, !tbaa !45
  %i.cp = add i32 %.0158225, 1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.cq ; 2 uses
  store ptr %.fca.0.extract117, ptr %i.cr, align 8, !tbaa !44
  %.sroa.4125.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.4125.0..sroa_idx.1, align 8, !tbaa !45
  %i.cs = add i32 %.0158225, 2
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ct ; 2 uses
  store ptr %.fca.0.extract117, ptr %i.cu, align 8, !tbaa !44
  %.sroa.4125.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.4125.0..sroa_idx.2, align 8, !tbaa !45
  %i.cv = add i32 %.0158225, 3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.cw ; 2 uses
  store ptr %.fca.0.extract117, ptr %i.cx, align 8, !tbaa !44
  %.sroa.4125.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %.fca.1.extract118, ptr %.sroa.4125.0..sroa_idx.3, align 8, !tbaa !45
  %i.cy = add i32 %.0158225, 4                    ; 2 uses
  %.not169.3 = icmp eq i32 %i.cy, %i.ay
  br i1 %.not169.3, label %._crit_edge, label %.lr.ph226, !llvm.loop !685

bb.j:                                             ; preds = %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %.thread216

bb.k:                                             ; preds = %bb.a
  %i.cz = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62 ; 2 uses
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !158
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !160
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 568
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call { i16, ptr } %i.df(ptr noundef nonnull align 8 dereferenceable(518435) %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #14 ; 2 uses
  %i.dh = extractvalue { i16, ptr } %i.dg, 0      ; 5 uses
  %i.di = extractvalue { i16, ptr } %i.dg, 1
  %i.dj = load i16, ptr %9, align 8, !tbaa !207   ; 2 uses
  %.not.i.i179 = icmp eq i16 %i.dj, %i.dh
  %i.dk = load ptr, ptr %i.w, align 8
  %i.dl = icmp eq ptr %i.dk, %i.di
  %.not4.i = select i1 %.not.i.i179, i1 %i.dl, i1 false
  br i1 %.not4.i, label %.preheader, label %thread-pre-split

.preheader:                                       ; preds = %bb.k
  %i.dm = icmp ugt i16 %i.ae, 1
  br i1 %i.dm, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %.preheader
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !42
  %wide.trip.count259 = zext i16 %i.ae to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph228, %bb.m
  %indvars.iv256 = phi i64 [ 1, %.lr.ph228 ], [ %indvars.iv.next257, %bb.m ] ; 3 uses
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %indvars.iv256
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !167
end_hunk_2
begin_hunk_3_@_ZN4llvm16DAGTypeLegalizer19WidenVecRes_ConvertEPNS_6SDNodeE:bb.a
  br i1 %.not.i309, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.hj = zext i16 %.sroa.0.0.copyload.i.i304 to i64
  %i.hk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -16
  %.sroa.0.0.copyload.i.i331 = load i64, ptr %i.hl, align 16
  %.sroa.2.0..sroa_idx.i.i332 = getelementptr i8, ptr %i.hk, i64 -8
  %.sroa.2.0.copyload.i.i333 = load i8, ptr %.sroa.2.0..sroa_idx.i.i332, align 8
  %.fca.0.insert.i.i334 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i331, 0
  %.fca.1.insert.i.i335 = insertvalue { i64, i8 } %.fca.0.insert.i.i334, i8 %.sroa.2.0.copyload.i.i333, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit337

bb.av:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.hm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit337

_ZNK4llvm3EVT13getSizeInBitsEv.exit337:           ; preds = %bb.au, %bb.av
  %.pn.i336 = phi { i64, i8 } [ %.fca.1.insert.i.i335, %bb.au ], [ %i.hm, %bb.av ] ; 2 uses
  %.fca.0.extract152 = extractvalue { i64, i8 } %.pn.i336, 0
  %.fca.1.extract153 = extractvalue { i64, i8 } %.pn.i336, 1
  %i.hn = icmp eq i64 %.fca.0.extract156, %.fca.0.extract152
  %i.ho = icmp eq i8 %.fca.1.extract157, %.fca.1.extract153
  %i.hp = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %i.hp, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit337
  switch i32 %.0, label %bb.ba [
    i32 229, label %bb.ax
    i32 227, label %bb.ay
    i32 228, label %bb.az
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.2151.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !40
  store ptr %.fca.0.extract195, ptr %39, align 8, !tbaa !44
  %.sroa.18.0..sroa_idx502 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i32 %.fca.1.extract196, ptr %.sroa.18.0..sroa_idx502, align 8, !tbaa !45
  %.sroa.27.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx516, align 4
  %i.hr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.hq, i32 noundef 237, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %i.he, ptr %.sroa.2151.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39) #14
  br label %bb.ce

bb.ay:                                            ; preds = %bb.aw
  %i.hs = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.2144.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !40
  store ptr %.fca.0.extract195, ptr %40, align 8, !tbaa !44
  %.sroa.18.0..sroa_idx504 = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %.fca.1.extract196, ptr %.sroa.18.0..sroa_idx504, align 8, !tbaa !45
  %.sroa.27.0..sroa_idx518 = getelementptr inbounds nuw i8, ptr %40, i64 12
  store i32 %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx518, align 4
  %i.ht = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.hs, i32 noundef 238, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %i.he, ptr %.sroa.2144.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %40) #14
  br label %bb.ce

bb.az:                                            ; preds = %bb.aw
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.2137.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !40
  store ptr %.fca.0.extract195, ptr %41, align 8, !tbaa !44
  %.sroa.18.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i32 %.fca.1.extract196, ptr %.sroa.18.0..sroa_idx506, align 8, !tbaa !45
  %.sroa.27.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %41, i64 12
  store i32 %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx520, align 4
  %i.hv = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.hu, i32 noundef 239, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %i.he, ptr %.sroa.2137.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41) #14
  br label %bb.ce

bb.ba:                                            ; preds = %bb.aw, %_ZNK4llvm3EVT13getSizeInBitsEv.exit337
  br i1 %.not.i325, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = zext i16 %i.he to i64
  %i.hx = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !38
  %i.ia = insertvalue { i16, ptr } poison, i16 %i.hz, 0
  %i.ib = insertvalue { i16, ptr } %i.ia, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit340

bb.bc:                                            ; preds = %bb.ba
  %i.ic = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %34) #14
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit340

_ZNK4llvm3EVT20getVectorElementTypeEv.exit340:    ; preds = %bb.bb, %bb.bc
  %.fca.1.insert.merged.i339 = phi { i16, ptr } [ %i.ib, %bb.bb ], [ %i.ic, %bb.bc ] ; 2 uses
  %i.id = extractvalue { i16, ptr } %.fca.1.insert.merged.i339, 0 ; 3 uses
  %i.ie = extractvalue { i16, ptr } %.fca.1.insert.merged.i339, 1
  %.sroa.0461.0.insert.ext = and i64 %.sroa.0.0.in.i314, 1099511627775
  %.sroa.0.0.extract.trunc.i.i341 = trunc i64 %.sroa.0.0.in.i314 to i32 ; 2 uses
  %i.if = and i64 %.sroa.0.0.in.i314, 4294967296
  %.not.i.i342 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i342, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit340
  %i.ig = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.id, i32 noundef %.sroa.0.0.extract.trunc.i.i341)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343

bb.be:                                            ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit340
  %i.ih = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.id, i32 noundef %.sroa.0.0.extract.trunc.i.i341)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343: ; preds = %bb.be, %bb.bd
  %.sroa.04.0.i.i344 = phi i16 [ %i.ig, %bb.bd ], [ %i.ih, %bb.be ] ; 2 uses
  %.not.i345 = icmp eq i16 %.sroa.04.0.i.i344, 0
  br i1 %.not.i345, label %bb.bf, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350

bb.bf:                                            ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343
  %i.ii = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_NS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i16 %i.id, ptr %i.ie, i64 %.sroa.0461.0.insert.ext) #14 ; 2 uses
  %i.ij = extractvalue { i16, ptr } %i.ii, 0
  %i.ik = extractvalue { i16, ptr } %i.ii, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343, %bb.bf
  %.sroa.3.0.i346 = phi ptr [ %i.ik, %bb.bf ], [ null, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343 ] ; 2 uses
  %.sroa.0.0.i347 = phi i16 [ %i.ij, %bb.bf ], [ %.sroa.04.0.i.i344, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i343 ] ; 2 uses
  %i.il = load i32, ptr %i.ag, align 8, !tbaa !41
  %i.im = icmp eq i32 %i.il, 230
  br i1 %i.im, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350
  %i.in = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.io = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 80
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.382") align 8 %22, ptr noundef nonnull align 8 dereferenceable(518435) %i.in, ptr noundef nonnull align 8 dereferenceable(8) %i.iq, i16 %.sroa.0.0.i347, ptr %.sroa.3.0.i346) #14
  %i.ir = load i8, ptr %22, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  %i.is = icmp eq i8 %i.ir, 1
  br i1 %i.is, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.it = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %.fca.0.extract195, ptr %42, align 8, !tbaa !44
  %.sroa.18.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i32 %.fca.1.extract196, ptr %.sroa.18.0..sroa_idx508, align 8, !tbaa !45
  %.sroa.27.0..sroa_idx522 = getelementptr inbounds nuw i8, ptr %42, i64 12
  store i32 %.sroa.27.0.copyload, ptr %.sroa.27.0..sroa_idx522, align 4
  %i.iu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.it, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %.sroa.0.0.i347, ptr %.sroa.3.0.i346, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %42, i32 %.sroa.0.0.copyload.i248) #14 ; 2 uses
  %.fca.0.extract110 = extractvalue { ptr, i32 } %i.iu, 0
  %.fca.1.extract111 = extractvalue { ptr, i32 } %i.iu, 1
  %i.iv = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62 ; 3 uses
  %.sroa.0105.0.copyload = load i16, ptr %34, align 8, !tbaa !38
  %.sroa.2107.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.iw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.iv, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %21, i16 %.sroa.0105.0.copyload, ptr %.sroa.2107.0.copyload) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %.fca.0.extract101 = extractvalue { ptr, i32 } %i.iw, 0 ; 2 uses
  %.fca.1.extract102 = extractvalue { ptr, i32 } %i.iw, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.ix = getelementptr inbounds nuw i8, ptr %.fca.0.extract101, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !36
  %i.iz = zext i32 %.fca.1.extract102 to i64
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.iz ; 2 uses
  %.sroa.0.0.copyload.i.i.i351 = load i16, ptr %i.ja, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i.i.i352 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.21.0.copyload.i.i.i353 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i352, align 8, !tbaa !40
  store ptr %.fca.0.extract101, ptr %18, align 8, !tbaa !44
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.fca.1.extract102, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !45
  store ptr %.fca.0.extract110, ptr %19, align 8, !tbaa !44
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 %.fca.1.extract111, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !45
  %i.jb = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.iv, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %33, i1 noundef zeroext false) #14 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.jb, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.jb, 1
  store ptr %.fca.0.extract1.i, ptr %20, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.jc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.iv, i32 noundef 166, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %.sroa.0.0.copyload.i.i.i351, ptr %.sroa.21.0.copyload.i.i.i353, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %bb.ce

.thread:                                          ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350, %bb.bg, %_ZNK4llvm3EVT21getVectorElementCountEv.exit303
  %.sroa.0461.0.in = phi i64 [ %.sroa.0.0.in.i301, %_ZNK4llvm3EVT21getVectorElementCountEv.exit303 ], [ %.sroa.0.0.in.i314, %bb.bg ], [ %.sroa.0.0.in.i314, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350 ]
  %.sroa.0491.1 = phi ptr [ %.sroa.0491.0, %_ZNK4llvm3EVT21getVectorElementCountEv.exit303 ], [ %.fca.0.extract195, %bb.bg ], [ %.fca.0.extract195, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350 ] ; 3 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.0, %_ZNK4llvm3EVT21getVectorElementCountEv.exit303 ], [ %.fca.1.extract196, %bb.bg ], [ %.fca.1.extract196, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_NS_12ElementCountE.exit350 ] ; 3 uses
  %.not.i354 = icmp eq i16 %.sroa.0.0.i, 0
  br i1 %.not.i354, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %.thread
  %i.jd = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jf = zext i16 %.sroa.0.0.i to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !269
  %.not566 = icmp eq ptr %i.jh, null
  br i1 %.not566, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.sroa.0461.0.extract.trunc467 = trunc i64 %.sroa.0461.0.in to i32 ; 5 uses
  %.not.i355 = icmp eq i32 %.sroa.0461.0.extract.trunc467, 0
  br i1 %.not.i355, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit.thread, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit: ; preds = %bb.bi
  %i.ji = urem i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0461.0.extract.trunc467
  %i.jj = udiv exact i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0461.0.extract.trunc467 ; 4 uses
  %i.jk = icmp eq i32 %i.ji, 0
  br i1 %i.jk, label %bb.bj, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit367

bb.bj:                                            ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE17isKnownMultipleOfEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #14
  %i.jl = zext i32 %i.jj to i64                   ; 7 uses
  %i.jm = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.087.0.copyload = load i16, ptr %35, align 8, !tbaa !38
  %.sroa.289.0.copyload = load ptr, ptr %i.af, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.jn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.jm, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %17, i16 %.sroa.087.0.copyload, ptr %.sroa.289.0.copyload) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.jn, 0 ; 18 uses
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.jn, 1 ; 18 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 8 uses
  store ptr %i.jo, ptr %43, align 8, !tbaa !203
  %i.jp = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  store i32 0, ptr %i.jp, align 8, !tbaa !204
  %i.jq = getelementptr inbounds nuw i8, ptr %43, i64 12
  store i32 16, ptr %i.jq, align 4, !tbaa !205
  %i.jr = icmp ugt i32 %i.jj, 16
  br i1 %i.jr, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %bb.bj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %43, ptr noundef nonnull %i.jo, i64 noundef %i.jl, i64 noundef 16) #14
  %i.js = load ptr, ptr %43, align 8, !tbaa !203  ; 3 uses
  %xtraiter601 = and i64 %i.jl, 7                 ; 2 uses
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod602.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.js, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.jt, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.jl, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter603 = phi i64 [ %prol.iter603.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr %.fca.0.extract83, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !45
  %i.jt = add i64 %.068.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter603.next = add i64 %prol.iter603, 1   ; 2 uses
  %prol.iter603.cmp.not = icmp eq i64 %prol.iter603.next, %xtraiter601
  br i1 %prol.iter603.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !729

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.js, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.jl, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.jt, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.kd, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.kc, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.fca.0.extract83, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !45
  %i.jv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract83, ptr %i.jv, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract83, ptr %i.jw, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !45
  %i.jx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract83, ptr %i.jx, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !45
  %i.jy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract83, ptr %i.jy, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !45
  %i.jz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract83, ptr %i.jz, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !45
  %i.ka = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract83, ptr %i.ka, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !45
  %i.kb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract83, ptr %i.kb, align 8, !tbaa !44
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract84, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !45
  %i.kc = add i64 %.068.i.i.i.i.i.i, -8           ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.bj
  %.not.i357 = icmp ugt i32 %.sroa.0461.0.extract.trunc467, %.sroa.0.0.extract.trunc.i.i
  br i1 %.not.i357, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %xtraiter = and i64 %i.jl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.prol ], [ %i.jo, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.ke, %.lr.ph.i.i.i.i.i.prol ], [ %i.jl, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr %.fca.0.extract83, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !45
  %i.ke = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !730

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.preheader ], [ %i.kf, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.jl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ke, %.lr.ph.i.i.i.i.i.prol ]
  %i.kg = add nsw i32 %i.jj, -1
  %i.kh = icmp ult i32 %i.kg, 7
  br i1 %i.kh, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.kp, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr %.fca.0.extract83, ptr %.09.i.i.i.i.i, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !45
  %i.ki = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %.fca.0.extract83, ptr %i.ki, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !45
  %i.kj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr %.fca.0.extract83, ptr %i.kj, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !45
  %i.kk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr %.fca.0.extract83, ptr %i.kk, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !45
  %i.kl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  store ptr %.fca.0.extract83, ptr %i.kl, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 72
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 80
  store ptr %.fca.0.extract83, ptr %i.km, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !45
  %i.kn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96
  store ptr %.fca.0.extract83, ptr %i.kn, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 104
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !45
  %i.ko = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 112
  store ptr %.fca.0.extract83, ptr %i.ko, align 8, !tbaa !44
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 120
  store i32 %.fca.1.extract84, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !45
  %i.kp = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.kp, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.kr = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i ], [ %i.jo, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.jo, %.lr.ph.i.i.i.i.i ], [ %i.jo, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  store i32 %i.jj, ptr %i.jp, align 8, !tbaa !204
  store ptr %.sroa.0491.1, ptr %i.kr, align 8, !tbaa !44
  %.sroa.18.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i32 %.sroa.18.1, ptr %.sroa.18.0..sroa_idx510, align 8, !tbaa !45
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %i.kr, ptr %44, align 8, !tbaa !195
  %i.kt = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ku = load i32, ptr %i.jp, align 8, !tbaa !204
  %i.kv = zext i32 %i.ku to i64
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !196
  %i.kw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ks, i32 noundef 165, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %44) #14 ; 2 uses
  %.fca.0.extract73 = extractvalue { ptr, i32 } %i.kw, 0 ; 3 uses
  %.fca.1.extract74 = extractvalue { ptr, i32 } %i.kw, 1 ; 3 uses
  %.sroa.070.0.copyload = load i16, ptr %34, align 8, !tbaa !38 ; 3 uses
  %.sroa.272.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ky = load i16, ptr %i.kx, align 8, !tbaa !200
  %i.kz = icmp eq i16 %i.ky, 1
  br i1 %i.kz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit
  %i.la = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %.fca.0.extract73, ptr %14, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract74, ptr %.sroa.4.0..sroa_idx.i363, align 8, !tbaa !45
  %i.lb = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.la, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %33, i16 %.sroa.070.0.copyload, ptr %.sroa.272.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, i32 %.sroa.0.0.copyload.i248) #14
  br label %"_ZZN4llvm16DAGTypeLegalizer19WidenVecRes_ConvertEPNS_6SDNodeEENK3$_0clENS_3EVTENS_7SDValueE.exit365"

bb.bl:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_.exit
  %i.lc = icmp eq i32 %.0, 259
  %i.ld = load ptr, ptr %i.a, align 8, !tbaa !60, !nonnull !61, !align !62 ; 2 uses
  br i1 %i.lc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store ptr %.fca.0.extract73, ptr %15, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx24.i361 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract74, ptr %.sroa.4.0..sroa_idx24.i361, align 8, !tbaa !45
  %i.le = load ptr, ptr %i.e, align 8, !tbaa !42  ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
end_hunk_3
begin_hunk_4_@_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2EmRKS1_:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer18GetPromotedIntegerENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = tail call noundef i32 @_ZN4llvm16DAGTypeLegalizer10getTableIdENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %1, i32 %2)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !45
  %i.d = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjjLj8ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN4llvm16DAGTypeLegalizer7RemapIdERj(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.g = load i32, ptr %i.f, align 8, !noalias !759
  %i.h = and i32 %i.g, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.h, 0       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !759
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !noalias !759
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.n = load i32, ptr %i.m, align 8, !noalias !759
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.j, ptr %i.i ; 2 uses
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.l, ptr %i.o ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.n, i32 8 ; 3 uses
  %i.p = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %.loopexit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = add i32 %.sink.i.i.i.i.i.i.i, -1         ; 2 uses
  %i.r = load i32, ptr %i.e, align 4, !tbaa !45, !noalias !760 ; 2 uses
  %i.s = mul i32 %i.r, 37
  %.017.i.i.i.i.i = and i32 %i.s, %i.q            ; 3 uses
  %i.t = zext i32 %.017.i.i.i.i.i to i64          ; 2 uses
  %i.u = lshr i64 %i.t, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45, !noalias !760
  %i.x = and i32 %.017.i.i.i.i.i, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !208

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.aa, %i.q             ; 3 uses
  %i.ab = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !45, !noalias !760
  %i.af = and i32 %.0.i.i.i.i.i, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !209

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.c
  %i.ai = phi i64 [ %i.ab, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.c ], [ %.017.i.i.i.i.i, %bb.b ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !45, !noalias !760
  %i.al = icmp eq i32 %i.r, %i.ak
  br i1 %i.al, label %_ZN4llvm16DAGTypeLegalizer10getSDValueERj.exit, label %bb.c, !prof !210

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.am = zext i32 %.sink.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm16DAGTypeLegalizer10getSDValueERj.exit

_ZN4llvm16DAGTypeLegalizer10getSDValueERj.exit:   ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %i.an = phi i64 [ %i.am, %.loopexit.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.04.0.copyload = load ptr, ptr %i.ap, align 8, !tbaa !44
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !45
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.04.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.25.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG22getShiftAmountConstantEmNS_3EVTERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, i16, ptr, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer20CreateStackStoreLoadENS_7SDValueENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(2640), ptr, i32, i16, ptr) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #3

declare { ptr, i32 } @_ZN4llvm12SelectionDAG23getMaskFromElementCountERKNS_5SDLocENS_3EVTENS_12ElementCountE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11findMemTypeRN4llvm12SelectionDAGERKNS_14TargetLoweringEjNS_3EVTEjj(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(518435) %2, i32 noundef %3, i16 %4, ptr %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.std::pair.382", align 8    ; 4 uses
  %9 = alloca %"struct.std::pair.382", align 8    ; 4 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 10 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 11 uses
  store i16 %4, ptr %10, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %.not.i = icmp eq i16 %4, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread

_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread: ; preds = %bb.a
  %i.b = zext i16 %4 to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !38   ; 2 uses
  store i16 %i.e, ptr %11, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8
  br label %bb.b

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.a
  %i.g = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #14 ; 2 uses
  %.pre = load i16, ptr %10, align 8, !tbaa !207  ; 2 uses
  %i.h = extractvalue { i16, ptr } %i.g, 0        ; 3 uses
  store i16 %i.h, ptr %11, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.j = extractvalue { i16, ptr } %i.g, 1
  store ptr %i.j, ptr %i.i, align 8
  %.not.i106 = icmp eq i16 %.pre, 0
  br i1 %.not.i106, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.k = phi ptr [ %i.f, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.i, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.l = phi i16 [ %i.e, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %i.h, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ]
  %i.m = phi i16 [ %4, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit.thread ], [ %.pre, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit ] ; 2 uses
  %i.n = add i16 %i.m, -163
  %spec.select.i.i = icmp ult i16 %i.n, 53
  %i.o = zext i16 %i.m to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.q, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.r = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  %i.t = extractvalue { i64, i8 } %i.s, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.k, %bb.b ], [ %i.i, %bb.c ]
  %i.v = phi i16 [ %i.l, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.w = phi i1 [ %spec.select.i.i, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ %i.t, %bb.c ]
  %i.x = trunc i64 %.pn.i to i32                  ; 7 uses
  %.not.i108 = icmp eq i16 %i.v, 0
  br i1 %.not.i108, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.y = zext i16 %i.v to i64
  %i.z = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %.sroa.0.0.copyload.i.i109 = load i64, ptr %i.aa, align 16
  %.sroa.2.0..sroa_idx.i.i110 = getelementptr i8, ptr %i.z, i64 -8
  %.sroa.2.0.copyload.i.i111 = load i8, ptr %.sroa.2.0..sroa_idx.i.i110, align 8
  %.fca.0.insert.i.i112 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i109, 0
  %.fca.1.insert.i.i113 = insertvalue { i64, i8 } %.fca.0.insert.i.i112, i8 %.sroa.2.0.copyload.i.i111, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit115

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.ab = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit115

_ZNK4llvm3EVT13getSizeInBitsEv.exit115:           ; preds = %bb.d, %bb.e
  %.pn.i114 = phi { i64, i8 } [ %.fca.1.insert.i.i113, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  %.fca.0.extract56 = extractvalue { i64, i8 } %.pn.i114, 0 ; 2 uses
  %.fca.1.extract57 = extractvalue { i64, i8 } %.pn.i114, 1
  %i.ac = trunc nuw i8 %.fca.1.extract57 to i1
  br i1 %i.ac, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit115
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit115
  %i.ad = shl i32 %6, 3                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !214
  br i1 %i.w, label %_ZNK4llvm8TypeSizecvmEv.exit..thread195_crit_edge, label %bb.g

_ZNK4llvm8TypeSizecvmEv.exit..thread195_crit_edge: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.pre223 = add i32 %7, %3
  %.pre224 = call i32 @llvm.umin.i32(i32 %i.ad, i32 %.pre223)
  br label %.thread195

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.ae = trunc i64 %.fca.0.extract56 to i32
  %i.af = icmp eq i32 %3, %i.ae
  br i1 %i.af, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = and i64 %.fca.0.extract56, 4294967295
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.aj = add i32 %7, %3
  %invariant.umin = call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.aj) ; 3 uses
  %invariant.umax = call i32 @llvm.umax.i32(i32 %3, i32 %invariant.umin)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ak, align 8, !tbaa !310
  br label %bb.ah

bb.i:                                             ; preds = %.preheader, %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  %.sroa.0175.0214 = phi i64 [ 11, %.preheader ], [ %i.bb, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.al = trunc i64 %.sroa.0175.0214 to i16       ; 3 uses
  store i16 %i.al, ptr %13, align 8, !tbaa !201
  store ptr null, ptr %i.ag, align 8, !tbaa !202
  %.not.i119 = icmp eq i16 %i.al, 0
  br i1 %.not.i119, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit126, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit126.thread

_ZNK4llvm3EVT13getSizeInBitsEv.exit126:           ; preds = %bb.i
  %i.am = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #16 ; 3 uses
  %.fca.1.extract37 = extractvalue { i64, i8 } %i.am, 1
  %i.an = trunc nuw i8 %.fca.1.extract37 to i1
  br i1 %i.an, label %bb.j, label %bb.l

_ZNK4llvm3EVT13getSizeInBitsEv.exit126.thread:    ; preds = %bb.i
  %i.ao = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.sroa.0175.0214 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i121 = getelementptr i8, ptr %i.ao, i64 -8
  %.sroa.2.0.copyload.i.i122 = load i8, ptr %.sroa.2.0..sroa_idx.i.i121, align 8
  %i.ap = trunc nuw i8 %.sroa.2.0.copyload.i.i122 to i1
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit126.thread, %_ZNK4llvm3EVT13getSizeInBitsEv.exit126
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

bb.k:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit126.thread
  %i.aq = getelementptr i8, ptr %i.ao, i64 -16
  %.sroa.0.0.copyload.i.i120 = load i64, ptr %i.aq, align 16 ; 2 uses
  %.fca.0.insert.i.i132 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i120, 0
  %.fca.1.insert.i.i133 = insertvalue { i64, i8 } %.fca.0.insert.i.i132, i8 0, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit135

bb.l:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit126
  %.fca.0.extract36 = extractvalue { i64, i8 } %i.am, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit135

_ZNK4llvm3EVT13getSizeInBitsEv.exit135:           ; preds = %bb.k, %bb.l
  %.in = phi i64 [ %.sroa.0.0.copyload.i.i120, %bb.k ], [ %.fca.0.extract36, %bb.l ]
  %.pn.i134 = phi { i64, i8 } [ %.fca.1.insert.i.i133, %bb.k ], [ %i.am, %bb.l ] ; 2 uses
  %i.ar = trunc i64 %.in to i32                   ; 4 uses
  %.fca.1.extract33 = extractvalue { i64, i8 } %.pn.i134, 1
  %i.as = trunc nuw i8 %.fca.1.extract33 to i1
  br i1 %i.as, label %bb.m, label %_ZNK4llvm8TypeSizecvmEv.exit136

bb.m:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit135
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit136:                  ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit135
  %.fca.0.extract32 = extractvalue { i64, i8 } %.pn.i134, 0
  %.not = icmp ugt i64 %.fca.0.extract32, %i.ah
  br i1 %.not, label %bb.n, label %.thread199

bb.n:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit136
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.382") align 8 %9, ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.at, i16 %i.al, ptr null) #14
  %i.au = load i8, ptr %9, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %or.cond = icmp ult i8 %i.au, 2
  br i1 %or.cond, label %bb.o, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.av = urem i32 %i.x, %i.ar
  %i.aw = udiv exact i32 %i.x, %i.ar
  %i.ax = icmp eq i32 %i.av, 0
  br i1 %i.ax, label %bb.p, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ay = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.aw)
  %i.az = icmp samesign ugt i32 %i.ay, 1
  %or.cond207.not245 = select i1 %.not.i.i, i1 true, i1 %i.az
  %or.cond218 = icmp ult i32 %invariant.umax, %i.ar
  %or.cond240 = select i1 %or.cond207.not245, i1 true, i1 %or.cond218
  br i1 %or.cond240, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp eq i32 %i.ar, %i.x
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !214
  br label %.thread199

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %bb.p, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %i.bb = add nsw i64 %.sroa.0175.0214, -1        ; 2 uses
  %.not210 = icmp eq i64 %i.bb, 1
  br i1 %.not210, label %.thread195, label %bb.i

.thread199:                                       ; preds = %_ZNK4llvm8TypeSizecvmEv.exit136, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %.thread195

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !214
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !310
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.ah

.thread195:                                       ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread, %_ZNK4llvm8TypeSizecvmEv.exit..thread195_crit_edge, %.thread199
  %invariant.umin217.pre-phi = phi i32 [ %.pre224, %_ZNK4llvm8TypeSizecvmEv.exit..thread195_crit_edge ], [ %invariant.umin, %.thread199 ], [ %invariant.umin, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ]
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not.i.i156 = icmp eq i32 %i.x, 0
  %invariant.umax241 = call i32 @llvm.umax.i32(i32 %3, i32 %invariant.umin217.pre-phi)
  br label %bb.t

bb.t:                                             ; preds = %.thread195, %_ZN4llvm13isPowerOf2_32Ej.exit157.thread
  %.sroa.0162.0215 = phi i64 [ 215, %.thread195 ], [ %i.cu, %_ZN4llvm13isPowerOf2_32Ej.exit157.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.bf = trunc i64 %.sroa.0162.0215 to i16       ; 4 uses
  store i16 %i.bf, ptr %14, align 8, !tbaa !201
  store ptr null, ptr %i.bd, align 8, !tbaa !202
  %.not.i141 = icmp eq i16 %i.bf, 0
  br i1 %.not.i141, label %_ZNK4llvm3EVT16isScalableVectorEv.exit143, label %_ZNK4llvm3EVT16isScalableVectorEv.exit143.thread

_ZNK4llvm3EVT16isScalableVectorEv.exit143:        ; preds = %bb.t
  %i.bg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #16
  %i.bh = xor i1 %i.w, %i.bg
  br i1 %i.bh, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread, label %bb.u

_ZNK4llvm3EVT16isScalableVectorEv.exit143.thread: ; preds = %bb.t
  %i.bi = add i16 %i.bf, -163
  %spec.select.i.i142 = icmp ult i16 %i.bi, 53
  %i.bj = xor i1 %i.w, %spec.select.i.i142
  br i1 %i.bj, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread, label %.thread202

.thread202:                                       ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit143.thread
  %i.bk = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.sroa.0162.0215
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %.sroa.0.0.copyload.i.i145 = load i64, ptr %i.bl, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151

bb.u:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit143
  %i.bm = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #16
  %i.bn = extractvalue { i64, i8 } %i.bm, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit151

_ZNK4llvm3EVT13getSizeInBitsEv.exit151:           ; preds = %.thread202, %bb.u
  %.pn.i150 = phi i64 [ %.sroa.0.0.copyload.i.i145, %.thread202 ], [ %i.bn, %bb.u ] ; 2 uses
  %i.bo = trunc i64 %.pn.i150 to i32              ; 3 uses
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.382") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i16 %i.bf, ptr null) #14
  %i.bq = load i8, ptr %8, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %or.cond9 = icmp ult i8 %i.bq, 2
  br i1 %or.cond9, label %bb.v, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit151
  %i.br = load i16, ptr %14, align 8, !tbaa !207  ; 2 uses
  %.not.i152 = icmp eq i16 %i.br, 0
  br i1 %.not.i152, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !38
  %i.bw = insertvalue { i16, ptr } poison, i16 %i.bv, 0
  %i.bx = insertvalue { i16, ptr } %i.bw, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit154

bb.x:                                             ; preds = %bb.v
  %i.by = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #14
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit154

_ZNK4llvm3EVT20getVectorElementTypeEv.exit154:    ; preds = %bb.w, %bb.x
  %.fca.1.insert.merged.i153 = phi { i16, ptr } [ %i.bx, %bb.w ], [ %i.by, %bb.x ] ; 2 uses
  %i.bz = extractvalue { i16, ptr } %.fca.1.insert.merged.i153, 0
  %i.ca = extractvalue { i16, ptr } %.fca.1.insert.merged.i153, 1
  %i.cb = load i16, ptr %11, align 8, !tbaa !207
  %.not.i.i155 = icmp eq i16 %i.cb, %i.bz
  %i.cc = load ptr, ptr %i.u, align 8
  %i.cd = icmp eq ptr %i.cc, %i.ca
  %.not4.i = select i1 %.not.i.i155, i1 %i.cd, i1 false
  br i1 %.not4.i, label %bb.y, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread

bb.y:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit154
  %i.ce = urem i32 %i.x, %i.bo
  %i.cf = udiv exact i32 %i.x, %i.bo
  %i.cg = icmp eq i32 %i.ce, 0
  br i1 %i.cg, label %bb.z, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread

bb.z:                                             ; preds = %bb.y
  %i.ch = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.cf)
  %i.ci = icmp samesign ugt i32 %i.ch, 1
  %or.cond209.not247 = select i1 %.not.i.i156, i1 true, i1 %i.ci
  %or.cond219 = icmp ult i32 %invariant.umax241, %i.bo
  %or.cond241 = select i1 %or.cond209.not247, i1 true, i1 %or.cond219
  br i1 %or.cond241, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = load i16, ptr %12, align 8, !tbaa !207  ; 2 uses
  %.not.i.i158 = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i158, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = zext i16 %i.cj to i64
  %i.cl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cm, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #16
  %i.co = extractvalue { i64, i8 } %i.cn, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit:         ; preds = %bb.ab, %bb.ac
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ab ], [ %i.co, %bb.ac ]
  %i.cp = and i64 %.pn.i150, 4294967295
  %i.cq = icmp ult i64 %.pn.i.i, %i.cp
  br i1 %i.cq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
  %.sroa.0.0.copyload = load i16, ptr %10, align 8, !tbaa !38
  %.sroa.211.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.cr = load i16, ptr %14, align 8, !tbaa !207
  %.not.i.i159 = icmp eq i16 %i.cr, %.sroa.0.0.copyload
  %i.cs = load ptr, ptr %i.bd, align 8
  %i.ct = icmp eq ptr %i.cs, %.sroa.211.0.copyload
  %.not4.i160 = select i1 %.not.i.i159, i1 %i.ct, i1 false
  br i1 %.not4.i160, label %bb.ae, label %_ZN4llvm13isPowerOf2_32Ej.exit157.thread

_ZN4llvm13isPowerOf2_32Ej.exit157.thread:         ; preds = %bb.z, %_ZNK4llvm3EVT16isScalableVectorEv.exit143, %bb.ad, %_ZNK4llvm3EVT13getSizeInBitsEv.exit151, %bb.y, %_ZNK4llvm3EVT20getVectorElementTypeEv.exit154, %_ZNK4llvm3EVT16isScalableVectorEv.exit143.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %i.cu = add nsw i64 %.sroa.0162.0215, -1        ; 2 uses
  %.not211 = icmp eq i64 %i.cu, 18
  br i1 %.not211, label %.critedge, label %bb.t

bb.ae:                                            ; preds = %bb.ad, %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !214
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cv, align 8, !tbaa !310
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.ah

.critedge:                                        ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit157.thread
  br i1 %i.w, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.cw, align 8, !tbaa !310
  br label %bb.ah

bb.ag:                                            ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !214
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cx, align 8, !tbaa !310
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.s, %bb.ag, %bb.af, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL17coerceLoadedValueN4llvm7SDValueENS_3EVTES1_NS_8TypeSizeES2_NS_5SDLocERNS_12SelectionDAGE(ptr %0, i32 %1, i16 %2, ptr %3, i16 %4, ptr %5, i64 %.0.val, ptr noundef byval(%"class.llvm::SDLoc") align 8 %6, ptr noundef nonnull align 8 dereferenceable(920) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  store i16 %2, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.a, align 8
  store i16 %4, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %5, ptr %i.b, align 8
  %.not.i = icmp eq i16 %4, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %4 to i64
  %i.d = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  %i.g = extractvalue { i64, i8 } %i.f, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b, %bb.c
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.b ], [ %i.g, %bb.c ]
  %.not.i33 = icmp eq i16 %2, 0
  br i1 %.not.i33, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.h = add i16 %2, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  br i1 %spec.select.i.i, label %bb.f, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.i = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.j = udiv i64 %.pn.i, %.0.val
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.n = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %2, i32 noundef %i.k) ; 2 uses
  %.not.i34 = icmp eq i16 %i.n, 0
  br i1 %.not.i34, label %bb.e, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

bb.e:                                             ; preds = %bb.d
  %i.o = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 %2, ptr %3, i32 noundef %i.k, i1 noundef zeroext false) #14 ; 2 uses
  %i.p = extractvalue { i16, ptr } %i.o, 0
  %i.q = extractvalue { i16, ptr } %i.o, 1
  br label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %.sroa.0.0.i = phi i16 [ %i.p, %bb.e ], [ %i.n, %bb.d ]
  store ptr %0, ptr %10, align 8, !tbaa !44
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %1, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !45
  %i.r = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 174, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.0.0.i, ptr %.sroa.3.0.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #14 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.r, 1
  %.sroa.01.0.copyload = load i16, ptr %9, align 8, !tbaa !38
  %.sroa.23.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40
  store ptr %.fca.0.extract4, ptr %11, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !45
  %i.s = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #14
  br label %bb.g

bb.f:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.t = insertvalue { ptr, i32 } poison, ptr %0, 0
  %i.u = insertvalue { ptr, i32 } %i.t, i32 %1, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.s, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer22GenWidenVectorExtLoadsERNS_15SmallVectorImplINS_7SDValueEEEPNS_10LoadSDNodeENS_3ISD11LoadExtTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2640) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ArrayRef.50", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 10 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"struct.llvm::AAMDNodes", align 8 ; 5 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %12 = alloca %"class.llvm::SmallVector.231", align 8 ; 12 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.a = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !40
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call { i16, ptr } %i.j(ptr noundef nonnull align 8 dereferenceable(518435) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #14 ; 2 uses
  %i.l = extractvalue { i16, ptr } %i.k, 0        ; 3 uses
  store i16 %i.l, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = extractvalue { i16, ptr } %i.k, 1
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload.i110 = load i16, ptr %i.o, align 8, !tbaa !38 ; 4 uses
  %.sroa.21.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.21.0.copyload.i112 = load ptr, ptr %.sroa.21.0..sroa_idx.i111, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i110, ptr %7, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i112, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63
  store i64 %i.r, ptr %8, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 68
end_hunk_4
begin_hunk_5_@_ZN4llvm16DAGTypeLegalizer18WidenVectorOperandEPNS_6SDNodeEj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63
  store i64 %i.ar, ptr %3, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !64
  store i32 %i.au, ptr %i.as, align 8, !tbaa !66
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.019.0.copyload.i = load ptr, ptr %i.aw, align 8, !tbaa !44
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %.sroa.220.0.copyload.i = load i32, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !45
  %i.ax = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer16GetWidenedVectorENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.019.0.copyload.i, i32 %.sroa.220.0.copyload.i) ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i32 } %i.ax, 0
  %.fca.1.extract16.i = extractvalue { ptr, i32 } %i.ax, 1
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %.sroa.012.0.copyload.i = load ptr, ptr %i.az, align 8, !tbaa !44
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %.sroa.213.0.copyload.i = load i32, ptr %.sroa.213.0..sroa_idx.i, align 8, !tbaa !45
  %i.ba = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer16GetWidenedVectorENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.012.0.copyload.i, i32 %.sroa.213.0.copyload.i) ; 2 uses
  %.fca.0.extract6.i = extractvalue { ptr, i32 } %i.ba, 0
  %.fca.1.extract7.i = extractvalue { ptr, i32 } %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.bd = load i32, ptr %i.m, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %.sroa.0.0.copyload.i.i253 = load i16, ptr %i.bf, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i.i254 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i.i255 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i254, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.bg, i64 12, i1 false), !tbaa.struct !166
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.fca.0.extract15.i, ptr %i.bh, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.fca.1.extract16.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.fca.0.extract6.i, ptr %i.bi, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.fca.1.extract7.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i64 12, i1 false), !tbaa.struct !166
  store ptr %5, ptr %4, align 8, !tbaa !195
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.bl, align 8, !tbaa !196
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i32.i = load i32, ptr %i.bm, align 4, !tbaa !45
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.bc, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %.sroa.0.0.copyload.i.i253, ptr %.sroa.21.0.copyload.i.i255, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %4, i32 %.sroa.0.0.copyload.i32.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.b, %bb.b
  %i.bo = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer23WidenVecOp_CttzElementsEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef nonnull %1)
  br label %bb.ah

bb.af:                                            ; preds = %bb.b, %bb.b
  %i.bp = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer26WidenVecOp_VP_CttzElementsEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef nonnull %1)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.b
  %i.bq = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer34WidenVecOp_VECTOR_FIND_LAST_ACTIVEEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef nonnull %1)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.r, %bb.g ], [ %i.s, %bb.h ], [ %i.t, %bb.i ], [ %i.u, %bb.j ], [ %i.v, %bb.k ], [ %i.w, %bb.l ], [ %i.x, %bb.m ], [ %i.y, %bb.n ], [ %i.z, %bb.o ], [ %i.aa, %bb.p ], [ %i.ab, %bb.q ], [ %i.ac, %bb.r ], [ %i.ad, %bb.s ], [ %i.ae, %bb.t ], [ %i.af, %bb.u ], [ %i.ai, %bb.v ], [ %i.aj, %bb.w ], [ %i.ak, %bb.x ], [ %i.al, %bb.y ], [ %i.am, %bb.z ], [ %i.an, %bb.aa ], [ %i.ao, %bb.ab ], [ %i.ap, %bb.ac ], [ %i.bn, %bb.ad ], [ %i.bo, %bb.ae ], [ %i.bp, %bb.af ], [ %i.bq, %bb.ag ] ; 2 uses
  %.sroa.0256.0 = extractvalue { ptr, i32 } %.pn, 0 ; 3 uses
  %.sroa.37.0 = extractvalue { ptr, i32 } %.pn, 1
  %.not = icmp eq ptr %.sroa.0256.0, null
  br i1 %.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = icmp eq ptr %.sroa.0256.0, %1
  br i1 %i.br, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = call noundef zeroext i1 @_ZN4llvm6SDNode16isStrictFPOpcodeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 0 uses
  call void @_ZN4llvm16DAGTypeLegalizer16ReplaceValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %1, i32 0, ptr nonnull %.sroa.0256.0, i32 %.sroa.37.0) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.a, %bb.aj
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.ah ], [ false, %bb.aj ], [ true, %bb.ai ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer18WidenVecOp_BITCASTEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 12 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %11 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !38 ; 7 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !40 ; 3 uses
  store i16 %.sroa.0.0.copyload.i, ptr %7, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.sroa.084.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !44
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.285.0.copyload = load i32, ptr %.sroa.285.0..sroa_idx, align 8, !tbaa !45
  %i.f = tail call { ptr, i32 } @_ZN4llvm16DAGTypeLegalizer16GetWidenedVectorENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.084.0.copyload, i32 %.sroa.285.0.copyload) ; 2 uses
  %.fca.0.extract80 = extractvalue { ptr, i32 } %i.f, 0 ; 4 uses
  %.fca.1.extract81 = extractvalue { ptr, i32 } %i.f, 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract80, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = zext i32 %.fca.1.extract81 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.j, align 8, !tbaa !38 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i.i, ptr %8, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  store i64 %i.m, ptr %9, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !64
  store i32 %i.p, ptr %i.n, align 8, !tbaa !66
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.r = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -16
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %i.s, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i93 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i92, 0
  %.fca.1.insert.i.i94 = insertvalue { i64, i8 } %.fca.0.insert.i.i93, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.t = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.b, %bb.c
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i94, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.fca.0.extract76 = extractvalue { i64, i8 } %.pn.i, 0 ; 3 uses
  %.fca.1.extract77 = extractvalue { i64, i8 } %.pn.i, 1
  %.not.i95 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i95, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.u = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.u, 197
  br i1 %spec.select.i.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread, label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.v = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  br i1 %i.v, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread, label %.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.w = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #16 ; 2 uses
  %.fca.1.extract73149 = extractvalue { i64, i8 } %i.w, 1
  %.fca.0.extract72148 = extractvalue { i64, i8 } %i.w, 0
  br label %bb.e

bb.d:                                             ; preds = %.split
  %i.x = zext i16 %.sroa.0.0.copyload.i to i64
  %i.y = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.x ; 2 uses
  %.sroa.2.0..sroa_idx.i.i97 = getelementptr i8, ptr %i.y, i64 -8
  %.sroa.2.0.copyload.i.i98 = load i8, ptr %.sroa.2.0..sroa_idx.i.i97, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 -16
  %.sroa.0.0.copyload.i.i96 = load i64, ptr %i.z, align 16
  %.not.i104 = icmp ne i16 %.sroa.0.0.copyload.i, 248
  %i.aa = icmp ne ptr %.sroa.21.0.copyload.i, null
  %i.ab = select i1 %.not.i104, i1 true, i1 %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread

bb.e:                                             ; preds = %.thread, %bb.d
  %.fca.1.extract73152154160 = phi i8 [ %.fca.1.extract73149, %.thread ], [ %.sroa.2.0.copyload.i.i98, %bb.d ]
  %.fca.0.extract72150155159 = phi i64 [ %.fca.0.extract72148, %.thread ], [ %.sroa.0.0.copyload.i.i96, %bb.d ] ; 2 uses
  %.not.i105 = icmp eq i8 %.fca.1.extract77, %.fca.1.extract73152154160
  br i1 %.not.i105, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit: ; preds = %bb.e
  %i.ac = urem i64 %.fca.0.extract76, %.fca.0.extract72150155159
  %i.ad = udiv exact i64 %.fca.0.extract76, %.fca.0.extract72150155159
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %bb.f, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread

bb.f:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !158
  %i.ak = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %.sroa.0.0.copyload.i, i32 noundef %i.af) ; 2 uses
  %.not.i106 = icmp eq i16 %i.ak, 0
  br i1 %.not.i106, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit: ; preds = %bb.f
  %i.al = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, i32 noundef %i.af, i1 noundef zeroext false) #14 ; 2 uses
  %i.am = extractvalue { i16, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i16, ptr } %i.al, 1
  %.not.i109 = icmp eq i16 %i.am, 0
  br i1 %.not.i109, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.f, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.sroa.0.0.i168 = phi i16 [ %i.am, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %i.ak, %bb.f ] ; 2 uses
  %.sroa.3.0.i166 = phi ptr [ %i.an, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ null, %bb.f ]
  %i.ao = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = zext i16 %.sroa.0.0.i168 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !269
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %.fca.0.extract80, ptr %10, align 8, !tbaa !44
  %.sroa.7142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract81, ptr %.sroa.7142.0..sroa_idx, align 8, !tbaa !45
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.at, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.i168, ptr %.sroa.3.0.i166, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #14 ; 2 uses
  %.fca.0.extract51 = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract52 = extractvalue { ptr, i32 } %i.au, 1
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !60, !nonnull !61, !align !62 ; 2 uses
  %.sroa.048.0.copyload = load i16, ptr %7, align 8, !tbaa !38
  %.sroa.250.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.fca.0.extract51, ptr %5, align 8, !tbaa !44
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract52, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !45
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG20getVectorIdxConstantEmRKNS_5SDLocEb(ptr noundef nonnull align 8 dereferenceable(920) %i.av, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %9, i1 noundef zeroext false) #14 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract1.i, ptr %6, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ax = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.av, i32 noundef 164, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.048.0.copyload, ptr %.sroa.250.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.v

_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread: ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.e, %.split, %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit, %bb.d, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ay = load i16, ptr %7, align 8, !tbaa !207   ; 4 uses
  %.not.i110 = icmp eq i16 %i.ay, 0
  br i1 %.not.i110, label %_ZNK4llvm3EVT8isVectorEv.exit112, label %.split175

.split175:                                        ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread
  %i.az = add i16 %i.ay, -19
  %spec.select.i.i111 = icmp ult i16 %i.az, 197
  br i1 %spec.select.i.i111, label %bb.h, label %bb.u

_ZNK4llvm3EVT8isVectorEv.exit112:                 ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE20hasKnownScalarFactorERKS3_.exit.thread
  %i.ba = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  br i1 %i.ba, label %bb.i, label %bb.u

bb.h:                                             ; preds = %.split175
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.bb = zext nneg i16 %i.ay to i64
  %i.bc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !38
  %i.bf = insertvalue { i16, ptr } poison, i16 %i.be, 0
  %i.bg = insertvalue { i16, ptr } %i.bf, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.bh = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.h, %bb.i
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.bg, %bb.h ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bi = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  store i16 %i.bi, ptr %11, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bk = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  store ptr %i.bk, ptr %i.bj, align 8
  %.not.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.bl = zext i16 %i.bi to i64
  %i.bm = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bn, align 16
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

bb.k:                                             ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.bo = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  %i.bp = extractvalue { i64, i8 } %i.bo, 0
  br label %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit

_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit:         ; preds = %bb.j, %bb.k
  %.pn.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bq = and i64 %.pn.i.i, 4294967295            ; 2 uses
  %.not.i114 = icmp eq i64 %i.bq, 0
  br i1 %.not.i114, label %.thread197, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfEm.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfEm.exit: ; preds = %_ZNK4llvm3EVT18getFixedSizeInBitsEv.exit
  %i.br = urem i64 %.fca.0.extract76, %i.bq
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.l, label %.thread197

bb.l:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_8TypeSizeEmE17isKnownMultipleOfEm.exit
  %i.bt = trunc i64 %.pn.i.i to i32
  %i.bu = load i16, ptr %8, align 8, !tbaa !207   ; 5 uses
  %.not.i115 = icmp eq i16 %i.bu, 0
  br i1 %.not.i115, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  %i.bv = zext i16 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !217
  %i.bz = add i16 %i.bu, -163
  %spec.select.i.i.i = icmp ult i16 %i.bz, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.by to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ca = add i16 %i.bu, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.ca, 197
  br i1 %spec.select.i.i.i.i, label %bb.m, label %bb.o

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.l
  %i.cb = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cc = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br i1 %i.cc, label %bb.n, label %bb.o

bb.m:                                             ; preds = %.split.i.i
  %i.cd = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bv
  %i.ce = getelementptr i8, ptr %i.cd, i64 -2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !38
  %i.cg = insertvalue { i16, ptr } poison, i16 %i.cf, 0
  %i.ch = insertvalue { i16, ptr } %i.cg, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.n:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ci = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.o:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %.split.i.i
  %i.cj = phi i64 [ %i.cb, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.sroa.0.0.insert.insert.i.i.i, %.split.i.i ]
  %.sroa.31.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.ck = insertvalue { i16, ptr } poison, i16 %i.bu, 0
  %i.cl = insertvalue { i16, ptr } %i.ck, ptr %.sroa.31.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %bb.o, %bb.n, %bb.m
  %i.cm = phi i64 [ %i.cj, %bb.o ], [ %.sroa.0.0.insert.insert.i.i.i, %bb.m ], [ %i.cb, %bb.n ] ; 2 uses
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.cl, %bb.o ], [ %i.ch, %bb.m ], [ %i.ci, %bb.n ] ; 2 uses
  %i.cn = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.cn, ptr %4, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cp = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.cp, ptr %i.co, align 8
  %.not.i.i116 = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.cq = zext i16 %i.cn to i64
  %i.cr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
  %.sroa.0.0.copyload.i.i.i117 = load i64, ptr %i.cs, align 16
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

bb.q:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.ct = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  %i.cu = extractvalue { i64, i8 } %i.ct, 0
  br label %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.p, %bb.q
  %.pn.i.i118 = phi i64 [ %.sroa.0.0.copyload.i.i.i117, %bb.p ], [ %i.cu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.cv = mul i64 %.pn.i.i118, %i.cm
  %.sroa.0132.0.extract.trunc = trunc i64 %i.cv to i32
  %i.cw = udiv i32 %.sroa.0132.0.extract.trunc, %i.bt ; 3 uses
  %i.cx = and i64 %i.cm, 1095216660480            ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cw to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.cx, %.sroa.0.0.insert.ext.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !60, !nonnull !61, !align !62
end_hunk_5
