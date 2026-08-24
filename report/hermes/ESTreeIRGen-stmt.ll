Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ESTreeIRGen-stmt?download=true
inline.NumInlined: 778
inline.NumDeleted: 454
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS_6ESTree18ForOfStatementNodeE:bb.a
  call void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::irgen::LReference") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bg, i1 noundef zeroext false) #7, !inline_history !229
  call void @_ZN6hermes5irgen10LReference9emitStoreEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %spec.select.i) #7, !inline_history !229
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !243
  call void @_ZN6hermes5irgen11ESTreeIRGen12genStatementEPNS_6ESTree4NodeENS1_10IsLoopBodyE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bi, i32 noundef 1), !inline_history !229
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !243 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bk, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !11
  %i.bl = call ptr @_ZN6hermes18SourceErrorManager20convertEndToLocationEN4llvh7SMRangeE(ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i) #7, !inline_history !229
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !238
  %i.bo = load ptr, ptr %2, align 8, !tbaa !234
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !107
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !241 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %"_ZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS_6ESTree18ForOfStatementNodeEENK3$_0clEv.exit", label %bb.c

bb.c:                                             ; preds = %_ZN6hermes5irgen14SurroundingTryC2EPNS0_15FunctionContextEPNS_6ESTree4NodeEN4llvh5SMLocESt8functionIFvS6_NS0_17ControlFlowChangeEPNS_10BasicBlockEEE.exit.i
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i32 noundef 3) #7, !inline_history !244 ; 0 uses
  br label %"_ZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS_6ESTree18ForOfStatementNodeEENK3$_0clEv.exit"

"_ZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS_6ESTree18ForOfStatementNodeEENK3$_0clEv.exit": ; preds = %_ZN6hermes5irgen14SurroundingTryC2EPNS0_15FunctionContextEPNS_6ESTree4NodeEN4llvh5SMLocESt8functionIFvS6_NS0_17ControlFlowChangeEPNS_10BasicBlockEEE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.bs = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.aq) #7, !inline_history !228 ; 2 uses
  %i.bt = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.bs) #7, !inline_history !228 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.bs) #7, !inline_history !228
  %i.bu = call noundef ptr @_ZN6hermes9IRBuilder16createTryEndInstEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #7, !inline_history !228 ; 0 uses
  %i.bv = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %.0.i) #7, !inline_history !228 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.ar) #7, !inline_history !228
  %i.bw = call noundef ptr @_ZN6hermes9IRBuilder15createCatchInstEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #7 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !245
  %i.bx = call noundef ptr @_ZN6hermes9IRBuilder23createIteratorCloseInstEPNS_14AllocStackInstEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %.sroa.0.0.copyload.i, i1 noundef zeroext true) #7 ; 0 uses
  %i.by = icmp eq ptr %i.bw, null
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %spec.select.i25 = select i1 %i.by, ptr null, ptr %i.bz
  %i.ca = call noundef ptr @_ZN6hermes9IRBuilder15createThrowInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select.i25) #7 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen18genReturnStatementEPNS_6ESTree19ReturnStatementNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.b, ptr null) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  tail call void @_ZN6hermes5irgen11ESTreeIRGen29genFinallyBeforeControlChangeEPNS0_14SurroundingTryES3_NS0_17ControlFlowChangeEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = tail call noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %.0) #7 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.n) #7
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.o) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen20genExpressionWrapperEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr null) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef %i.a, ptr noundef nonnull %i.e) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen18genSwitchStatementEPNS_6ESTree19SwitchStatementNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.197", align 8 ; 9 uses
  %3 = alloca %"class.llvh::SmallVector.200", align 8 ; 13 uses
  %4 = alloca %"class.std::optional", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !250
  %i.d = call noundef zeroext i1 @_ZN6hermes5irgen11ESTreeIRGen19areAllCasesConstantEPNS_6ESTree19SwitchStatementNodeERN4llvh15SmallVectorImplIPNS_7LiteralEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.e = load i32, ptr %i.b, align 8
  %i.f = icmp ugt i32 %i.e, 1
  %or.cond = select i1 %i.d, i1 %i.f, i1 false    ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6hermes5irgen11ESTreeIRGen18genConstSwitchStmtEPNS_6ESTree19SwitchStatementNodeERN4llvh15SmallVectorImplIPNS_7LiteralEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.g) #7
  br label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br i1 %or.cond, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.j = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %i.m = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.l) #7 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.o, align 8, !tbaa !249
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.p, align 4, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.u = load i32, ptr %i.s, align 4, !tbaa !101
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.v ; 3 uses
  store ptr %i.m, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !251
  %i.ae = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.ad, ptr null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  store i8 0, ptr %i.af, align 8, !tbaa !199
  %i.ag = load ptr, ptr %0, align 8, !tbaa !200
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 249
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !201, !range !202, !noundef !192
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, label %bb.f

_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit: ; preds = %bb.e
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !55
  call void @_ZN6hermes5irgen15EnterBlockScopeC1EPNS0_15FunctionContextE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef %i.am) #7
  store i8 1, ptr %i.af, align 8, !tbaa !199
  call void @_ZN6hermes5irgen11ESTreeIRGen29blockDeclarationInstantiationEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %1) #7
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.050.062 = load ptr, ptr %i.ao, align 8, !tbaa !7 ; 2 uses
  %.not63 = icmp eq ptr %.sroa.050.062, %i.an
  br i1 %.not63, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %.042.lcssa = phi ptr [ %i.m, %bb.f ], [ %.143, %bb.j ]
  %i.ap = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %.042.lcssa) #7 ; 0 uses
  %.sroa.045.072 = load ptr, ptr %i.ao, align 8, !tbaa !7 ; 2 uses
  %.not6073 = icmp eq ptr %.sroa.045.072, %i.an
  br i1 %.not6073, label %.critedge, label %.lr.ph78

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ -1, %bb.f ]
  %.sroa.050.066 = phi ptr [ %.sroa.050.0, %bb.j ], [ %.sroa.050.062, %bb.f ] ; 2 uses
  %.04264 = phi ptr [ %.143, %bb.j ], [ %i.m, %bb.f ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aq = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.l) #7
  %i.ar = load i32, ptr %i.o, align 8, !tbaa !249 ; 2 uses
  %i.as = load i32, ptr %i.p, align 4, !tbaa !250
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.g, !prof !256

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.n, i64 noundef 0, i64 noundef 8) #7
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !249
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %.lr.ph, %bb.g
  %i.at = phi i32 [ %.pre.i, %bb.g ], [ %i.ar, %.lr.ph ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !103
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = ptrtoint ptr %i.aq to i64
  store i64 %i.ax, ptr %i.aw, align 1
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !249
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.o, align 8, !tbaa !249
  %i.ba = getelementptr i8, ptr %.sroa.050.066, i64 48
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !257 ; 2 uses
  %.not.i44 = icmp eq ptr %.val, null
  br i1 %.not.i44, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit
  %i.bb = load ptr, ptr %3, align 8, !tbaa !103
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !233
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit
  %i.bg = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.val, ptr null) #7
  %i.bh = call noundef ptr @_ZN6hermes9IRBuilder24createBinaryOperatorInstEPNS_5ValueES2_NS_18BinaryOperatorInst6OpKindE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.bg, ptr noundef %i.ae, i32 noundef 3) #7 ; 2 uses
  %i.bi = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.l) #7 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %spec.select1 = select i1 %i.bj, ptr null, ptr %i.bk
  %i.bl = load ptr, ptr %3, align 8, !tbaa !103
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !233
  %i.bo = call noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %spec.select1, ptr noundef %i.bn, ptr noundef %i.bi) #7 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.bi) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.143 = phi ptr [ %i.bf, %bb.h ], [ %.04264, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.050.066, i64 8
  %.sroa.050.0 = load ptr, ptr %i.bp, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %.sroa.050.0, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph78:                                         ; preds = %._crit_edge, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ -1, %._crit_edge ]
  %.sroa.045.076 = phi ptr [ %.sroa.045.0, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ %.sroa.045.072, %._crit_edge ] ; 3 uses
  %.075 = phi i1 [ false, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ true, %._crit_edge ]
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1 ; 3 uses
  br i1 %.075, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph78
  %i.bq = load ptr, ptr %3, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next83
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !233
  %i.bt = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.bs) #7 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph78
  %i.bu = load ptr, ptr %3, align 8, !tbaa !103
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next83
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !233
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.bw) #7
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.045.076, i64 56 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.045.076, i64 64
  %.sroa.055.067 = load ptr, ptr %i.by, align 8, !tbaa !7 ; 2 uses
  %.not6168 = icmp eq ptr %.sroa.055.067, %i.bx
  br i1 %.not6168, label %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.l, %.lr.ph71
  %.sroa.055.069 = phi ptr [ %.sroa.055.0, %.lr.ph71 ], [ %.sroa.055.067, %bb.l ] ; 2 uses
  call void @_ZN6hermes5irgen11ESTreeIRGen12genStatementEPNS_6ESTree4NodeENS1_10IsLoopBodyE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.055.069, i32 noundef 0), !inline_history !259
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.055.069, i64 8
  %.sroa.055.0 = load ptr, ptr %i.bz, align 8, !tbaa !7 ; 2 uses
  %.not61 = icmp eq ptr %.sroa.055.0, %i.bx
  br i1 %.not61, label %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %.lr.ph71

_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit: ; preds = %.lr.ph71, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.045.076, i64 8
  %.sroa.045.0 = load ptr, ptr %i.ca, align 8, !tbaa !7 ; 2 uses
  %.not60 = icmp eq ptr %.sroa.045.0, %i.an
  br i1 %.not60, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit
  %i.cb = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.m) #7 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %._crit_edge79
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.m) #7
  %i.cc = load i8, ptr %i.af, align 8, !tbaa !199, !range !202, !noundef !192
  %i.cd = trunc nuw i8 %i.cc to i1
  store i8 0, ptr %i.af, align 8, !tbaa !199
  br i1 %i.cd, label %bb.m, label %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %.critedge
  call void @_ZN6hermes5irgen15EnterBlockScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(72) %4) #7
  br label %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit: ; preds = %.critedge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.ce = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.n
  br i1 %i.cf, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit
  call void @free(ptr noundef %i.ce) #7
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen22genVariableDeclarationEPNS_6ESTree23VariableDeclarationNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::irgen::LReference", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.06.09 = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i.i.pre = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit
  %.sroa.06.011 = phi ptr [ %.sroa.06.09, %.lr.ph ], [ %.sroa.06.0, %_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit ] ; 4 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.e, align 8, !tbaa !11
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 236 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !262
  call void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::irgen::LReference") align 8 %2, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.q, i1 noundef zeroext true) #7
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !222  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !263  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp eq i32 %i.v, 66
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !264
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ]
  %i.z = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.s, ptr %.sroa.0.0.i) #7
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !266
  %i.ab = icmp eq ptr %i.h, %i.aa
  br i1 %i.ab, label %bb.g, label %_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.e
  %.sink.i = phi ptr [ %i.ac, %bb.g ], [ %i.z, %bb.e ]
  call void @_ZN6hermes5irgen10LReference9emitStoreEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %.sink.i) #7
  br label %_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit

_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE.exit: ; preds = %bb.f, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  store ptr %.sroa.0.0.copyload.i.i.i.pre, ptr %i.e, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8
  %.sroa.06.0 = load ptr, ptr %i.ad, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen16genForWhileLoopsEPNS_6ESTree17LoopStatementNodeEPNS2_4NodeES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 5 uses
  %i.f = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 4 uses
  %i.g = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 2 uses
  %i.h = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 2 uses
  %i.i = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i32, ptr %i.l, align 4, !tbaa !101
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o ; 3 uses
  store ptr %i.f, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.i, ptr %i.r, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !108
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = icmp eq i32 %i.w, 72
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes5irgen11ESTreeIRGen12genStatementEPNS_6ESTree4NodeENS1_10IsLoopBodyE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %2, i32 noundef 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %2, ptr null) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.z = tail call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.g) #7 ; 0 uses
  tail call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.g) #7
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6hermes5irgen11ESTreeIRGen19genExpressionBranchEPNS_6ESTree4NodeEPNS_10BasicBlockES6_S6_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef %i.e, ptr noundef %i.f, ptr noundef null) #7
  br label %bb.h
end_hunk_0
begin_hunk_1_@_ZN6hermes5irgen11ESTreeIRGen21genVariableDeclaratorEPNS_12UniqueStringEPNS_6ESTree22VariableDeclaratorNodeE:bb.a
bb.g:                                             ; preds = %.sink.split, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.c, align 8, !tbaa !11
  ret void
}

declare void @_ZN6hermes5irgen11ESTreeIRGen10createLRefEPNS_6ESTree4NodeEb(ptr dead_on_unwind writable sret(%"class.hermes::irgen::LReference") align 8, ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6hermes5irgen10LReference9emitStoreEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes5irgen11ESTreeIRGen19genExpressionBranchEPNS_6ESTree4NodeEPNS_10BasicBlockES6_S6_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19createGetPNamesInstEPNS_5ValueES2_S2_S2_PNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createGetNextPNameInstEPNS_5ValueES2_S2_S2_S2_PNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare { ptr, ptr } @_ZN6hermes5irgen11ESTreeIRGen15emitGetIteratorEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder20createCondBranchInstEPNS_5ValueEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes5irgen11ESTreeIRGen19areAllCasesConstantEPNS_6ESTree19SwitchStatementNodeERN4llvh15SmallVectorImplIPNS_7LiteralEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.021.025 = load ptr, ptr %i.b, align 8, !tbaa !7 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.021.025, %i.a
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.021.027 = phi ptr [ %.sroa.021.025, %.lr.ph ], [ %.sroa.021.0, %bb.h ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.021.027, i64 48 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !257 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.h = load i32, ptr %i.d, align 4, !tbaa !250
  %.not.i15 = icmp ult i32 %i.g, %i.h
  br i1 %.not.i15, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit, label %bb.d, !prof !256

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 8) #7
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !249
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %.pre.i, %bb.d ], [ %i.g, %bb.c ]
  %i.j = load ptr, ptr %2, align 8, !tbaa !103
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store i64 0, ptr %i.l, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN6hermes5irgen14isConstantExprEPNS_6ESTree4NodeE(ptr noundef nonnull %.val) #7
  br i1 %i.m, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !257
  %i.o = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.n, ptr null) #7 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !306
  %i.q = add i8 %i.p, -109
  %i.r = icmp ult i8 %i.q, 11
  %i.s = load i32, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !250
  %.not.i16 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i16, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit18, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 8) #7
  %.pre.i17 = load i32, ptr %i.c, align 8, !tbaa !249
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit18

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit18: ; preds = %bb.f, %bb.g
  %i.u = phi i32 [ %.pre.i17, %bb.g ], [ %i.s, %bb.f ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !103
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = select i1 %i.r, i64 %i.y, i64 0
  store i64 %i.z, ptr %i.x, align 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit18
  %storemerge.in = load i32, ptr %i.c, align 8, !tbaa !249
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !249
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 8
  %.sroa.021.0 = load ptr, ptr %i.aa, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %.sroa.021.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.e ], [ true, %bb.h ]
  ret i1 %.not.lcssa
}

declare noundef zeroext i1 @_ZN6hermes5irgen14isConstantExprEPNS_6ESTree4NodeE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen18genConstSwitchStmtEPNS_6ESTree19SwitchStatementNodeERN4llvh15SmallVectorImplIPNS_7LiteralEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::optional", align 8     ; 5 uses
  %4 = alloca %"class.llvh::SmallPtrSet", align 8 ; 11 uses
  %5 = alloca %"class.llvh::SmallVector.197", align 8 ; 10 uses
  %6 = alloca %"class.llvh::SmallVector.200", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.j = load i32, ptr %i.h, align 4, !tbaa !101
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k ; 3 uses
  store ptr %i.e, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251
  %i.t = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.s, ptr null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  store i8 0, ptr %i.u, align 8, !tbaa !199
  %i.v = load ptr, ptr %0, align 8, !tbaa !200
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 249
  %i.z = load i8, ptr %i.y, align 1, !tbaa !201, !range !202, !noundef !192
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, label %bb.b

_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit: ; preds = %bb.a
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !55
  call void @_ZN6hermes5irgen15EnterBlockScopeC1EPNS0_15FunctionContextE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %i.ab) #7
  store i8 1, ptr %i.u, align 8, !tbaa !199
  call void @_ZN6hermes5irgen11ESTreeIRGen29blockDeclarationInstantiationEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %1) #7
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt8optionalIN6hermes5irgen15EnterBlockScopeEE7emplaceIJPNS1_15FunctionContextEEEENSt9enable_ifIX18is_constructible_vIS2_DpT_EERS2_E4typeEDpOS8_.exit, %bb.a
  %i.ac = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !307
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !310
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 8, ptr %i.af, align 8, !tbaa !311
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !312
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !249
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 8, ptr %i.ak, align 4, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.am, align 8, !tbaa !249
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.an, align 4, !tbaa !250
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.032.046 = load ptr, ptr %i.ap, align 8, !tbaa !7 ; 2 uses
  %.not47 = icmp eq ptr %.sroa.032.046, %i.ao
  br i1 %.not47, label %._crit_edge.thread, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.b, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ -1, %bb.b ]
  %.sroa.032.051 = phi ptr [ %.sroa.032.0, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ %.sroa.032.046, %bb.b ] ; 4 uses
  %.050 = phi i1 [ false, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ true, %bb.b ]
  %.02448 = phi ptr [ %.1, %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ %i.e, %bb.b ] ; 3 uses
  %i.aq = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.d) #7 ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.032.051, i64 48
  %.val = load ptr, ptr %i.ar, align 8, !tbaa !257
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %.critedge69, label %bb.c

bb.c:                                             ; preds = %.lr.ph52
  %i.as = load ptr, ptr %2, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !314 ; 5 uses
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !310, !noalias !316
  %i.aw = load ptr, ptr %4, align 8, !tbaa !307, !noalias !316 ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.d, label %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.ag, align 4, !tbaa !312, !noalias !316 ; 4 uses
  %i.az = zext i32 %i.ay to i64
  %.idx.i.i = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.e ], [ null, %bb.d ]
  %.04964.i.i = phi ptr [ %i.bd, %bb.e ], [ %i.aw, %bb.d ] ; 3 uses
  %i.bb = load ptr, ptr %.04964.i.i, align 8, !tbaa !319, !noalias !316 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.bb, %i.au
  br i1 %.not27.i.i, label %.critedge69, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bc = icmp eq ptr %i.bb, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.bc, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.ba
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !320

.critedge.i.i:                                    ; preds = %bb.e
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  store ptr %i.au, ptr %spec.select.i.i, align 8, !tbaa !319, !noalias !316
  %i.be = load i32, ptr %i.ah, align 8, !tbaa !313, !noalias !316
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr %i.ah, align 8, !tbaa !313, !noalias !316
  br label %.critedge

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.d
  %i.bg = load i32, ptr %i.af, align 8, !tbaa !311, !noalias !316
  %i.bh = icmp ult i32 %i.ay, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit

bb.g:                                             ; preds = %.critedge.thread.i.i
  %i.bi = add nuw i32 %i.ay, 1
  store i32 %i.bi, ptr %i.ag, align 4, !tbaa !312, !noalias !316
  store ptr %i.au, ptr %i.ba, align 8, !tbaa !319, !noalias !316
  br label %.critedge

_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit: ; preds = %.critedge.thread.i.i, %bb.c
  %i.bj = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef %i.au) #7, !noalias !316
  %i.bk = extractvalue { ptr, i8 } %i.bj, 1
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.critedge, label %.critedge69

.critedge:                                        ; preds = %bb.g, %bb.f, %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit
  %i.bm = load i32, ptr %i.aj, align 8, !tbaa !249 ; 2 uses
  %i.bn = load i32, ptr %i.ak, align 4, !tbaa !250
  %.not.i25 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i25, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit, label %bb.h, !prof !256

bb.h:                                             ; preds = %.critedge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ai, i64 noundef 0, i64 noundef 8) #7
  %.pre.i = load i32, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit: ; preds = %.critedge, %bb.h
  %i.bo = phi i32 [ %.pre.i, %bb.h ], [ %i.bm, %.critedge ]
  %i.bp = load ptr, ptr %5, align 8, !tbaa !103
  %i.bq = zext i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = ptrtoint ptr %i.au to i64
  store i64 %i.bs, ptr %i.br, align 1
  %i.bt = load i32, ptr %i.aj, align 8, !tbaa !249
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.aj, align 8, !tbaa !249
  %i.bv = load i32, ptr %i.am, align 8, !tbaa !249 ; 2 uses
  %i.bw = load i32, ptr %i.an, align 4, !tbaa !250
  %.not.i26 = icmp ult i32 %i.bv, %i.bw
  br i1 %.not.i26, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.i, !prof !256

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.al, i64 noundef 0, i64 noundef 8) #7
  %.pre.i27 = load i32, ptr %i.am, align 8, !tbaa !249
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit, %bb.i
  %i.bx = phi i32 [ %.pre.i27, %bb.i ], [ %i.bv, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes7LiteralELb1EE9push_backERKS3_.exit ]
  %i.by = load ptr, ptr %6, align 8, !tbaa !103
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = ptrtoint ptr %i.aq to i64
  store i64 %i.cb, ptr %i.ca, align 1
  %i.cc = load i32, ptr %i.am, align 8, !tbaa !249
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.am, align 8, !tbaa !249
  br label %.critedge69

.critedge69:                                      ; preds = %.lr.ph.i.i, %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, %.lr.ph52
  %.1 = phi ptr [ %i.aq, %.lr.ph52 ], [ %.02448, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %.02448, %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit ], [ %.02448, %.lr.ph.i.i ] ; 2 uses
  br i1 %.050, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge69
  %i.ce = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.aq) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge69
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.aq) #7
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 56 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 64
  %.sroa.038.043 = load ptr, ptr %i.cg, align 8, !tbaa !7 ; 2 uses
  %.not4144 = icmp eq ptr %.sroa.038.043, %i.cf
  br i1 %.not4144, label %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.sroa.038.045 = phi ptr [ %.sroa.038.0, %.lr.ph ], [ %.sroa.038.043, %bb.k ] ; 2 uses
  call void @_ZN6hermes5irgen11ESTreeIRGen12genStatementEPNS_6ESTree4NodeENS1_10IsLoopBodyE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.038.045, i32 noundef 0), !inline_history !259
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.038.045, i64 8
  %.sroa.038.0 = load ptr, ptr %i.ch, align 8, !tbaa !7 ; 2 uses
  %.not41 = icmp eq ptr %.sroa.038.0, %i.cf
  br i1 %.not41, label %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit, label %.lr.ph

_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit: ; preds = %.lr.ph, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %.sroa.032.0 = load ptr, ptr %i.ci, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %.sroa.032.0, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph52

._crit_edge:                                      ; preds = %_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE.exit
  %i.cj = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.e) #7 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.024.lcssa67 = phi ptr [ %i.e, %bb.b ], [ %.1, %._crit_edge ]
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.ac) #7
  %i.ck = call noundef ptr @_ZN6hermes9IRBuilder16createSwitchInstEPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.t, ptr noundef %.024.lcssa67, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(80) %6) #7 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.e) #7
  %i.cl = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.al
  br i1 %i.cm, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef %i.cl) #7
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %._crit_edge.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.cn = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ai
  br i1 %i.co, label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.cn) #7
  br label %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !310 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !307
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit
  call void @free(ptr noundef %i.cp) #7
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIPN6hermes7LiteralELj8EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.cs = load i8, ptr %i.u, align 8, !tbaa !199, !range !202, !noundef !192
  %i.ct = trunc nuw i8 %i.cs to i1
  store i8 0, ptr %i.u, align 8, !tbaa !199
  br i1 %i.ct, label %bb.o, label %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  call void @_ZN6hermes5irgen15EnterBlockScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(72) %3) #7
  br label %_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef ptr @_ZN6hermes9IRBuilder24createBinaryOperatorInstEPNS_5ValueES2_NS_18BinaryOperatorInst6OpKindE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createSwitchInstEPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen9emitStoreEPNS_5ValueES3_b(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder23createStorePropertyInstEPNS_5ValueES2_NS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen8emitLoadEPNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen23genIdentifierExpressionEPNS_6ESTree14IdentifierNodeEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200), i8 noundef zeroext, ptr, i64) local_unnamed_addr #2
end_hunk_1
