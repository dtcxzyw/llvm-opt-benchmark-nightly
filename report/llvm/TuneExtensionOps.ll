Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TuneExtensionOps?download=true
inline.NumInlined: 3787
inline.NumDeleted: 2008
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir9transform4tune6KnobOp5printERNS_12OpAsmPrinterE:bb.a
_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.ac, %bb.ad
  %i.hi = load ptr, ptr %1, align 8, !tbaa !101
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call noundef nonnull align 8 dereferenceable(48) ptr %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %1) #23, !inline_history !7 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !140 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !139
  %.not.i.i53 = icmp ult ptr %i.hn, %i.hp
  br i1 %.not.i.i53, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.hq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.hl, i8 noundef zeroext 32) #23 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit54

bb.af:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store ptr %i.hr, ptr %i.hm, align 8, !tbaa !140
  store i8 32, ptr %i.hn, align 1, !tbaa !47
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit54

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit54: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.hs = load ptr, ptr %0, align 8, !tbaa !72    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !243
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !73, !noalias !243 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 -16
  %i.hx = zext i32 %i.hu to i64
  %.sroa.0.0.i.i = select i1 %i.hv, ptr null, ptr %i.hw
  store ptr %.sroa.0.0.i.i, ptr %2, align 8, !noalias !243
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !noalias !243
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !243
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %5, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0.copyload.i.i.i10.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i, align 8 ; 3 uses
  %i.hz = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %i.hz, label %_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit54
  %i.ia = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i) #23
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ib, align 8
  %i.ic = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load ptr, ptr %1, align 8, !tbaa !101
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.id) #23, !inline_history !9
  %.sroa.3.015.i.i.i.i.i = add nsw i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not16.i.i.i.i.i = icmp eq i64 %.sroa.3.015.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %.not16.i.i.i.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i
  %.sroa.3.017.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i ], [ %.sroa.3.015.i.i.i.i.i, %bb.ag ] ; 2 uses
  %i.ih = load ptr, ptr %1, align 8, !tbaa !101
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call noundef nonnull align 8 dereferenceable(48) ptr %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %1) #23, !inline_history !10 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !139
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !140 ; 2 uses
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = icmp ult i64 %i.ir, 2
  br i1 %i.is, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.it = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noundef nonnull @.str.85, i64 noundef 2) #23 ; 0 uses
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i
  store i16 8236, ptr %i.io, align 1
  %i.iu = load ptr, ptr %i.in, align 8, !tbaa !140
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !140
  br label %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i

_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.iw = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef %.sroa.3.017.i.i.i.i.i) #23
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %i.ix, align 8
  %i.iy = and i64 %.0.copyload.i.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = load ptr, ptr %1, align 8, !tbaa !101
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.iz) #23, !inline_history !9
  %.sroa.3.0.i.i.i.i.i = add nsw i64 %.sroa.3.017.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i10.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit: ; preds = %_ZZN4llvm10interleaveIN4mlir14ValueTypeRangeINS1_11ResultRangeEEEZNS_15interleaveCommaIS4_NS1_12OpAsmPrinterENS1_4TypeEEEvRKT_RT0_EUlRKS7_E_S6_S7_EEvSA_RT1_SB_RKNS_9StringRefEENKUlvE_clEv.exit.i.i.i.i.i, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit54, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.jd = load ptr, ptr %4, align 8, !tbaa !90    ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.fv
  br i1 %i.je, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit
  call void @free(ptr noundef %i.jd) #23
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterENS_11ResultRangeEvEERT_S4_RKNS_14ValueTypeRangeIT0_EE.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform4tune6KnobOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !73   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.f = zext i32 %i.c to i64
  %.sroa.0.0.i.i = select i1 %i.d, ptr null, ptr %i.e
  tail call void @_ZN4mlir9transform14producesHandleENS_11ResultRangeERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %.sroa.0.0.i.i, i64 %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  tail call void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %1) #23
  ret void
}

declare void @_ZN4mlir9transform14producesHandleENS_11ResultRangeERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform4tune6KnobOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(384) %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.std::optional.72", align 8  ; 5 uses
  %8 = alloca %"class.mlir::DiagnosedDefiniteFailure", align 8 ; 18 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !72     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %.not.i.not = icmp eq ptr %i.h, null
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.j = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.k = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i.i.i.i2 = icmp ugt i32 %i.m, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i2)
  %i.n = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i3 = and i32 %i.n, 1
  %i.o = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i3 to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %.not.i4 = icmp ne ptr %i.r, null
  %spec.select.i5 = zext i1 %.not.i4 to i8
  store ptr %i.r, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %spec.select.i5, ptr %i.s, align 8
  call void @_ZN4mlir9transform16TransformResults9setParamsENS_8OpResultEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr %i.j, ptr nonnull %7, i64 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %0, align 8, !tbaa !90, !alias.scope !254
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !87, !alias.scope !254
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !88, !alias.scope !254
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.w, align 8, !tbaa !141, !alias.scope !254
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.x, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.z, align 8, !noalias !255
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %8, ptr %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %9) #23
  %i.aa = load ptr, ptr %8, align 8, !tbaa !66
  %.not.i.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i8, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread, label %bb.d

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread: ; preds = %bb.c
  %10 = load ptr, ptr %1, align 8, !tbaa !72
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 44
  %12 = load i32, ptr %11, align 4
  %.not.i.i.i.i922 = icmp ugt i32 %12, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i922)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 3, ptr %6, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.32, ptr %i.ac, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ae, %i.ag
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = zext i32 %i.ae to i64
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.ak = load i32, ptr %i.ad, align 8, !tbaa !87
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.ad, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre = load ptr, ptr %8, align 8, !tbaa !66
  %i.am = icmp eq ptr %.pre, null
  %i.an = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %.not.i.i.i.i9 = icmp ugt i32 %i.ap, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i9)
  br i1 %i.am, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit, label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = lshr i32 %i.ap, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i10 = and i32 %i.ar, 1
  %i.as = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i10 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.as
  %.sroa.0.0.copyload.i.i.i11 = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.au, ptr %.sroa.0.0.copyload.i.i.i11) #23 ; 0 uses
  %.pr = load ptr, ptr %8, align 8, !tbaa !66
  %.not.i.i.i.i13 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i13, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 3, ptr %5, align 8, !tbaa !81
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.33, ptr %i.ax, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 53, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i14, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !87 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i15 = icmp ult i32 %i.az, %i.bb
  br i1 %.not.i.i.i.i.i.i.i15, label %bb.i, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bc = zext i32 %i.az to i64
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !87
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ay, align 8, !tbaa !87
  br label %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit, %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA54_KcEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #23, !noalias !256
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %0, align 8, !tbaa !90, !alias.scope !257
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !87, !alias.scope !257
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.bj, align 4, !tbaa !88, !alias.scope !257
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.bk, align 8, !tbaa !141, !alias.scope !257
  %i.bl = load ptr, ptr %8, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA54_KcEEOS0_OT_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !67, !range !68, !noundef !69
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.l, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !67
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bp) #23
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit:      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit, %bb.b
  ret void
}

declare void @_ZN4mlir9transform16TransformResults9setParamsENS_8OpResultEN4llvm8ArrayRefINS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(384), ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12is_containedIRN4mlir9ArrayAttrESt8optionalINS1_9AttributeEEEEbOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = tail call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr i64 %i.i, 5                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !260, !range !68, !noundef !69
  %i.n = trunc nuw i8 %i.m to i1
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %1, align 8 ; 4 uses
  %i.o = and i64 %i.i, -32
  %scevgep63.i.i.i = getelementptr i8, ptr %i.b, i64 %i.o ; 2 uses
  br i1 %i.n, label %.lr.ph.split.i.i.i, label %._crit_edge.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.e
  %.053.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %i.j, %.lr.ph.i.i.i ] ; 2 uses
  %.02952.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.b, %.lr.ph.i.i.i ] ; 9 uses
  %i.p = load ptr, ptr %.02952.i.i.i, align 8
  %i.q = icmp eq ptr %i.p, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.q, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.t, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.w, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.z, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 32
  %i.ab = add nsw i64 %.053.i.i.i, -1
  %i.ac = icmp sgt i64 %.053.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.split.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !258

._crit_edge.i.i.i:                                ; preds = %bb.e, %.lr.ph.i.i.i, %bb.a
  %.029.lcssa.i.i.i = phi ptr [ %i.b, %bb.a ], [ %scevgep63.i.i.i, %.lr.ph.i.i.i ], [ %scevgep63.i.i.i, %bb.e ] ; 6 uses
  %i.ad = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.ae = sub i64 %i.g, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  switch i64 %i.af, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge65.i.i.i
  ]

._crit_edge._crit_edge65.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert66.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre67.i.i.i = load i8, ptr %.phi.trans.insert66.i.i.i, align 8, !tbaa !260, !range !68
  %.sroa.0.0.copyload.i.i35.pre.i.i.i = load ptr, ptr %1, align 8
  %.pre70.i.i.i = trunc nuw i8 %.pre67.i.i.i to i1
  br label %bb.j

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !260, !range !68
  %.sroa.0.0.copyload.i.i34.pre.i.i.i = load ptr, ptr %1, align 8
  %.pre69.i.i.i = trunc nuw i8 %.pre.i.i.i to i1
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !260, !range !68, !noundef !69
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %.sroa.0.0.copyload.i.i33.i.i.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.aj = load ptr, ptr %.029.lcssa.i.i.i, align 8
  %i.ak = icmp eq ptr %i.aj, %.sroa.0.0.copyload.i.i33.i.i.i
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i1 [ %.pre69.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i.i34.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i34.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.sroa.0.0.copyload.i.i33.i.i.i, %bb.g ] ; 2 uses
  %.1.i.i.i = phi ptr [ %.029.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.am, %bb.g ] ; 3 uses
  %i.an = load ptr, ptr %.1.i.i.i, align 8
  %i.ao = icmp eq ptr %i.an, %.sroa.0.0.copyload.i.i34.i.i.i
  %i.ap = select i1 %.pre-phi.i.i.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge65.i.i.i
  %.pre-phi71.i.i.i = phi i1 [ %.pre70.i.i.i, %._crit_edge._crit_edge65.i.i.i ], [ %.pre-phi.i.i.i, %bb.i ]
  %.sroa.0.0.copyload.i.i35.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i35.pre.i.i.i, %._crit_edge._crit_edge65.i.i.i ], [ %.sroa.0.0.copyload.i.i34.i.i.i, %bb.i ]
  %.2.i.i.i = phi ptr [ %.029.lcssa.i.i.i, %._crit_edge._crit_edge65.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ar = load ptr, ptr %.2.i.i.i, align 8
  %i.as = icmp eq ptr %i.ar, %.sroa.0.0.copyload.i.i35.i.i.i
  %i.at = select i1 %.pre-phi71.i.i.i, i1 %i.as, i1 false
  br i1 %i.at, label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit

_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 8
  br label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit

_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit16: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 16
  br label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit

_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit18: ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.02952.i.i.i, i64 24
  br label %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit

_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit: ; preds = %.lr.ph.split.i.i.i, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit16, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit18, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.f, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.aw, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit18 ], [ %i.av, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit16 ], [ %i.au, %_ZSt4findIPKN4mlir9AttributeESt8optionalIS1_EET_S6_S6_RKT0_.exit.loopexit.split.loop.exit ], [ %.02952.i.i.i, %.lr.ph.split.i.i.i ]
  %i.ax = tail call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = icmp ne ptr %.028.i.i.i, %i.ba
  ret i1 %i.bb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir9transform4tune14AlternativesOp25getEntrySuccessorOperandsENS_15RegionSuccessorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform4tune14AlternativesOpENS0_16VariadicOperandsEE11getOperandsEv.exit, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  br label %_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform4tune14AlternativesOpENS0_16VariadicOperandsEE11getOperandsEv.exit

_ZN4mlir7OpTrait6detail21MultiOperandTraitBaseINS_9transform4tune14AlternativesOpENS0_16VariadicOperandsEE11getOperandsEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform4tune14AlternativesOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a
  %.sroa.0109.0118 = phi i64 [ undef, %bb.d ], [ %.0.i.i, %bb.e ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.z = load ptr, ptr %1, align 8, !tbaa !72     ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 8388608
  %.not.i.i.i.i38 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i38, label %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread, label %_ZN4mlir9transform4tune14AlternativesOp14getODSOperandsEj.exit.i, !prof !50

_ZN4mlir9transform4tune14AlternativesOp14getODSOperandsEj.exit.i: ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread, label %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit

_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit: ; preds = %_ZN4mlir9transform4tune14AlternativesOp14getODSOperandsEj.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !114 ; 2 uses
  %.not148 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, null
  br i1 %.not148, label %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit
  %i.aj = call { ptr, i64 } @_ZNK4mlir9transform14TransformState9getParamsENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(328) %4, ptr nonnull %.sroa.0.0.copyload.i.i.i.i) #23 ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr null, ptr %17, align 8, !tbaa !44
  %.not = icmp eq i64 %i.al, 1
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.ao = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  %spec.select.i.i = select i1 %i.ao, ptr %.sroa.0.0.copyload.i, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %17, align 8
  %i.ap = icmp eq ptr %spec.select.i.i, null
  br i1 %i.ap, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !57
  %i.as = load ptr, ptr %1, align 8, !tbaa !72, !noalias !308
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.at, align 8, !noalias !309
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %18, ptr %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %19) #23
  %i.au = load ptr, ptr %18, align 8, !tbaa !66
  %.not.i.i.i.i39 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i39, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 3, ptr %14, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.35, ptr %i.aw, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 54, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 36 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j, !prof !89

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %14)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA55_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !90
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false)
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !87
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ax, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA55_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA55_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.pr = load ptr, ptr %18, align 8, !tbaa !66
  %.not.i.i.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i40, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA55_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %.sroa.0.0.copyload.i.i.i.i.i.i41 = load ptr, ptr %i.ak, align 8, !tbaa !43
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %.sroa.0.0.copyload.i.i.i.i.i.i41) #23
  %i.bg = load i32, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i42 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i.i.i.i.i.i.i42, label %bb.n, label %bb.m, !prof !89

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %_ZN4mlir10Diagnostic6appendIRKNS_9AttributeEEERS0_OT_.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bi = zext i32 %i.bg to i64
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !90
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false)
  %i.bl = load i32, ptr %i.ax, align 8, !tbaa !87
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.ax, align 8, !tbaa !87
  br label %_ZN4mlir10Diagnostic6appendIRKNS_9AttributeEEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRKNS_9AttributeEEERS0_OT_.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit: ; preds = %.critedge, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA55_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRKNS_9AttributeEEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #23, !noalias !310
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %0, align 8, !tbaa !90, !alias.scope !311
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !87, !alias.scope !311
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !88, !alias.scope !311
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.bq, align 8, !tbaa !141, !alias.scope !311
  %i.br = load ptr, ptr %18, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %18) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRKNS_9AttributeEEEOS0_OT_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !67, !range !68, !noundef !69
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.q, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.bs, align 8, !tbaa !67
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bv) #23
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit:      ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bf

bb.r:                                             ; preds = %bb.h
  %i.bw = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #23 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !46 ; 3 uses
  %i.bz = icmp ult i32 %i.by, 65
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !47
  %i.cb = icmp eq i32 %i.by, 0
  %i.cc = sub nuw nsw i32 64, %i.by
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = shl i64 %i.ca, %i.cd
  %i.cf = ashr exact i64 %i.ce, %i.cd
  %.0.i.i44 = select i1 %i.cb, i64 0, i64 %i.cf
  br label %.thread122

bb.t:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !85
  br label %.thread122

.thread122:                                       ; preds = %bb.t, %bb.s
  %.0.i43 = phi i64 [ %.0.i.i44, %bb.s ], [ %i.ch, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.pre159.pre = load ptr, ptr %1, align 8, !tbaa !72
  br label %bb.ae

_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread: ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, %_ZN4mlir9transform4tune14AlternativesOp14getODSOperandsEj.exit.i, %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit
  br i1 %.not.i.not, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i8 1, ptr %i.ci, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.cj, align 1, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i.i46 = load ptr, ptr %i.ck, align 8, !noalias !312
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %20, ptr %.sroa.0.0.copyload.i.i.i46, ptr noundef nonnull align 8 dereferenceable(34) %21) #23
  %i.cl = load ptr, ptr %20, align 8, !tbaa !66
  %.not.i.i.i.i47 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i47, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread, label %bb.v

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread: ; preds = %bb.u
  %25 = load ptr, ptr %1, align 8, !tbaa !72
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 44
  %27 = load i32, ptr %26, align 4
  %.not.i.i.i.i50182 = icmp ugt i32 %27, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i50182)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 3, ptr %12, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.32, ptr %i.cn, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i48 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i48, align 8, !tbaa !85
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !87 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %20, i64 36
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i49 = icmp ult i32 %i.cp, %i.cr
  br i1 %.not.i.i.i.i.i.i.i49, label %bb.x, label %bb.w, !prof !89

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %12)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit

bb.x:                                             ; preds = %bb.v
  %i.cs = zext i32 %i.cp to i64
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !90
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.cv = load i32, ptr %i.co, align 8, !tbaa !87
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.co, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre161 = load ptr, ptr %20, align 8, !tbaa !66
  %i.cx = icmp eq ptr %.pre161, null
  %i.cy = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %.not.i.i.i.i50 = icmp ugt i32 %i.da, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i50)
  br i1 %i.cx, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit, label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.dc = lshr i32 %i.da, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i51 = and i32 %i.dc, 1
  %i.dd = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i51 to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dd
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dg = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.df, ptr %.sroa.0.0.copyload.i.i.i52) #23 ; 0 uses
  %.pr126 = load ptr, ptr %20, align 8, !tbaa !66
  %.not.i.i.i.i54 = icmp eq ptr %.pr126, null
  br i1 %.not.i.i.i.i54, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 3, ptr %11, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.36, ptr %i.di, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 66, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i55, align 8, !tbaa !85
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !87 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i56 = icmp ult i32 %i.dk, %i.dm
  br i1 %.not.i.i.i.i.i.i.i56, label %bb.aa, label %bb.z, !prof !89

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dn = zext i32 %i.dk to i64
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !90
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.do, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.dq = load i32, ptr %i.dj, align 8, !tbaa !87
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dj, align 8, !tbaa !87
  br label %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit.thread, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA26_KcEEOS0_OT_.exit, %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_10StringAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %20) #23, !noalias !313
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ds, ptr %0, align 8, !tbaa !90, !alias.scope !314
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dt, align 8, !tbaa !87, !alias.scope !314
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.du, align 4, !tbaa !88, !alias.scope !314
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.dv, align 8, !tbaa !141, !alias.scope !314
  %i.dw = load ptr, ptr %20, align 8, !tbaa !66
  %.not.i.i57 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i57, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %20) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA67_KcEEOS0_OT_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 200 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !67, !range !68, !noundef !69
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ad, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit58

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i8 0, ptr %i.dx, align 8, !tbaa !67
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ea) #23
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit58

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit58:    ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.bf

bb.ae:                                            ; preds = %.thread122, %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread
  %.pre159 = phi ptr [ %.pre159.pre, %.thread122 ], [ %i.z, %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread ] ; 4 uses
  %.sroa.0109.1125 = phi i64 [ %.0.i43, %.thread122 ], [ %.sroa.0109.0118, %_ZN4mlir9transform4tune14AlternativesOp22getSelectedRegionParamEv.exit.thread ] ; 4 uses
  %i.eb = icmp slt i64 %.sroa.0109.1125, 0
  br i1 %i.eb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre159, i64 44
  %i.ed = load i32, ptr %i.ec, align 4            ; 3 uses
  %i.ee = and i32 %i.ed, 8388607                  ; 2 uses
  %i.ef = zext nneg i32 %i.ee to i64
  %.not31 = icmp samesign ult i64 %.sroa.0109.1125, %i.ef
  br i1 %.not31, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 1, ptr %i.eg, align 8, !tbaa !58
  %i.eh = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !57
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre159, i64 24
  %.sroa.0.0.copyload.i.i.i59 = load ptr, ptr %i.ei, align 8, !noalias !315
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %22, ptr %.sroa.0.0.copyload.i.i.i59, ptr noundef nonnull align 8 dereferenceable(34) %23) #23
  %i.ej = load ptr, ptr %22, align 8, !tbaa !66
  %.not.i.i.i.i60 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i60, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA9_KcEEOS0_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 3, ptr %10, align 8, !tbaa !81
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.37, ptr %i.el, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i61 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 60, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i61, align 8, !tbaa !85
  %i.em = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 15 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !87 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 36 ; 5 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i62 = icmp ult i32 %i.en, %i.ep
  br i1 %.not.i.i.i.i.i.i.i62, label %bb.aj, label %bb.ai, !prof !89

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA61_KcEEOS0_OT_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.eq = zext i32 %i.en to i64
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.eq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.et = load i32, ptr %i.em, align 8, !tbaa !87
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.em, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA61_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA61_KcEEOS0_OT_.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pr128 = load ptr, ptr %22, align 8, !tbaa !66
  %.not.i.i.i.i63 = icmp eq ptr %.pr128, null
  br i1 %.not.i.i.i.i63, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA9_KcEEOS0_OT_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA61_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 2, ptr %9, align 8, !tbaa !81
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.0109.1125, ptr %i.ev, align 8, !tbaa !47
  %i.ew = load i32, ptr %i.em, align 8, !tbaa !87 ; 2 uses
  %i.ex = load i32, ptr %i.eo, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i64 = icmp ult i32 %i.ew, %i.ex
  br i1 %.not.i.i.i.i.i.i.i64, label %bb.am, label %bb.al, !prof !89

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRlEEOS0_OT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.ey = zext i32 %i.ew to i64
  %i.ez = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.fb = load i32, ptr %i.em, align 8, !tbaa !87
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr %i.em, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRlEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRlEEOS0_OT_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pr130 = load ptr, ptr %22, align 8, !tbaa !66
  %.not.i.i.i.i65 = icmp eq ptr %.pr130, null
  br i1 %.not.i.i.i.i65, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA9_KcEEOS0_OT_.exit, label %bb.an

bb.an:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRlEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 3, ptr %8, align 8, !tbaa !81
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.38, ptr %i.fd, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i66 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i66, align 8, !tbaa !85
  %i.fe = load i32, ptr %i.em, align 8, !tbaa !87 ; 2 uses
  %i.ff = load i32, ptr %i.eo, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i67 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i.i.i.i.i.i.i67, label %bb.ap, label %bb.ao, !prof !89

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA20_KcEEOS0_OT_.exit

bb.ap:                                            ; preds = %bb.an
  %i.fg = zext i32 %i.fe to i64
  %i.fh = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.fj = load i32, ptr %i.em, align 8, !tbaa !87
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.em, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA20_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA20_KcEEOS0_OT_.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr132.pr = load ptr, ptr %22, align 8, !tbaa !66
  %.not.i.i.i.i68 = icmp eq ptr %.pr132.pr, null
  br i1 %.not.i.i.i.i68, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA9_KcEEOS0_OT_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA20_KcEEOS0_OT_.exit
  %i.fl = load ptr, ptr %1, align 8, !tbaa !72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 44
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = and i32 %i.fn, 8388607
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 5, ptr %7, align 8, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fq = zext nneg i32 %i.fo to i64
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !47
  %i.fr = load i32, ptr %i.em, align 8, !tbaa !87 ; 2 uses
  %i.fs = load i32, ptr %i.eo, align 4, !tbaa !88
  %.not.i.i.i.i.i.i.i69 = icmp ult i32 %i.fr, %i.fs
  br i1 %.not.i.i.i.i.i.i.i69, label %bb.as, label %bb.ar, !prof !89

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIjEEOS0_OT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ft = zext i32 %i.fr to i64
  %i.fu = load ptr, ptr %i.ek, align 8, !tbaa !90
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.fw = load i32, ptr %i.em, align 8, !tbaa !87
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.em, align 8, !tbaa !87
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIjEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIjEEOS0_OT_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pr134.pr.pre = load ptr, ptr %22, align 8, !tbaa !66
  %i.fy = icmp eq ptr %.pr134.pr.pre, null
  br i1 %i.fy, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA9_KcEEOS0_OT_.exit, label %bb.at

bb.at:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 3, ptr %6, align 8, !tbaa !81
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.39, ptr %i.fz, align 8, !tbaa !83
end_hunk_1
