Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeDAG?download=true
inline.NumInlined: 5337
inline.NumDeleted: 1400
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm18TargetLoweringBase18getTypeToPromoteToEjNS_3MVTE:bb.a
  %.not = icmp uge i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i5
  %.not.i = icmp eq i16 %i.aq, 0
  %or.cond26 = or i1 %.not.i, %.not
  br i1 %or.cond26, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.split.backedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.split.backedge: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit6, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.split, !llvm.loop !4

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit6
  %i.az = zext i16 %i.aq to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !190
  %.not29 = icmp eq ptr %i.bb, null
  br i1 %.not29, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.split.backedge, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.thread: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.us, %_ZNKSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE4findERS7_.exit
  %.sroa.019.1 = phi i16 [ %i.t, %_ZNKSt3mapISt4pairIjN4llvm3MVT15SimpleValueTypeEES3_St4lessIS4_ESaIS0_IKS4_S3_EEE4findERS7_.exit ], [ %i.ac, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.us ], [ %i.aq, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ]
  ret i16 %.sroa.019.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN12_GLOBAL__N_120SelectionDAGLegalize25PromoteLegalFP_TO_INT_SATEPN4llvm6SDNodeERKNS1_5SDLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !153
  %.fr = freeze i32 %i.b                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !157 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !160, !nonnull !137, !align !138 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %.not.i17.i = icmp ult i32 %.fr, 537
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6184
  %i.i = zext nneg i32 %.fr to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  br i1 %.not.i17.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %.sroa.033.0.us = phi i16 [ %i.j, %.split.us.backedge ], [ %.sroa.0.0.copyload.i, %bb.a ]
  %i.j = add i16 %.sroa.033.0.us, 1               ; 4 uses
  switch i16 %i.j, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.us [
    i16 1, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us
    i16 0, label %.split.us.backedge
  ]

.split.us.backedge:                               ; preds = %.split.us, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.us, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us
  br label %.split.us, !llvm.loop !839

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.us: ; preds = %.split.us
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !190
  %.not.i.us = icmp eq ptr %i.m, null
  br i1 %.not.i.us, label %.split.us.backedge, label %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us

_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us: ; preds = %.split.us, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.us
  %.pre-phi = phi i64 [ %i.k, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i.us ], [ 1, %.split.us ]
  %gep.us = getelementptr inbounds nuw [537 x i8], ptr %invariant.gep, i64 %.pre-phi
  %i.n = load i8, ptr %gep.us, align 1, !tbaa !162
  %i.o = and i8 %i.n, -5
  %spec.select.i.us = icmp eq i8 %i.o, 0
  br i1 %spec.select.i.us, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread, label %.split.us.backedge

.split:                                           ; preds = %bb.a, %.split.backedge
  %.sroa.033.0 = phi i16 [ %i.p, %.split.backedge ], [ %.sroa.0.0.copyload.i, %bb.a ]
  %i.p = add i16 %.sroa.033.0, 1                  ; 5 uses
  switch i16 %i.p, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i [
    i16 1, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread
    i16 0, label %.split.backedge
  ]

.split.backedge:                                  ; preds = %.split, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i
  br label %.split, !llvm.loop !839

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %.split
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.split.backedge, label %_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread

_ZNK4llvm18TargetLoweringBase24isOperationLegalOrCustomEjNS_3EVTEb.exit.thread: ; preds = %.split, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us
  %.us-phi = phi i16 [ %i.j, %_ZNK4llvm18TargetLoweringBase18getOperationActionEjNS_3EVTE.exit.i.us ], [ %i.p, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ %i.p, %.split ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !163  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i32 noundef %.fr, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.us-phi, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.w, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.x) #18 ; 2 uses
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.y, 0
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.y, 1
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !155 ; 2 uses
  %.sroa.0.0.copyload.i26 = load i16, ptr %i.aa, align 8, !tbaa !157
  %.sroa.21.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.21.0.copyload.i28 = load ptr, ptr %.sroa.21.0..sroa_idx.i27, align 8, !tbaa !159
  store ptr %.fca.0.extract3, ptr %3, align 8, !tbaa !179
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !168
  %i.ab = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.z, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i26, ptr %.sroa.21.0.copyload.i28, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3) #18
  ret { ptr, i32 } %i.ab
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getVAArgENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_j(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZNK12_GLOBAL__N_120SelectionDAGLegalize26ShuffleWithNarrowerEltTypeEN4llvm3EVTES2_RKNS1_5SDLocENS1_7SDValueES6_NS1_8ArrayRefIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i16 %1, ptr %2, i16 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.0.val, i32 %.8.val, ptr nofree noundef readonly byval(%"class.llvm::SDValue") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %10 = alloca %"class.llvm::SmallVector.327", align 8 ; 12 uses
  %11 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  store i16 %1, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  store i16 %3, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %4, ptr %i.b, align 8
  %.not.i.i = icmp eq i16 %3, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.a
  %i.c = add i16 %3, -163
  %spec.select.i.i.i = icmp ult i16 %i.c, 53
  br i1 %spec.select.i.i.i, label %bb.b, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.a
  %i.d = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #19
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.e = zext i16 %3 to i64
  %i.f = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !195
  %i.i = zext i16 %i.h to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.j = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #19
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.c
  %i.k = phi i32 [ %i.i, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i38 = icmp eq i16 %1, 0
  br i1 %.not.i.i38, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i42, label %.split.i39

.split.i39:                                       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.l = add i16 %1, -163
  %spec.select.i.i.i40 = icmp ult i16 %i.l, 53
  br i1 %spec.select.i.i.i40, label %bb.d, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i41

_ZNK4llvm3EVT16isScalableVectorEv.exit.i42:       ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %i.m = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i42, %.split.i39
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.5) #20
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i41:   ; preds = %.split.i39
  %i.n = zext i16 %1 to i64
  %i.o = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !195
  %i.r = zext i16 %i.q to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit43

bb.e:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i42
  %i.s = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit43

_ZNK4llvm3EVT20getVectorNumElementsEv.exit43:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i41, %bb.e
  %i.t = phi i32 [ %i.r, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i41 ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = udiv i32 %i.t, %i.k                      ; 4 uses
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !154, !nonnull !137, !align !138
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.x, i16 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.0.val, i32 %.8.val, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #18
  br label %bb.m

bb.g:                                             ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !180
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !181
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 8, ptr %i.ab, align 4, !tbaa !182
  %i.ac = load ptr, ptr %7, align 8, !tbaa !482
  %.not361 = icmp ugt i32 %i.k, %i.t
  br i1 %.not361, label %.split4, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %12 = zext i32 %i.k to i64
  br label %.lr.ph

.split4.loopexit:                                 ; preds = %._crit_edge
  %.sroa.03.0.copyload.pre = load i16, ptr %8, align 8, !tbaa !157
  %.sroa.25.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !159
  %.pre = load ptr, ptr %10, align 8, !tbaa !180
  %.pre9 = load i32, ptr %i.aa, align 8, !tbaa !181
  %i.ad = zext i32 %.pre9 to i64
  br label %.split4

.split4:                                          ; preds = %.split4.loopexit, %bb.g
  %i.ae = phi i64 [ %i.ad, %.split4.loopexit ], [ 0, %bb.g ]
  %i.af = phi ptr [ %.pre, %.split4.loopexit ], [ %i.z, %bb.g ]
  %.sroa.25.0.copyload = phi ptr [ %.sroa.25.0.copyload.pre, %.split4.loopexit ], [ %2, %bb.g ]
  %.sroa.03.0.copyload = phi i16 [ %.sroa.03.0.copyload.pre, %.split4.loopexit ], [ %1, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154, !nonnull !137, !align !138
  store ptr %i.af, ptr %11, align 8, !tbaa !482
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ae, ptr %i.ai, align 8, !tbaa !483
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i16 %.sroa.03.0.copyload, ptr %.sroa.25.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %.0.val, i32 %.8.val, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %11) #18
  %i.ak = load ptr, ptr %10, align 8, !tbaa !180  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.z
  br i1 %i.al, label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.split4
  call void @free(ptr noundef %i.ak) #18
  br label %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit

_ZN4llvm11SmallVectorIiLj8EED2Ev.exit:            ; preds = %.split4, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !168 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = mul i32 %i.an, %i.u
  br i1 %i.ao, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us
  %.0332.us = phi i32 [ %i.ax, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us ], [ 0, %.lr.ph ]
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !181 ; 2 uses
  %i.ar = load i32, ptr %i.ab, align 4, !tbaa !182
  %.not.i.us = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i.us, label %bb.j, label %bb.i, !prof !183

bb.i:                                             ; preds = %.lr.ph.split.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef -1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %10, align 8, !tbaa !180
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 -1, ptr %i.au, align 1
  %i.av = load i32, ptr %i.aa, align 8, !tbaa !181
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.aa, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us: ; preds = %bb.j, %bb.i
  %i.ax = add nuw i32 %.0332.us, 1                ; 2 uses
  %.not36.us = icmp eq i32 %i.ax, %i.u
  br i1 %.not36.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !840

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %12
  br i1 %exitcond, label %.split4.loopexit, label %.lr.ph, !llvm.loop !841

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %.0332 = phi i32 [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ay = add i32 %.0332, %i.ap                   ; 2 uses
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !181 ; 2 uses
  %i.ba = load i32, ptr %i.ab, align 4, !tbaa !182
  %.not.i44 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i44, label %bb.l, label %bb.k, !prof !183

bb.k:                                             ; preds = %.lr.ph.split
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.ay)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.l:                                             ; preds = %.lr.ph.split
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %10, align 8, !tbaa !180
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  store i32 %i.ay, ptr %i.bd, align 1
  %i.be = load i32, ptr %i.aa, align 8, !tbaa !181
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aa, align 8, !tbaa !181
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.l, %bb.k
  %i.bg = add nuw i32 %.0332, 1                   ; 2 uses
  %.not36 = icmp eq i32 %i.bg, %i.u
  br i1 %.not36, label %._crit_edge, label %.lr.ph.split, !llvm.loop !840

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit, %bb.f
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.aj, %_ZN4llvm11SmallVectorIiLj8EED2Ev.exit ]
  ret { ptr, i32 } %.pn
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG14getTokenFactorERKNS_5SDLocERNS_15SmallVectorImplINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i16 @_ZL28getPromotedVectorElementTypeRKN4llvm14TargetLoweringENS_3MVTES3_(i16 %0, i16 %1) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %0 to i64
  %i.b = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.a ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.d = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.d, label %bb.b, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.a
  %i.e = zext i16 %1 to i64
  %i.f = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i9 = getelementptr i8, ptr %i.f, i64 -8
  %.sroa.2.0.copyload.i10 = load i8, ptr %.sroa.2.0..sroa_idx.i9, align 8
  %i.g = trunc nuw i8 %.sroa.2.0.copyload.i10 to i1
  br i1 %i.g, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit13

bb.c:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit13:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.h = getelementptr i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i8 = load i64, ptr %i.h, align 16
  %i.i = udiv i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit13
  %i.l = tail call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %1, i32 noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit13, %bb.d
  %.sroa.07.0 = phi i16 [ %i.l, %bb.d ], [ %1, %_ZNK4llvm8TypeSizecvmEv.exit13 ]
  ret i16 %.sroa.07.0
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG9getAtomicEjRKNS_5SDLocENS_3EVTENS_8SDVTListENS_8ArrayRefINS_7SDValueEEEPNS_17MachineMemOperandENS_3ISD11LoadExtTypeE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"struct.llvm::SDVTList") align 8, ptr noundef byval(%"class.llvm::ArrayRef.154") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4llvm3ISD10isVPOpcodeEj(i32 noundef) local_unnamed_addr #1

declare i64 @_ZN4llvm3ISD12getVPMaskIdxEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !194    ; 4 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i16 %i.a, -12
  %or.cond.i = icmp ult i16 %i.b, 7
  %i.c = add i16 %i.a, -105
  %or.cond3.i = icmp ult i16 %i.c, 58
  %or.cond4.i = or i1 %or.cond.i, %or.cond3.i
  %i.d = add i16 %i.a, -195
  %spec.select.i = icmp ult i16 %i.d, 21
  %i.e = or i1 %spec.select.i, %or.cond4.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase30allowsMemoryAccessForAlignmentERNS_11LLVMContextERKNS_10DataLayoutENS_3EVTERKNS_17MachineMemOperandEPj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(912), i16, ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

declare void @_ZNK4llvm14TargetLowering19expandUnalignedLoadEPNS_10LoadSDNodeERNS_12SelectionDAGE(ptr dead_on_unwind writable sret(%"struct.std::pair.284") align 8, ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #1

declare { ptr, i32 } @_ZN4llvm12SelectionDAG7getLoadENS_3EVTERKNS_5SDLocENS_7SDValueES5_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i16, ptr, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase18allowsMemoryAccessERNS_11LLVMContextERKNS_10DataLayoutENS_3EVTERKNS_17MachineMemOperandEPj(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(912), i16, ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN4llvm12SelectionDAG10getExtLoadENS_3ISD11LoadExtTypeERKNS_5SDLocENS_3EVTENS_7SDValueES7_S6_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), i32 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::EVT") align 8, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm3ISD20getExtForLoadExtTypeEbNS0_11LoadExtTypeE(i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZNK4llvm14TargetLowering20expandUnalignedStoreEPNS_11StoreSDNodeERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr noundef nonnull align 8 dereferenceable(920)) local_unnamed_addr #1

declare void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt4lshrEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !178  ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !178
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !135
  store i64 %i.e, ptr %0, align 8, !tbaa !135
  br label %bb.b

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #18
  %.pr = load i32, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.f = icmp ult i32 %.pr, 65
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.thread, %_ZN4llvm5APIntC2ERKS0_.exit
  %i.g = phi i32 [ %i.c, %_ZN4llvm5APIntC2ERKS0_.exit.thread ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.h = icmp eq i32 %2, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !135
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !135
  %i.j = zext nneg i32 %2 to i64
  %i.k = lshr i64 %i.i, %i.j
  store i64 %i.k, ptr %0, align 8, !tbaa !135
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  tail call void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2) #18
  br label %_ZN4llvm5APInt11lshrInPlaceEj.exit

_ZN4llvm5APInt11lshrInPlaceEj.exit:               ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZN4llvm5APInt12lshrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN4llvm6SDNodeES2_EZNS0_12SelectionDAG8LegalizeEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_SA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !843   ; 6 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !179  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !151, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %.val, align 8, !tbaa !24  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.g, 3
end_hunk_0
