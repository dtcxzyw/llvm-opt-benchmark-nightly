Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopAccessAnalysis?download=true
inline.NumInlined: 8428
inline.NumDeleted: 4399
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm14LoopAccessInfo20collectStridedAccessEPNS_5ValueE:bb.a
.preheader.i:                                     ; preds = %_ZL24getLoopVariantGEPOperandPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !159
  %i.al = add i16 %i.ak, -5
  %switch.i.i.i.i.i.i.i.i66.i = icmp ult i16 %i.al, -3
  %.not246267.i = icmp eq ptr %i.ai, null
  %.not2468.i = or i1 %.not246267.i, %switch.i.i.i.i.i.i.i.i66.i
  br i1 %.not2468.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.05069.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.ai, %.preheader.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.05069.i, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.am, align 8
  %i.an = and i64 %.sroa.0.0.copyload.i.i, -8     ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !159
  %i.ar = add i16 %i.aq, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.ar, -3
  %.not2462.i = icmp eq i64 %i.an, 0
  %.not24.i = or i1 %.not2462.i, %switch.i.i.i.i.i.i.i.i.i
  br i1 %.not24.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %.lr.ph.i, %.preheader.i, %_ZL24getLoopVariantGEPOperandPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.i, %_ZL24getLoopVariantGEPOperandPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread.i
  %.251.i = phi ptr [ %i.ai, %_ZL24getLoopVariantGEPOperandPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.i ], [ %i.ah, %_ZL24getLoopVariantGEPOperandPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread.i ], [ %i.ai, %.preheader.i ], [ %i.ao, %.lr.ph.i ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.251.i, i64 24
  %i.at = load i16, ptr %i.as, align 8, !tbaa !159
  %i.au = icmp ne i16 %i.at, 8
  %.not1420.i.i.i.i = icmp eq ptr %.251.i, null
  %.not14.i.i.i.i = or i1 %.not1420.i.i.i.i, %i.au
  br i1 %.not14.i.i.i.i, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %.251.i, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !191
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.k, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.251.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !162
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0.0.copyload.i15.i.i.i.i = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.sroa.0.0.copyload.i15.i.i.i.i, -8 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not.i.i.i.i, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread, label %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers9match_isaIJKNS_4SCEVEEEENS3_10match_bindIS6_EENS0_15specificloop_tyEEEEEbPS6_RKT_.exit.i

_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers9match_isaIJKNS_4SCEVEEEENS3_10match_bindIS6_EENS0_15specificloop_tyEEEEEbPS6_RKT_.exit.i: ; preds = %bb.k
  %i.bc = inttoptr i64 %i.bb to ptr               ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.251.i, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.bf = icmp eq ptr %i.be, %i.i
  br i1 %i.bf, label %bb.l, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.l:                                             ; preds = %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers9match_isaIJKNS_4SCEVEEEENS3_10match_bindIS6_EENS0_15specificloop_tyEEEEEbPS6_RKT_.exit.i
  %i.bg = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.g, ptr noundef nonnull %i.bc, ptr noundef %i.i) #28
  br i1 %i.bg, label %bb.m, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !159 ; 2 uses
  switch i16 %i.bi, label %_ZN4llvm16SCEVPatternMatch5matchINS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS_19PatternMatchHelpers9match_isaIJKNS_12SCEVConstantEEEENS4_10match_bindIKNS_4SCEVEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbPSB_RKT_.exit.i [
    i16 16, label %_ZN4llvm16SCEVPatternMatch5matchINS0_18is_undef_or_poisonEEEbPKNS_4SCEVERKT_.exit
    i16 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !191
  %i.bl = icmp eq i64 %i.bk, 2
  br i1 %i.bl, label %bb.o, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !162 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bn, align 8
  %i.bo = and i64 %.sroa.0.0.copyload.i.i.i.i, -8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !159
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.p, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.0.0.copyload.i15.i.i.i = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.sroa.0.0.copyload.i15.i.i.i, -8 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.bu, 0
  %i.bv = inttoptr i64 %i.bu to ptr
  %spec.select.i = select i1 %.not.i.not.i.i.i, ptr %i.bc, ptr %i.bv ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8, !tbaa !159
  br label %_ZN4llvm16SCEVPatternMatch5matchINS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS_19PatternMatchHelpers9match_isaIJKNS_12SCEVConstantEEEENS4_10match_bindIKNS_4SCEVEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbPSB_RKT_.exit.i

_ZN4llvm16SCEVPatternMatch5matchINS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS_19PatternMatchHelpers9match_isaIJKNS_12SCEVConstantEEEENS4_10match_bindIKNS_4SCEVEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbPSB_RKT_.exit.i: ; preds = %bb.p, %bb.m
  %.pre = phi i16 [ %i.bi, %bb.m ], [ %.pre.i, %bb.p ]
  %.4.i = phi ptr [ %i.bc, %bb.m ], [ %spec.select.i, %bb.p ] ; 2 uses
  %i.bw = add i16 %.pre, -5
  %switch.i.i.i.i.i.i.i.i31.i = icmp ult i16 %i.bw, -3
  br i1 %switch.i.i.i.i.i.i.i.i31.i, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm16SCEVPatternMatch5matchINS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS_19PatternMatchHelpers9match_isaIJKNS_12SCEVConstantEEEENS4_10match_bindIKNS_4SCEVEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbPSB_RKT_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.4.i, i64 40
  %.sroa.0.0.copyload.i33.i = load i64, ptr %i.bx, align 8
  %i.by = and i64 %.sroa.0.0.copyload.i33.i, -8
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i16, ptr %i.ca, align 8, !tbaa !159
  %.fr.i = freeze i16 %i.cb
  %.not65.i = icmp eq i16 %.fr.i, 16
  %.old = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SpeculateUnitStride, i64 120), align 8, !range !67
  %.old51 = trunc nuw i8 %.old to i1
  %or.cond63 = select i1 %.not65.i, i1 %.old51, i1 false
  br i1 %or.cond63, label %bb.r, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

_ZN4llvm16SCEVPatternMatch5matchINS0_18is_undef_or_poisonEEEbPKNS_4SCEVERKT_.exit: ; preds = %bb.m
  %i.cc = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !128
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !171
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ugt i8 %i.ce, 1
  %i.cf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SpeculateUnitStride, i64 120), align 8, !range !67
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.r, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

bb.r:                                             ; preds = %bb.q, %_ZN4llvm16SCEVPatternMatch5matchINS0_18is_undef_or_poisonEEEbPKNS_4SCEVERKT_.exit
  %.2.i60 = phi ptr [ %i.bc, %_ZN4llvm16SCEVPatternMatch5matchINS0_18is_undef_or_poisonEEEbPKNS_4SCEVERKT_.exit ], [ %.4.i, %bb.q ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.2.i60, i64 24
  %i.ci = load ptr, ptr %0, align 8, !tbaa !436
  %i.cj = tail call noundef ptr @_ZN4llvm25PredicatedScalarEvolution32getSymbolicMaxBackedgeTakenCountEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ci) #28 ; 4 uses
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !434
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !152
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !154
  %i.co = tail call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cn) #28 ; 2 uses
  %i.cp = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %.2.i60) #28
  %i.cq = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.co, ptr noundef %i.cp) ; 2 uses
  %.fca.0.extract11 = extractvalue { i64, i8 } %i.cq, 0
  %.fca.1.extract12 = extractvalue { i64, i8 } %i.cq, 1
  %i.cr = trunc nuw i8 %.fca.1.extract12 to i1
  br i1 %i.cr, label %bb.s, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.r
  %i.cs = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cj) #28
  %i.ct = tail call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.co, ptr noundef %i.cs) ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.ct, 1
  %i.cu = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.cu, label %bb.t, label %_ZNK4llvm8TypeSizecvmEv.exit39

bb.t:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit39:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.fca.0.extract = extractvalue { i64, i8 } %i.ct, 0
  %i.cv = load ptr, ptr %0, align 8, !tbaa !436
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !120, !nonnull !59, !align !121 ; 4 uses
  %.not37 = icmp ult i64 %.fca.0.extract, %.fca.0.extract11
  br i1 %.not37, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit39
  %i.cy = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cj) #28
  %i.cz = tail call noundef ptr @_ZN4llvm15ScalarEvolution19getNoopOrSignExtendEPKNS_4SCEVEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.cx, ptr noundef nonnull %.2.i60, ptr noundef %i.cy) #28
  br label %bb.w

bb.v:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit39
  %i.da = tail call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %.2.i60) #28
  %i.db = tail call noundef ptr @_ZN4llvm15ScalarEvolution17getZeroExtendExprEPKNS_4SCEVEPNS_4TypeEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.cx, ptr noundef nonnull %i.cj, ptr noundef %i.da, i32 noundef 0) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.032 = phi ptr [ %i.cz, %bb.u ], [ %.2.i60, %bb.v ]
  %.031 = phi ptr [ %i.cj, %bb.u ], [ %i.db, %bb.v ]
  %i.dc = ptrtoint ptr %.032 to i64
  %i.dd = and i64 %i.dc, -7
  %i.de = ptrtoint ptr %.031 to i64
  %i.df = and i64 %i.de, -7
  %i.dg = tail call noundef ptr @_ZN4llvm15ScalarEvolution12getMinusSCEVENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.cx, i64 %i.dd, i64 %i.df, i32 noundef 0, i32 noundef 0) #28
  %i.dh = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isKnownPositiveEPKNS_4SCEVE(ptr noundef nonnull align 8 dereferenceable(1152) %i.cx, ptr noundef %i.dg) #28
  br i1 %i.dh, label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load i16, ptr %i.ch, align 8, !tbaa !159
  %i.dj = add i16 %i.di, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i16 %i.dj, -3
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.2.i60, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.dk, align 8
  %i.dl = and i64 %.sroa.0.0.copyload.i, -8
  %i.dm = inttoptr i64 %i.dl to ptr
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0 = phi ptr [ %i.dm, %bb.y ], [ %.2.i60, %bb.x ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.do = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEPKNS_4SCEVENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.do, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %.0, ptr %i.dp, align 8, !tbaa !103
  br label %_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread

_ZL20getStrideFromPointerPN4llvm5ValueEPNS_15ScalarEvolutionEPNS_4LoopE.exit.thread: ; preds = %bb.a, %bb.n, %bb.o, %_ZN4llvm16SCEVPatternMatch5matchINS0_20SCEVBinaryExpr_matchINS_11SCEVMulExprENS_19PatternMatchHelpers9match_isaIJKNS_12SCEVConstantEEEENS4_10match_bindIKNS_4SCEVEEELNS_15SCEVNoWrapFlagsE0ELb0EEEEEbPSB_RKT_.exit.i, %bb.q, %bb.k, %.thread.i, %bb.j, %bb.l, %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers9match_isaIJKNS_4SCEVEEEENS3_10match_bindIS6_EENS0_15specificloop_tyEEEEEbPS6_RKT_.exit.i, %bb.b, %_ZN4llvm16SCEVPatternMatch5matchINS0_18is_undef_or_poisonEEEbPKNS_4SCEVERKT_.exit, %bb.w, %bb.z, %_ZN4llvm26getLoadStorePointerOperandEPNS_5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14LoopAccessInfo11isInvariantEPNS_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !436
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120, !nonnull !59, !align !121 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !434
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm4Loop15isLoopInvariantEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef %1) #28
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm15ScalarEvolution10isSCEVableEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.c, ptr noundef %i.h) #28
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4llvm15ScalarEvolution7getSCEVEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1152) %i.c, ptr noundef nonnull %1) #28
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !434
  %i.l = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.c, ptr noundef %i.j, ptr noundef %i.k) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.a ], [ %i.l, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare void @_ZN4llvm14MemoryLocation3getEPKNS_9StoreInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm14LoopAccessInfo21blockNeedsPredicationEPKNS_10BasicBlockEPKNS_4LoopEPKNS_13DominatorTreeE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %1) #28
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %2, ptr noundef %0, ptr noundef %i.a) #28
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

declare void @_ZN4llvm14MemoryLocation3getEPKNS_8LoadInstE(ptr dead_on_unwind writable sret(%"class.llvm::MemoryLocation") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_114AccessAnalysis15canCheckPtrAtRTERN4llvm22RuntimePointerCheckingEPNS1_4LoopERKNS1_8DenseMapIPNS1_5ValueEPKNS1_4SCEVENS1_12DenseMapInfoIS8_vEENS1_6detail12DenseMapPairIS8_SB_EEEERS8_bRKNS1_16MemoryDepCheckerE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %6) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.112", align 8 ; 6 uses
  %8 = alloca %"class.llvm::PointerIntPair.224", align 8 ; 4 uses
  %9 = alloca %"class.llvm::PointerIntPair.224", align 8 ; 4 uses
  %10 = alloca %"class.llvm::EquivalenceClasses", align 8 ; 18 uses
  %11 = alloca %"class.llvm::SmallVector.701", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.llvm::DenseMap.790", align 8 ; 7 uses
  %13 = alloca %"class.llvm::SmallVector.792", align 8 ; 10 uses
  %14 = alloca %"class.llvm::SmallVector.797", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = load i8, ptr %i.c, align 8, !tbaa !510, !range !67, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.g = load i8, ptr %i.f, align 8, !tbaa !393, !range !67, !noundef !59
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.l = load i32, ptr %i.k, align 8, !tbaa !122  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = mul nuw nsw i64 %i.m, 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not168234 = icmp eq i32 %i.l, 0
  br i1 %.not168234, label %.loopexit229, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.0164235 = phi ptr [ %i.j, %.lr.ph ], [ %i.bk, %bb.j ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0164235, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !373
  %.not177 = icmp eq i32 %i.r, 1
  br i1 %.not177, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %.0164235, align 4, !tbaa !394
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !168  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0164235, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !395
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !168 ; 5 uses
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !557, !nonnull !59, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ad = load i8, ptr %i.w, align 8, !tbaa !171  ; 2 uses
  %.off.i.i.i = add i8 %i.ad, -63
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i, label %bb.f

_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !258
  br label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i8 %i.ad, 65
  br i1 %i.ag, label %bb.g, label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 268435455
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !258
  br label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit

_ZN4llvm17getPointerOperandEPNS_5ValueE.exit:     ; preds = %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i, %bb.f, %bb.g
  %.2.i.i = phi ptr [ %i.af, %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i ], [ %i.an, %bb.g ], [ null, %bb.f ]
  %i.ao = call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.w) #31
  %i.ap = ptrtoint ptr %.2.i.i to i64
  %i.aq = and i64 %i.ap, -5
  %i.ar = select i1 %i.ao, i64 4, i64 0
  %i.as = or disjoint i64 %i.ar, %i.aq
  store i64 %i.as, ptr %8, align 8
  call void @_ZN4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10eraseClassERKS8_(ptr noundef nonnull align 8 dereferenceable(168) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !557, !nonnull !59, !align !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.au = load i8, ptr %i.ab, align 8, !tbaa !171 ; 2 uses
  %.off.i.i.i181 = add i8 %i.au, -63
  %switch.i.i.i182 = icmp ult i8 %.off.i.i.i181, 2
  br i1 %switch.i.i.i182, label %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i184, label %bb.h

_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i184: ; preds = %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit
  %i.av = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !258
  br label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit185

bb.h:                                             ; preds = %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit
  %i.ax = icmp eq i8 %i.au, 65
  br i1 %i.ax, label %bb.i, label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit185

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 268435455
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [32 x i8], ptr %i.ab, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !258
  br label %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit185

_ZN4llvm17getPointerOperandEPNS_5ValueE.exit185:  ; preds = %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i184, %bb.h, %bb.i
  %.2.i.i183 = phi ptr [ %i.aw, %_ZN4llvm26getLoadStorePointerOperandEPKNS_5ValueE.exit.i.i184 ], [ %i.be, %bb.i ], [ null, %bb.h ]
  %i.bf = call noundef zeroext i1 @_ZNK4llvm11Instruction16mayWriteToMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ab) #31
  %i.bg = ptrtoint ptr %.2.i.i183 to i64
  %i.bh = and i64 %i.bg, -5
  %i.bi = select i1 %i.bf, i64 4, i64 0
  %i.bj = or disjoint i64 %i.bi, %i.bh
  store i64 %i.bj, ptr %9, align 8
  call void @_ZN4llvm18EquivalenceClassesINS_14PointerIntPairIPNS_5ValueELj1EbNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEEE10eraseClassERKS8_(ptr noundef nonnull align 8 dereferenceable(168) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %_ZN4llvm17getPointerOperandEPNS_5ValueE.exit185
  %i.bk = getelementptr inbounds nuw i8, ptr %.0164235, i64 12 ; 2 uses
  %.not168 = icmp eq ptr %i.bk, %i.n
  br i1 %.not168, label %.loopexit229, label %bb.d

bb.k:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.bl, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %10, i8 0, i64 152, i1 false)
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !70
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 6, ptr %i.bo, align 4, !tbaa !123
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 4 uses
end_hunk_0
