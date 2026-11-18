Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PDLExtensionOps?download=true
inline.NumInlined: 3735
inline.NumDeleted: 2172
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4mlir9transform10PDLMatchOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a
  %.01419.i.i.i.i.i.i = phi i32 [ %i.fk, %bb.j ], [ %i.ey, %bb.i ]
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.fg
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !68, !noalias !326
  %i.fi = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9transform13PDLMatchHooksEvE2idE
  br i1 %i.fi, label %_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i, label %bb.j, !prof !79

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fj = add nuw i32 %.01419.i.i.i.i.i.i, 1
  %i.fk = and i32 %i.fj, %i.ex                    ; 3 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = lshr i64 %i.fl, 5
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !150, !noalias !326
  %i.fp = and i32 %i.fk, 31
  %i.fq = lshr i32 %i.fo, %i.fp
  %i.fr = trunc i32 %i.fq to i1
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !152

.loopexit.i.i.i.i.i:                              ; preds = %bb.j, %bb.i, %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit.i
  %i.fs = zext i32 %i.ev to i64
  br label %_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i

_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %i.ft = phi i64 [ %i.fs, %.loopexit.i.i.i.i.i ], [ %i.fg, %.lr.ph.i.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !328 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !136 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !137 ; 2 uses
  %.not.i27.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i27.i, label %_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !139
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %.lr.ph.i.i.i.i, label %_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.gd = phi ptr [ %i.ge, %.lr.ph.i.i.i.i ], [ %i.fy, %bb.k ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !139
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %.lr.ph.i.i.i.i, label %_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i, !llvm.loop !296

_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.k, %_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.fy, %_ZNK4mlir9transform16TransformDialect12getExtraDataINS0_13PDLMatchHooksEEERKT_v.exit.i ], [ %i.fy, %bb.k ], [ %i.ge, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.gh = zext i32 %i.ga to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.gh ; 2 uses
  %.not55.i = icmp eq ptr %.sroa.0.0.i.i, %i.gi
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i
  %.pre60.i = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !139
  br label %bb.n

._crit_edge.i:                                    ; preds = %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i, %_ZNK4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEE5beginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 16, i1 false), !alias.scope !329
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesENS0_9StringRefEPNS2_9OperationERNS0_15SmallVectorImplISI_EEE3$_0EENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESQ_E4typeEOSO_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesENS0_9StringRefEPNS2_9OperationERNS0_15SmallVectorImplISI_EEE3$_0EENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESQ_E4typeEOSO_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_">, ptr %i.bs, align 8, !tbaa !90, !alias.scope !329
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %13, ptr nonnull @.str.40, i64 17, ptr nofree noundef nonnull align 8 dereferenceable(32) %10) #22
  %i.gj = load ptr, ptr %i.bs, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i, label %"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i", label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.gk = call noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3) #22, !inline_history !299 ; 0 uses
  br label %"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i"

"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i": ; preds = %bb.l, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.gl = call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef nonnull %i.dk) #22
  store ptr %i.gl, ptr %9, align 8
  %i.gm = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.gn = extractvalue { ptr, i64 } %i.gm, 0      ; 3 uses
  %i.go = extractvalue { ptr, i64 } %i.gm, 1      ; 3 uses
  %i.gp = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.gn, i64 %i.go) #22
  %i.gq = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.az, ptr %i.gn, i64 %i.go, i32 noundef %i.gp) #22 ; 2 uses
  %i.gr = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.gs = zext i32 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gs ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !139
  %.not.i.i29.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i29.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i"
  %i.gv = call noundef ptr @_ZN4llvm14StringMapEntryIN4mlir23FrozenRewritePatternSetEE6createINS_15MallocAllocatorEJNS1_16PDLPatternModuleEEEEPS3_NS_9StringRefERT_DpOT0_(ptr %i.gn, i64 %i.go, ptr noundef nonnull align 8 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(144) %13)
  store ptr %i.gv, ptr %i.gt, align 8, !tbaa !139
  %i.gw = load i32, ptr %i.bt, align 4, !tbaa !158
  %i.gx = add i32 %i.gw, 1
  store i32 %i.gx, ptr %i.bt, align 4, !tbaa !158
  %i.gy = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.az, i32 noundef %i.gq) #22
  %i.gz = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.ha = zext i32 %i.gy to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.ha
  br label %bb.q

bb.n:                                             ; preds = %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i, %.lr.ph.i
  %i.hc = phi ptr [ %.pre60.i, %.lr.ph.i ], [ %i.ht, %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i ] ; 4 uses
  %.sroa.037.056.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i ], [ %.sroa.037.1.i, %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !141
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEC2ERKSB_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hi = call noundef zeroext i1 %i.hg(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.hh, i32 noundef 2) #22, !inline_history !300 ; 0 uses
  %i.hj = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !90
  store <2 x ptr> %i.hj, ptr %i.br, align 8, !tbaa !90
  br label %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEC2ERKSB_.exit.i

_ZNSt8functionIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEC2ERKSB_.exit.i: ; preds = %bb.o, %bb.n
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %13, ptr nonnull %i.hd, i64 %i.he, ptr nofree noundef nonnull align 8 dereferenceable(32) %14) #22
  %i.hk = load ptr, ptr %i.br, align 8, !tbaa !143 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.hk, null
  br i1 %.not.i34.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEC2ERKSB_.exit.i
  %i.hl = call noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3) #22, !inline_history !301 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.p, %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEEC2ERKSB_.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i, i64 8 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !139 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %.lr.ph.i.i.i, label %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %.lr.ph.i.i.i
  %i.hp = phi ptr [ %i.hq, %.lr.ph.i.i.i ], [ %i.hm, %_ZNSt14_Function_baseD2Ev.exit.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !139 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %.lr.ph.i.i.i, label %_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i, !llvm.loop !296

_ZN4llvm17StringMapIterBaseISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEELb1EEppEv.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ht = phi ptr [ %i.hn, %_ZNSt14_Function_baseD2Ev.exit.i ], [ %i.hr, %.lr.ph.i.i.i ]
  %.sroa.037.1.i = phi ptr [ %i.hm, %_ZNSt14_Function_baseD2Ev.exit.i ], [ %i.hq, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.1.i, %i.gi
  br i1 %.not.i, label %._crit_edge.i, label %bb.n

bb.q:                                             ; preds = %bb.m, %"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i"
  %.sroa.014.0.i.i.i = phi ptr [ %i.hb, %bb.m ], [ %i.gt, %"_ZN4mlir16PDLPatternModule23registerRewriteFunctionIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPNS_9OperationERNS4_15SmallVectorImplIS7_EEE3$_0EEvS5_OT_.exit.i" ]
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %_ZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPN4mlir9OperationERNS1_15SmallVectorImplIS5_EE.exit

_ZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPN4mlir9OperationERNS1_15SmallVectorImplIS5_EE.exit: ; preds = %_ZN4llvm9StringMapIN4mlir23FrozenRewritePatternSetENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %bb.q
  %.sroa.048.1.i = phi ptr [ %.sroa.014.0.i.i.i, %bb.q ], [ %i.dj, %_ZN4llvm9StringMapIN4mlir23FrozenRewritePatternSetENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.hu = load ptr, ptr %.sroa.048.1.i, align 8, !tbaa !139
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  call void @_ZN4mlir17PatternApplicatorC1ERKNS_23FrozenRewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.hx = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw) #22
  store ptr %i.hx, ptr %i.bu, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir15PatternRewriterE, i64 16), ptr %16, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir17PatternApplicator14applyCostModelEN4llvm12function_refIFNS_14PatternBenefitERKNS_7PatternEEEE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr nonnull @_ZN4llvm12function_refIFN4mlir14PatternBenefitERKNS1_7PatternEEE11callback_fnIZNS1_17PatternApplicator21applyDefaultCostModelEvEUlS5_E_EES2_lS5_, i64 %i.bw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %15, ptr %17, align 8, !tbaa !330
  store ptr %16, ptr %i.bx, align 8, !tbaa !331
  store ptr %18, ptr %i.by, align 8, !tbaa !332
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesENS_9StringRefES3_RNS_15SmallVectorImplIS3_EEE3$_1EEvlS3_", i64 %i.bz, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN4mlir17PatternApplicatorD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ad

bb.r:                                             ; preds = %bb.h, %_ZN4llvm9StringMapIN4mlir23FrozenRewritePatternSetENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store i8 1, ptr %i.ca, align 8, !tbaa !52
  store i8 1, ptr %i.cb, align 1, !tbaa !50
  %i.hy = load ptr, ptr %1, align 8, !tbaa !95, !noalias !333
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.hz, align 8, !noalias !334
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %21, ptr %.sroa.0.0.copyload.i.i.i17, ptr noundef nonnull align 8 dereferenceable(34) %22) #22
  %i.ia = load ptr, ptr %21, align 8, !tbaa !60
  %.not.i.i.i.i18 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i18, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 3, ptr %7, align 8, !tbaa !71
  store ptr @.str.14, ptr %i.cd, align 8, !tbaa !73
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.ib = load i32, ptr %i.ce, align 8, !tbaa !77 ; 2 uses
  %i.ic = load i32, ptr %i.cf, align 4, !tbaa !78
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ib, %i.ic
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t, !prof !79

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA25_KcEEOS0_OT_.exit

bb.u:                                             ; preds = %bb.s
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.ig = load i32, ptr %i.ce, align 8, !tbaa !77
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.ce, align 8, !tbaa !77
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA25_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA25_KcEEOS0_OT_.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre = load ptr, ptr %21, align 8, !tbaa !60
  %i.ii = icmp eq ptr %.pre, null
  %i.ij = load ptr, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 44
  %i.il = load i32, ptr %i.ik, align 4            ; 2 uses
  %.not.i.i.i.i19 = icmp ugt i32 %i.il, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i19)
  br i1 %i.ii, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA25_KcEEOS0_OT_.exit
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.in = lshr i32 %i.il, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i20 = and i32 %i.in, 1
  %i.io = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i20 to i64
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.io
  %.sroa.0.0.copyload.i.i.i21 = load ptr, ptr %i.ip, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.sroa.0.0.copyload.i.i.i21) #22
  %i.iq = load i32, ptr %i.ce, align 8, !tbaa !77 ; 2 uses
  %i.ir = load i32, ptr %i.cf, align 4, !tbaa !78
  %.not.i.i.i.i.i.i.i24 = icmp ult i32 %i.iq, %i.ir
  br i1 %.not.i.i.i.i.i.i.i24, label %bb.x, label %bb.w, !prof !79

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.x:                                             ; preds = %bb.v
  %i.is = zext i32 %i.iq to i64
  %i.it = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.iv = load i32, ptr %i.ce, align 8, !tbaa !77
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.ce, align 8, !tbaa !77
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pr = load ptr, ptr %21, align 8, !tbaa !60
  %.not.i.i.i.i25 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i25, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i32 3, ptr %5, align 8, !tbaa !71
  store ptr @.str.15, ptr %i.cg, align 8, !tbaa !73
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i26, align 8, !tbaa !75
  %i.ix = load i32, ptr %i.ce, align 8, !tbaa !77 ; 2 uses
  %i.iy = load i32, ptr %i.cf, align 4, !tbaa !78
  %.not.i.i.i.i.i.i.i27 = icmp ult i32 %i.ix, %i.iy
  br i1 %.not.i.i.i.i.i.i.i27, label %bb.aa, label %bb.z, !prof !79

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.iz = zext i32 %i.ix to i64
  %i.ja = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.jc = load i32, ptr %i.ce, align 8, !tbaa !77
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ce, align 8, !tbaa !77
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pr39 = load ptr, ptr %21, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %.pr39, null
  br i1 %.not.i.i, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #22
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread: ; preds = %bb.r, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA25_KcEEOS0_OT_.exit, %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit, %bb.ab, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit
  %i.je = load i8, ptr %i.ch, align 8, !tbaa !61, !range !62, !noundef !63
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.ac, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

bb.ac:                                            ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread
  store i8 0, ptr %i.ch, align 8, !tbaa !61
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ci) #22
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit:      ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA2_KcEEOS0_OT_.exit.thread, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN12_GLOBAL__N_126PatternApplicatorExtension14findAllMatchesEN4llvm9StringRefEPN4mlir9OperationERNS1_15SmallVectorImplIS5_EE.exit, %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.031.048, i64 8 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.jg, %i.aw
  br i1 %.not2.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.ae
  %.sroa.031.1 = phi ptr [ %i.ji, %bb.ae ], [ %i.jg, %bb.ad ] ; 3 uses
  %i.jh = load ptr, ptr %.sroa.031.1, align 8, !tbaa !155
  %.not1.i.i = icmp eq ptr %i.jh, null
  br i1 %.not1.i.i, label %bb.ae, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 8 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.ji, %i.aw
  br i1 %.not.i.i28, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i, !llvm.loop !283

_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i, %bb.ae, %bb.ad
  %.sroa.031.2 = phi ptr [ %i.jg, %bb.ad ], [ %.sroa.031.1, %.lr.ph.i.i ], [ %i.ji, %bb.ae ] ; 2 uses
  %.not = icmp eq ptr %.sroa.031.2, %i.aw
  br i1 %.not, label %._crit_edge, label %bb.g
}

declare ptr @_ZNK4mlir13SymbolRefAttr16getLeafReferenceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9transform16TransformResults3setIRN4llvm11SmallVectorIPNS_9OperationELj6EEEEEvNS_8OpResultEOT_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 6
  br i1 %i.c, label %bb.b, label %_ZNK4mlir8OpResult15getResultNumberEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !341
  %i.f = add i64 %i.e, 6
  %i.g = and i64 %i.f, 4294967295
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit

_ZNK4mlir8OpResult15getResultNumberEv.exit:       ; preds = %bb.a, %bb.b
  %.1.i.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 6 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.1.i.i ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !343  ; 2 uses
  %.not.i = icmp eq i64 %i.j, -1
  br i1 %.not.i, label %..loopexit_crit_edge.i, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit.i

..loopexit_crit_edge.i:                           ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !80
  br label %_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit

_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK4mlir8OpResult15getResultNumberEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 3 uses
  %.idx5 = shl nsw i64 %i.j, 3                    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx5 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !344
  %.idx6 = shl nsw i64 %i.o, 3                    ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %.idx6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !77
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.t = add nsw i64 %.idx5, %.idx6
  %gepdiff = sub nsw i64 %.idx, %i.t              ; 4 uses
  %i.u = icmp sgt i64 %gepdiff, 8
  br i1 %i.u, label %bb.c, label %bb.d, !prof !79

bb.c:                                             ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.p, i64 %gepdiff, i1 false)
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !80
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i

bb.d:                                             ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.v = icmp eq i64 %gepdiff, 8
  br i1 %i.v, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !155
  store ptr %i.w, ptr %i.m, align 8, !tbaa !155
  br label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = phi ptr [ %.pre.i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 %gepdiff
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64                ; 4 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = trunc i64 %i.ac to i32                  ; 4 uses
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !77
  %i.ag = zext i32 %i.af to i64                   ; 4 uses
  %.034.i = add nuw nsw i64 %.1.i.i, 1            ; 3 uses
  %i.ah = icmp samesign ult i64 %.034.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !80    ; 3 uses
  %i.aj = add nsw i64 %i.ag, -2
  %i.ak = sub nsw i64 %.1.i.i, %i.ag
  %i.al = and i64 %i.ak, 1
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit

_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol: ; preds = %.lr.ph.i
  %i.am = ptrtoint ptr %i.m to i64
  %i.an = sub i64 %i.am, %i.aa
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.034.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !75
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !343
  %i.as = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ar
  %.0.i.prol = add nuw nsw i64 %.1.i.i, 2
  br label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit

_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit: ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol, %.lr.ph.i
  %.036.i.unr = phi i64 [ %.034.i, %.lr.ph.i ], [ %.0.i.prol, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol ]
  %.03335.i.unr = phi ptr [ %i.m, %.lr.ph.i ], [ %i.as, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol ]
  %i.at = icmp eq i64 %i.aj, %.1.i.i
  br i1 %i.at, label %_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i

_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i: ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i
  %.036.i = phi i64 [ %.0.i.1, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %.036.i.unr, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ] ; 3 uses
  %.03335.i = phi ptr [ %i.bi, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %.03335.i.unr, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ] ; 2 uses
  %i.au = ptrtoint ptr %.03335.i to i64
  %i.av = sub i64 %i.au, %i.aa
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.036.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !75
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !343
  %i.ba = getelementptr inbounds [8 x i8], ptr %.03335.i, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aa
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.036.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !75
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !343
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bh
  %.0.i.1 = add nuw nsw i64 %.036.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.0.i.1, %i.ag
  br i1 %exitcond.not.i.1, label %_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i, !llvm.loop !335

_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit: ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i, %..loopexit_crit_edge.i, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i
  %i.bj = phi ptr [ %.pre38.i, %..loopexit_crit_edge.i ], [ %i.x, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i ], [ %i.x, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %i.x, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ]
  %i.bk = phi i32 [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.ad, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i ], [ %i.ad, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %i.ad, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = zext i32 %i.bk to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load ptr, ptr %2, align 8, !tbaa !80    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !77
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = tail call noundef ptr @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bt) ; 0 uses
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !77
  %i.bw = zext i32 %i.bv to i64
  %i.bx = sub nsw i64 %i.bw, %i.bn
  %i.by = load ptr, ptr %0, align 8, !tbaa !80
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %.1.i.i ; 2 uses
  store i64 %i.bn, ptr %i.bz, align 8, !tbaa !343
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !344
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform10PDLMatchOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  tail call void @_ZN4mlir9transform15onlyReadsHandleEN4llvm15MutableArrayRefINS_9OpOperandEEERNS1_15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %i.c, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %1) #22
end_hunk_0
