Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SMTConstraintManager?download=true
inline.NumInlined: 2176
inline.NumDeleted: 975
begin_hunk_0_@_ZNK5clang4ento20SMTConstraintManager9printJsonERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKcjb:bb.a
_ZN4llvm9StringRefC2EPKc.exit.i89:                ; preds = %_ZN4llvm11raw_ostreamlsEc.exit87
  %i.hn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21 ; 5 uses
  %i.ho = load ptr, ptr %i.v, align 8, !tbaa !143
  %i.hp = load ptr, ptr %i.x, align 8, !tbaa !144 ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = icmp ugt i64 %i.hn, %i.hs
  br i1 %i.ht, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i89
  %i.hu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %3, i64 noundef %i.hn) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit92

bb.aw:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i89
  %.not.i2.i90 = icmp eq i64 %i.hn, 0
  br i1 %.not.i2.i90, label %_ZN4llvm11raw_ostreamlsEPKc.exit92, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr nonnull align 1 %3, i64 %i.hn, i1 false)
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !144
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hn
  store ptr %i.hw, ptr %i.x, align 8, !tbaa !144
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit92

_ZN4llvm11raw_ostreamlsEPKc.exit92:               ; preds = %_ZN4llvm11raw_ostreamlsEc.exit87, %bb.av, %bb.aw, %bb.ax
  %i.hx = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.hy = load i32, ptr %i.ce, align 8, !tbaa !22 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !134 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !138 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i93, label %.preheader.i.i.preheader, label %.lr.ph.i.i.i

.preheader.i.i.preheader:                         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit92
  %storemerge.i.i.i150 = add i32 %i.hy, -1        ; 3 uses
  %.not.i.i3.i.i151 = icmp eq i32 %storemerge.i.i.i150, 0
  br i1 %.not.i.i3.i.i151, label %_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i, label %.lr.ph154

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit92, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.in, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i ], [ %i.ie, %_ZN4llvm11raw_ostreamlsEPKc.exit92 ] ; 3 uses
  %i.if = load i32, ptr %i.ce, align 8, !tbaa !22 ; 2 uses
  %i.ig = load i32, ptr %i.cf, align 4, !tbaa !23
  %.not.i.i.i.i94 = icmp ult i32 %i.if, %i.ig
  br i1 %.not.i.i.i.i94, label %bb.az, label %bb.ay, !prof !131

bb.ay:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE15growAndPushBackESF_(ptr noundef nonnull align 8 dereferenceable(176) %7, ptr noundef nonnull %.05.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.ih = zext i32 %i.if to i64
  %i.ii = load ptr, ptr %7, align 8, !tbaa !21
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ih
  store ptr %.05.i.i.i, ptr %i.ij, align 1
  %i.ik = load i32, ptr %i.ce, align 8, !tbaa !22
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ce, align 8, !tbaa !22
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !132 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i95, label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2

.preheader.i.i:                                   ; preds = %.lr.ph154
  %storemerge.i.i.i = add i32 %storemerge.i.i.i153, -1 ; 3 uses
  %.not.i.i3.i.i = icmp eq i32 %storemerge.i.i.i, 0
  br i1 %.not.i.i3.i.i, label %_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i, label %.lr.ph154, !llvm.loop !3

.lr.ph154:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %storemerge.i.i.i153 = phi i32 [ %storemerge.i.i.i, %.preheader.i.i ], [ %storemerge.i.i.i150, %.preheader.i.i.preheader ] ; 3 uses
  %.0.i.i.i96152 = phi ptr [ %i.ir, %.preheader.i.i ], [ %i.ic, %.preheader.i.i.preheader ]
  %i.io = zext i32 %storemerge.i.i.i153 to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !134 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !138
  %i.iu = icmp eq ptr %i.it, %.0.i.i.i96152
  br i1 %i.iu, label %.preheader.i.i, label %._ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i_crit_edge, !llvm.loop !3

._ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i_crit_edge: ; preds = %.lr.ph154
  br label %_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i, !llvm.loop !3

_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i: ; preds = %.preheader.i.i, %._ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i_crit_edge, %.preheader.i.i.preheader
  %storemerge.i.i.i.lcssa = phi i32 [ %storemerge.i.i.i153, %._ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i_crit_edge ], [ %storemerge.i.i.i150, %.preheader.i.i.preheader ], [ %storemerge.i.i.i, %.preheader.i.i ] ; 2 uses
  store i32 %storemerge.i.i.i.lcssa, ptr %i.ce, align 8, !tbaa !22
  br label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit.loopexit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEEELb1EE9push_backESF_.exit.i.i.i
  %.pre106 = load i32, ptr %i.ce, align 8, !tbaa !22
  br label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit.loopexit, %_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i
  %i.iv = phi i32 [ %.pre106, %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_EppEv.exit.loopexit ], [ %storemerge.i.i.i.lcssa, %_ZN4llvm26ImutAVLTreeInOrderIteratorINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE20ascendFromRightChildEv.exit.i.i ]
  %.not.i.i.i.i34.not = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i.i34.not, label %_ZN4llvm21iterator_adaptor_baseINS_20ImutAVLValueIteratorINS_12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISC_EEEEEENS_26ImutAVLTreeInOrderIteratorISE_EESt26bidirectional_iterator_tagKSC_lPSK_RSK_ED2Ev.exit._crit_edge, label %bb.ae, !llvm.loop !267

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %bb.ac, %bb.ad
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 68 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !58
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !58
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.ba, label %_ZN4llvm12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISA_EEED2Ev.exit

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  call void @_ZN4llvm11ImutAVLTreeINS_17ImutContainerInfoISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.099.0), !inline_history !0
  br label %_ZN4llvm12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISA_EEED2Ev.exit

_ZN4llvm12ImmutableSetISt4pairIPKN5clang4ento7SymExprEPKNS_7SMTExprEENS_17ImutContainerInfoISA_EEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit22, %bb.l, %bb.m, %bb.n, %_ZN4llvm11raw_ostreamlsEPKc.exit26, %bb.ba
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento17ConstraintManager10printValueERN4llvm11raw_ostreamENS2_18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN5clang4ento23SimpleConstraintManager14assumeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr nofree noundef align 8 dereferenceable(8), ptr, i8, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN5clang4ento23SimpleConstraintManager28assumeInclusiveRangeInternalEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_6NonLocERKNS2_6APSIntESA_b(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr nofree noundef align 8 dereferenceable(8), ptr, i8, ptr noundef nonnull align 8 dereferenceable(13), ptr noundef nonnull align 8 dereferenceable(13), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4ento20SMTConstraintManager14canReasonAboutENS0_4SValE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, i8 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82, !nonnull !60, !align !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17712
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !651
  %i.g = icmp eq i8 %2, 9
  br i1 %i.g, label %bb.b, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 %i.j(ptr noundef nonnull align 8 dereferenceable(28) %1) #21
  %i.l = and i64 %i.k, -16
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !92
  %i.o = tail call noundef zeroext i1 @_ZNK5clang4Type13isComplexTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.n) #21
  br i1 %i.o, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 16, !tbaa !92
  %i.q = tail call noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.p) #21
  br i1 %i.q, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 16, !tbaa !92  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !45
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !92  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 16
  %i.y = icmp eq i8 %i.x, 13
  %.not7.i = icmp ne ptr %i.v, null
  %.not.not.not.i = and i1 %.not7.i, %i.y
  br i1 %.not.not.not.i, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit:    ; preds = %bb.d
  %i.z = load i32, ptr %i.w, align 16
  %i.aa = and i32 %i.z, 536346624
  %i.ab = icmp eq i32 %i.aa, 262144000
  br i1 %i.ab, label %bb.e, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

bb.e:                                             ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !660 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, @_ZN4llvm11APFloatBase20semX87DoubleExtendedE
  %i.af = icmp eq ptr %i.ad, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit, label %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread

_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread: ; preds = %bb.e, %bb.d, %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit
  %i.ag = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.r) #21
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 664
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.g:                                             ; preds = %_ZNK5clang4Type21isSpecificBuiltinTypeEj.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !86 ; 4 uses
  %i.ap = add i32 %i.ao, -5
  %i.aq = icmp ult i32 %i.ap, 5
  br i1 %i.aq, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !59, !nonnull !60, !align !61 ; 6 uses
  switch i32 %i.ao, label %bb.k [
    i32 4, label %bb.i
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102
  %i.au = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef nonnull %i.at) ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i8 } %i.au, 0
  %.fca.1.extract63 = extractvalue { ptr, i8 } %i.au, 1
  %i.av = load ptr, ptr %0, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract62, i8 %.fca.1.extract63) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !105
  %i.bb = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef %i.ba) ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i8 } %i.bb, 0
  %.fca.1.extract51 = extractvalue { ptr, i8 } %i.bb, 1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract50, i8 %.fca.1.extract51) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bg = icmp ult i32 %i.ao, 4
  tail call void @llvm.assume(i1 %i.bg)
  switch i32 %i.ao, label %bb.n [
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112
  %i.bj = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef %i.bi) ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i8 } %i.bj, 0
  %.fca.1.extract35 = extractvalue { ptr, i8 } %i.bj, 1
  %i.bk = load ptr, ptr %0, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract34, i8 %.fca.1.extract35) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !115
  %i.bq = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef %i.bp) ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i8 } %i.bq, 0
  %.fca.1.extract23 = extractvalue { ptr, i8 } %i.bq, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract22, i8 %.fca.1.extract23) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !117
  %i.bx = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef %i.bw) ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i8 } %i.bx, 0
  %.fca.1.extract11 = extractvalue { ptr, i8 } %i.bx, 1
  %i.by = load ptr, ptr %0, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract10, i8 %.fca.1.extract11) #21
  br i1 %i.cb, label %bb.o, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118
  %i.ce = tail call { ptr, i8 } @_ZN5clang4ento11SValBuilder13makeSymbolValEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(412) %i.ar, ptr noundef %i.cd) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ce, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ce, 1
  %i.cf = load ptr, ptr %0, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.fca.0.extract, i8 %.fca.1.extract) #21
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit

_ZNK5clang4ento4SVal5getAsINS0_6nonloc9SymbolValEEESt8optionalIT_Ev.exit: ; preds = %bb.f, %bb.c, %bb.b, %bb.e, %bb.g, %bb.i, %bb.j, %bb.o, %bb.n, %bb.m, %bb.l, %bb.a
  %.9 = phi i1 [ true, %bb.a ], [ true, %bb.g ], [ false, %bb.b ], [ %i.am, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.n ], [ %i.ay, %bb.i ], [ %i.bf, %bb.j ], [ %i.bn, %bb.l ], [ %i.bu, %bb.m ], [ %i.ci, %bb.o ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN5clang4ento20SMTConstraintManager9checkNullEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.clang::QualType", align 8   ; 6 uses
  %4 = alloca %"class.std::optional.569", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82, !nonnull !60, !align !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = call { ptr, i8 } @_ZN5clang4ento7SMTConv10getSymExprERSt10shared_ptrIN4llvm9SMTSolverEERNS_10ASTContextEPKNS0_7SymExprERNS_8QualTypeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(23904) %i.f, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null) ; 2 uses
  %i.i = extractvalue { ptr, i8 } %i.h, 0
  store ptr %i.i, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = extractvalue { ptr, i8 } %i.h, 1         ; 2 uses
  store i8 %i.k, ptr %i.j, align 8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit, label %bb.j

_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.sroa.01.0.copyload = load i64, ptr %3, align 8, !tbaa !45
  %i.m = call noundef ptr @_ZN5clang4ento7SMTConv11getZeroExprERSt10shared_ptrIN4llvm9SMTSolverEERNS_10ASTContextERKPKNS3_7SMTExprENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(23904) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.01.0.copyload, i1 noundef zeroext true)
  store ptr %i.m, ptr %i.a, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.n = load i8, ptr %i.j, align 8, !tbaa !158, !range !99, !noundef !60
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit8, label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit
  call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit8: ; preds = %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !45
  %i.p = call noundef ptr @_ZN5clang4ento7SMTConv11getZeroExprERSt10shared_ptrIN4llvm9SMTSolverEERNS_10ASTContextERKPKNS3_7SMTExprENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(23904) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.0.0.copyload, i1 noundef zeroext false)
  store ptr %i.p, ptr %i.b, align 8, !tbaa !98
  %i.q = load ptr, ptr %1, align 8, !tbaa !50     ; 3 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit8
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.q) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %_ZNRSt8optionalIPKN4llvm7SMTExprEE5valueEv.exit8, %bb.c
  %i.r = call i16 @_ZNK5clang4ento20SMTConstraintManager10checkModelEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprERKPKNS2_7SMTExprE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.s = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.s, null
  br i1 %.not.i.i9, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !50     ; 3 uses
  store ptr %i.t, ptr %6, align 8, !tbaa !50
  %.not.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i10, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit11, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.t) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit11

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit11: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.e
  %i.u = call i16 @_ZNK5clang4ento20SMTConstraintManager10checkModelEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprERKPKNS2_7SMTExprE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.v = load ptr, ptr %6, align 8, !tbaa !50     ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.v, null
  br i1 %.not.i.i12, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit11
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.v) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit11, %bb.f
  %i.w = and i16 %i.r, 257                        ; 2 uses
  %i.x = icmp eq i16 %i.w, 257
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13
  %i.y = and i16 %i.u, 257
  %i.z = icmp eq i16 %i.y, 256
  br i1 %i.z, label %bb.i, label %.thread

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13
  %i.aa = icmp eq i16 %i.w, 256
  %i.ab = and i16 %i.u, 257
  %i.ac = icmp eq i16 %i.ab, 257
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.g, %bb.h
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %.sroa.521.0 = phi i16 [ 0, %.thread ], [ 257, %bb.g ], [ 256, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.020.0.insert.insert = phi i16 [ %.sroa.521.0, %bb.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i16 %.sroa.020.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento20SMTConstraintManager9assumeSymEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_7SymExprEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.clang::QualType", align 8   ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.std::optional.569", align 8 ; 7 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82, !nonnull !60, !align !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store i8 0, ptr %i.a, align 1, !tbaa !159
  %i.i = call { ptr, i8 } @_ZN5clang4ento7SMTConv10getSymExprERSt10shared_ptrIN4llvm9SMTSolverEERNS_10ASTContextEPKNS0_7SymExprERNS_8QualTypeEPb(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(23904) %i.g, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a) ; 2 uses
  %i.j = extractvalue { ptr, i8 } %i.i, 0
  store ptr %i.j, ptr %6, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.l = extractvalue { ptr, i8 } %i.i, 1         ; 2 uses
  store i8 %i.l, ptr %i.k, align 8
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !50     ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.n) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %3, i1 noundef zeroext %4) #21
  %i.r = load ptr, ptr %7, align 8, !tbaa !50     ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i.i9, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.s = load i8, ptr %i.a, align 1, !tbaa !159, !range !99, !noundef !60
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.i.i = load i64, ptr %5, align 8
end_hunk_0
