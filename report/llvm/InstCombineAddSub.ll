Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineAddSub?download=true
inline.NumInlined: 7618
inline.NumDeleted: 2961
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE:bb.a

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i32 noundef 3, ptr noundef nonnull %.0.i) #16
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit: ; preds = %bb.d, %bb.e
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i32 %.sroa.0.0.i.i21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101, !nonnull !76, !align !77 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #16, !inline_history !2
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.n) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.n, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit ], [ %i.l, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase13CreateFDivFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %.sroa.024.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i8, ptr %i.a, align 4, !tbaa !189, !range !136, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4llvm13IRBuilderBase24CreateConstrainedFPBinOpEjPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeESt8optionalINS_12RoundingModeEES9_INS_2fp17ExceptionBehaviorEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 114, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %5, i16 0, i16 0) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98, !nonnull !76, !align !77 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.02.0.copyload = load i32, ptr %i.g, align 8, !tbaa !190
  %i.h = and i64 %3, 4294967296
  %.not26 = icmp eq i64 %i.h, 0                   ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not26, i32 %.sroa.02.0.copyload, i32 %.sroa.024.0.extract.trunc
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 22, ptr noundef %1, ptr noundef %2, i32 %.sroa.0.0.i.i) #16 ; 2 uses
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.m, align 8
  %i.n = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 22, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #16 ; 5 uses
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 8, !tbaa !190
  %.sroa.0.0.i.i21 = select i1 %.not26, i32 %.sroa.0.0.copyload, i32 %.sroa.024.0.extract.trunc
  %.not.i = icmp eq ptr %5, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i = select i1 %.not.i, ptr %i.p, ptr %5     ; 2 uses
  %.not9.i = icmp eq ptr %.0.i, null
  br i1 %.not9.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i32 noundef 3, ptr noundef nonnull %.0.i) #16
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit: ; preds = %bb.d, %bb.e
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i32 %.sroa.0.0.i.i21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101, !nonnull !76, !align !77 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #16, !inline_history !2
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.n) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.n, %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit ], [ %i.l, %bb.c ]
  ret ptr %.1
}

declare hidden noundef ptr @_ZN4llvm16InstCombinerImpl20foldFBinOpOfIntCastsERNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(1240), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare hidden noundef ptr @_ZN4llvm16InstCombinerImpl30SimplifySelectsFeedingBinaryOpERNS_14BinaryOperatorEPNS_5ValueES4_(ptr noundef nonnull align 8 dereferenceable(1240), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction15hasAllowReassocEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction16hasNoSignedZerosEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL17factorizeFAddFSubRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %"struct.llvm::PatternMatch::BinaryOp_match.502", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.d = ptrtoint ptr %i.b to i64
  store i64 %i.d, ptr %2, align 8, !tbaa !72
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double 1.000000e+00, ptr %.sroa.440.0..sroa_idx.i, align 8, !tbaa !568
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.541.0..sroa_idx.i, align 8, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %i.e, align 8, !tbaa !72
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.c, ptr %.sroa.429.0..sroa_idx.i, align 8, !tbaa !72
  %i.f = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS2_INS1_INS0_14specific_fpvalES6_Lj17ELb0EEEEELj19ELb1EEEEENS2_INS1_IS6_NS3_14match_deferredIS5_EELj19ELb1EEEEELj15ELb1EE5matchINS_14BinaryOperatorEEEbjPT_(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(72) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %i.f, label %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit, label %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit.thread

_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.g = getelementptr inbounds i8, ptr %0, i64 -64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 -32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.o = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.018.0.insert.ext.i = zext i32 %i.o to i64
  %.sroa.018.0.insert.insert.i = or disjoint i64 %.sroa.018.0.insert.ext.i, 4294967296
  store i16 257, ptr %i.p, align 8
  %i.q = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFSubFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %i.m, ptr noundef %i.n, i64 %.sroa.018.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.s = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.s to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i16 257, ptr %i.t, align 8
  %i.u = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFMulFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef %i.r, ptr noundef %i.q, i64 %.sroa.0.0.insert.insert.i, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.w, align 8
  %i.x = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 15, ptr noundef %i.v, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr null, i64 0) #16 ; 2 uses
  call void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ac, null
  br i1 %.not.i31, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm5Value9hasOneUseEv.exit33

_ZNK4llvm5Value9hasOneUseEv.exit33:               ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.c, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit33
  %i.ag = load i8, ptr %i.h, align 8, !tbaa !31
  switch i8 %i.ag, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread [
    i8 49, label %bb.d
    i8 52, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.h, i64 -64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 7 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.not.i.i.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 5 uses
  %.not.i6.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i6.not.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i8, ptr %i.j, align 8, !tbaa !31
  %i.am = icmp eq i8 %i.al, 49
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26 ; 3 uses
  %.not.i.not.i.i.i37 = icmp ne ptr %i.ao, null
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %i.j, i64 -32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !26 ; 3 uses
  %i.ap = icmp eq ptr %.pre.i.i.i, %i.ak
  %or.cond = select i1 %.not.i.not.i.i.i37, i1 %i.ap, i1 false
  br i1 %or.cond, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i: ; preds = %bb.g
  %.not.i8.not.i.i.i = icmp ne ptr %.pre.i.i.i, null
  %i.aq = icmp eq ptr %i.ao, %i.ak
  %or.cond153 = and i1 %.not.i8.not.i.i.i, %i.aq
  br i1 %or.cond153, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i, %bb.f
  %i.ar = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 3 uses
  %.not.i6.not.i.i.i42 = icmp eq ptr %i.as, null
  br i1 %.not.i6.not.i.i.i42, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i8, ptr %i.j, align 8, !tbaa !31
  %i.au = icmp eq i8 %i.at, 49
  br i1 %i.au, label %bb.j, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26 ; 3 uses
  %.not.i.not.i.i.i48 = icmp ne ptr %i.aw, null
  %.phi.trans.insert.i.i.i52 = getelementptr inbounds i8, ptr %i.j, i64 -32
  %.pre.i.i.i53 = load ptr, ptr %.phi.trans.insert.i.i.i52, align 8, !tbaa !26 ; 3 uses
  %i.ax = icmp eq ptr %.pre.i.i.i53, %i.ai
  %or.cond154 = select i1 %.not.i.not.i.i.i48, i1 %i.ax, i1 false
  br i1 %or.cond154, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49: ; preds = %bb.j
  %.not.i8.not.i.i.i50 = icmp ne ptr %.pre.i.i.i53, null
  %i.ay = icmp eq ptr %i.aw, %i.ai
  %or.cond155 = and i1 %.not.i8.not.i.i.i50, %i.ay
  br i1 %or.cond155, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.k:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds i8, ptr %i.h, i64 -64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %.not.i.not.i.i.i58 = icmp eq ptr %i.ba, null
  br i1 %.not.i.not.i.i.i58, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 3 uses
  %.not.i6.not.i.i.i59 = icmp eq ptr %i.bc, null
  br i1 %.not.i6.not.i.i.i59, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.j, align 8, !tbaa !31
  %i.be = icmp eq i8 %i.bd, 52
  br i1 %i.be, label %bb.n, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %.not.i.not.i.i.i64 = icmp eq ptr %i.bg, null
  br i1 %.not.i.not.i.i.i64, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds i8, ptr %i.j, i64 -32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bj = icmp eq ptr %i.bi, %i.bc
  br i1 %i.bj, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit: ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49, %bb.j, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i, %bb.g, %bb.o
  %.0135 = phi ptr [ %i.as, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49 ], [ %i.as, %bb.j ], [ %i.ai, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i ], [ %i.ai, %bb.g ], [ %i.ba, %bb.o ] ; 2 uses
  %.0134 = phi ptr [ %.pre.i.i.i53, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49 ], [ %i.aw, %bb.j ], [ %.pre.i.i.i, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i ], [ %i.ao, %bb.g ], [ %i.bg, %bb.o ] ; 2 uses
  %.0 = phi ptr [ %i.ai, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49 ], [ %i.ai, %bb.j ], [ %i.ak, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i ], [ %i.ak, %bb.g ], [ %i.bc, %bb.o ] ; 2 uses
  %10 = phi i1 [ true, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49 ], [ true, %bb.j ], [ true, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i ], [ true, %bb.g ], [ false, %bb.o ]
  %i.bk = load i8, ptr %0, align 8, !tbaa !31
  %i.bl = icmp eq i8 %i.bk, 45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bm = call i32 @_ZNK4llvm11Instruction16getFastMathFlagsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #17
  %.sroa.071.0.insert.ext = zext i32 %i.bm to i64
  %.sroa.071.0.insert.insert = or disjoint i64 %.sroa.071.0.insert.ext, 4294967296 ; 2 uses
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 257, ptr %i.bn, align 8
  %i.bo = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFAddFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %.0135, ptr noundef nonnull %.0134, i64 %.sroa.071.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef null)
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindIS2_EENS0_14specificval_tyELj22ELb0EEEEEbPT_RKT0_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.bp, align 8
  %i.bq = call noundef ptr @_ZN4llvm13IRBuilderBase13CreateFSubFMFEPNS_5ValueES2_NS_9FMFSourceERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %.0135, ptr noundef nonnull %.0134, i64 %.sroa.071.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.br = phi ptr [ %i.bo, %bb.p ], [ %i.bq, %bb.q ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !31  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 7
  br i1 %i.bt, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = and i32 %i.bx, 254
  %spec.select.i.i.i = icmp ne i32 %i.by, 18
  %i.bz = icmp ugt i8 %i.bs, 22
  %or.cond.i.i = or i1 %i.bz, %spec.select.i.i.i
  br i1 %or.cond.i.i, label %.critedge2, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i1 noundef zeroext false) #16 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %.critedge2, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !31
  %i.cc = icmp eq i8 %i.cb, 7
  br i1 %i.cc, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u, %bb.r
  %.sink28.i.i = phi ptr [ %i.br, %bb.r ], [ %i.ca, %bb.u ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink28.i.i, i64 24 ; 5 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.ce, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %_ZNK4llvm7APFloat10isDenormalEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.v
  %i.cf = call noundef zeroext i1 @_ZNK4llvm6detail9IEEEFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #16
  br i1 %i.cf, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat10isDenormalEv.exit.i:           ; preds = %bb.v
  %i.cg = call noundef zeroext i1 @_ZNK4llvm6detail13DoubleAPFloat10isDenormalEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd) #16
  br i1 %i.cg, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread, label %_ZNK4llvm7APFloat8isNormalEv.exit

_ZNK4llvm7APFloat8isNormalEv.exit:                ; preds = %.split.i, %_ZNK4llvm7APFloat10isDenormalEv.exit.i
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink28.i.i, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.cj, ptr %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 20
  %i.cl = load i8, ptr %i.ck, align 4             ; 2 uses
  %i.cm = and i8 %i.cl, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.cm, 0
  %i.cn = and i8 %i.cl, 7
  %i.co = icmp ne i8 %i.cn, 3
  %i.cp = and i1 %spec.select.i.not.i.i, %i.co
  br i1 %i.cp, label %.critedge2, label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

.critedge2:                                       ; preds = %bb.s, %bb.u, %bb.t, %_ZNK4llvm7APFloat8isNormalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  br i1 %10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.critedge2
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.cq, align 8
  %i.cr = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 19, ptr noundef nonnull %i.br, ptr noundef nonnull %.0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null, i64 0) #16
  br label %bb.y

bb.x:                                             ; preds = %.critedge2
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 257, ptr %i.cs, align 8
  %i.ct = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 22, ptr noundef nonnull %i.br, ptr noundef nonnull %.0, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr null, i64 0) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi ptr [ %i.ct, %bb.x ], [ %i.cr, %bb.w ] ; 2 uses
  call void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(72) %.sink, ptr noundef nonnull %0, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZNK4llvm5Value9hasOneUseEv.exit.thread

_ZNK4llvm5Value9hasOneUseEv.exit.thread:          ; preds = %bb.l, %bb.k, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49, %bb.i, %bb.h, %bb.m, %bb.o, %bb.n, %bb.c, %.split.i, %_ZNK4llvm7APFloat10isDenormalEv.exit.i, %_ZNK4llvm7APFloat8isNormalEv.exit, %bb.y, %bb.d, %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit, %bb.b, %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit.thread, %_ZNK4llvm5Value9hasOneUseEv.exit33, %_ZNK4llvm5Value9hasOneUseEv.exit
  %.4 = phi ptr [ %i.x, %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit ], [ null, %bb.b ], [ null, %_ZNK4llvm5Value9hasOneUseEv.exit33 ], [ null, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ null, %_ZL13factorizeLerpRN4llvm14BinaryOperatorERNS_9IRBuilderINS_12TargetFolderENS_12InstCombiner28IRBuilderInstCombineInserterEEE.exit.thread ], [ null, %bb.n ], [ null, %.split.i ], [ null, %bb.c ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.d ], [ null, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i.i49 ], [ null, %bb.h ], [ null, %bb.m ], [ null, %bb.o ], [ %.sink, %bb.y ], [ null, %_ZNK4llvm7APFloat8isNormalEv.exit ], [ null, %_ZNK4llvm7APFloat10isDenormalEv.exit.i ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS8_INS5_10match_bindINS_5ValueEEEEEEEEEESG_Lj15ELb1EEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !31
  %i.b = icmp eq i8 %i.a, 45
  br i1 %i.b, label %bb.b, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i, label %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i:           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit.i.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i

_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit.i.i: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS2_14cstval_pred_tyINS2_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS4_INS0_10match_bindINS_5ValueEEEEEEE5matchISB_EEbPT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d)
  br i1 %i.j, label %bb.c, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i

bb.c:                                             ; preds = %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit.i.i
  %i.k = getelementptr inbounds i8, ptr %0, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.not.i.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit12.sink.split.i.i

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i: ; preds = %bb.c, %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit.i.i, %_ZNK4llvm5Value9hasOneUseEv.exit.i.i.i, %bb.b
  %i.m = getelementptr inbounds i8, ptr %0, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36   ; 2 uses
  %.not.i.i8.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i8.i.i, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i

_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i:          ; preds = %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit10.i.i, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit10.i.i: ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_12PatternMatch17IntrinsicID_matchENS2_14Argument_matchINS2_14cstval_pred_tyINS2_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS4_INS0_10match_bindINS_5ValueEEEEEEE5matchISB_EEbPT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.n)
  br i1 %i.t, label %bb.d, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

bb.d:                                             ; preds = %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit10.i.i
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i11.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i11.not.i.i, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit12.sink.split.i.i

_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit12.sink.split.i.i: ; preds = %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.l, %bb.c ], [ %i.u, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79, !nonnull !76, !align !77
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !35
  br label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

_ZNK4llvm12PatternMatch14BinaryOp_matchINS0_12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS6_INS3_10match_bindINS_5ValueEEEEEEEEEESE_Lj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit: ; preds = %bb.a, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i, %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i, %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit10.i.i, %bb.d, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit12.sink.split.i.i
  %.0.i.i = phi i1 [ false, %_ZNK4llvm5Value9hasOneUseEv.exit.i9.i.i ], [ false, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit.i.i ], [ false, %_ZNK4llvm12PatternMatch12OneUse_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_14cstval_pred_tyINS0_14is_any_zero_fpENS_10ConstantFPELb1EEEEENS5_INS2_10match_bindINS_5ValueEEEEEEEEE5matchISC_EEbPT_.exit10.i.i ], [ false, %bb.a ], [ false, %bb.d ], [ true, %_ZNK4llvm19PatternMatchHelpers10match_bindINS_5ValueEE5matchIS2_EEbPT_.exit12.sink.split.i.i ]
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_5ValueENS0_8ap_matchINS_7APFloatEEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !31      ; 2 uses
  %i.b = icmp eq i8 %i.a, 7
  br i1 %i.b, label %.critedge.thread.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 254
  %spec.select.i.i = icmp ne i32 %i.g, 18
  %i.h = icmp ugt i8 %i.a, 22
  %or.cond.i = or i1 %i.h, %spec.select.i.i
  br i1 %or.cond.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !253, !range !136, !noundef !76
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = tail call noundef ptr @_ZNK4llvm8Constant13getSplatValueEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %i.k) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i8 %i.m, 7
  br i1 %i.n, label %.critedge.thread.sink.split.i, label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit

.critedge.thread.sink.split.i:                    ; preds = %bb.d, %bb.a
  %.sink28.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sink28.i, i64 24
  %i.p = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !76, !align !77
  store ptr %i.o, ptr %i.p, align 8, !tbaa !244
  br label %_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit

_ZNK4llvm12PatternMatch8ap_matchINS_7APFloatEE5matchINS_5ValueEEEbPT_.exit: ; preds = %bb.b, %bb.c, %bb.d, %.critedge.thread.sink.split.i
  %.4.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.b ], [ true, %.critedge.thread.sink.split.i ]
  ret i1 %.4.i
}

declare noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeERKNS_7APFloatE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7APFloatplERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %i.a = load ptr, ptr %0, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat3addERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef signext 1) #16 ; 0 uses
  br label %_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit

_ZN4llvm7APFloat3addERKS0_NS_12RoundingModeE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_14BinaryOperatorENS0_14BinaryOp_matchINS3_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS4_14match_deferredIS6_EELj15ELb1EEEEEbPT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !31
  %i.b = icmp eq i8 %i.a, 45
  br i1 %i.b, label %bb.b, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS2_14match_deferredIS4_EELj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EE5matchIS4_EEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.d)
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %0, i64 -32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds i8, ptr %0, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !228, !nonnull !76, !align !77
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS2_14match_deferredIS4_EELj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.l = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.h, %bb.c ]
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm12PatternMatch14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EE5matchIS4_EEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.l)
  br i1 %i.m, label %bb.e, label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS2_14match_deferredIS4_EELj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !228, !nonnull !76, !align !77
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = icmp eq ptr %i.o, %i.q
  br label %_ZNK4llvm12PatternMatch14BinaryOp_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS2_14match_deferredIS4_EELj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit

_ZNK4llvm12PatternMatch14BinaryOp_matchINS1_INS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_19bind_immconstant_tyELj19ELb0EEENS2_14match_deferredIS4_EELj15ELb1EE5matchINS_14BinaryOperatorEEEbPT_.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i1 [ %i.r, %bb.e ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

declare noundef ptr @_ZN4llvm28ConstantFoldBinaryOpOperandsEjPNS_8ConstantES1_RKNS_10DataLayoutE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(912)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm10ConstantFP3getEPNS_4TypeEd(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_111FAddCombine8simplifyEPN4llvm11InstructionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 13 uses
  %3 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 10 uses
  %4 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 9 uses
  %5 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 9 uses
  %6 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 9 uses
  %7 = alloca %"class.(anonymous namespace)::FAddend", align 8 ; 9 uses
  %8 = alloca %"class.llvm::SmallVector.509", align 8 ; 10 uses
  %9 = alloca %"class.llvm::SmallVector.509", align 8 ; 10 uses
  %10 = alloca %"class.llvm::SmallVector.509", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 254
end_hunk_0
