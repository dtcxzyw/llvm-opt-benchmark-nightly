Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineAndOrXor?download=true
inline.NumInlined: 10351
inline.NumDeleted: 3558
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm5APInt11isSameValueERKS0_S2_b:bb.a
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #17
  br label %_ZN4llvm5APIntD2Ev.exit18

_ZN4llvm5APIntD2Ev.exit18:                        ; preds = %_ZNK4llvm5APInteqERKS0_.exit17, %bb.p, %bb.q
  %.0.i1621 = phi i1 [ %i.ab, %_ZNK4llvm5APInteqERKS0_.exit17 ], [ %i.ac, %bb.p ], [ %i.ac, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK4llvm5APInteqERKS0_.exit

_ZNK4llvm5APInteqERKS0_.exit:                     ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN4llvm5APIntD2Ev.exit18, %bb.d, %bb.c
  %.1 = phi i1 [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %.0.i13, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i1621, %_ZN4llvm5APIntD2Ev.exit18 ]
  ret i1 %.1
}

declare void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm32isGuaranteedNotToBeUndefOrPoisonEPKNS_5ValueEPNS_15AssumptionCacheEPKNS_11InstructionEPKNS_13DominatorTreeEj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm16simplifyICmpInstENS_12CmpPredicateEPNS_5ValueES2_RKNS_13SimplifyQueryE(i64, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #2

declare i64 @_ZN4llvm12CmpPredicate10getSwappedEPKNS_7CmpInstE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12PatternMatch14CmpClass_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEEEEENS0_17specific_intval64ILb0EEENS_8ICmpInstELb0EE5matchISD_EEbPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds i8, ptr %1, i64 -64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.c, align 8, !tbaa !72
  %.not.i.i = icmp eq i8 %i.e, 88
  br i1 %.not.i.i, label %bb.c, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 8, !tbaa !72
  %i.i = icmp eq i8 %i.h, 14
  br i1 %i.i, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !124
  %i.l = load i32, ptr %i.d, align 8, !tbaa !312
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

bb.e:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i
  %i.n = load i32, ptr %i.a, align 8, !tbaa !313
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 268435455
  %i.r = zext nneg i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [32 x i8], ptr %i.c, i64 %i.s
  %i.u = zext i32 %i.n to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.not.i.i.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223, !nonnull !54, !align !55
  store ptr %i.w, ptr %i.y, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !72  ; 2 uses
  %.not.i = icmp eq i8 %i.ac, 5
  br i1 %.not.i, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = and i32 %i.ag, 254
  %spec.select.i.i = icmp ne i32 %i.ah, 18
  %i.ai = icmp ugt i8 %i.ac, 22
  %or.cond.i = or i1 %i.ai, %spec.select.i.i
  br i1 %or.cond.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i1 noundef zeroext false) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !72
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i: ; preds = %bb.i, %bb.f
  %.1.i = phi ptr [ %i.ab, %bb.f ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i, i64 24 ; 3 uses
  %i.an = load i64, ptr %i.z, align 8, !tbaa !320
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 65                  ; 2 uses
  br i1 %i.aq, label %_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i
  %i.ar = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.am) #15
  %i.as = sub i32 %i.ap, %i.ar
  %i.at = icmp ult i32 %i.as, 65
  br i1 %i.at, label %_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %i.au = load ptr, ptr %i.am, align 8
  %spec.select.i.i15.i = select i1 %i.aq, ptr %i.am, ptr %i.au
  %.0.i.i16.i = load i64, ptr %spec.select.i.i15.i, align 8, !tbaa !31
  %i.av = icmp eq i64 %.0.i.i16.i, %i.an
  br i1 %i.av, label %bb.j, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

bb.j:                                             ; preds = %_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !279
  %.not9 = icmp eq ptr %i.aw, null
  br i1 %.not9, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call i64 @_ZN4llvm12CmpPredicate3getEPKNS_7CmpInstE(ptr noundef nonnull %1) #16
  %i.ay = trunc i64 %i.ax to i40
  %i.az = load ptr, ptr %0, align 8, !tbaa !279
  store i40 %i.ay, ptr %i.az, align 4
  br label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread

_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_5ValueEEEEEEE5matchIS6_EEbPT_.exit.thread: ; preds = %bb.i, %bb.h, %bb.g, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %bb.c, %bb.d, %bb.b, %bb.e, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i, %bb.a, %_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit, %bb.j, %bb.k
  %.0 = phi i1 [ true, %bb.j ], [ true, %bb.k ], [ false, %bb.c ], [ false, %_ZNK4llvm12PatternMatch17specific_intval64ILb0EE5matchINS_5ValueEEEbPT_.exit ], [ false, %bb.a ], [ false, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.0
}

declare void @_ZN4llvm11Instruction30dropPoisonGeneratingAttributesEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN4llvm11Instruction28dropPoisonGeneratingMetadataEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZL25foldSignedTruncationCheckPN4llvm8ICmpInstES1_RNS_11InstructionERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEEENK3$_0clES1_RPNS_5ValueERNS_5APIntE"(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.llvm::PatternMatch::SpecificCmpClass_match.600", align 8 ; 10 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i64 36, ptr %3, align 8, !alias.scope !1204
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !1204
  %i.f = call noundef zeroext i1 @_ZNK4llvm12PatternMatch22SpecificCmpClass_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_11api_pred_tyINS0_9is_power2EEELj14ELb0EEES9_NS_8ICmpInstELb0EE5matchISB_EEbPT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %0)
  br i1 %i.f, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %i.i = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %i.h) #15
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30, !noalias !1205 ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !30, !alias.scope !1205
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %_ZNK4llvm5APInt3shlEj.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.c
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.h) #16
  %.pr.i = load i32, ptr %i.k, align 8, !tbaa !30, !alias.scope !1205 ; 2 uses
  %i.o = icmp ult i32 %.pr.i, 65
  br i1 %i.o, label %_ZNK4llvm5APInt3shlEj.exit.thread, label %_ZNK4llvm5APInt3shlEj.exit

_ZNK4llvm5APInt3shlEj.exit.thread:                ; preds = %bb.c, %_ZN4llvm5APIntC2ERKS0_.exit.i
  %.sink.i = phi ptr [ %i.h, %bb.c ], [ %4, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.p = phi i32 [ %i.m, %bb.c ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 3 uses
  %.pre.i = load i64, ptr %.sink.i, align 8
  %i.q = icmp eq i32 %i.p, 1
  %i.r = shl i64 %.pre.i, 1
  %storemerge.i.i = select i1 %i.q, i64 0, i64 %i.r
  %i.s = sub nsw i32 0, %i.p
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 -1, %i.u
  %i.w = icmp eq i32 %i.p, 0
  %.04.i.i.i = select i1 %i.w, i64 0, i64 %i.v, !prof !116
  %i.x = and i64 %.04.i.i.i, %storemerge.i.i
  store i64 %i.x, ptr %4, align 8, !tbaa !31, !alias.scope !1205
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %.split10

_ZNK4llvm5APInt3shlEj.exit:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 1) #16
  %.pre = load i32, ptr %i.k, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.aa = icmp ult i32 %.pre, 65
  br i1 %i.aa, label %.split10, label %bb.d

.critedge.thread:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN4llvm5APIntaSERKS0_.exit

.split10:                                         ; preds = %_ZNK4llvm5APInt3shlEj.exit, %_ZNK4llvm5APInt3shlEj.exit.thread
  %i.ab = phi ptr [ %i.y, %_ZNK4llvm5APInt3shlEj.exit.thread ], [ %i.z, %_ZNK4llvm5APInt3shlEj.exit ]
  %i.ac = load i64, ptr %4, align 8, !tbaa !31
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ae = icmp eq i64 %i.ac, %i.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.ae, label %bb.e, label %_ZN4llvm5APIntaSERKS0_.exit

bb.d:                                             ; preds = %_ZNK4llvm5APInt3shlEj.exit
  %i.af = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.z) #15 ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.critedge, label %.split

.split:                                           ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.af, label %bb.e, label %_ZN4llvm5APIntaSERKS0_.exit

.critedge:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %i.af, label %bb.e, label %_ZN4llvm5APIntaSERKS0_.exit

bb.e:                                             ; preds = %.split10, %.split, %.critedge
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !109 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.al = icmp ult i32 %i.ak, 65
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ao = icmp ult i32 %i.an, 65
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !31
  store i64 %i.ap, ptr %2, align 8, !tbaa !31
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !30
  store i32 %i.aq, ptr %i.aj, align 8, !tbaa !30
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #16
  br label %_ZN4llvm5APIntaSERKS0_.exit

_ZN4llvm5APIntaSERKS0_.exit:                      ; preds = %.split10, %.split, %bb.h, %bb.g, %.critedge.thread, %.critedge
  %.07 = phi i1 [ false, %.critedge.thread ], [ false, %.critedge ], [ true, %bb.g ], [ true, %bb.h ], [ false, %.split ], [ false, %.split10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i1 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt3shlEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !30
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %.pr = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp ult i32 %.pr, 65
  br i1 %i.e, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.a
  %.sink = phi ptr [ %1, %bb.a ], [ %0, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ] ; 3 uses
  %.pre = load i64, ptr %.sink, align 8
  %i.g = icmp eq i32 %2, %i.f
  %i.h = zext nneg i32 %2 to i64
  %i.i = shl i64 %.pre, %i.h
  %storemerge.i = select i1 %i.g, i64 0, i64 %i.i
  %i.j = sub nsw i32 0, %i.f
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = icmp eq i32 %i.f, 0
  %.04.i.i = select i1 %i.n, i64 0, i64 %i.m, !prof !116
  %i.o = and i64 %.04.i.i, %storemerge.i
  store i64 %i.o, ptr %0, align 8, !tbaa !31
  br label %_ZN4llvm5APIntlSEj.exit

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  tail call void @_ZN4llvm5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2) #16
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12PatternMatch22SpecificCmpClass_matchINS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_11api_pred_tyINS0_9is_power2EEELj14ELb0EEES9_NS_8ICmpInstELb0EE5matchISB_EEbPT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @_ZN4llvm12CmpPredicate3getEPKNS_7CmpInstE(ptr noundef nonnull %1) #16
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %.sroa.02.0.insert.ext = and i64 %i.a, 1099511627775
  %i.b = tail call { i64, i8 } @_ZN4llvm12CmpPredicate11getMatchingES0_S0_(i64 %.sroa.02.0.insert.ext, i64 %.sroa.01.0.copyload) #16
  %.fca.1.extract = extractvalue { i64, i8 } %i.b, 1
  %i.c = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 -64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_11api_pred_tyINS0_9is_power2EEELj14ELb0EE5matchIS4_EEbPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %i.f)
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds i8, ptr %1, i64 -32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 5 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !72    ; 2 uses
  %.not.i = icmp eq i8 %i.k, 5
  br i1 %.not.i, label %bb.e, label %_ZNK4llvm12PatternMatch9is_power27isValueERKNS_5APIntE.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.f, label %.split.i

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.l, align 8, !tbaa !31
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.p)
  %or.cond.i = icmp eq i64 %i.q, 1
  br i1 %or.cond.i, label %_ZNK4llvm12PatternMatch11api_pred_tyINS0_9is_power2EE5matchINS_5ValueEEEbPT_.exit, label %_ZNK4llvm12PatternMatch9is_power27isValueERKNS_5APIntE.exit.thread.i

.split.i:                                         ; preds = %bb.e
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #15
  br i1 %i.r, label %_ZNK4llvm12PatternMatch11api_pred_tyINS0_9is_power2EE5matchINS_5ValueEEEbPT_.exit, label %_ZNK4llvm12PatternMatch9is_power27isValueERKNS_5APIntE.exit.thread.i

_ZNK4llvm12PatternMatch9is_power27isValueERKNS_5APIntE.exit.thread.i: ; preds = %.split.i, %bb.f, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 254
  %spec.select.i.i = icmp ne i32 %i.w, 18
  %i.x = icmp ugt i8 %i.k, 22
  %or.cond42.i = or i1 %i.x, %spec.select.i.i
  br i1 %or.cond42.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm12PatternMatch9is_power27isValueERKNS_5APIntE.exit.thread.i
  %i.y = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i1 noundef zeroext true) #16 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr %i.y, align 8, !tbaa !72
  %i.aa = icmp eq i8 %i.z, 5
  br i1 %i.aa, label %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i, label %.critedge

_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i: ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !30
  %i.ae = icmp ult i32 %i.ad, 65
  br i1 %i.ae, label %bb.i, label %.split33.i

bb.i:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ag = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.af)
  %or.cond39.i = icmp eq i64 %i.ag, 1
  br i1 %or.cond39.i, label %_ZNK4llvm12PatternMatch11api_pred_tyINS0_9is_power2EE5matchINS_5ValueEEEbPT_.exit, label %.critedge

.split33.i:                                       ; preds = %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_8ConstantEEEDaPT0_.exit.i
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #15
  br i1 %i.ah, label %_ZNK4llvm12PatternMatch11api_pred_tyINS0_9is_power2EE5matchINS_5ValueEEEbPT_.exit, label %.critedge

_ZNK4llvm12PatternMatch11api_pred_tyINS0_9is_power2EE5matchINS_5ValueEEEbPT_.exit: ; preds = %bb.f, %.split.i, %bb.i, %.split33.i
  %.sink.i = phi ptr [ %i.l, %.split.i ], [ %i.l, %bb.f ], [ %i.ab, %bb.i ], [ %i.ab, %.split33.i ]
end_hunk_0
