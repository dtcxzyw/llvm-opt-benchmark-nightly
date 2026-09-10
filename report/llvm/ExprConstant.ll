Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprConstant?download=true
inline.NumInlined: 27743
inline.NumDeleted: 6656
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK5clang4Expr21EvaluateAsInitializerERKNS_10ASTContextEPKNS_7VarDeclERNS0_10EvalResultEb:bb.a
  %i.gk = call fastcc noundef zeroext i1 @_ZL21CheckEvaluationResult25CheckEvaluationResultKindRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS3_8QualTypeERKNS3_7APValueENS3_4Expr16ConstantExprKindEPKNS3_9FieldDeclERN4llvm11SmallPtrSetIPKNS3_24MaterializeTemporaryExprELj8EEE(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(984) %8, i32 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i29, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(88) %5)
  %i.gl = load i8, ptr %i.gj, align 8, !tbaa !650, !range !517, !noundef !480
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread.i35
  %i.gn = load ptr, ptr %5, align 8, !tbaa !647
  call void @free(ptr noundef %i.gn) #24
  br label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39

_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39: ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.thread.i35, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.gk, label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39.thread, label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit

_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39.thread: ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit.i38, %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39
  %.val4.i = load i64, ptr %i.bm, align 8, !tbaa !682
  %i.go = icmp eq i64 %.val4.i, 0
  br i1 %i.go, label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39.thread
  %.val5.i = load ptr, ptr %i.bk, align 8, !tbaa !599
  %i.gp = getelementptr inbounds nuw i8, ptr %.val5.i, i64 96
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !686
  %i.gr = call ptr @_ZN5clang6interp5State7CCEDiagEPKNS_4ExprEjj(ptr noundef nonnull align 8 dereferenceable(984) %8, ptr noundef %i.gq, i32 noundef 2452, i32 noundef 0) #24 ; 5 uses
  %.val6.i = load i64, ptr %i.bm, align 8, !tbaa !682
  %i.gs = add i64 %.val6.i, 4294967295
  %.not.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i, label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !660 ; 2 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i.i40, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !661
  %i.gw = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gv) ; 2 uses
  store ptr %i.gw, ptr %i.gr, align 8, !tbaa !660
  br label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i

_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i, %bb.ac
  %i.gx = phi ptr [ %i.gw, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i ], [ %i.gt, %bb.ac ] ; 2 uses
  %i.gy = and i64 %i.gs, 4294967295
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  %i.ha = load i8, ptr %i.gx, align 8, !tbaa !673
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hb
  store i8 3, ptr %i.hc, align 1, !tbaa !508
  %i.hd = load ptr, ptr %i.gr, align 8, !tbaa !660 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i8, ptr %i.hd, align 8, !tbaa !673 ; 2 uses
  %i.hg = add i8 %i.hf, 1
  store i8 %i.hg, ptr %i.hd, align 8, !tbaa !673
  %i.hh = zext i8 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hh
  store i64 %i.gy, ptr %i.hi, align 8, !tbaa !513
  br label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit

.critedge.critedge:                               ; preds = %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EEC2ERNS_8EvalInfoE.exit
  %.not.i41 = icmp eq i32 %i.dj, -1
  br i1 %.not.i41, label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EED2Ev.exit42, label %bb.ad

bb.ad:                                            ; preds = %.critedge.critedge
  %i.hj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EE7cleanupERNS_8EvalInfoEbj(ptr noundef nonnull align 8 dereferenceable(984) %8, i1 noundef zeroext false, i32 noundef %i.dj), !inline_history !4 ; 0 uses
  br label %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EED2Ev.exit42

_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EED2Ev.exit42: ; preds = %.critedge.critedge, %bb.ad
  %i.hk = load ptr, ptr %i.s, align 8, !tbaa !607
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 144 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !605
  %i.hn = add i32 %i.hm, -1
  store i32 %i.hn, ptr %i.hl, align 8, !tbaa !605
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EED2Ev.exit42, %_ZN12_GLOBAL__N_19ScopeRAIIILNS_9ScopeKindE1EED2Ev.exit
  %i.ho = load ptr, ptr %i.db, align 8, !tbaa !603 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.dc
  br i1 %i.hp, label %_ZN12_GLOBAL__N_16LValueD2Ev.exit43, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.ho) #24
  br label %_ZN12_GLOBAL__N_16LValueD2Ev.exit43

_ZN12_GLOBAL__N_16LValueD2Ev.exit43:              ; preds = %.critedge, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit

_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit: ; preds = %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i, %bb.ab, %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39.thread, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %_ZNK5clang4Type10isVoidTypeEv.exit.i, %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39, %_ZN12_GLOBAL__N_16LValueD2Ev.exit43, %bb.d
  %.2 = phi i1 [ false, %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39 ], [ false, %_ZN12_GLOBAL__N_16LValueD2Ev.exit43 ], [ true, %_ZNK5clang4Type10isVoidTypeEv.exit.i ], [ false, %bb.d ], [ %i.ct, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i ], [ true, %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit39.thread ], [ true, %bb.ab ], [ true, %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit.i.i ]
  call void @_ZN12_GLOBAL__N_18EvalInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(984) dereferenceable(984) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not.i44 = icmp eq ptr %i.d, null
  br i1 %.not.i44, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.d) #24
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %_ZL23CheckConstantExpressionRN12_GLOBAL__N_18EvalInfoEN5clang14SourceLocationENS2_8QualTypeERKNS2_7APValueENS2_4Expr16ConstantExprKindE.exit, %bb.af
  ret i1 %.2
}

declare void @_ZN5clang7APValue10LValueBaseC1EPKNS_9ValueDeclEjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN5clang6interp7Context21evaluateAsInitializerERNS0_5StateEPKNS_7VarDeclEPKNS_4ExprERNS_7APValueE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang7VarDecl19evaluateDestructionERN4llvm15SmallVectorImplISt4pairINS_14SourceLocationENS_17PartialDiagnosticEEEE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.clang::Expr::EvalStatus", align 8 ; 9 uses
  %3 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %4 = alloca %"class.(anonymous namespace)::EvalInfo", align 8 ; 54 uses
  %5 = alloca %"class.clang::APValue", align 8    ; 4 uses
  %6 = alloca %"class.clang::APValue::LValueBase", align 8 ; 3 uses
  %7 = alloca %"class.clang::APValue", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !508 ; 4 uses
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !511
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !508
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !511
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16              ; 2 uses
  %i.k = add i8 %i.j, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #25
  %i.m = tail call i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.l, i64 %.sroa.0.0.copyload.i) #24
  %i.n = and i64 %i.m, -16
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !511
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i.i16 = load i64, ptr %i.q, align 8, !tbaa !508
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i16, -16
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !511
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 16
  %i.w = icmp eq i8 %i.v, 49
  br i1 %i.w, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = or i8 %i.y, 8
  store i8 %i.z, ptr %i.x, align 8
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.aa = icmp eq i8 %i.j, 49
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = or i8 %i.ac, 8
  store i8 %i.ad, ptr %i.ab, align 8
  br label %bb.r

.critedge:                                        ; preds = %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i8 0, ptr %2, align 8, !tbaa !617
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.ae, align 1, !tbaa !625
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 0, ptr %i.af, align 2, !tbaa !626
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !627
  %i.ah = tail call noundef zeroext i1 @_ZNK5clang7VarDecl25hasConstantInitializationEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24 ; 3 uses
  %i.ai = zext i1 %i.ah to i8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %3, align 8, !tbaa !631
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -2
  store i8 %i.am, ptr %i.ak, align 4
  %i.an = tail call noundef ptr @_ZNK5clang7VarDecl17getEvaluatedValueEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ao = tail call noundef ptr @_ZNK5clang7VarDecl17getEvaluatedValueEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24
  %i.ap = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.ao) #24 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.aq = call fastcc noundef zeroext i1 @_ZL22handleDefaultInitValueN5clang8QualTypeERNS_7APValueE(i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %3)
  br i1 %i.aq, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 2600
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !514, !nonnull !480, !align !481 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, 1
  %.not14 = icmp eq i64 %i.av, 0
  br i1 %.not14, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.aw = select i1 %i.ah, i32 0, i32 2
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.ax, align 8, !tbaa !533
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 0, ptr %i.ay, align 1, !tbaa !534
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 0, ptr %i.az, align 2, !tbaa !535
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aj, ptr %i.ba, align 8, !tbaa !529
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %i.bb, align 8, !tbaa !536
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 0, ptr %i.bc, align 8, !tbaa !537
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 0, ptr %i.bd, align 1, !tbaa !538
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_18EvalInfoE, i64 16), ptr %4, align 8, !tbaa !540
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = trunc nuw i64 %i.bk to i32
  store i32 %i.bl, ptr %i.bh, align 8, !tbaa !593
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i8 1, ptr %i.bm, align 4, !tbaa !594
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_114CallStackFrameE, i64 16), ptr %i.bn, align 8, !tbaa !540
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %4, ptr %i.bp, align 8, !tbaa !595
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.br, align 8, !tbaa !596
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !597
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr null, ptr %i.bt, align 8, !tbaa !598
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 160
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !599
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 168
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !600
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store i32 2, ptr %i.bg, align 4, !tbaa !601
  store i32 1, ptr %i.bx, align 8, !tbaa !602
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 2 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !603
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 212
  store i32 2, ptr %i.cb, align 4, !tbaa !604
  store i32 1, ptr %i.bz, align 8
  store i32 1, ptr %i.ca, align 8, !tbaa !605
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 224
  store i32 1, ptr %i.cc, align 8, !tbaa !606
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.cd, i8 0, i64 33, i1 false)
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !607
  store i32 1, ptr %i.bf, align 8, !tbaa !608
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 288
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !603
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 0, ptr %i.cg, align 8, !tbaa !605
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 284
  store i32 16, ptr %i.ch, align 4, !tbaa !604
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 800
  call void @_ZN5clang7APValue10LValueBaseC1EPKNS_9ValueDeclEjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef null, i32 noundef 0, i32 noundef 0) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 816
  store i32 0, ptr %i.cj, align 8, !tbaa !609
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 824
  store ptr null, ptr %i.ck, align 8, !tbaa !610
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 832
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 848
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !603
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 840
  store i32 0, ptr %i.cn, align 8, !tbaa !605
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 844
  store i32 6, ptr %i.co, align 4, !tbaa !604
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 928 ; 3 uses
  store i32 0, ptr %i.cq, align 8, !tbaa !597
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 936
  store ptr null, ptr %i.cr, align 8, !tbaa !598
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 944
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !599
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 952
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !600
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 960
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 976
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.cv, align 8, !tbaa !611
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.aw, ptr %i.cw, align 4, !tbaa !612
  store i8 %i.ai, ptr %i.ax, align 8, !tbaa !533
  %i.cx = call noundef nonnull align 8 dereferenceable(120) ptr @_ZNK5clang10ASTContext16getInterpContextEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.aj) #24
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  %i.cy = call noundef zeroext i1 @_ZN5clang6interp7Context19evaluateDestructionERNS0_5StateEPKNS_7VarDeclENS_7APValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.cx, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef nonnull %0, ptr nofree noundef nonnull align 8 dereferenceable(56) %5) #24 ; 2 uses
  %i.cz = load i32, ptr %5, align 8, !tbaa !631
  %switch.i = icmp ult i32 %i.cz, 2
  br i1 %switch.i, label %_ZN5clang7APValueD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #24
  br label %_ZN5clang7APValueD2Ev.exit

_ZN5clang7APValueD2Ev.exit:                       ; preds = %bb.i, %bb.j
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5clang7APValueD2Ev.exit
  %i.da = call noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8
  %i.dc = or i8 %i.db, 8
  store i8 %i.dc, ptr %i.da, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN5clang7APValueD2Ev.exit, %bb.k
  call void @_ZN12_GLOBAL__N_18EvalInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(984) dereferenceable(984) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.p

bb.m:                                             ; preds = %bb.h
  call void @_ZN5clang7APValue10LValueBaseC1EPKNS_9ValueDeclEjj(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #24
  call void @_ZN5clang7APValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.dd, align 8, !tbaa !674
  %i.de = load i64, ptr %6, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call fastcc noundef zeroext i1 @_ZL19EvaluateDestructionRKN5clang10ASTContextENS_7APValue10LValueBaseES3_NS_8QualTypeENS_14SourceLocationERNS_4Expr10EvalStatusEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.aj, i64 %i.de, ptr %i.dg, ptr nofree noundef align 8 dereferenceable(56) %7, i64 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %i.ah)
  %i.di = load i8, ptr %2, align 8, !range !517
  %i.dj = trunc nuw i8 %i.di to i1
  %not. = xor i1 %i.dh, true
  %i.dk = select i1 %not., i1 true, i1 %i.dj
  %i.dl = load i32, ptr %7, align 8, !tbaa !631
  %switch.i20 = icmp ult i32 %i.dl, 2
  br i1 %switch.i20, label %_ZN5clang7APValueD2Ev.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #24
  br label %_ZN5clang7APValueD2Ev.exit21

_ZN5clang7APValueD2Ev.exit21:                     ; preds = %bb.m, %bb.n
  br i1 %i.dk, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5clang7APValueD2Ev.exit21
  %i.dm = call noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100) %0) #24 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = or i8 %i.dn, 8
  store i8 %i.do, ptr %i.dm, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN5clang7APValueD2Ev.exit21, %bb.g, %bb.o, %bb.l
  %.2 = phi i1 [ %i.cy, %bb.l ], [ false, %bb.g ], [ true, %bb.o ], [ false, %_ZN5clang7APValueD2Ev.exit21 ]
  %i.dp = load i32, ptr %3, align 8, !tbaa !631
  %switch.i22 = icmp ult i32 %i.dp, 2
  br i1 %switch.i22, label %_ZN5clang7APValueD2Ev.exit23, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang7APValue24DestroyDataAndMakeUninitEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #24
  br label %_ZN5clang7APValueD2Ev.exit23

_ZN5clang7APValueD2Ev.exit23:                     ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %_ZN5clang7APValueD2Ev.exit23, %bb.e
  %.3 = phi i1 [ %.2, %_ZN5clang7APValueD2Ev.exit23 ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(23904) ptr @_ZNK5clang4Decl13getASTContextEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #7

declare i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang7VarDecl19ensureEvaluatedStmtEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang7VarDecl25hasConstantInitializationEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang7VarDecl17getEvaluatedValueEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN5clang7APValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL22handleDefaultInitValueN5clang8QualTypeERNS_7APValueE(i64 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %3 = alloca %"class.clang::APValue", align 8    ; 10 uses
  %4 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %5 = alloca %"class.clang::APValue", align 8    ; 9 uses
  %6 = alloca %"class.clang::APValue", align 8    ; 8 uses
  %7 = alloca %"class.clang::APValue", align 8    ; 7 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !631
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %0, -16
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !511 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !508
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !511 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16              ; 4 uses
  %i.l = add i8 %i.k, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, 3
  %.not.i7.i = icmp ne ptr %i.i, null
  %.not.i.not8.i = and i1 %.not.i7.i, %switch.i.i.i.i.i.i.i.i.i.i
  %i.m = and i8 %i.k, 62
  %spec.select.i.i.i = icmp eq i8 %i.m, 48
  %or.cond.i = and i1 %spec.select.i.i.i, %.not.i.not8.i
  br i1 %or.cond.i, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !638  ; 3 uses
end_hunk_0
