Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VectorCombine?download=true
inline.NumInlined: 11786
inline.NumDeleted: 5111
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN12_GLOBAL__N_113VectorCombine16eraseInstructionERN4llvm11InstructionE:bb.a
  %i.hx = load i32, ptr %i.de, align 8, !tbaa !137
  store ptr %i.dm, ptr %2, align 8, !tbaa !241
  store i32 %i.hx, ptr %i.dh, align 8, !tbaa !242
  %i.hy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIS3_JjEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.dh), !noalias !657
  %.fca.1.extract.i.i.i.i22 = extractvalue { ptr, i8 } %i.hy, 1
  %i.hz = trunc nuw i8 %.fca.1.extract.i.i.i.i22 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.hz, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ia = load i32, ptr %i.de, align 8, !tbaa !137 ; 2 uses
  %i.ib = load i32, ptr %i.df, align 4, !tbaa !138
  %.not.i.i.i24 = icmp ult i32 %i.ia, %i.ib
  br i1 %.not.i.i.i24, label %bb.x, label %bb.w, !prof !166

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(2256) %i.bb, ptr noundef nonnull %i.dm)
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.ic = zext i32 %i.ia to i64
  %i.id = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.ic
  store ptr %i.dm, ptr %i.ie, align 1
  %i.if = load i32, ptr %i.de, align 8, !tbaa !137
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.de, align 8, !tbaa !137
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.x, %bb.w, %bb.u, %_ZN4llvm19InstructionWorklist19pushUsersToWorkListERNS_11InstructionE.exit, %_ZNSt14_Function_baseD2Ev.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_5ValueEE8containsEPKS1_.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_5ValueEE8containsEPKS1_.exit.thread
  %i.ih = getelementptr inbounds nuw i8, ptr %.01649, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ih, %i.dc
  br i1 %.not, label %._crit_edge, label %bb.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113VectorCombine19foldBitcastOfVPLoadERN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.llvm::PatternMatch::OneUse_match.317", align 8 ; 9 uses
  %3 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %4 = alloca %"class.llvm::MemIntrinsicCostAttributes", align 8 ; 10 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = alloca [3 x ptr], align 8                ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::AttrBuilder", align 8 ; 8 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm11Instruction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #27 ; 2 uses
  %i.d = load i8, ptr %1, align 8, !tbaa !180
  %i.e = add i8 %i.d, -83
  %i.f = icmp ult i8 %i.e, -14
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm8CastInst10isNoopCastERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(912) %i.c) #27
  br i1 %i.g, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = and i32 %i.n, 1073741824
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %1, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !206
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.f:                                             ; preds = %bb.d
  %i.r = and i32 %i.n, 268435455
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %1, i64 %i.t
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.q, %bb.e ], [ %i.u, %bb.f ]
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !185  ; 9 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !180
  %i.y = icmp eq i8 %i.x, 88
  br i1 %i.y, label %bb.g, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

bb.g:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !180
  %i.ac = icmp eq i8 %i.ab, 14
  br i1 %i.ac, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 8192
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread, label %_ZN4llvm14CastIsPossibleINS_11VPIntrinsicEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i

_ZN4llvm14CastIsPossibleINS_11VPIntrinsicEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !205
  %i.ai = tail call noundef zeroext i1 @_ZN4llvm11VPIntrinsic13isVPIntrinsicEj(i32 noundef %i.ah) #27
  br i1 %i.ai, label %bb.i, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

bb.i:                                             ; preds = %_ZN4llvm14CastIsPossibleINS_11VPIntrinsicEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 2, ptr %2, align 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %.sroa.5101.0..sroa_idx, align 8
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %.sroa.6102.0..sroa_idx, align 8
  %.sroa.7104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7104.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 474, ptr %.sroa.9.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i:             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !213
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !180
  %i.aq = icmp eq i8 %i.ap, 14
  br i1 %i.aq, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11VPIntrinsicEEEbPT_.exit.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11VPIntrinsicEEEbPT_.exit.i.i.i: ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !205
  %i.at = icmp eq i32 %i.as, 474
  br i1 %i.at, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit, label %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i, %bb.k, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11VPIntrinsicEEEbPT_.exit.i.i.i, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11VPIntrinsicEEEbPT_.exit.i.i.i
  %i.au = call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch14Argument_matchINS2_14cstval_pred_tyINS2_11is_all_onesENS_11ConstantIntELb1EEEEENS3_INS0_10match_bindINS_5ValueEEEEEEE5matchINS_11VPIntrinsicEEEbPT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.au, label %bb.l, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

bb.l:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !175 ; 5 uses
  %i.ax = call i16 @_ZNK4llvm11VPIntrinsic19getPointerAlignmentEv(ptr noundef nonnull align 8 dereferenceable(92) %i.w) #27 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.ax to i8
  %i.ay = and i16 %i.ax, 256
  %.not.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i, label %bb.m, label %_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit

bb.m:                                             ; preds = %bb.l
  %i.az = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.c, ptr noundef %i.aw) #27
  br label %_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit

_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi i8 [ %i.az, %bb.m ], [ %.sroa.0.0.extract.trunc.i, %bb.l ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !198 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = and i32 %i.bd, 255
  %i.bf = icmp eq i32 %i.be, 19
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !175 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !198 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = and i32 %i.bk, 255
  %i.bm = icmp eq i32 %i.bl, 19                   ; 2 uses
  %.sroa.2.0.insert.shift.i.i59 = select i1 %i.bm, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i60 = zext i32 %i.bi to i64
  %.sroa.0.0.insert.insert.i.i61 = or disjoint i64 %.sroa.2.0.insert.shift.i.i59, %.sroa.0.0.insert.ext.i.i60
  %i.bn = xor i1 %i.bf, %i.bm
  br i1 %i.bn, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit: ; preds = %_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit
  %i.bo = urem i32 %i.bi, %i.bb
  %i.bp = udiv i32 %i.bi, %i.bb
  %i.bq = icmp eq i32 %i.bo, 0
  br i1 %i.bq, label %bb.n, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

bb.n:                                             ; preds = %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !181, !nonnull !53, !align !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bt = call noundef ptr @_ZNK4llvm11VPIntrinsic21getMemoryPointerParamEv(ptr noundef nonnull align 8 dereferenceable(92) %i.w) #27
  store ptr null, ptr %3, align 8, !tbaa !659
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !660
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aw, ptr %i.bv, align 8, !tbaa !661
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 474, ptr %i.bw, align 8, !tbaa !662
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.bx, align 4, !tbaa !663
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.by, align 8, !tbaa !664
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i8 %.sroa.0.0.i, ptr %i.bz, align 4, !tbaa !190
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !132
  %i.cc = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(37) %3, i32 noundef %i.cb) #27 ; 2 uses
  %.fca.1.extract20 = extractvalue { i64, i32 } %i.cc, 1
  %i.cd = load ptr, ptr %i.br, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !132
  %i.cg = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef 51, ptr noundef %i.ce, ptr noundef nonnull %i.aw, i8 noundef zeroext 0, i32 noundef %i.cf, ptr noundef null) #27 ; 2 uses
  %.fca.1.extract16 = extractvalue { i64, i32 } %i.cg, 1
  %i.ch = icmp eq i32 %.fca.1.extract16, 1
  %spec.select.i63 = select i1 %i.ch, i32 1, i32 %.fca.1.extract20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ci = load ptr, ptr %i.br, align 8, !tbaa !181, !nonnull !53, !align !146
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cj = call noundef ptr @_ZNK4llvm11VPIntrinsic21getMemoryPointerParamEv(ptr noundef nonnull align 8 dereferenceable(92) %i.w) #27
  store ptr null, ptr %4, align 8, !tbaa !659
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !660
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bg, ptr %i.cl, align 8, !tbaa !661
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 474, ptr %i.cm, align 8, !tbaa !662
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.cn, align 4, !tbaa !663
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.co, align 8, !tbaa !664
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 %.sroa.0.0.i, ptr %i.cp, align 4, !tbaa !190
  %i.cq = load i32, ptr %i.ca, align 8, !tbaa !132
  %i.cr = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo24getMemIntrinsicInstrCostERKNS_26MemIntrinsicCostAttributesENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(37) %4, i32 noundef %i.cq) #27 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i32 } %i.cr, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.cs = icmp slt i32 %spec.select.i63, %.fca.1.extract
  br i1 %i.cs, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.fca.0.extract = extractvalue { i64, i32 } %i.cr, 0
  %.fca.0.extract19 = extractvalue { i64, i32 } %i.cc, 0
  %.fca.0.extract15 = extractvalue { i64, i32 } %i.cg, 0
  %.0.i.i64 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract19, i64 %.fca.0.extract15)
  %i.ct = icmp slt i32 %.fca.1.extract, %spec.select.i63
  %i.cu = icmp sge i64 %.0.i.i64, %.fca.0.extract
  %or.cond109.not114 = select i1 %i.ct, i1 true, i1 %i.cu
  %i.cv = icmp eq i32 %.fca.1.extract, 0
  %or.cond110 = and i1 %i.cv, %or.cond109.not114
  br i1 %or.cond110, label %bb.p, label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.cy = call noundef ptr @_ZN4llvm13IRBuilderBase8getInt32Ej(ptr noundef nonnull align 8 dereferenceable(88) %i.cw, i32 noundef %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.cz, align 8
  %i.da = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateNUWMulEPNS_5ValueES2_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noundef %i.cx, ptr noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(34) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !200, !nonnull !53, !align !146
  %i.dd = call noundef ptr @_ZN4llvm11ConstantInt7getTrueERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.dc) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.de, align 8
  %i.df = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateVectorSplatENS_12ElementCountEPNS_5ValueERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.cw, i64 %.sroa.0.0.insert.insert.i.i61, ptr noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(34) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dg = call noundef ptr @_ZNK4llvm11VPIntrinsic21getMemoryPointerParamEv(ptr noundef nonnull align 8 dereferenceable(92) %i.w) #27
  store ptr %i.dg, ptr %i.b, align 8, !tbaa !179
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !179
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.da, ptr %i.di, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.dj, align 8
  %i.dk = call noundef ptr @_ZN4llvm13IRBuilderBase29CreateIntrinsicWithoutFoldingEPNS_4TypeEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noundef nonnull %i.bg, i32 noundef 474, ptr nonnull %i.b, i64 3, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %7) #27 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !175
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !199, !nonnull !53, !align !146
  store ptr %i.dm, ptr %8, align 8, !tbaa !75
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !56
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.dp, align 8, !tbaa !137
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 8, ptr %i.dq, align 4, !tbaa !138
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0.i to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  %i.dr = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder16addAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88) %8, i16 %.sroa.0.0.insert.insert) #27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 72 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !175
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !199, !nonnull !53, !align !146
  %i.dw = call ptr @_ZNK4llvm13AttributeList20addAttributesAtIndexERNS_11LLVMContextEjRKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(88) %i.dr) #27
  store ptr %i.dw, ptr %i.ds, align 8, !tbaa !666
  %i.dx = load ptr, ptr %i.dn, align 8, !tbaa !56 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.do
  br i1 %i.dy, label %_ZN4llvm11AttrBuilderD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.dx) #27
  br label %_ZN4llvm11AttrBuilderD2Ev.exit

_ZN4llvm11AttrBuilderD2Ev.exit:                   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call fastcc void @_ZN12_GLOBAL__N_113VectorCombine12replaceValueERN4llvm11InstructionERNS1_5ValueEb(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i1 noundef zeroext true)
  br label %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread

_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread: ; preds = %bb.h, %_ZNK4llvm4User10getOperandEj.exit, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i, %_ZN4llvm14CastIsPossibleINS_11VPIntrinsicEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, %bb.g, %bb.o, %bb.n, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit, %_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit, %_ZN4llvm11AttrBuilderD2Ev.exit, %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread, %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit
  %.2 = phi i1 [ false, %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit.thread ], [ false, %bb.o ], [ false, %_ZN4llvm12PatternMatch5matchINS_11VPIntrinsicENS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS4_9match_isaIJNS_5ValueEEEEEENS7_INS0_14cstval_pred_tyINS0_11is_all_onesENS_11ConstantIntELb1EEEEENS7_INS4_10match_bindIS9_EEEEEEEEEEEbPT_RKT0_.exit ], [ false, %bb.n ], [ false, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit ], [ false, %_ZNK4llvm10DataLayout26getValueOrABITypeAlignmentENS_10MaybeAlignEPNS_4TypeE.exit ], [ true, %_ZN4llvm11AttrBuilderD2Ev.exit ], [ false, %bb.g ], [ false, %_ZN4llvm14CastIsPossibleINS_11VPIntrinsicEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i ], [ false, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i ], [ false, %_ZNK4llvm4User10getOperandEj.exit ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread
  %.3 = phi i1 [ %.2, %_ZNK4llvm7details23FixedOrScalableQuantityINS_12ElementCountEjE20hasKnownScalarFactorERKS3_.exit.thread ], [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113VectorCombine14foldInsExtFNegERN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.llvm::PatternMatch::ThreeOps_match.397", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.llvm::PatternMatch::FNeg_match", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SmallVector.309", align 8 ; 10 uses
  %5 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %6 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %7 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %8 = alloca %"class.llvm::SmallVector.309", align 8 ; 10 uses
  %9 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.a to i64
  store i64 %i.h, ptr %2, align 8, !tbaa !177, !alias.scope !671
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.i, align 8, !tbaa !298, !alias.scope !671
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = ptrtoint ptr %i.c to i64
  store i64 %i.k, ptr %i.j, align 8, !tbaa !209, !alias.scope !671
  %i.l = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14ThreeOps_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_12OneUse_matchINS3_INS_11InstructionEEEEENS0_20bind_const_intval_tyELj64ELb0EE5matchIS7_EEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %i.l, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.n = ptrtoint ptr %i.f to i64
  store ptr %i.e, ptr %3, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %.sroa.4138.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_ZNK4llvm12PatternMatch10FNeg_matchINS_19PatternMatchHelpers17match_combine_andIJNS2_10match_bindINS_11InstructionEEENS0_12TwoOps_matchINS4_INS_5ValueEEENS0_20bind_const_intval_tyELj63EEEEEEE5matchIS5_EEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.o, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !175  ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionE:bb.a
  %i.aev = load ptr, ptr %i.aet, align 8, !tbaa !56
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.aeu
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !164 ; 4 uses
  %i.aey = icmp slt i32 %i.aex, 0
  br i1 %i.aey, label %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit.i535, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i.i541
  %i.aez = icmp ult i32 %i.aex, %i.aes
  br i1 %i.aez, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.afa = getelementptr inbounds i8, ptr %.01835.i.i543, i64 -32
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !185
  %i.afc = sub nuw nsw i32 %i.aex, %i.aes
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.2.i.i544 = phi ptr [ %i.aeo, %bb.ev ], [ %i.afb, %bb.ew ] ; 3 uses
  %.117.i.i545 = phi i32 [ %i.aex, %bb.ev ], [ %i.afc, %bb.ew ] ; 2 uses
  %i.afd = load i8, ptr %.2.i.i544, align 8, !tbaa !180
  %.not.i.i546 = icmp eq i8 %i.afd, 95
  br i1 %.not.i.i546, label %.lr.ph.i.i541, label %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit.i535

_ZL19lookThroughShufflesPN4llvm5ValueEi.exit.i535: ; preds = %bb.ex, %.lr.ph.i.i541, %_ZNK4llvm4User10getOperandEj.exit.i533, %.lr.ph.i525
  %storemerge22.i536 = phi ptr [ null, %.lr.ph.i525 ], [ %i.ael, %_ZNK4llvm4User10getOperandEj.exit.i533 ], [ %.2.i.i544, %bb.ex ], [ null, %.lr.ph.i.i541 ]
  %storemerge.i537 = phi i32 [ -1, %.lr.ph.i525 ], [ %.sroa.4.0.copyload.i530, %_ZNK4llvm4User10getOperandEj.exit.i533 ], [ %.117.i.i545, %bb.ex ], [ -1, %.lr.ph.i.i541 ]
  store ptr %storemerge22.i536, ptr %4, align 8, !noalias !904
  store i32 %storemerge.i537, ptr %.sroa.2.0..sroa_idx.i526, align 8, !noalias !904
  %i.afe = load i32, ptr %i.hu, align 8, !tbaa !137, !alias.scope !904 ; 2 uses
  %i.aff = load i32, ptr %i.hv, align 4, !tbaa !138, !alias.scope !904
  %.not.i11.i538 = icmp ult i32 %i.afe, %i.aff
  br i1 %.not.i11.i538, label %bb.ez, label %bb.ey, !prof !166

bb.ey:                                            ; preds = %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit.i535
  %i.afg = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE18growAndEmplaceBackIJRS4_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(12) %4) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEE12emplace_backIJRS4_EEES7_DpOT_.exit.i539

bb.ez:                                            ; preds = %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit.i535
  %i.afh = zext i32 %i.afe to i64
  %i.afi = load ptr, ptr %57, align 8, !tbaa !56, !alias.scope !904
  %i.afj = getelementptr inbounds nuw [16 x i8], ptr %i.afi, i64 %i.afh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %i.afk = load i32, ptr %i.hu, align 8, !tbaa !137, !alias.scope !904
  %i.afl = add i32 %i.afk, 1
  store i32 %i.afl, ptr %i.hu, align 8, !tbaa !137, !alias.scope !904
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEE12emplace_backIJRS4_EEES7_DpOT_.exit.i539

_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEE12emplace_backIJRS4_EEES7_DpOT_.exit.i539: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !904
  %i.afm = getelementptr inbounds nuw i8, ptr %.018.i527, i64 16 ; 2 uses
  %.not.i540 = icmp eq ptr %i.afm, %i.aea
  br i1 %.not.i540, label %_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi.exit547, label %.lr.ph.i525

_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi.exit547: ; preds = %_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEE12emplace_backIJRS4_EEES7_DpOT_.exit.i539, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4
  %i.afo = load i32, ptr %i.afn, align 4          ; 2 uses
  %i.afp = and i32 %i.afo, 1073741824
  %.not.i.i.i548 = icmp eq i32 %i.afp, 0
  br i1 %.not.i.i.i548, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi.exit547
  %i.afq = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit549

bb.fb:                                            ; preds = %_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi.exit547
  %i.afs = and i32 %i.afo, 268435455
  %i.aft = zext nneg i32 %i.afs to i64
  %i.afu = sub nsw i64 0, %i.aft
  %i.afv = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.afu
  br label %_ZN4llvm4User13getOperandUseEj.exit549

_ZN4llvm4User13getOperandUseEj.exit549:           ; preds = %bb.fa, %bb.fb
  %i.afw = phi ptr [ %i.afr, %bb.fa ], [ %i.afv, %bb.fb ] ; 2 uses
  store ptr %i.afw, ptr %i.c, align 8, !tbaa !206
  %i.afx = load i32, ptr %i.bh, align 8, !tbaa !137 ; 2 uses
  %i.afy = load i32, ptr %i.bi, align 4, !tbaa !138
  %.not.i550 = icmp ult i32 %i.afx, %i.afy
  br i1 %.not.i550, label %bb.fd, label %bb.fc, !prof !166

bb.fc:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit549
  %i.afz = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEELb0EE18growAndEmplaceBackIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %57, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_.exit554

bb.fd:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit549
  %i.aga = zext i32 %i.afx to i64
  %i.agb = load ptr, ptr %40, align 8, !tbaa !56
  %i.agc = getelementptr inbounds nuw [72 x i8], ptr %i.agb, i64 %i.aga ; 6 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 16
  store ptr %i.agd, ptr %i.agc, align 8, !tbaa !56
  %i.age = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  store i32 0, ptr %i.age, align 8, !tbaa !137
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 12
  store i32 3, ptr %i.agf, align 4, !tbaa !138
  %i.agg = load i32, ptr %i.hu, align 8, !tbaa !137
  %.not.i.i.i.i552 = icmp eq i32 %i.agg, 0
  br i1 %.not.i.i.i.i552, label %_ZNSt4pairIN4llvm11SmallVectorIS_IPNS0_5ValueEiELj3EEEPNS0_3UseEEC2IS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i553, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.agh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(72) %i.agc, ptr noundef nonnull align 8 dereferenceable(64) %57) ; 0 uses
  %.pre939 = load ptr, ptr %i.c, align 8, !tbaa !206
  br label %_ZNSt4pairIN4llvm11SmallVectorIS_IPNS0_5ValueEiELj3EEEPNS0_3UseEEC2IS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i553

_ZNSt4pairIN4llvm11SmallVectorIS_IPNS0_5ValueEiELj3EEEPNS0_3UseEEC2IS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i553: ; preds = %bb.fe, %bb.fd
  %i.agi = phi ptr [ %.pre939, %bb.fe ], [ %i.afw, %bb.fd ]
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agc, i64 64
  store ptr %i.agi, ptr %i.agj, align 8, !tbaa !351
  %i.agk = load i32, ptr %i.bh, align 8, !tbaa !137
  %i.agl = add i32 %i.agk, 1
  store i32 %i.agl, ptr %i.bh, align 8, !tbaa !137
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_.exit554

_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_.exit554: ; preds = %bb.fc, %_ZNSt4pairIN4llvm11SmallVectorIS_IPNS0_5ValueEiELj3EEEPNS0_3UseEEC2IS5_S7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.agm = load ptr, ptr %57, align 8, !tbaa !56  ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.ht
  br i1 %i.agn, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555, label %bb.ff

bb.ff:                                            ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_.exit554
  call void @free(ptr noundef %i.agm) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555: ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_.exit554, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, !llvm.loop !821

bb.fg:                                            ; preds = %bb.eq
  %i.ago = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !175 ; 3 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.agr = load i32, ptr %i.agq, align 8
  %i.ags = and i32 %i.agr, 255
  %i.agt = icmp eq i32 %i.ags, 18
  %i.agu = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -32
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !185
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !175 ; 3 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load i32, ptr %i.agy, align 8
  %i.aha = and i32 %i.agz, 255
  %i.ahb = icmp eq i32 %i.aha, 18
  %i.ahc = icmp ne ptr %i.agp, null
  %i.ahd = and i1 %i.ahc, %i.agt
  %i.ahe = icmp ne ptr %i.agx, null
  %i.ahf = and i1 %i.ahe, %i.ahb
  %or.cond = and i1 %i.ahd, %i.ahf
  br i1 %or.cond, label %bb.fh, label %.thread755

bb.fh:                                            ; preds = %bb.fg
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agp, i64 32
  %i.ahh = load i32, ptr %i.ahg, align 8, !tbaa !198 ; 7 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agx, i64 32
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !198 ; 7 uses
  %i.ahk = icmp eq i32 %i.ahh, %i.ahj
  br i1 %i.ahk, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #27
  %i.ahl = load ptr, ptr %46, align 8, !tbaa !56
  %i.ahm = load i32, ptr %i.da, align 8, !tbaa !137
  %i.ahn = zext i32 %i.ahm to i64
  call fastcc void @_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi(ptr dead_on_unwind noalias writable align 8 %58, ptr %i.ahl, i64 %i.ahn, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.aho = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4
  %i.ahp = load i32, ptr %i.aho, align 4          ; 2 uses
  %i.ahq = and i32 %i.ahp, 1073741824
  %.not.i.i.i562 = icmp eq i32 %i.ahq, 0
  br i1 %.not.i.i.i562, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ahr = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit563

bb.fk:                                            ; preds = %bb.fi
  %i.aht = and i32 %i.ahp, 268435455
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = sub nsw i64 0, %i.ahu
  %i.ahw = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.ahv
  br label %_ZN4llvm4User13getOperandUseEj.exit563

_ZN4llvm4User13getOperandUseEj.exit563:           ; preds = %bb.fj, %bb.fk
  %i.ahx = phi ptr [ %i.ahs, %bb.fj ], [ %i.ahw, %bb.fk ]
  store ptr %i.ahx, ptr %i.d, align 8, !tbaa !206
  %i.ahy = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.ahz = load ptr, ptr %58, align 8, !tbaa !56  ; 2 uses
  %i.aia = icmp eq ptr %i.ahz, %i.ic
  br i1 %i.aia, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit563
  call void @free(ptr noundef %i.ahz) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564: ; preds = %_ZN4llvm4User13getOperandUseEj.exit563, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, !llvm.loop !821

bb.fm:                                            ; preds = %bb.fh
  %i.aib = icmp ugt i32 %i.ahh, %i.ahj            ; 2 uses
  br i1 %i.aib, label %bb.fn, label %bb.gb

bb.fn:                                            ; preds = %bb.fm
  %i.aic = urem i32 %i.ahh, %i.ahj
  %i.aid = udiv i32 %i.ahh, %i.ahj                ; 7 uses
  %i.aie = icmp eq i32 %i.aic, 0
  br i1 %i.aie, label %bb.fo, label %bb.gb

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  store ptr %i.hz, ptr %59, align 8, !tbaa !56
  store i32 0, ptr %i.ia, align 8, !tbaa !137
  store i32 3, ptr %i.ib, align 4, !tbaa !138
  %i.aif = load i32, ptr %i.da, align 8, !tbaa !137 ; 3 uses
  %i.aig = urem i32 %i.aif, %i.aid
  %i.aih = icmp eq i32 %i.aig, 0                  ; 2 uses
  %i.aii = icmp ne i32 %i.aif, 0
  %i.aij = and i1 %i.aih, %i.aii
  br i1 %i.aij, label %.lr.ph869, label %._crit_edge870

.lr.ph869:                                        ; preds = %bb.fo
  %.not803862 = icmp ugt i32 %i.aid, 1
  %i.aik = add i32 %i.aid, -1
  %i.ail = zext i32 %i.aik to i64
  %i.aim = zext i32 %i.aid to i64
  br label %bb.fp

bb.fp:                                            ; preds = %.lr.ph869, %bb.fx
  %.0195865 = phi i32 [ 0, %.lr.ph869 ], [ %i.ajm, %bb.fx ] ; 4 uses
  %i.ain = zext i32 %.0195865 to i64
  %i.aio = load ptr, ptr %46, align 8, !tbaa !56  ; 3 uses
  %i.aip = getelementptr inbounds nuw [16 x i8], ptr %i.aio, i64 %i.ain ; 2 uses
  %.sroa.0660.0.copyload = load ptr, ptr %i.aip, align 8 ; 5 uses
  %.sroa.6663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %.sroa.6663.0.copyload = load i32, ptr %.sroa.6663.0..sroa_idx, align 8 ; 3 uses
  %.not229 = icmp eq ptr %.sroa.0660.0.copyload, null
  br i1 %.not229, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.aiq = add nuw i32 %.0195865, 1
  %i.air = zext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [16 x i8], ptr %i.aio, i64 %i.air
  %i.ait = call fastcc noundef zeroext i1 @"_ZN4llvm6any_ofINS_8ArrayRefISt4pairIPNS_5ValueEiEEEZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERNS_11InstructionEE3$_4EEbOT_T0_"(ptr nonnull %i.ais, i64 %i.ail)
  br i1 %i.ait, label %.thread753, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr null, i32 -1)
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fp
  %i.aiu = urem i32 %.sroa.6663.0.copyload, %i.aid
  %i.aiv = udiv i32 %.sroa.6663.0.copyload, %i.aid
  %.not230 = icmp eq i32 %i.aiu, 0
  br i1 %.not230, label %.preheader, label %.thread753

.preheader:                                       ; preds = %bb.fs
  br i1 %.not803862, label %.lr.ph864, label %.critedge807

bb.ft:                                            ; preds = %bb.fu
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1 ; 2 uses
  %.not803 = icmp samesign ult i64 %indvars.iv.next924, %i.aim
  br i1 %.not803, label %.lr.ph864, label %.critedge807, !llvm.loop !861

.lr.ph864:                                        ; preds = %.preheader, %bb.ft
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %bb.ft ], [ 1, %.preheader ] ; 2 uses
  %indvars925 = trunc i64 %indvars.iv923 to i32   ; 2 uses
  %i.aiw = add i32 %.0195865, %indvars925
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [16 x i8], ptr %i.aio, i64 %i.aix ; 2 uses
  %.sroa.0651.0.copyload = load ptr, ptr %i.aiy, align 8
  %.not232 = icmp eq ptr %.sroa.0651.0.copyload, %.sroa.0660.0.copyload
  br i1 %.not232, label %bb.fu, label %.thread753

bb.fu:                                            ; preds = %.lr.ph864
  %.sroa.4652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %.sroa.4652.0.copyload = load i32, ptr %.sroa.4652.0..sroa_idx, align 8
  %i.aiz = add nsw i32 %.sroa.6663.0.copyload, %indvars925
  %.not233 = icmp eq i32 %.sroa.4652.0.copyload, %i.aiz
  br i1 %.not233, label %bb.ft, label %.thread753

.critedge807:                                     ; preds = %bb.ft, %.preheader
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.0660.0.copyload, i64 4
  %i.ajb = load i32, ptr %i.aja, align 4          ; 2 uses
  %i.ajc = and i32 %i.ajb, 1073741824
  %.not.i.i567 = icmp eq i32 %i.ajc, 0
  br i1 %.not.i.i567, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.critedge807
  %i.ajd = getelementptr inbounds i8, ptr %.sroa.0660.0.copyload, i64 -8
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !206
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.fw:                                            ; preds = %.critedge807
  %i.ajf = and i32 %i.ajb, 268435455
  %i.ajg = zext nneg i32 %i.ajf to i64
  %i.ajh = sub nsw i64 0, %i.ajg
  %i.aji = getelementptr inbounds [32 x i8], ptr %.sroa.0660.0.copyload, i64 %i.ajh
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.fv, %bb.fw
  %i.ajj = phi ptr [ %i.aje, %bb.fv ], [ %i.aji, %bb.fw ]
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !185
  %i.ajl = call fastcc { ptr, i32 } @_ZL19lookThroughShufflesPN4llvm5ValueEi(ptr noundef %i.ajk, i32 noundef %i.aiv) ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.ajl, 0
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.ajl, 1
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr %.fca.0.extract48, i32 %.fca.1.extract49)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fr, %_ZNK4llvm4User10getOperandEj.exit
  %i.ajm = add i32 %.0195865, %i.aid              ; 2 uses
  %i.ajn = icmp ult i32 %i.ajm, %i.aif
  br i1 %i.ajn, label %bb.fp, label %.critedge885, !llvm.loop !862

._crit_edge870:                                   ; preds = %bb.fo
  br i1 %i.aih, label %.critedge885, label %.thread753

.critedge885:                                     ; preds = %bb.fx, %._crit_edge870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4
  %i.ajp = load i32, ptr %i.ajo, align 4          ; 2 uses
  %i.ajq = and i32 %i.ajp, 1073741824
  %.not.i.i.i568 = icmp eq i32 %i.ajq, 0
  br i1 %.not.i.i.i568, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %.critedge885
  %i.ajr = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit569

bb.fz:                                            ; preds = %.critedge885
  %i.ajt = and i32 %i.ajp, 268435455
  %i.aju = zext nneg i32 %i.ajt to i64
  %i.ajv = sub nsw i64 0, %i.aju
  %i.ajw = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.ajv
  br label %_ZN4llvm4User13getOperandUseEj.exit569

_ZN4llvm4User13getOperandUseEj.exit569:           ; preds = %bb.fy, %bb.fz
  %i.ajx = phi ptr [ %i.ajs, %bb.fy ], [ %i.ajw, %bb.fz ]
  store ptr %i.ajx, ptr %i.e, align 8, !tbaa !206
  %i.ajy = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJRS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread753, !llvm.loop !821

.thread753:                                       ; preds = %bb.fq, %bb.fs, %bb.fu, %.lr.ph864, %._crit_edge870, %_ZN4llvm4User13getOperandUseEj.exit569
  %.not792 = phi i1 [ false, %_ZN4llvm4User13getOperandUseEj.exit569 ], [ true, %._crit_edge870 ], [ true, %bb.fu ], [ true, %.lr.ph864 ], [ true, %bb.fs ], [ true, %bb.fq ]
  %.1183 = phi i1 [ true, %_ZN4llvm4User13getOperandUseEj.exit569 ], [ %.0182, %._crit_edge870 ], [ %.0182, %bb.fu ], [ %.0182, %.lr.ph864 ], [ %.0182, %bb.fs ], [ %.0182, %bb.fq ] ; 2 uses
  %.4170 = phi i32 [ 5, %_ZN4llvm4User13getOperandUseEj.exit569 ], [ 0, %._crit_edge870 ], [ 0, %bb.fu ], [ 0, %.lr.ph864 ], [ 0, %bb.fs ], [ 0, %bb.fq ]
  %i.ajz = load ptr, ptr %59, align 8, !tbaa !56  ; 2 uses
  %i.aka = icmp eq ptr %i.ajz, %i.hz
  br i1 %i.aka, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570, label %bb.ga

bb.ga:                                            ; preds = %.thread753
  call void @free(ptr noundef %i.ajz) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570: ; preds = %.thread753, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br i1 %.not792, label %.thread755, label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread

bb.gb:                                            ; preds = %bb.fn, %bb.fm
  %i.akb = icmp ugt i32 %i.ahj, %i.ahh
  br i1 %i.akb, label %bb.gc, label %.thread755

bb.gc:                                            ; preds = %bb.gb
  %i.akc = urem i32 %i.ahj, %i.ahh
  %i.akd = udiv i32 %i.ahj, %i.ahh                ; 3 uses
  %i.ake = icmp eq i32 %i.akc, 0
  br i1 %i.ake, label %bb.gd, label %.thread755

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  store ptr %i.hw, ptr %60, align 8, !tbaa !56
  store i32 0, ptr %i.hx, align 8, !tbaa !137
  store i32 3, ptr %i.hy, align 4, !tbaa !138
  %i.akf = load ptr, ptr %46, align 8, !tbaa !56  ; 2 uses
  %i.akg = load i32, ptr %i.da, align 8, !tbaa !137 ; 2 uses
  %i.akh = zext i32 %i.akg to i64
  %.idx887 = shl nuw nsw i64 %i.akh, 4
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 %.idx887
  %.not227857 = icmp eq i32 %i.akg, 0
  br i1 %.not227857, label %._crit_edge861, label %.lr.ph860

.lr.ph860:                                        ; preds = %bb.gd
  %i.akj = zext i32 %i.akd to i64
  br label %bb.gh

._crit_edge861:                                   ; preds = %.loopexit, %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4
  %i.akl = load i32, ptr %i.akk, align 4          ; 2 uses
  %i.akm = and i32 %i.akl, 1073741824
  %.not.i.i.i571 = icmp eq i32 %i.akm, 0
  br i1 %.not.i.i.i571, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge861
  %i.akn = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit572

bb.gf:                                            ; preds = %._crit_edge861
  %i.akp = and i32 %i.akl, 268435455
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = sub nsw i64 0, %i.akq
  %i.aks = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.akr
  br label %_ZN4llvm4User13getOperandUseEj.exit572

_ZN4llvm4User13getOperandUseEj.exit572:           ; preds = %bb.ge, %bb.gf
  %i.akt = phi ptr [ %i.ako, %bb.ge ], [ %i.aks, %bb.gf ]
  store ptr %i.akt, ptr %i.f, align 8, !tbaa !206
  %i.aku = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJRS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %60, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.akv = load ptr, ptr %60, align 8, !tbaa !56  ; 2 uses
  %i.akw = icmp eq ptr %i.akv, %i.hw
  br i1 %i.akw, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573, label %bb.gg

bb.gg:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit572
  call void @free(ptr noundef %i.akv) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573: ; preds = %_ZN4llvm4User13getOperandUseEj.exit572, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread

bb.gh:                                            ; preds = %.lr.ph860, %.loopexit
  %.0180858 = phi ptr [ %i.akf, %.lr.ph860 ], [ %i.amk, %.loopexit ] ; 3 uses
  %.sroa.0648.0.copyload = load ptr, ptr %.0180858, align 8 ; 4 uses
  %.sroa.4649.0..0180.sroa_idx = getelementptr inbounds nuw i8, ptr %.0180858, i64 8
  %.sroa.4649.0.copyload = load i32, ptr %.sroa.4649.0..0180.sroa_idx, align 8
  %.not228 = icmp eq ptr %.sroa.0648.0.copyload, null
  br i1 %.not228, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void @_ZN4llvm15SmallVectorImplISt4pairIPNS_5ValueEiEE6appendEmS4_(ptr noundef nonnull align 8 dereferenceable(16) %60, i64 noundef %i.akj, ptr null, i32 -1)
  br label %.loopexit

bb.gj:                                            ; preds = %bb.gh
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.0648.0.copyload, i64 4
  %i.aky = load i32, ptr %i.akx, align 4          ; 2 uses
  %i.akz = and i32 %i.aky, 1073741824
  %.not.i.i574 = icmp eq i32 %i.akz, 0
  br i1 %.not.i.i574, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ala = getelementptr inbounds i8, ptr %.sroa.0648.0.copyload, i64 -8
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !206
  br label %_ZNK4llvm4User10getOperandEj.exit575

bb.gl:                                            ; preds = %bb.gj
  %i.alc = and i32 %i.aky, 268435455
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = sub nsw i64 0, %i.ald
  %i.alf = getelementptr inbounds [32 x i8], ptr %.sroa.0648.0.copyload, i64 %i.ale
  br label %_ZNK4llvm4User10getOperandEj.exit575

_ZNK4llvm4User10getOperandEj.exit575:             ; preds = %bb.gk, %bb.gl
  %i.alg = phi ptr [ %i.alb, %bb.gk ], [ %i.alf, %bb.gl ]
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !185 ; 3 uses
  br i1 %i.aib, label %.loopexit, label %.lr.ph856

.lr.ph856:                                        ; preds = %_ZNK4llvm4User10getOperandEj.exit575
  %67 = mul i32 %.sroa.4649.0.copyload, %i.akd
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph856, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit
  %.0179855 = phi i32 [ 0, %.lr.ph856 ], [ %i.ami, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit ] ; 2 uses
  %i.ali = add i32 %.0179855, %67                 ; 2 uses
  %i.alj = load i8, ptr %i.alh, align 8, !tbaa !180
  %.not34.i576 = icmp eq i8 %i.alj, 95
  br i1 %.not34.i576, label %.lr.ph.i581, label %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587

.lr.ph.i581:                                      ; preds = %bb.gm, %bb.gp
  %.036.i582 = phi i32 [ %.117.i585, %bb.gp ], [ %i.ali, %bb.gm ]
  %.01835.i583 = phi ptr [ %.2.i584, %bb.gp ], [ %i.alh, %bb.gm ] ; 3 uses
  %i.alk = getelementptr inbounds i8, ptr %.01835.i583, i64 -64
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !185 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !175
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 32
  %i.alp = load i32, ptr %i.alo, align 8, !tbaa !198 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.01835.i583, i64 72
  %i.alr = zext i32 %.036.i582 to i64
  %i.als = load ptr, ptr %i.alq, align 8, !tbaa !56
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %i.alr
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !164 ; 4 uses
  %i.alv = icmp slt i32 %i.alu, 0
  br i1 %i.alv, label %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i581
  %i.alw = icmp ult i32 %i.alu, %i.alp
  br i1 %i.alw, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.alx = getelementptr inbounds i8, ptr %.01835.i583, i64 -32
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !185
  %i.alz = sub nuw nsw i32 %i.alu, %i.alp
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.2.i584 = phi ptr [ %i.all, %bb.gn ], [ %i.aly, %bb.go ] ; 3 uses
  %.117.i585 = phi i32 [ %i.alu, %bb.gn ], [ %i.alz, %bb.go ] ; 2 uses
  %i.ama = load i8, ptr %.2.i584, align 8, !tbaa !180
  %.not.i586 = icmp eq i8 %i.ama, 95
  br i1 %.not.i586, label %.lr.ph.i581, label %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587

_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587:  ; preds = %.lr.ph.i581, %bb.gp, %bb.gm
  %.sroa.0.2.i577 = phi ptr [ %i.alh, %bb.gm ], [ %.2.i584, %bb.gp ], [ null, %.lr.ph.i581 ] ; 2 uses
  %.sroa.3.2.i578 = phi i32 [ %i.ali, %bb.gm ], [ %.117.i585, %bb.gp ], [ -1, %.lr.ph.i581 ] ; 2 uses
  %i.amb = load i32, ptr %i.hx, align 8, !tbaa !137 ; 2 uses
  %i.amc = load i32, ptr %i.hy, align 4, !tbaa !138
  %.not.i588 = icmp ult i32 %i.amb, %i.amc
  br i1 %.not.i588, label %bb.gr, label %bb.gq, !prof !166

bb.gq:                                            ; preds = %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr %.sroa.0.2.i577, i32 %.sroa.3.2.i578)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit

bb.gr:                                            ; preds = %_ZL19lookThroughShufflesPN4llvm5ValueEi.exit587
  %i.amd = zext i32 %i.amb to i64
  %i.ame = load ptr, ptr %60, align 8, !tbaa !56
  %i.amf = getelementptr inbounds nuw [16 x i8], ptr %i.ame, i64 %i.amd ; 2 uses
  store ptr %.sroa.0.2.i577, ptr %i.amf, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.amf, i64 8
  store i32 %.sroa.3.2.i578, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.amg = load i32, ptr %i.hx, align 8, !tbaa !137
  %i.amh = add i32 %i.amg, 1
  store i32 %i.amh, ptr %i.hx, align 8, !tbaa !137
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit: ; preds = %bb.gq, %bb.gr
  %i.ami = add nuw i32 %.0179855, 1               ; 2 uses
  %i.amj = icmp ult i32 %i.ami, %i.akd
  br i1 %i.amj, label %bb.gm, label %.loopexit, !llvm.loop !863

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_5ValueEiELb1EE9push_backES4_.exit, %_ZNK4llvm4User10getOperandEj.exit575, %bb.gi
  %i.amk = getelementptr inbounds nuw i8, ptr %.0180858, i64 16 ; 2 uses
  %.not227 = icmp eq ptr %i.amk, %i.aki
  br i1 %.not227, label %._crit_edge861, label %bb.gh

bb.gs:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  %i.aml = load ptr, ptr %46, align 8, !tbaa !56
  %i.amm = load i32, ptr %i.da, align 8, !tbaa !137
  %i.amn = zext i32 %i.amm to i64
  call fastcc void @_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi(ptr dead_on_unwind noalias writable align 8 %61, ptr %i.aml, i64 %i.amn, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4 ; 3 uses
  %i.amp = load i32, ptr %i.amo, align 4          ; 2 uses
  %i.amq = and i32 %i.amp, 1073741824
  %.not.i.i.i590 = icmp eq i32 %i.amq, 0
  br i1 %.not.i.i.i590, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.amr = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit591

bb.gu:                                            ; preds = %bb.gs
  %i.amt = and i32 %i.amp, 268435455
  %i.amu = zext nneg i32 %i.amt to i64
  %i.amv = sub nsw i64 0, %i.amu
  %i.amw = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.amv
  br label %_ZN4llvm4User13getOperandUseEj.exit591

_ZN4llvm4User13getOperandUseEj.exit591:           ; preds = %bb.gt, %bb.gu
  %i.amx = phi ptr [ %i.ams, %bb.gt ], [ %i.amw, %bb.gu ]
  store ptr %i.amx, ptr %i.g, align 8, !tbaa !206
  %i.amy = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %61, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.amz = load ptr, ptr %61, align 8, !tbaa !56  ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.id
  br i1 %i.ana, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit592, label %bb.gv

bb.gv:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit591
  call void @free(ptr noundef %i.amz) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit592

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit592: ; preds = %_ZN4llvm4User13getOperandUseEj.exit591, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.anb = load ptr, ptr %46, align 8, !tbaa !56
  %i.anc = load i32, ptr %i.da, align 8, !tbaa !137
  %i.and = zext i32 %i.anc to i64
  call fastcc void @_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi(ptr dead_on_unwind noalias writable align 8 %62, ptr %i.anb, i64 %i.and, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.ane = load i32, ptr %i.amo, align 4          ; 2 uses
  %i.anf = and i32 %i.ane, 1073741824
  %.not.i.i.i593 = icmp eq i32 %i.anf, 0
  br i1 %.not.i.i.i593, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit592
  %i.ang = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit594

bb.gx:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit592
  %i.ani = and i32 %i.ane, 268435455
  %i.anj = zext nneg i32 %i.ani to i64
  %i.ank = sub nsw i64 0, %i.anj
  %i.anl = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.ank
  br label %_ZN4llvm4User13getOperandUseEj.exit594

_ZN4llvm4User13getOperandUseEj.exit594:           ; preds = %bb.gw, %bb.gx
  %i.anm = phi ptr [ %i.anh, %bb.gw ], [ %i.anl, %bb.gx ]
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 32
  store ptr %i.ann, ptr %i.h, align 8, !tbaa !206
  %i.ano = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  %i.anp = load ptr, ptr %62, align 8, !tbaa !56  ; 2 uses
  %i.anq = icmp eq ptr %i.anp, %i.ie
  br i1 %i.anq, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit595, label %bb.gy

bb.gy:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit594
  call void @free(ptr noundef %i.anp) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit595

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit595: ; preds = %_ZN4llvm4User13getOperandUseEj.exit594, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  %i.anr = load ptr, ptr %46, align 8, !tbaa !56
  %i.ans = load i32, ptr %i.da, align 8, !tbaa !137
  %i.ant = zext i32 %i.ans to i64
  call fastcc void @_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi(ptr dead_on_unwind noalias writable align 8 %63, ptr %i.anr, i64 %i.ant, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.anu = load i32, ptr %i.amo, align 4          ; 2 uses
  %i.anv = and i32 %i.anu, 1073741824
  %.not.i.i.i596 = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i.i596, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit595
  %i.anw = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit597

bb.ha:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit595
  %i.any = and i32 %i.anu, 268435455
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = sub nsw i64 0, %i.anz
  %i.aob = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.aoa
  br label %_ZN4llvm4User13getOperandUseEj.exit597

_ZN4llvm4User13getOperandUseEj.exit597:           ; preds = %bb.gz, %bb.ha
  %i.aoc = phi ptr [ %i.anx, %bb.gz ], [ %i.aob, %bb.ha ]
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 64
  store ptr %i.aod, ptr %i.i, align 8, !tbaa !206
  %i.aoe = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  %i.aof = load ptr, ptr %63, align 8, !tbaa !56  ; 2 uses
  %i.aog = icmp eq ptr %i.aof, %i.if
  br i1 %i.aog, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598, label %bb.hb

bb.hb:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit597
  call void @free(ptr noundef %i.aof) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598: ; preds = %_ZN4llvm4User13getOperandUseEj.exit597, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, !llvm.loop !821

bb.hc:                                            ; preds = %bb.eq
  %i.aoh = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -32 ; 2 uses
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !185 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.thread755, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aoj = load i8, ptr %i.aoi, align 8, !tbaa !180
  %i.aok = icmp eq i8 %i.aoj, 14
  br i1 %i.aok, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, label %.thread755

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.hd
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 32
  %i.aom = load i32, ptr %i.aol, align 8
  %i.aon = and i32 %i.aom, 8192
  %.not.i.i599 = icmp eq i32 %i.aon, 0
  br i1 %.not.i.i599, label %.thread755, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoi, i64 36
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !205
  %i.aoq = call noundef zeroext i1 @_ZN4llvm23isTriviallyVectorizableEj(i32 noundef %i.aop) #27
  br i1 %i.aoq, label %bb.he, label %.thread755

bb.he:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit
  %i.aor = call noundef zeroext i1 @_ZNK4llvm8CallBase17hasOperandBundlesEv(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0710.0.copyload)
  br i1 %i.aor, label %.thread755, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.0710.0.copyload, i64 4 ; 2 uses
  %i.aot = load i32, ptr %i.aos, align 4
  %i.aou = and i32 %i.aot, 268435455
  %i.aov = add nsw i32 %i.aou, -1                 ; 2 uses
  %.not226871.not = icmp eq i32 %i.aov, 0
  br i1 %.not226871.not, label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, label %.lr.ph874

.lr.ph874:                                        ; preds = %bb.hf
  %i.aow = getelementptr inbounds i8, ptr %.sroa.0710.0.copyload, i64 -8
  %wide.trip.count921 = zext i32 %i.aov to i64
  br label %bb.hg

bb.hg:                                            ; preds = %.lr.ph874, %bb.hn
  %indvars.iv918 = phi i64 [ 0, %.lr.ph874 ], [ %indvars.iv.next919, %bb.hn ] ; 3 uses
  %i.aox = load ptr, ptr %i.aoh, align 8, !tbaa !185
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 36
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !205
  %i.apa = load ptr, ptr %i.ig, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.apb = trunc nuw i64 %indvars.iv918 to i32    ; 3 uses
  %i.apc = call noundef zeroext i1 @_ZN4llvm34isVectorIntrinsicWithScalarOpAtArgEjjPKNS_19TargetTransformInfoE(i32 noundef %i.aoz, i32 noundef %i.apb, ptr noundef nonnull %i.apa) #27
  br i1 %i.apc, label %bb.hh, label %bb.hj

bb.hh:                                            ; preds = %bb.hg
  %i.apd = load ptr, ptr %46, align 8, !tbaa !56  ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.apf = load i32, ptr %i.da, align 8, !tbaa !137
  %i.apg = zext i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw [16 x i8], ptr %i.apd, i64 %i.apg
  call void @_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %64, ptr noundef nonnull align 8 dereferenceable(64) %46)
  store i32 %i.apb, ptr %i.ii, align 8, !tbaa !353
  %i.api = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeIPSt4pairIPNS_5ValueEiEEEZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERNS_11InstructionEE3$_5EEbOT_T0_"(ptr nonnull %i.ape, ptr %i.aph, ptr nofree noundef align 8 dereferenceable(72) %64)
  %i.apj = load ptr, ptr %64, align 8, !tbaa !56  ; 2 uses
  %i.apk = icmp eq ptr %i.apj, %i.ij
  br i1 %i.apk, label %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit", label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @free(ptr noundef %i.apj) #27
  br label %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit"

"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit": ; preds = %bb.hh, %bb.hi
  br i1 %i.api, label %bb.hn, label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread

bb.hj:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  %i.apl = load ptr, ptr %46, align 8, !tbaa !56
  %i.apm = load i32, ptr %i.da, align 8, !tbaa !137
  %i.apn = zext i32 %i.apm to i64
  call fastcc void @_ZL33generateInstLaneVectorFromOperandN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEEi(ptr dead_on_unwind noalias writable align 8 %65, ptr %i.apl, i64 %i.apn, i32 noundef %i.apb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27
  %i.apo = load i32, ptr %i.aos, align 4          ; 2 uses
  %i.app = and i32 %i.apo, 1073741824
  %.not.i.i.i603 = icmp eq i32 %i.app, 0
  br i1 %.not.i.i.i603, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.apq = load ptr, ptr %i.aow, align 8, !tbaa !206
  br label %_ZN4llvm4User13getOperandUseEj.exit604

bb.hl:                                            ; preds = %bb.hj
  %i.apr = and i32 %i.apo, 268435455
  %i.aps = zext nneg i32 %i.apr to i64
  %i.apt = sub nsw i64 0, %i.aps
  %i.apu = getelementptr inbounds [32 x i8], ptr %.sroa.0710.0.copyload, i64 %i.apt
  br label %_ZN4llvm4User13getOperandUseEj.exit604

_ZN4llvm4User13getOperandUseEj.exit604:           ; preds = %bb.hk, %bb.hl
  %i.apv = phi ptr [ %i.apq, %bb.hk ], [ %i.apu, %bb.hl ]
  %i.apw = getelementptr inbounds nuw [32 x i8], ptr %i.apv, i64 %indvars.iv918
  store ptr %i.apw, ptr %i.j, align 8, !tbaa !206
  %i.apx = call noundef nonnull align 8 dereferenceable(72) ptr @_ZN4llvm15SmallVectorImplISt4pairINS_11SmallVectorIS1_IPNS_5ValueEiELj3EEEPNS_3UseEEE12emplace_backIJS6_S8_EEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(64) %65, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  %i.apy = load ptr, ptr %65, align 8, !tbaa !56  ; 2 uses
  %i.apz = icmp eq ptr %i.apy, %i.ih
  br i1 %i.apz, label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit605, label %bb.hm

bb.hm:                                            ; preds = %_ZN4llvm4User13getOperandUseEj.exit604
  call void @free(ptr noundef %i.apy) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit605

_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit605: ; preds = %_ZN4llvm4User13getOperandUseEj.exit604, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  br label %bb.hn

bb.hn:                                            ; preds = %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit", %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit605
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %wide.trip.count921
  br i1 %exitcond922.not, label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, label %bb.hg, !llvm.loop !864

.thread755:                                       ; preds = %bb.eq, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i, %bb.hd, %bb.hc, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit, %bb.he, %bb.gc, %bb.gb, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570, %bb.fg, %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_3D2Ev.exit"
  %.9191 = phi i1 [ %.0182, %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_3D2Ev.exit" ], [ %.0182, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i ], [ %.1183, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570 ], [ %.0182, %bb.fg ], [ %.0182, %bb.gb ], [ %.0182, %bb.gc ], [ %.0182, %bb.he ], [ %.0182, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_5ValueEEEDcPT0_.exit ], [ %.0182, %bb.hc ], [ %.0182, %bb.eq ], [ %.0182, %bb.hd ] ; 3 uses
  %i.aqa = load ptr, ptr %46, align 8, !tbaa !56  ; 3 uses
  %i.aqb = load i32, ptr %i.da, align 8, !tbaa !137 ; 3 uses
  %i.aqc = load i32, ptr %i.ik, align 8, !tbaa !132
  %i.aqd = load ptr, ptr %i.ig, align 8, !tbaa !181, !nonnull !53, !align !146
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aqe = load ptr, ptr %i.aqa, align 8, !tbaa !343
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !175 ; 6 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 32
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !198
  %.fr.i = freeze i32 %i.aqi                      ; 7 uses
  %i.aqj = zext i32 %.fr.i to i64
  %i.aqk = icmp eq i32 %i.aqb, %.fr.i
  %i.aql = icmp eq i32 %.fr.i, 1
  %or.cond.i = or i1 %i.aql, %i.aqk
  br i1 %or.cond.i, label %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread, label %bb.ho

bb.ho:                                            ; preds = %.thread755
  %i.aqm = urem i32 %i.aqb, %.fr.i
  %i.aqn = udiv i32 %i.aqb, %.fr.i                ; 2 uses
  %.not.i606 = icmp eq i32 %i.aqm, 0
  br i1 %.not.i606, label %bb.hp, label %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aqo = shl i32 %.fr.i, 1                      ; 6 uses
  %i.aqp = zext i32 %i.aqo to i64                 ; 3 uses
  store ptr %i.il, ptr %2, align 8, !tbaa !56
  store i32 0, ptr %i.im, align 8, !tbaa !137
  store i32 16, ptr %i.in, align 4, !tbaa !138
  %i.aqq = icmp eq i32 %i.aqo, 0
  br i1 %i.aqq, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqr = icmp ugt i32 %i.aqo, 16
  br i1 %i.aqr, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i: ; preds = %bb.hq
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.il, i64 noundef %i.aqp, i64 noundef 4) #27
  %.pre.i.i.i.i613 = load i32, ptr %i.im, align 8, !tbaa !137 ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.aqo, %.pre.i.i.i.i613
  %.pre.pre.i = load ptr, ptr %2, align 8, !tbaa !56 ; 2 uses
  br i1 %.not11.i.i.i.i, label %.lr.ph.i.preheader.i, label %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i

_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i: ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i613 to i64
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i, %bb.hq
  %i.aqs = phi ptr [ %.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ %i.il, %bb.hq ] ; 2 uses
  %.pre-phi.i.i3.i.i = phi i64 [ %.pre13.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i.i ], [ 0, %bb.hq ] ; 2 uses
  %i.aqt = getelementptr [4 x i8], ptr %i.aqs, i64 %.pre-phi.i.i3.i.i
  %i.aqu = sub nsw i64 %i.aqp, %.pre-phi.i.i3.i.i
  %i.aqv = shl nsw i64 %i.aqu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aqt, i8 0, i64 %i.aqv, i1 false), !tbaa !164
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i
  %.pre.i607 = phi ptr [ %i.aqs, %.lr.ph.preheader.i.i.i.i ], [ %.pre.pre.i, %_ZN4llvm15SmallVectorImplIiE7reserveEm.exit.i.i.i.i ] ; 4 uses
  store i32 %i.aqo, ptr %i.im, align 8, !tbaa !137
  %.idx.i608 = shl nuw nsw i64 %i.aqp, 2          ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.pre.i607, i64 %.idx.i608
  %i.aqx = add nsw i64 %.idx.i608, -4             ; 2 uses
  %i.aqy = lshr exact i64 %i.aqx, 2
  %i.aqz = add nuw nsw i64 %i.aqy, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.aqx, 28
  br i1 %min.iters.check, label %.lr.ph.i.i609.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.aqz, 9223372036854775800    ; 4 uses
  %i.ara = trunc i64 %n.vec to i32
  %i.arb = shl i64 %n.vec, 2
  %i.arc = getelementptr i8, ptr %.pre.i607, i64 %i.arb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ard = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.pre.i607, i64 %i.ard ; 2 uses
  %i.are = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !164
  store <4 x i32> %step.add, ptr %i.are, align 4, !tbaa !164
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.arf = icmp eq i64 %index.next, %n.vec
  br i1 %i.arf, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aqz, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %.lr.ph.i.i609.preheader

.lr.ph.i.i609.preheader:                          ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ %i.ara, %middle.block ]
  %.057.i.i.ph = phi ptr [ %.pre.i607, %.lr.ph.i.preheader.i ], [ %i.arc, %middle.block ]
  br label %.lr.ph.i.i609

.lr.ph.i.i609:                                    ; preds = %.lr.ph.i.i609.preheader, %.lr.ph.i.i609
  %.08.i.i = phi i32 [ %i.arg, %.lr.ph.i.i609 ], [ %.08.i.i.ph, %.lr.ph.i.i609.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.arh, %.lr.ph.i.i609 ], [ %.057.i.i.ph, %.lr.ph.i.i609.preheader ] ; 2 uses
  store i32 %.08.i.i, ptr %.057.i.i, align 4, !tbaa !164
  %i.arg = add nuw nsw i32 %.08.i.i, 1
  %i.arh = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %.not.i.i610 = icmp eq ptr %i.arh, %i.aqw
  br i1 %.not.i.i610, label %_ZSt4iotaIPiiEvT_S1_T0_.exit.i, label %.lr.ph.i.i609, !llvm.loop !866

_ZSt4iotaIPiiEvT_S1_T0_.exit.i:                   ; preds = %.lr.ph.i.i609, %middle.block, %bb.hp
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.arj = load i32, ptr %i.ari, align 8
  %i.ark = and i32 %i.arj, 254
  %spec.select.i.i.i = icmp eq i32 %i.ark, 18
  br i1 %spec.select.i.i.i, label %bb.hr, label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

bb.hr:                                            ; preds = %_ZSt4iotaIPiiEvT_S1_T0_.exit.i
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !194
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !195
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit.i

_ZNK4llvm4Type13getScalarTypeEv.exit.i:           ; preds = %bb.hr, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i
  %.0.i.i611 = phi ptr [ %i.arn, %bb.hr ], [ %i.aqg, %_ZSt4iotaIPiiEvT_S1_T0_.exit.i ]
  %i.aro = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %.0.i.i611, i32 noundef %i.aqo) #27
  %i.arp = load ptr, ptr %2, align 8, !tbaa !56
  %i.arq = load i32, ptr %i.im, align 8, !tbaa !137
  %i.arr = zext i32 %i.arq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ars = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo14getShuffleCostENS0_11ShuffleKindEPNS_10VectorTypeES3_NS_8ArrayRefIiEENS0_14TargetCostKindEiS3_NS4_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.aqd, i32 noundef 6, ptr noundef %i.aro, ptr noundef nonnull %i.aqg, ptr %i.arp, i64 %i.arr, i32 noundef %i.aqc, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.137") align 8 %3, ptr noundef null) #27 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.ars, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.ars, 1
  %i.art = icmp ne i32 %.fca.1.extract.i, 0
  %i.aru = icmp ne i64 %.fca.0.extract.i, 0
  %.not2.i.i = select i1 %i.art, i1 true, i1 %i.aru
  br i1 %.not2.i.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %bb.hs

bb.hs:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %.zext787 = zext nneg i32 %i.aqn to i64
  %i.arv = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aqn)
  %or.cond67.i = icmp eq i32 %i.arv, 1
  br i1 %or.cond67.i, label %.lr.ph.split.us.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

.lr.ph.split.us.i:                                ; preds = %bb.hs, %..critedge56_crit_edge.us.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %..critedge56_crit_edge.us.i ], [ 0, %bb.hs ] ; 2 uses
  %i.arw = trunc nuw i64 %indvars.iv85.i to i32
  %i.arx = mul i32 %.fr.i, %i.arw                 ; 2 uses
  %i.ary = zext i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw [16 x i8], ptr %i.aqa, i64 %i.ary
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !343 ; 3 uses
  %.not47.us.i = icmp eq ptr %i.asa, null
  br i1 %.not47.us.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.split.us.i
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !175
  %.not48.us.i = icmp eq ptr %i.asc, %i.aqg
  br i1 %.not48.us.i, label %.critedge.us.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

bb.hu:                                            ; preds = %.critedge.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aqj
  br i1 %exitcond.not.i, label %..critedge56_crit_edge.us.i, label %.critedge.us.i, !llvm.loop !867

.critedge.us.i:                                   ; preds = %bb.ht, %bb.hu
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.hu ], [ 0, %bb.ht ] ; 3 uses
  %i.asd = trunc nuw i64 %indvars.iv.i to i32
  %i.ase = add i32 %i.arx, %i.asd
  %i.asf = zext i32 %i.ase to i64
  %i.asg = getelementptr inbounds nuw [16 x i8], ptr %i.aqa, i64 %i.asf ; 2 uses
  %.sroa.0.0.copyload.us.i = load ptr, ptr %i.asg, align 8
  %.sroa.5.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %.sroa.5.0.copyload.us.i = load i32, ptr %.sroa.5.0..sroa_idx.us.i, align 8
  %i.ash = zext i32 %.sroa.5.0.copyload.us.i to i64
  %.not49.us.i = icmp eq i64 %indvars.iv.i, %i.ash
  %.not50.us.i = icmp eq ptr %i.asa, %.sroa.0.0.copyload.us.i
  %or.cond68.us.i = select i1 %.not49.us.i, i1 %.not50.us.i, i1 false
  br i1 %or.cond68.us.i, label %bb.hu, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i

..critedge56_crit_edge.us.i:                      ; preds = %bb.hu
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %.not52.us.not.i = icmp samesign ult i64 %indvars.iv.next86.i, %.zext787
  br i1 %.not52.us.not.i, label %.lr.ph.split.us.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, !llvm.loop !868

_ZN4llvm13isPowerOf2_32Ej.exit.thread.i:          ; preds = %..critedge56_crit_edge.us.i, %bb.ht, %.lr.ph.split.us.i, %.critedge.us.i, %bb.hs, %_ZNK4llvm4Type13getScalarTypeEv.exit.i
  %.7.i = phi i1 [ false, %_ZNK4llvm4Type13getScalarTypeEv.exit.i ], [ false, %bb.hs ], [ false, %.critedge.us.i ], [ true, %..critedge56_crit_edge.us.i ], [ false, %.lr.ph.split.us.i ], [ false, %bb.ht ]
  %i.asi = load ptr, ptr %2, align 8, !tbaa !56   ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.il
  br i1 %i.asj, label %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit, label %bb.hv

bb.hv:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i
  call void @free(ptr noundef %i.asi) #27
  br label %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit

_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread: ; preds = %bb.ho, %.thread755
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread

_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit: ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread.i, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.7.i, label %bb.hw, label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread

bb.hw:                                            ; preds = %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  store ptr %.sroa.0710.0.copyload, ptr %66, align 8
  store ptr %i.kk, ptr %i.io, align 8
  %i.ask = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_5ValueEPNS_3UseEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E24lookupOrInsertIntoBucketIS7_JEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull align 8 dereferenceable(16) %66), !noalias !905 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  br label %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread, !llvm.loop !821

_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread: ; preds = %bb.hn, %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit", %bb.hf, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit, %bb.hw, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit522
  %.10192 = phi i1 [ %.0182, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit522 ], [ %.0182, %bb.dn ], [ %.0182, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555 ], [ %.9191, %bb.hw ], [ %.9191, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread ], [ %.9191, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit ], [ %.0182, %bb.dn ], [ %.0182, %bb.dn ], [ %.0182, %bb.dn ], [ true, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573 ], [ %.0182, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564 ], [ %.0182, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598 ], [ %.1183, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570 ], [ %.0182, %bb.hf ], [ %.0182, %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit" ], [ %.0182, %bb.hn ]
  %.12 = phi i32 [ 5, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit522 ], [ 1, %bb.dn ], [ 5, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit555 ], [ 5, %bb.hw ], [ 1, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit.thread ], [ 1, %_ZL12isFreeConcatN4llvm8ArrayRefISt4pairIPNS_5ValueEiEEENS_19TargetTransformInfo14TargetCostKindERKS6_.exit ], [ 1, %bb.dn ], [ 1, %bb.dn ], [ 1, %bb.dn ], [ 5, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit573 ], [ 5, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit564 ], [ 5, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit598 ], [ %.4170, %_ZN4llvm11SmallVectorISt4pairIPNS_5ValueEiELj3EED2Ev.exit570 ], [ 5, %bb.hf ], [ 5, %bb.hn ], [ 1, %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_5D2Ev.exit" ]
  %i.asl = load ptr, ptr %53, align 8, !tbaa !56  ; 2 uses
  %i.asm = icmp eq ptr %i.asl, %i.gp
  br i1 %i.asm, label %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_3D2Ev.exit621", label %bb.hx

bb.hx:                                            ; preds = %_ZNK4llvm11Instruction11isIntDivRemEv.exit.thread
  call void @free(ptr noundef %i.asl) #27
  br label %"_ZZN12_GLOBAL__N_113VectorCombine21foldShuffleToIdentityERN4llvm11InstructionEEN3$_3D2Ev.exit621"

end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_113VectorCombine21shrinkLoadForShufflesERN4llvm11InstructionE:bb.a
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113VectorCombine18foldBitcastShuffleERN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.131", align 8 ; 11 uses
  %3 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %4 = alloca %"class.llvm::ArrayRef.137", align 8 ; 2 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !180     ; 2 uses
  %i.b = icmp ugt i8 %i.a, 29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = zext i8 %i.a to i32
  %i.g = add nsw i32 %i.f, -30
  %.1.i.i.i = select i1 %i.b, i32 %i.g, i32 %i.e
  %i.h = icmp eq i32 %.1.i.i.i, 51
  br i1 %i.h, label %bb.b, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = and i32 %i.j, 1073741824
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.j, 268435455
  %i.o = zext nneg i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [32 x i8], ptr %1, i64 %i.p
  br label %_ZNK4llvm4User10getOperandEj.exit.i.i

_ZNK4llvm4User10getOperandEj.exit.i.i:            ; preds = %bb.d, %bb.c
  %i.r = phi ptr [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !185  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !212  ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i8.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i:           ; preds = %_ZNK4llvm4User10getOperandEj.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.e, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i
  %i.y = load i8, ptr %i.s, align 8, !tbaa !180
  %.not.i3.i.i.i = icmp eq i8 %i.y, 95
  br i1 %.not.i3.i.i.i, label %bb.f, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185 ; 7 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185 ; 7 uses
  %.not.i9.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i9.not.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !137 ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !175 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 255
  %i.an = icmp eq i32 %i.am, 18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !175 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = and i32 %i.ar, 255
  %i.at = icmp eq i32 %i.as, 18
  %i.au = icmp ne ptr %i.aj, null
  %i.av = and i1 %i.au, %i.an
  %i.aw = icmp ne ptr %i.ap, null
  %i.ax = and i1 %i.aw, %i.at
  %or.cond = and i1 %i.av, %i.ax
  br i1 %or.cond, label %bb.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #28 ; 6 uses
  %i.az = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap) #28 ; 5 uses
  %i.ba = tail call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap) #28 ; 2 uses
  %.fca.1.extract58 = extractvalue { i64, i8 } %i.ba, 1
  %i.bb = trunc nuw i8 %.fca.1.extract58 to i1
  br i1 %i.bb, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.9) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.i
  %.fca.0.extract57 = extractvalue { i64, i8 } %i.ba, 0
  %i.bc = zext i32 %i.ay to i64                   ; 2 uses
  %i.bd = urem i64 %.fca.0.extract57, %i.bc
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.k, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.k:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.be = load i8, ptr %i.ac, align 8, !tbaa !180 ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.be, 2 ; 3 uses
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %i.aa, align 8, !tbaa !180
  %.not10.i = icmp eq i8 %i.bf, 81
  br i1 %.not10.i, label %.lr.ph.i, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.0411.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.aa, %bb.l ]
  %i.bg = getelementptr inbounds i8, ptr %.0411.i, i64 -32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !185 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !180
  %.not.i = icmp eq i8 %i.bi, 81
  br i1 %.not.i, label %.lr.ph.i, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit.loopexit

_ZL19peekThroughBitcastsPN4llvm5ValueE.exit.loopexit: ; preds = %.lr.ph.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre211 = load i32, ptr %.phi.trans.insert210, align 8
  br label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit

_ZL19peekThroughBitcastsPN4llvm5ValueE.exit:      ; preds = %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit.loopexit, %bb.l
  %i.bj = phi i32 [ %i.ar, %bb.l ], [ %.pre211, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit.loopexit ]
  %i.bk = phi ptr [ %i.ap, %bb.l ], [ %.pre, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit.loopexit ]
  %i.bl = and i32 %i.bj, 255
  %.not226 = icmp eq i32 %i.bl, 18
  %.not10.i109 = icmp eq i8 %i.be, 81
  br i1 %.not10.i109, label %.lr.ph.i111, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit114

.lr.ph.i111:                                      ; preds = %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit, %.lr.ph.i111
  %.0411.i112 = phi ptr [ %i.bn, %.lr.ph.i111 ], [ %i.ac, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit ]
  %i.bm = getelementptr inbounds i8, ptr %.0411.i112, i64 -32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !185 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !180
  %.not.i113 = icmp eq i8 %i.bo, 81
  br i1 %.not.i113, label %.lr.ph.i111, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit114

_ZL19peekThroughBitcastsPN4llvm5ValueE.exit114:   ; preds = %.lr.ph.i111, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit
  %.04.lcssa.i110 = phi ptr [ %i.ac, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit ], [ %i.bn, %.lr.ph.i111 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.04.lcssa.i110, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !175 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 255
  %.not227 = icmp eq i32 %i.bt, 18
  br i1 %.not226, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit114
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !239
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !239
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit114
  br i1 %.not227, label %bb.o, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !239
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !239
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %.critedge, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

.critedge:                                        ; preds = %bb.m, %bb.o, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ce, ptr %2, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.cf, align 8, !tbaa !137
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 16, ptr %i.cg, align 4, !tbaa !138
  %.not104 = icmp ugt i32 %i.ay, %i.az
  br i1 %.not104, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ch = urem i32 %i.az, %i.ay
  %i.ci = udiv i32 %i.az, %i.ay
  %.not106 = icmp eq i32 %i.ch, 0
  br i1 %.not106, label %bb.q, label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm21narrowShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.ci, ptr %i.ae, i64 %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  br label %bb.t

bb.r:                                             ; preds = %.critedge
  %i.cj = urem i32 %i.ay, %i.az
  %i.ck = udiv i32 %i.ay, %i.az
  %.not105 = icmp eq i32 %i.cj, 0
  br i1 %.not105, label %bb.s, label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cl = call noundef zeroext i1 @_ZN4llvm20widenShuffleMaskEltsEiNS_8ArrayRefIiEERNS_15SmallVectorImplIiEE(i32 noundef %i.ck, ptr %i.ae, i64 %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %2) #27
  br i1 %i.cl, label %bb.t, label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.cm = call { i64, i8 } @_ZNK4llvm4Type22getPrimitiveSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap) #28 ; 2 uses
  %.fca.1.extract40 = extractvalue { i64, i8 } %i.cm, 1
  %i.cn = trunc nuw i8 %.fca.1.extract40 to i1
  br i1 %i.cn, label %bb.u, label %_ZNK4llvm8TypeSizecvmEv.exit116

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.9) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit116:                  ; preds = %bb.t
  %.fca.0.extract39 = extractvalue { i64, i8 } %i.cm, 0
  %i.co = udiv i64 %.fca.0.extract39, %i.bc
  %i.cp = trunc i64 %i.co to i32
  %i.cq = load i32, ptr %i.ak, align 8
  %i.cr = and i32 %i.cq, 254
  %spec.select.i.i117 = icmp eq i32 %i.cr, 18
  br i1 %spec.select.i.i117, label %bb.v, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.v:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit116
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !194
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !195
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit116, %bb.v
  %.0.i = phi ptr [ %i.cu, %bb.v ], [ %i.aj, %_ZNK4llvm8TypeSizecvmEv.exit116 ]
  %i.cv = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %.0.i, i32 noundef %i.cp) #27 ; 4 uses
  %i.cw = load i32, ptr %i.aq, align 8
  %i.cx = and i32 %i.cw, 254
  %spec.select.i.i118 = icmp eq i32 %i.cx, 18
  br i1 %spec.select.i.i118, label %bb.w, label %_ZNK4llvm4Type13getScalarTypeEv.exit120

bb.w:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !194
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !195
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit120

_ZNK4llvm4Type13getScalarTypeEv.exit120:          ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.w
  %.0.i119 = phi ptr [ %i.da, %bb.w ], [ %i.ap, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.db = call noundef ptr @_ZN4llvm15FixedVectorType3getEPNS_4TypeEj(ptr noundef %.0.i119, i32 noundef %i.ag) #27 ; 2 uses
  %i.dc = select i1 %spec.select.i.i.i.i.i.i.i.i, i32 7, i32 6 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.df = load ptr, ptr %2, align 8, !tbaa !56
  %i.dg = load i32, ptr %i.cf, align 8, !tbaa !137
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.dk = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo14getShuffleCostENS0_11ShuffleKindEPNS_10VectorTypeES3_NS_8ArrayRefIiEENS0_14TargetCostKindEiS3_NS4_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.dc, ptr noundef nonnull %i.aj, ptr noundef %i.cv, ptr %i.df, i64 %i.dh, i32 noundef %i.dj, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.137") align 8 %3, ptr noundef null) #27 ; 2 uses
  %.fca.1.extract28 = extractvalue { i64, i32 } %i.dk, 1
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.dm = load i32, ptr %i.di, align 8, !tbaa !132
  %i.dn = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i32 noundef 51, ptr noundef %i.cv, ptr noundef nonnull %i.ap, i8 noundef zeroext 0, i32 noundef %i.dm, ptr noundef null) #27 ; 2 uses
  %.fca.1.extract24 = extractvalue { i64, i32 } %i.dn, 1
  %i.do = icmp eq i32 %.fca.1.extract24, 1
  %spec.select.i125 = select i1 %i.do, i32 1, i32 %.fca.1.extract28 ; 3 uses
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.dq = load i32, ptr %i.di, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.dr = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo14getShuffleCostENS0_11ShuffleKindEPNS_10VectorTypeES3_NS_8ArrayRefIiEENS0_14TargetCostKindEiS3_NS4_IPKNS_5ValueEEEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, i32 noundef %i.dc, ptr noundef %i.db, ptr noundef nonnull %i.ap, ptr %i.ae, i64 %i.ah, i32 noundef %i.dq, i32 noundef 0, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.137") align 8 %4, ptr noundef null) #27 ; 2 uses
  %.fca.1.extract10 = extractvalue { i64, i32 } %i.dr, 1
  %i.ds = load ptr, ptr %i.dd, align 8, !tbaa !181, !nonnull !53, !align !146
  %i.dt = load i32, ptr %i.di, align 8, !tbaa !132
  %i.du = call { i64, i32 } @_ZNK4llvm19TargetTransformInfo16getCastInstrCostEjPNS_4TypeES2_NS0_15CastContextHintENS0_14TargetCostKindEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 noundef 51, ptr noundef nonnull %i.aj, ptr noundef %i.db, i8 noundef zeroext 0, i32 noundef %i.dt, ptr noundef null) #27 ; 2 uses
  %.fca.1.extract6 = extractvalue { i64, i32 } %i.du, 1
  %i.dv = icmp eq i32 %.fca.1.extract6, 1
  %spec.select.i132 = select i1 %i.dv, i32 1, i32 %.fca.1.extract10 ; 2 uses
  %i.dw = icmp slt i32 %spec.select.i132, %spec.select.i125
  br i1 %i.dw, label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit120
  %i.dx = select i1 %spec.select.i.i.i.i.i.i.i.i, i64 4, i64 8
  %.fca.0.extract23 = extractvalue { i64, i32 } %i.dn, 0 ; 2 uses
  %i.dy = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.dx, i64 %.fca.0.extract23) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = icmp sgt i64 %.fca.0.extract23, 0
  %spec.select = select i1 %i.ea, i64 9223372036854775807, i64 -9223372036854775808
  %i.eb = extractvalue { i64, i1 } %i.dy, 0
  %i.ec = ashr exact i64 %i.eb, 2
  %.0.i.i = select i1 %i.dz, i64 %spec.select, i64 %i.ec
  %.fca.0.extract27 = extractvalue { i64, i32 } %i.dk, 0
  %.fca.0.extract9 = extractvalue { i64, i32 } %i.dr, 0
  %.fca.0.extract5 = extractvalue { i64, i32 } %i.du, 0
  %.0.i.i133 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract9, i64 %.fca.0.extract5)
  %.0.i.i126 = call i64 @llvm.sadd.sat.i64(i64 %.fca.0.extract27, i64 %.0.i.i)
  %i.ed = icmp slt i32 %spec.select.i125, %spec.select.i132
  %i.ee = icmp sge i64 %.0.i.i133, %.0.i.i126
  %or.cond191.not197 = select i1 %i.ed, i1 true, i1 %i.ee
  %i.ef = icmp eq i32 %spec.select.i125, 0
  %or.cond192 = and i1 %i.ef, %or.cond191.not197
  br i1 %or.cond192, label %bb.y, label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.eh = load i8, ptr %i.aa, align 8, !tbaa !180
  %.not10.i136 = icmp eq i8 %i.eh, 81
  br i1 %.not10.i136, label %.lr.ph.i138, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141

.lr.ph.i138:                                      ; preds = %bb.y, %.lr.ph.i138
  %.0411.i139 = phi ptr [ %i.ej, %.lr.ph.i138 ], [ %i.aa, %bb.y ]
  %i.ei = getelementptr inbounds i8, ptr %.0411.i139, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !185 ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !180
  %.not.i140 = icmp eq i8 %i.ek, 81
  br i1 %.not.i140, label %.lr.ph.i138, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141

_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141:   ; preds = %.lr.ph.i138, %bb.y
  %.04.lcssa.i137 = phi ptr [ %i.aa, %bb.y ], [ %i.ej, %.lr.ph.i138 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.el, align 8
  %i.em = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.eg, i32 noundef 51, ptr noundef nonnull %.04.lcssa.i137, ptr noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.en = load i8, ptr %i.ac, align 8, !tbaa !180
  %.not10.i142 = icmp eq i8 %i.en, 81
  br i1 %.not10.i142, label %.lr.ph.i144, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit147

.lr.ph.i144:                                      ; preds = %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141, %.lr.ph.i144
  %.0411.i145 = phi ptr [ %i.ep, %.lr.ph.i144 ], [ %i.ac, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141 ]
  %i.eo = getelementptr inbounds i8, ptr %.0411.i145, i64 -32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !185 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !180
  %.not.i146 = icmp eq i8 %i.eq, 81
  br i1 %.not.i146, label %.lr.ph.i144, label %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit147

_ZL19peekThroughBitcastsPN4llvm5ValueE.exit147:   ; preds = %.lr.ph.i144, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141
  %.04.lcssa.i143 = phi ptr [ %i.ac, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit141 ], [ %i.ep, %.lr.ph.i144 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.er, align 8
  %i.es = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.eg, i32 noundef 51, ptr noundef nonnull %.04.lcssa.i143, ptr noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.et = load ptr, ptr %2, align 8, !tbaa !56
  %i.eu = load i32, ptr %i.cf, align 8, !tbaa !137
  %i.ev = zext i32 %i.eu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.ew, align 8
  %i.ex = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueES2_NS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.eg, ptr noundef %i.em, ptr noundef %i.es, ptr %i.et, i64 %i.ev, ptr noundef nonnull align 8 dereferenceable(34) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call fastcc void @_ZN12_GLOBAL__N_113VectorCombine12replaceValueERN4llvm11InstructionERNS1_5ValueEb(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i1 noundef zeroext true)
  br label %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread

_ZNK4llvm15InstructionCostgtERKS0_.exit.thread:   ; preds = %bb.x, %_ZNK4llvm4Type13getScalarTypeEv.exit120, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit147, %bb.r, %bb.p, %bb.s
  %.4 = phi i1 [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ], [ true, %_ZL19peekThroughBitcastsPN4llvm5ValueE.exit147 ], [ false, %_ZNK4llvm4Type13getScalarTypeEv.exit120 ], [ false, %bb.x ]
  %i.ey = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ce
  br i1 %i.ez, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread
  call void @free(ptr noundef %i.ey) #27
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %_ZNK4llvm15InstructionCostgtERKS0_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_18CastOperator_matchINS0_12OneUse_matchINS0_13Shuffle_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEES9_NS0_6m_MaskEEEEELj51EEEEEbPT_RKT0_.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i, %bb.a, %_ZNK4llvm4User10getOperandEj.exit.i.i, %bb.h, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, %bb.n, %bb.o, %_ZNK4llvm8TypeSizecvmEv.exit
  %.8 = phi i1 [ false, %bb.o ], [ false, %bb.h ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.4, %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit ], [ false, %bb.n ], [ false, %_ZNK4llvm4User10getOperandEj.exit.i.i ], [ false, %bb.a ], [ false, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_113VectorCombine22foldSelectsFromBitcastERN4llvm11InstructionE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::DenseMap.698", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"struct.llvm::PatternMatch::ThreeOps_match.700", align 8 ; 6 uses
  %5 = alloca %"class.llvm::DenseMapIterator.707", align 8 ; 9 uses
  %6 = alloca %"struct.llvm::detail::DenseMapPair.708", align 8 ; 10 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !180
  %.not = icmp eq i8 %i.b, 81
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 18
  %spec.select.i.i136 = select i1 %i.j, ptr %i.f, ptr null ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !175  ; 4 uses
end_hunk_2
