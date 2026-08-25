Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVCodeGenPrepare?download=true
begin_hunk_0_@_ZN12_GLOBAL__N_119RISCVCodeGenPrepare18expandMulReductionERN4llvm13IntrinsicInstE:bb.a
  %i.hf = icmp ugt i32 %i.gb, %i.dq
  br i1 %i.hf, label %bb.o, label %._crit_edge, !llvm.loop !358

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit, %bb.l
  %.197 = phi ptr [ %i.ex, %bb.l ], [ %i.fy, %_ZN4llvm11SmallVectorIiLj32EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  store ptr %i.eq, ptr %i.i, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store ptr %.197, ptr %i.j, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.hg = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i16 257, ptr %i.hg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %27, align 8, !tbaa !321
  %i.hh = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hi = ptrtoint ptr %28 to i64
  store i64 %i.hi, ptr %i.hh, align 8, !tbaa !323
  %i.hj = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %20, i32 noundef 430, ptr nonnull %i.i, i64 1, ptr nonnull %i.j, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull byval(%"class.llvm::ArrayRef.242") align 8 %26, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.hj) #15
  %i.hk = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15 ; 0 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit, %bb.g, %bb.h, %.critedge, %bb.f, %_ZN4llvm13isPowerOf2_32Ej.exit117, %bb.q, %bb.b, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.q ], [ false, %_ZN4llvm13isPowerOf2_32Ej.exit117 ], [ false, %.critedge ], [ false, %_ZNK4llvm14RISCVSubtarget14getRealMinVLenEv.exit ], [ true, %bb.h ], [ true, %bb.f ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119RISCVCodeGenPrepare12widenVPMergeEPN4llvm11InstructionE(ptr noundef nonnull %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.llvm::PatternMatch::cstval_pred_ty.261", align 8 ; 6 uses
  %2 = alloca %"class.llvm::IRBuilder", align 8   ; 24 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [4 x ptr], align 8                ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvm::ArrayRef.242", align 8 ; 2 uses
  %7 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  %8 = alloca %class.anon, align 1                ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = and i32 %i.f, 254
  %spec.select.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i, label %bb.b, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !359
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !319
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.f, %bb.a ]
  %i.l = icmp eq i32 %i.k, 268
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.m = load i8, ptr %0, align 8, !tbaa !74
  switch i8 %i.m, label %.critedge [
    i8 88, label %bb.d
    i8 99, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %0, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224  ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i22, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.o, align 8, !tbaa !74
  %i.q = icmp eq i8 %i.p, 14
  br i1 %i.q, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11InstructionEEEbPT_.exit.i, label %.critedge

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11InstructionEEEbPT_.exit.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !255
  %i.t = icmp eq i32 %i.s, 480
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11InstructionEEEbPT_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 268435455
  %i.x = zext nneg i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.not.i.i.i23, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i.i24 = icmp eq ptr %i.ac, null
  br i1 %.not.i.not.i.i.i.i24, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !224 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp eq i8 %i.af, 87
  br i1 %i.ag, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i.i.i.i25 = icmp eq ptr %i.ai, null
  br i1 %.not.i.not.i.i.i.i.i.i25, label %.critedge, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit

bb.j:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i32 %i.ak, 1073741824
  %.not.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %0, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !234
  br label %_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = and i32 %i.ak, 268435455
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aq
  br label %_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i

_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.as = phi ptr [ %i.an, %bb.k ], [ %i.ar, %bb.l ]
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !224 ; 4 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !74
  %.not.i.i = icmp eq i8 %i.au, 88
  br i1 %.not.i.i, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !74
  %i.ay = icmp eq i8 %i.ax, 14
  br i1 %i.ay, label %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i, label %.critedge

_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i: ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !255
  %i.bb = icmp eq i32 %i.ba, 480
  br i1 %i.bb, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, 268435455
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.at, i64 %i.bg ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.not.i.i.i, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.not.i.i.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !224 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !74
  %i.bo = icmp eq i8 %i.bn, 87
  br i1 %i.bo, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !224 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.not.i.i.i.i.i.i, label %.critedge, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit

_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit: ; preds = %bb.r, %bb.i
  %.057 = phi ptr [ %i.ac, %bb.i ], [ %i.bk, %bb.r ]
  %.056 = phi ptr [ %i.aa, %bb.i ], [ %i.bi, %bb.r ]
  %.055 = phi ptr [ %i.ae, %bb.i ], [ %i.bm, %bb.r ] ; 9 uses
  %storemerge = phi ptr [ %i.ai, %bb.i ], [ %i.bq, %bb.r ]
  %i.br = getelementptr inbounds nuw i8, ptr %.055, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !324 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %.critedge, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !233
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.055, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = and i32 %i.bx, 268435455
  %.not = icmp eq i32 %i.by, 2
  br i1 %.not, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds i8, ptr %.055, i64 -8 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !224 ; 7 uses
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !74  ; 2 uses
  %i.cd = icmp ugt i8 %i.cc, 22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  br i1 %i.cd, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp slt i8 %i.cf, 0
  br i1 %i.cg, label %.thread.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %1, align 8, !tbaa !360
  %i.ch = icmp eq i8 %i.cc, 5
  br i1 %i.ch, label %bb.w, label %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !229 ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 65
  br i1 %i.cl, label %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.w
  %i.cm = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ci) #18
  %i.cn = icmp eq i32 %i.cm, %i.ck
  br i1 %i.cn, label %.thread.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i: ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !223
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = and i32 %i.cr, 254
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cs, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

.split.i.i.i:                                     ; preds = %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i
  %i.ct = call noundef zeroext i1 @_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE11matchVectorEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cb)
  br i1 %i.ct, label %bb.x, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i: ; preds = %bb.w
  %i.cu = load i64, ptr %i.ci, align 8, !tbaa !231
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.thread.i.i, label %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread

bb.x:                                             ; preds = %.split.i.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.cb, ptr %.pre.i.i, align 8, !tbaa !363
  br label %.thread.i.i

_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread: ; preds = %bb.t, %.split7.i.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, %.split.i.i.i, %_ZNK4llvm12PatternMatch11is_zero_int7isValueERKNS_5APIntE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %.critedge

.thread.i.i:                                      ; preds = %.split7.i.i.i, %_ZNK4llvm12PatternMatch14cstval_pred_tyINS0_11is_zero_intENS_11ConstantIntELb1EE10match_implINS_8ConstantEEEbPT_.exit.i.i.i, %bb.y, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.cw = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !224
  %.not18 = icmp eq ptr %i.cy, %0
  br i1 %.not18, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.thread.i.i
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !223
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !283, !nonnull !63, !align !64
  %i.db = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.da) #15
  %i.dc = load ptr, ptr %i.c, align 8, !tbaa !223 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !320
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = and i32 %i.dg, 255
  %i.di = icmp eq i32 %i.dh, 19
  %.sroa.2.0.insert.shift.i.i = select i1 %i.di, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.de to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.dj = call noundef ptr @_ZN4llvm10VectorType3getEPNS_4TypeENS_12ElementCountE(ptr noundef %i.db, i64 %.sroa.0.0.insert.insert.i.i) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.dk = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !223
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !283, !nonnull !63, !align !64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  store ptr null, ptr %2, align 8, !tbaa !288
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !289
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !290
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !292
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.ds, align 8, !tbaa !294
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.dt, align 8, !tbaa !304
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i8 0, ptr %i.du, align 4, !tbaa !305
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 69
  store i8 2, ptr %i.dv, align 1, !tbaa !306
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 70
  store i8 7, ptr %i.dw, align 2, !tbaa !307
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.dn, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.do, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %.055, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %.055, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !308
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !309
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.dz, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.055) #15
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !310
  store i64 %i.ee, ptr %2, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.ef, align 8
  %i.eg = call noundef ptr @_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.dj, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(34) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.eh = call noundef ptr @_ZN4llvm21ConstantAggregateZero3getEPNS_4TypeE(ptr noundef %i.dj) #15
  %i.ei = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.ej = getelementptr inbounds nuw i8, ptr %.055, i64 76 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !327
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.ei, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !330
  call void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %i.eg, ptr noundef %i.eh, ptr noundef %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !308
  store ptr %i.eq, ptr %i.dy, align 8, !tbaa !309
  store ptr %i.eo, ptr %i.ec, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.es = load i64, ptr %i.er, align 8, !tbaa !310
  store i64 %i.es, ptr %2, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.et, align 8
  %i.eu = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateZExtEPNS_5ValueEPNS_4TypeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %.057, ptr noundef %i.dj, ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr %.056, ptr %i.b, align 8, !tbaa !267
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !267
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.eg, ptr %i.ew, align 8, !tbaa !267
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %storemerge, ptr %i.ex, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.ey, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS7_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS7_INS_17OperandBundleDefTISC_EEEES4_Ed_UlS2_E_EEvlS2_, ptr %7, align 8, !tbaa !321
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = ptrtoint ptr %8 to i64
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !323
  %i.fb = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef 480, ptr nonnull %i.a, i64 1, ptr nonnull %i.b, i64 4, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.242") align 8 %6, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %7) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.fc = load i8, ptr %0, align 8, !tbaa !74
  %i.fd = icmp eq i8 %i.fc, 99
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 257, ptr %i.fe, align 8
  %i.ff = call noundef ptr @_ZN4llvm13IRBuilderBase12CreateFreezeEPNS_5ValueERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %i.fb, ptr noundef nonnull align 8 dereferenceable(34) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.017 = phi ptr [ %i.ff, %bb.aa ], [ %i.fb, %bb.z ] ; 2 uses
  %i.fg = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.fh = load i32, ptr %i.ej, align 4, !tbaa !327
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !330
  call void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %i.eg, ptr noundef %.017, ptr noundef %i.fl)
  %i.fm = load ptr, ptr %i.c, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i16 257, ptr %i.fn, align 8
  %i.fo = call noundef ptr @_ZN4llvm13IRBuilderBase11CreateTruncEPNS_5ValueEPNS_4TypeERKNS_5TwineEbb(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %.017, ptr noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(34) %10, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.fo) #15
  %i.fp = load ptr, ptr %i.bz, align 8, !tbaa !234
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !224
  call void @_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %.055, i32 noundef 1, ptr noundef %i.fq)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.fr = call noundef zeroext i1 @_ZN4llvm42RecursivelyDeleteTriviallyDeadInstructionsEPNS_5ValueEPKNS_17TargetLibraryInfoEPNS_16MemorySSAUpdaterESt8functionIFvS1_EE(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(32) %11) #15 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !365 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ft, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = call noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #15, !inline_history !367 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ab, %bb.ac
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.do) #15
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.thread.i.i, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.s, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11InstructionEEEbPT_.exit.i, %bb.f, %bb.g, %bb.h, %bb.i, %bb.e, %bb.d, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i, %bb.o, %bb.p, %bb.q, %bb.r, %_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i, %bb.n, %bb.m, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit, %bb.c, %_ZNK4llvm4Type13getScalarTypeEv.exit
  %.1 = phi i1 [ false, %_ZNK4llvm4Type13getScalarTypeEv.exit ], [ true, %_ZNSt14_Function_baseD2Ev.exit ], [ false, %bb.s ], [ false, %.thread.i.i ], [ false, %_ZN4llvm12PatternMatch5matchINS_5ValueENS0_7is_zeroEEEbPT_RKT0_.exit.thread ], [ false, %bb.m ], [ false, %_ZNK4llvm5Value9hasOneUseEv.exit ], [ false, %bb.c ], [ false, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_11InstructionEEEbPT_.exit.i ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNK4llvm12PatternMatch17IntrinsicID_match5matchINS_5ValueEEEbPT_.exit.i ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_ZNK4llvm12PatternMatch12OneOps_matchINS_19PatternMatchHelpers17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS2_10match_bindINS_5ValueEEEEES9_NS5_INS6_INS_7PHINodeEEEEES9_EEELj69EE5matchINS_11InstructionEEEbPT_.exit.i.i.i ], [ false, %bb.n ], [ false, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS_19PatternMatchHelpers16match_combine_orIJNS3_17match_combine_andIJNS0_17IntrinsicID_matchENS0_14Argument_matchINS3_10match_bindINS_5ValueEEEEESB_NS7_INS8_INS_7PHINodeEEEEESB_EEENS0_12OneOps_matchISF_Lj69EEEEEEEEbPT_RKT0_.exit ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm13IRBuilderBase9CreatePHIEPNS_4TypeEjRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.a, align 8
  %i.b = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef 80) #15 ; 11 uses
  tail call void @_ZN4llvm11InstructionC2EPNS_4TypeEjNS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef %1, i32 noundef 57, i32 268435456, ptr null, i64 0) #15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.c, align 4, !tbaa !304
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  store i32 %2, ptr %i.d, align 4, !tbaa !327
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %4) #15
  %i.e = load i32, ptr %i.d, align 4, !tbaa !327
  call void @_ZN4llvm4User16allocHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %i.e, i1 noundef zeroext true) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.f = call noundef zeroext i1 @_ZN4llvm14FPMathOperator7classofEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.b)
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 8, !tbaa !256
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 noundef 3, ptr noundef nonnull %i.i) #15
  br label %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit

_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit: ; preds = %bb.b, %bb.c
  call void @_ZN4llvm11Instruction16setFastMathFlagsENS_13FastMathFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i32 %.sroa.0.0.copyload) #15
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm13IRBuilderBase10setFPAttrsEPNS_11InstructionEPNS_6MDNodeENS_13FastMathFlagsE.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !317, !nonnull !63, !align !64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #15, !inline_history !368
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.b) #15
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7PHINode11addIncomingEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 268435455
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !327
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm7PHINode12growOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #15
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = add i32 %i.g, 1
  %i.i = and i32 %i.h, 268435455                  ; 2 uses
  %i.j = and i32 %i.g, -268435456
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.a, align 4
  %i.l = add nsw i32 %i.i, -1
  %i.m = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !232  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !233  ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !234
  %.not2.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not2.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.r, ptr %i.u, align 8, !tbaa !232
  store ptr null, ptr %i.s, align 8, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.q, align 8, !tbaa !232
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i:      ; preds = %bb.f, %bb.c
  store ptr %1, ptr %i.p, align 8, !tbaa !224
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i
  %i.v = load i8, ptr %1, align 8, !tbaa !74
  %i.w = icmp ugt i8 %i.v, 10
  br i1 %i.w, label %bb.h, label %_ZN4llvm7PHINode16setIncomingValueEjPNS_5ValueE.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !234  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !233
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !232
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i

end_hunk_0
