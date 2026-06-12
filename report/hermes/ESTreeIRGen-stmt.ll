inline.NumInlined: 778
inline.NumDeleted: 454
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen18genConstSwitchStmtEPNS_6ESTree19SwitchStatementNodeERN4llvh15SmallVectorImplIPNS_7LiteralEEE:bb.a
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
  %.1 = phi ptr [ %i.aq, %.lr.ph52 ], [ %.050, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %.050, %_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_.exit ], [ %.050, %.lr.ph.i.i ] ; 2 uses
  br i1 %.02448, label %bb.k, label %bb.j

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
  %.0.lcssa67 = phi ptr [ %i.e, %bb.b ], [ %.1, %._crit_edge ]
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.ac) #7
  %i.ck = call noundef ptr @_ZN6hermes9IRBuilder16createSwitchInstEPNS_5ValueEPNS_10BasicBlockERKN4llvh11SmallVectorIPNS_7LiteralELj8EEERKNS6_IS4_Lj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.t, ptr noundef %.0.lcssa67, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(80) %6) #7 ; 0 uses
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

; Function Attrs: nounwind
declare void @_ZN6hermes5irgen15EnterBlockScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

declare void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464), i32 noundef, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(18), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes5irgen15FunctionContext21genAnonymousLabelNameEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(480), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder22createIteratorNextInstEPNS_14AllocStackInstES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @_ZN6hermes5irgen15EnterBlockScopeC1EPNS0_15FunctionContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder18createTryStartInstEPNS_10BasicBlockES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder16createTryEndInstEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare ptr @_ZN6hermes18SourceErrorManager20convertEndToLocationEN4llvh7SMRangeE(ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN6hermes6ESTree4NodeENS0_5irgen17ControlFlowChangeEPNS0_10BasicBlockEEZZNS4_11ESTreeIRGen17genForOfStatementEPNS1_18ForOfStatementNodeEENK3$_0clEvEUlS3_S5_S7_E_E9_M_invokeERKSt9_Any_dataOS3_OS5_OS7_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !319   ; 3 uses
  %.val4 = load i32, ptr %2, align 4, !tbaa !321
  %i.a = load ptr, ptr %.val, align 8, !tbaa !323
  %.not.i.i.i.a = icmp eq i32 %.val4, 0
  br i1 %.not.i.i.i.a, label %bb.b, label %4

4:                                                ; preds = %bb.a
  %.val5 = load ptr, ptr %3, align 8, !tbaa !233
  %5 = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !325
  %.not.i.i.i = icmp eq ptr %.val5, %6
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS0_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS3_4NodeENS1_17ControlFlowChangeEPNS0_10BasicBlockEE_JS8_S9_SB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %bb.b

bb.b:                                             ; preds = %4, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !326, !nonnull !192, !align !193
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !245
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call noundef ptr @_ZN6hermes9IRBuilder23createIteratorCloseInstEPNS_14AllocStackInstEb(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef %.sroa.0.0.copyload.i.i.i, i1 noundef zeroext false) #7 ; 0 uses
  br label %"_ZSt10__invoke_rIvRZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS0_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS3_4NodeENS1_17ControlFlowChangeEPNS0_10BasicBlockEE_JS8_S9_SB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rIvRZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS0_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS3_4NodeENS1_17ControlFlowChangeEPNS0_10BasicBlockEE_JS8_S9_SB_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %4, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN6hermes6ESTree4NodeENS0_5irgen17ControlFlowChangeEPNS0_10BasicBlockEEZZNS4_11ESTreeIRGen17genForOfStatementEPNS1_18ForOfStatementNodeEENK3$_0clEvEUlS3_S5_S7_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !319
  store ptr %.val, ptr %0, align 8, !tbaa !319
  br label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !327
  br label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val5, i64 24, i1 false), !tbaa.struct !329
  store ptr %i.a, ptr %0, align 8, !tbaa !319
  br label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !319 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 24) #9
  br label %"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS1_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS4_4NodeENS2_17ControlFlowChangeEPNS1_10BasicBlockEE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN6hermes9IRBuilder23createIteratorCloseInstEPNS_14AllocStackInstEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes9IRBuilder15createCatchInstEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0, !9, i64 8}
!9 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!14, !18, i64 16}
!14 = !{!"_ZTSN6hermes9IRBuilderE", !15, i64 0, !16, i64 8, !18, i64 16, !19, i64 24, !20, i64 32}
!15 = !{!"p1 _ZTSN6hermes6ModuleE", !10, i64 0}
!16 = !{!"_ZTSN4llvh14ilist_iteratorINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEELb0ELb0EEE", !17, i64 0}
!17 = !{!"p1 _ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !10, i64 0}
!18 = !{!"p1 _ZTSN6hermes10BasicBlockE", !10, i64 0}
!19 = !{!"_ZTSN4llvh5SMLocE", !12, i64 0}
!20 = !{!"p1 _ZTSN6hermes9ScopeDescE", !10, i64 0}
!21 = !{!22, !41, i64 72}
!22 = !{!"_ZTSN6hermes10BasicBlockE", !23, i64 0, !26, i64 16, !36, i64 56, !41, i64 72}
!23 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !24, i64 0}
!24 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !8, i64 0}
!26 = !{!"_ZTSN6hermes5ValueE", !27, i64 0, !28, i64 2, !30, i64 8}
!27 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!28 = !{!"_ZTSN6hermes4TypeE", !29, i64 0, !29, i64 2}
!29 = !{!"short", !5, i64 0}
!30 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !31, i64 0, !35, i64 16}
!31 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !32, i64 0}
!32 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !33, i64 0}
!33 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !34, i64 0}
!34 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!35 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!36 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !37, i64 0}
!37 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !38, i64 0}
!38 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !39, i64 0}
!39 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !40, i64 0}
!40 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !8, i64 0}
!41 = !{!"p1 _ZTSN6hermes8FunctionE", !10, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"bool", !5, i64 0}
!44 = !{!45, !48, i64 16}
!45 = !{!"_ZTSN6hermes6ESTree4NodeE", !46, i64 0, !48, i64 16, !4, i64 20, !49, i64 24, !19, i64 40}
!46 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes6ESTree4NodeEJEEE", !47, i64 0}
!47 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !8, i64 0}
!48 = !{!"_ZTSN6hermes6ESTree8NodeKindE", !5, i64 0}
!49 = !{!"_ZTSN4llvh7SMRangeE", !19, i64 0, !19, i64 8}
!50 = !{!51, !53, i64 48}
!51 = !{!"_ZTSN6hermes6ESTree23ExpressionStatementNodeE", !52, i64 0, !53, i64 48, !54, i64 56}
!52 = !{!"_ZTSN6hermes6ESTree13StatementNodeE", !45, i64 0}
!53 = !{!"p1 _ZTSN6hermes6ESTree4NodeE", !10, i64 0}
!54 = !{!"p1 _ZTSN6hermes12UniqueStringE", !10, i64 0}
!55 = !{!56, !59, i64 80}
!56 = !{!"_ZTSN6hermes5irgen11ESTreeIRGenE", !15, i64 0, !14, i64 8, !57, i64 48, !53, i64 56, !58, i64 64, !59, i64 72, !59, i64 80, !60, i64 88, !64, i64 120, !69, i64 136, !69, i64 144, !69, i64 152, !20, i64 160, !70, i64 168, !71, i64 176}
!57 = !{!"_ZTSN6hermes12IRInstrumentE"}
!58 = !{!"p1 _ZTSSt6vectorIPN6hermes6ESTree11ProgramNodeESaIS3_EE", !10, i64 0}
!59 = !{!"p1 _ZTSN6hermes5irgen15FunctionContextE", !10, i64 0}
!60 = !{!"_ZTSN6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEEE", !61, i64 0, !63, i64 24}
!61 = !{!"_ZTSN4llvh8DenseMapIN6hermes10IdentifierEPNS1_19ScopedHashTableNodeIS2_PNS1_5ValueEEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S7_EEEE", !62, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!62 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEEEE", !10, i64 0}
!63 = !{!"p1 _ZTSN6hermes20ScopedHashTableScopeINS_10IdentifierEPNS_5ValueEEE", !10, i64 0}
!64 = !{!"_ZTSSt10shared_ptrIKN6hermes15SerializedScopeEE", !65, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIKN6hermes15SerializedScopeELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !67, i64 8}
!66 = !{!"p1 _ZTSN6hermes15SerializedScopeE", !10, i64 0}
!67 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0}
!68 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!69 = !{!"_ZTSN6hermes10IdentifierE", !54, i64 0}
!70 = !{!"p1 _ZTSN6hermes17ScopeCreationInstE", !10, i64 0}
!71 = !{!"_ZTSN4llvh8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS1_8FunctionENS1_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SB_EEEE", !72, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!72 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEEEE", !10, i64 0}
!73 = !{!74, !41, i64 112}
!74 = !{!"_ZTSN6hermes5irgen15FunctionContextE", !75, i64 0, !76, i64 8, !59, i64 16, !77, i64 24, !79, i64 48, !41, i64 112, !84, i64 120, !63, i64 128, !63, i64 136, !85, i64 144, !86, i64 152, !89, i64 168, !90, i64 176, !91, i64 184, !90, i64 192, !92, i64 200, !96, i64 264, !96, i64 336, !96, i64 408}
!75 = !{!"p1 _ZTSN6hermes5irgen11ESTreeIRGenE", !10, i64 0}
!76 = !{!"p1 _ZTSN6hermes3sem12FunctionInfoE", !10, i64 0}
!77 = !{!"_ZTSN6hermes9IRBuilder11SaveRestoreE", !78, i64 0, !18, i64 8, !19, i64 16}
!78 = !{!"p1 _ZTSN6hermes9IRBuilderE", !10, i64 0}
!79 = !{!"_ZTSN4llvh11SmallVectorIN6hermes5irgen9GotoLabelELj2EEE", !80, i64 0, !83, i64 16}
!80 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes5irgen9GotoLabelEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes5irgen9GotoLabelELb1EEE", !82, i64 0}
!82 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes5irgen9GotoLabelEvEE", !34, i64 0}
!83 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes5irgen9GotoLabelELj2EEE", !5, i64 0}
!84 = !{!"p1 _ZTSN6hermes5irgen14SurroundingTryE", !10, i64 0}
!85 = !{!"p1 _ZTSN6hermes14AllocStackInstE", !10, i64 0}
!86 = !{!"_ZTSN6hermes23InternalIdentifierMakerE", !87, i64 0, !88, i64 8}
!87 = !{!"p1 _ZTSN6hermes11StringTableE", !10, i64 0}
!88 = !{!"long", !5, i64 0}
!89 = !{!"p1 _ZTSN6hermes19CreateArgumentsInstE", !10, i64 0}
!90 = !{!"p1 _ZTSN6hermes8VariableE", !10, i64 0}
!91 = !{!"p1 _ZTSN6hermes5ValueE", !10, i64 0}
!92 = !{!"_ZTSN6hermes5irgen15EnterBlockScopeE", !59, i64 0, !20, i64 8, !70, i64 16, !63, i64 24, !93, i64 32}
!93 = !{!"_ZTSN6hermes20ScopedHashTableScopeINS_10IdentifierEPNS_5ValueEEE", !4, i64 0, !94, i64 8, !63, i64 16, !95, i64 24}
!94 = !{!"p1 _ZTSN6hermes19ScopedHashTableNodeINS_10IdentifierEPNS_5ValueEEE", !10, i64 0}
!95 = !{!"p1 _ZTSN6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEEE", !10, i64 0}
!96 = !{!"_ZTSSt8optionalIN6hermes5irgen15EnterBlockScopeEE", !97, i64 0}
!97 = !{!"_ZTSSt14_Optional_baseIN6hermes5irgen15EnterBlockScopeELb0ELb0EE", !98, i64 0}
!98 = !{!"_ZTSSt17_Optional_payloadIN6hermes5irgen15EnterBlockScopeELb0ELb0ELb0EE", !99, i64 0}
!99 = !{!"_ZTSSt17_Optional_payloadIN6hermes5irgen15EnterBlockScopeELb1ELb0ELb0EE", !100, i64 0}
!100 = !{!"_ZTSSt22_Optional_payload_baseIN6hermes5irgen15EnterBlockScopeEE", !5, i64 0, !43, i64 64}
!101 = !{!102, !4, i64 0}
!102 = !{!"_ZTSN6hermes6ESTree19LabelDecorationBaseE", !4, i64 0}
!103 = !{!34, !10, i64 0}
!104 = !{!105, !18, i64 0}
!105 = !{!"_ZTSN6hermes5irgen9GotoLabelE", !18, i64 0, !18, i64 8, !84, i64 16}
!106 = !{!105, !18, i64 8}
!107 = !{!74, !84, i64 120}
!108 = !{!105, !84, i64 16}
!109 = !{!110, !53, i64 64}
!110 = !{!"_ZTSN6hermes6ESTree20LabeledStatementNodeE", !52, i64 0, !111, i64 48, !53, i64 56, !53, i64 64}
!111 = !{!"_ZTSN6hermes6ESTree26LabeledStatementDecorationE", !102, i64 0}
!112 = !{!113, !53, i64 64}
!113 = !{!"_ZTSN6hermes6ESTree18WhileStatementNodeE", !114, i64 0, !53, i64 56, !53, i64 64}
!114 = !{!"_ZTSN6hermes6ESTree17LoopStatementNodeE", !52, i64 0, !115, i64 48}
!115 = !{!"_ZTSN6hermes6ESTree23LoopStatementDecorationE", !102, i64 0}
!116 = !{!113, !53, i64 56}
!117 = !{!118, !53, i64 56}
!118 = !{!"_ZTSN6hermes6ESTree16ForStatementNodeE", !114, i64 0, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80}
!119 = !{!118, !53, i64 64}
!120 = !{!118, !53, i64 72}
!121 = !{!118, !53, i64 80}
!122 = !{!123, !53, i64 64}
!123 = !{!"_ZTSN6hermes6ESTree20DoWhileStatementNodeE", !114, i64 0, !53, i64 56, !53, i64 64}
!124 = !{!123, !53, i64 56}
!125 = !{!126, !53, i64 48}
!126 = !{!"_ZTSN6hermes6ESTree18ThrowStatementNodeE", !52, i64 0, !53, i64 48}
!127 = !{!14, !15, i64 0}
!128 = !{!129, !130, i64 0}
!129 = !{!"_ZTSSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EE", !130, i64 0, !67, i64 8}
!130 = !{!"p1 _ZTSN6hermes7ContextE", !10, i64 0}
!131 = !{!132, !166, i64 160}
!132 = !{!"_ZTSN6hermes7ContextE", !133, i64 0, !133, i64 32, !140, i64 64, !147, i64 72, !151, i64 104, !160, i64 152, !166, i64 160, !43, i64 168, !43, i64 169, !43, i64 170, !4, i64 172, !4, i64 176, !43, i64 180, !43, i64 181, !43, i64 182, !43, i64 183, !43, i64 184, !43, i64 185, !167, i64 188, !43, i64 192, !43, i64 193, !168, i64 200, !175, i64 208, !180, i64 232, !43, i64 236, !181, i64 240, !188, i64 632, !189, i64 640}
!133 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !134, i64 0, !139, i64 24}
!134 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !135, i64 0}
!135 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!138 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !10, i64 0}
!139 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !10, i64 0}
!140 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !141, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !142, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !143, i64 0}
!143 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !144, i64 0}
!144 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !145, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !146, i64 0}
!146 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !10, i64 0}
!147 = !{!"_ZTSN6hermes11StringTableE", !148, i64 0, !149, i64 8}
!148 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !10, i64 0}
!149 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !150, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!150 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !10, i64 0}
!151 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !152, i64 0}
!152 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !153, i64 0}
!153 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !154, i64 0, !156, i64 8}
!154 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !155, i64 0}
!155 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!156 = !{!"_ZTSSt15_Rb_tree_header", !157, i64 0, !88, i64 32}
!157 = !{!"_ZTSSt18_Rb_tree_node_base", !158, i64 0, !159, i64 8, !159, i64 16, !159, i64 24}
!158 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!159 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!160 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !161, i64 0}
!161 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !162, i64 0}
!162 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !163, i64 0}
!163 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !164, i64 0}
!164 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !165, i64 0}
!165 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !166, i64 0}
!166 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !10, i64 0}
!167 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!168 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !169, i64 0}
!169 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !170, i64 0}
!170 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !171, i64 0}
!171 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !172, i64 0}
!172 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !173, i64 0}
!173 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !174, i64 0}
!174 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !10, i64 0}
!175 = !{!"_ZTSSt6vectorIjSaIjEE", !176, i64 0}
!176 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !177, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !178, i64 0}
!178 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!179 = !{!"p1 int", !10, i64 0}
!180 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!181 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !43, i64 0, !43, i64 1, !43, i64 2, !43, i64 3, !43, i64 4, !43, i64 5, !43, i64 6, !43, i64 7, !43, i64 8, !43, i64 9, !182, i64 16, !182, i64 168, !183, i64 320}
!182 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !43, i64 0, !183, i64 8, !183, i64 80}
!183 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !184, i64 0}
!184 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !185, i64 0}
!185 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !186, i64 8}
!186 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !187, i64 0}
!187 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!188 = !{!"_ZTSN6hermes20OptimizationSettingsE", !43, i64 0, !43, i64 1, !43, i64 2, !43, i64 3, !43, i64 4, !43, i64 5}
!189 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !190, i64 0}
!190 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !191, i64 0, !67, i64 8}
!191 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !10, i64 0}
!192 = !{}
!193 = !{i64 8}
!194 = !{!195, !196, i64 17}
!195 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !196, i64 16, !196, i64 17}
!196 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!197 = !{!5, !5, i64 0}
!198 = !{!195, !196, i64 16}
!199 = !{!100, !43, i64 64}
!200 = !{!56, !15, i64 0}
!201 = !{!181, !43, i64 9}
!202 = !{i8 0, i8 2}
!203 = !{!56, !20, i64 160}
!204 = !{!205, !43, i64 232}
!205 = !{!"_ZTSN6hermes9ScopeDescE", !26, i64 0, !20, i64 40, !206, i64 48, !64, i64 128, !41, i64 144, !211, i64 152, !43, i64 232}
!206 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes9ScopeDescELj8EEE", !207, i64 0, !210, i64 16}
!207 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes9ScopeDescEEE", !208, i64 0}
!208 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EEE", !209, i64 0}
!209 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes9ScopeDescEvEE", !34, i64 0}
!210 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes9ScopeDescELj8EEE", !5, i64 0}
!211 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes8VariableELj8EEE", !212, i64 0, !215, i64 16}
!212 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes8VariableEEE", !213, i64 0}
!213 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes8VariableELb1EEE", !214, i64 0}
!214 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes8VariableEvEE", !34, i64 0}
!215 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes8VariableELj8EEE", !5, i64 0}
!216 = !{!217, !53, i64 48}
!217 = !{!"_ZTSN6hermes6ESTree15IfStatementNodeE", !52, i64 0, !53, i64 48, !53, i64 56, !53, i64 64}
!218 = !{!217, !53, i64 56}
!219 = !{!217, !53, i64 64}
!220 = !{!221, !53, i64 56}
!221 = !{!"_ZTSN6hermes6ESTree18ForInStatementNodeE", !114, i64 0, !53, i64 56, !53, i64 64, !53, i64 72}
!222 = !{!223, !53, i64 48}
!223 = !{!"_ZTSN6hermes6ESTree22VariableDeclaratorNodeE", !45, i64 0, !53, i64 48, !53, i64 56}
!224 = !{!221, !53, i64 64}
!225 = !{!221, !53, i64 72}
!226 = !{!227, !53, i64 64}
!227 = !{!"_ZTSN6hermes6ESTree18ForOfStatementNodeE", !114, i64 0, !53, i64 56, !53, i64 64, !53, i64 72, !43, i64 80}
!228 = distinct !{null}
!229 = distinct !{null, null}
!230 = !{!75, !75, i64 0}
!231 = !{!232, !232, i64 0}
!232 = !{!"p1 _ZTSN6hermes5irgen11ESTreeIRGen14IteratorRecordE", !10, i64 0}
!233 = !{!18, !18, i64 0}
!234 = !{!235, !59, i64 0}
!235 = !{!"_ZTSN6hermes5irgen14SurroundingTryE", !59, i64 0, !84, i64 8, !53, i64 16, !19, i64 24, !236, i64 32}
!236 = !{!"_ZTSSt8functionIFvPN6hermes6ESTree4NodeENS0_5irgen17ControlFlowChangeEPNS0_10BasicBlockEEE", !237, i64 0, !10, i64 24}
!237 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!238 = !{!235, !84, i64 8}
!239 = !{!235, !53, i64 16}
!240 = !{!236, !10, i64 24}
!241 = !{!237, !10, i64 16}
!242 = !{!227, !53, i64 56}
!243 = !{!227, !53, i64 72}
!244 = distinct !{null, null, null, null}
!245 = !{!85, !85, i64 0}
!246 = !{!247, !53, i64 48}
!247 = !{!"_ZTSN6hermes6ESTree19ReturnStatementNodeE", !52, i64 0, !53, i64 48}
!248 = !{!74, !85, i64 144}
!249 = !{!34, !4, i64 8}
!250 = !{!34, !4, i64 12}
!251 = !{!252, !53, i64 56}
!252 = !{!"_ZTSN6hermes6ESTree19SwitchStatementNodeE", !52, i64 0, !253, i64 48, !53, i64 56, !254, i64 64}
!253 = !{!"_ZTSN6hermes6ESTree25SwitchStatementDecorationE", !102, i64 0}
!254 = !{!"_ZTSN4llvh12simple_ilistIN6hermes6ESTree4NodeEJEEE", !255, i64 0}
!255 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes6ESTree4NodeELb0ELb0EvEEEE", !47, i64 0}
!256 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!257 = !{!258, !53, i64 48}
!258 = !{!"_ZTSN6hermes6ESTree14SwitchCaseNodeE", !45, i64 0, !53, i64 48, !254, i64 56}
!259 = !{ptr @_ZN6hermes5irgen11ESTreeIRGen7genBodyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE}
!260 = !{!261, !54, i64 48}
!261 = !{!"_ZTSN6hermes6ESTree23VariableDeclarationNodeE", !45, i64 0, !54, i64 48, !254, i64 56}
!262 = !{!223, !53, i64 56}
!263 = !{!53, !53, i64 0}
!264 = !{!265, !54, i64 48}
!265 = !{!"_ZTSN6hermes6ESTree14IdentifierNodeE", !45, i64 0, !54, i64 48, !53, i64 56, !43, i64 64}
!266 = !{!69, !54, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"p1 _ZTSN6hermes9ParameterE", !10, i64 0}
!269 = !{!270, !53, i64 64}
!270 = !{!"_ZTSN6hermes6ESTree21ImportDeclarationNodeE", !45, i64 0, !254, i64 48, !53, i64 64, !254, i64 72, !54, i64 88}
!271 = !{!91, !91, i64 0}
!272 = !{!273, !53, i64 48}
!273 = !{!"_ZTSN6hermes6ESTree26ImportDefaultSpecifierNodeE", !45, i64 0, !53, i64 48}
!274 = !{!61, !62, i64 0}
!275 = !{!61, !4, i64 16}
!276 = !{!54, !54, i64 0}
!277 = !{!"branch_weights", i32 1999, i32 1}
!278 = !{!"branch_weights", i32 1, i32 0}
!279 = distinct !{!279, !280}
!280 = !{!"llvm.loop.mustprogress"}
!281 = !{!282, !94, i64 8}
!282 = !{!"_ZTSSt4pairIN6hermes10IdentifierEPNS0_19ScopedHashTableNodeIS1_PNS0_5ValueEEEE", !69, i64 0, !94, i64 8}
!283 = !{!284, !91, i64 8}
!284 = !{!"_ZTSN6hermes19ScopedHashTableNodeINS_10IdentifierEPNS_5ValueEEE", !69, i64 0, !91, i64 8, !94, i64 16, !94, i64 24, !4, i64 32}
!285 = !{!286, !53, i64 48}
!286 = !{!"_ZTSN6hermes6ESTree28ImportNamespaceSpecifierNodeE", !45, i64 0, !53, i64 48}
!287 = !{!288, !53, i64 56}
!288 = !{!"_ZTSN6hermes6ESTree19ImportSpecifierNodeE", !45, i64 0, !53, i64 48, !53, i64 56, !54, i64 64}
!289 = !{!288, !53, i64 48}
!290 = !{!291, !53, i64 48}
!291 = !{!"_ZTSN6hermes6ESTree26ExportNamedDeclarationNodeE", !45, i64 0, !53, i64 48, !254, i64 56, !53, i64 72, !54, i64 80}
!292 = !{!293, !53, i64 72}
!293 = !{!"_ZTSN6hermes6ESTree23FunctionDeclarationNodeE", !294, i64 0, !53, i64 72, !254, i64 80, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !43, i64 128, !43, i64 129}
!294 = !{!"_ZTSN6hermes6ESTree16FunctionLikeNodeE", !45, i64 0, !295, i64 48}
!295 = !{!"_ZTSN6hermes6ESTree22FunctionLikeDecorationE", !76, i64 0, !296, i64 8, !297, i64 12, !43, i64 16}
!296 = !{!"_ZTSN6hermes6ESTree10StrictnessE", !5, i64 0}
!297 = !{!"_ZTSN6hermes16SourceVisibilityE", !5, i64 0}
!298 = !{!291, !53, i64 72}
!299 = !{!300, !53, i64 56}
!300 = !{!"_ZTSN6hermes6ESTree19ExportSpecifierNodeE", !45, i64 0, !53, i64 48, !53, i64 56}
!301 = !{!300, !53, i64 48}
!302 = !{!303, !53, i64 48}
!303 = !{!"_ZTSN6hermes6ESTree28ExportDefaultDeclarationNodeE", !45, i64 0, !53, i64 48}
!304 = !{!305, !53, i64 48}
!305 = !{!"_ZTSN6hermes6ESTree24ExportAllDeclarationNodeE", !45, i64 0, !53, i64 48, !54, i64 56}
!306 = !{!26, !27, i64 0}
!307 = !{!308, !309, i64 0}
!308 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !309, i64 0, !309, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!309 = !{!"any p2 pointer", !10, i64 0}
!310 = !{!308, !309, i64 8}
!311 = !{!308, !4, i64 16}
!312 = !{!308, !4, i64 20}
!313 = !{!308, !4, i64 24}
!314 = !{!315, !315, i64 0}
!315 = !{!"p1 _ZTSN6hermes7LiteralE", !10, i64 0}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_: argument 0"}
!318 = distinct !{!318, !"_ZN4llvh15SmallPtrSetImplIPN6hermes7LiteralEE6insertES3_"}
!319 = !{!10, !10, i64 0}
!320 = distinct !{!320, !280}
!321 = !{!322, !322, i64 0}
!322 = !{!"_ZTSN6hermes5irgen17ControlFlowChangeE", !5, i64 0}
!323 = !{!324, !75, i64 0}
!324 = !{!"_ZTSZZN6hermes5irgen11ESTreeIRGen17genForOfStatementEPNS_6ESTree18ForOfStatementNodeEENK3$_0clEvEUlPNS2_4NodeENS0_17ControlFlowChangeEPNS_10BasicBlockEE_", !75, i64 0, !232, i64 8, !18, i64 16}
!325 = !{!324, !18, i64 16}
!326 = !{!324, !232, i64 8}
!327 = !{!328, !328, i64 0}
!328 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!329 = !{i64 0, i64 8, !230, i64 8, i64 8, !231, i64 16, i64 8, !233}
end_hunk_0
