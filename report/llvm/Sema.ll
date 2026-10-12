Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Sema?download=true
inline.NumInlined: 13880
inline.NumDeleted: 7671
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5clang4Sema17emitDeferredDiagsEv:bb.a

bb.y:                                             ; preds = %.lr.ph
  %i.fu = load ptr, ptr %i.s, align 8, !tbaa !1726, !nonnull !734, !align !735
  %i.fv = call noundef i32 @_ZN5clang4Sema17getEmissionStatusEPKNS_12FunctionDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.fu, ptr noundef nonnull %i.fo, i1 noundef zeroext true) #27
  %i.fw = icmp eq i32 %i.fv, 0
  %i.fx = zext i1 %i.fw to i8
  store i8 %i.fx, ptr %i.am, align 8, !tbaa !1743
  call fastcc void @_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter9checkFuncEN5clang14SourceLocationEPNS1_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(280) %2, i32 0, ptr noundef %i.fo)
  br label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter17checkRecordedDeclEPN5clang4DeclE.exit

bb.z:                                             ; preds = %.lr.ph
  %i.fy = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.fo) #27 ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i12, label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter17checkRecordedDeclEPN5clang4DeclE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = call i64 @_ZN5clang24OMPDeclareTargetDeclAttr13getDeviceTypeEPKNS_9ValueDeclE(ptr noundef nonnull %i.fo) #27 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fz to i32
  %i.ga = and i64 %i.fz, 4294967296
  %i.gb = icmp ne i64 %i.ga, 0
  %.sroa.0.0.extract.trunc.off.i.i = add i32 %.sroa.0.0.extract.trunc.i.i, -1
  %switch.i.i = icmp ult i32 %.sroa.0.0.extract.trunc.off.i.i, 2
  %or.cond.i.i = and i1 %i.gb, %switch.i.i
  br i1 %or.cond.i.i, label %.critedge8.i.i, label %.critedge.i.i

.critedge8.i.i:                                   ; preds = %bb.aa
  %i.gc = load i32, ptr %i.ao, align 4, !tbaa !1725
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.ao, align 4, !tbaa !1725
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull %i.fy)
  %i.ge = load i32, ptr %i.ao, align 4, !tbaa !1725
  %i.gf = add i32 %i.ge, -1
  store i32 %i.gf, ptr %i.ao, align 4, !tbaa !1725
  br label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter17checkRecordedDeclEPN5clang4DeclE.exit

.critedge.i.i:                                    ; preds = %bb.aa
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull %i.fy)
  br label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter17checkRecordedDeclEPN5clang4DeclE.exit

_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter17checkRecordedDeclEPN5clang4DeclE.exit: ; preds = %bb.y, %bb.z, %.critedge8.i.i, %.critedge.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %.not8 = icmp eq ptr %i.gg, %i.as
  br i1 %.not8, label %._crit_edge, label %.lr.ph

bb.ab:                                            ; preds = %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitterD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema25ActOnEndOfTranslationUnitEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %1 = alloca %"class.llvm::SmallVector.2413", align 8 ; 9 uses
  %i.f = alloca ptr, align 8                      ; 13 uses
  %2 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 4 uses
  %7 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.llvm::SmallVector.881", align 8 ; 10 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %16 = alloca %"class.llvm::SmallPtrSet.1942", align 8 ; 10 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %18 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %19 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.m = alloca ptr, align 8                      ; 17 uses
  %22 = alloca %"class.clang::SourceRange", align 4 ; 9 uses
  %23 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.p = alloca ptr, align 8                      ; 13 uses
  %28 = alloca %"class.clang::SourceRange", align 4 ; 8 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %31 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %33 = alloca %"class.llvm::SmallVector.2015", align 8 ; 12 uses
  %34 = alloca %class.anon.2020, align 8          ; 5 uses
  %35 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %36 = alloca %"class.llvm::DenseMap.2028", align 8 ; 9 uses
  %37 = alloca %"class.llvm::DenseMap.2028", align 8 ; 7 uses
  %38 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %39 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !741, !nonnull !734, !align !735
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 760
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2673
  %.not610 = icmp eq ptr %i.v, null
  br i1 %.not610, label %bb.b, label %bb.lj

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1401
  %.not = icmp eq i32 %i.x, 1
  br i1 %.not, label %_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE6insertIPS5_vEESt15_Deque_iteratorIS5_RS5_S9_ESA_IS5_RKS5_PSD_ET_SH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1423
  tail call void @_ZN5clang8SemaObjC35DiagnoseUseOfUnimplementedSelectorsEv(ptr noundef nonnull align 8 dereferenceable(328) %i.z) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11344
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !971 ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 11336
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !970
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2675
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2771
  %i.ak = icmp eq i32 %i.aj, 7
  %i.al = select i1 %i.ak, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi i32 [ 1, %bb.c ], [ %i.al, %bb.d ]
  tail call void @_ZN5clang4Sema33ActOnEndOfTranslationUnitFragmentENS_14TUFragmentKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef %i.am)
  tail call void @_ZN5clang4Sema32CheckDelayedMemberExceptionSpecsEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE6insertIPS5_vEESt15_Deque_iteratorIS5_RS5_S9_ESA_IS5_RKS5_PSD_ET_SH_.exit: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13808
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13856
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1702, !noalias !2772
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 13880
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1449, !noalias !2772 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 13888
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !970 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 13896 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !971
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  store ptr %i.ap, ptr %8, align 8, !tbaa !1702, !alias.scope !2773, !noalias !2774
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !1448, !noalias !2775 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !1450, !alias.scope !2773, !noalias !2774
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !1451, !alias.scope !2773, !noalias !2774
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.ar, ptr %i.bc, align 8, !tbaa !1449, !alias.scope !2773, !noalias !2774
  call void @_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE19_M_range_insert_auxIPS5_EEvSt15_Deque_iteratorIS5_RS5_S9_ET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(32) %8, ptr noundef %i.at, ptr noundef %i.ax), !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  store i32 0, ptr %i.au, align 8, !tbaa !971
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !736, !nonnull !734, !align !735
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 140737488355328
  %.not221 = icmp eq i64 %i.bh, 0
  br i1 %.not221, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE6insertIPS5_vEESt15_Deque_iteratorIS5_RS5_S9_ESA_IS5_RKS5_PSD_ET_SH_.exit
  %i.bi = call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.482, i64 28, ptr null, i64 0) #27 ; 2 uses
  call void @_ZN5clang4Sema28PerformPendingInstantiationsEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false, i1 noundef zeroext true) #27
  %.not.i266 = icmp eq ptr %i.bi, null
  br i1 %.not.i266, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.bi) #27
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %bb.g, %bb.f, %_ZNSt5dequeISt4pairIPN5clang9ValueDeclENS1_14SourceLocationEESaIS5_EE6insertIPS5_vEESt15_Deque_iteratorIS5_RS5_S9_ESA_IS5_RKS5_PSD_ET_SH_.exit, %bb.e
  call void @_ZN5clang4Sema35DiagnoseUnterminatedPragmaAlignPackEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  call void @_ZN5clang4Sema35DiagnoseUnterminatedPragmaAttributeEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1426
  call void @_ZN5clang10SemaOpenMP39DiagnoseUnterminatedOpenMPDeclareTargetEv(ptr noundef nonnull align 8 dereferenceable(552) %i.bk) #27
  call void @_ZN5clang4Sema38DiagnosePrecisionLossInComplexDivisionEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #27
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2832 ; 14 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2872 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !971 ; 8 uses
  %i.bo = ashr i32 %i.bn, 2                       ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm14TimeTraceScopeD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 4 uses
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i.i.i": ; preds = %bb.h, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.h ] ; 9 uses
  %.0112.i.i.i.i = phi i32 [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.cg, %bb.h ] ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !970
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i.i.i
  %i.bs = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !2777
  %i.bt = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.bs)
  br i1 %i.bt, label %.loopexit.loopexit.split.loop.exit.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit65.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit65.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i.i.i"
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !970
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i.i
  %.0.i.i64.i.i.i.i = getelementptr i8, ptr %i.bv, i64 8
  %i.bw = load ptr, ptr %.0.i.i64.i.i.i.i, align 8, !tbaa !2777
  %i.bx = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.bw)
  br i1 %i.bx, label %.loopexit.loopexit.split.loop.exit117.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit67.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit67.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit65.i.i.i.i"
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !970
  %i.bz = getelementptr [8 x i8], ptr %i.by, i64 %indvars.iv.i.i.i.i
  %.0.i.i66.i.i.i.i = getelementptr i8, ptr %i.bz, i64 16
  %i.ca = load ptr, ptr %.0.i.i66.i.i.i.i, align 8, !tbaa !2777
  %i.cb = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.ca)
  br i1 %i.cb, label %.loopexit.loopexit.split.loop.exit119.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit69.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit69.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit67.i.i.i.i"
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !970
  %i.cd = getelementptr [8 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.i
  %.0.i.i68.i.i.i.i = getelementptr i8, ptr %i.cd, i64 24
  %i.ce = load ptr, ptr %.0.i.i68.i.i.i.i, align 8, !tbaa !2777
  %i.cf = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.ce)
  br i1 %i.cf, label %.loopexit.loopexit.split.loop.exit121.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit69.i.i.i.i"
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %i.cg = add nsw i32 %.0112.i.i.i.i, -1
  %i.ch = icmp sgt i32 %.0112.i.i.i.i, 1
  br i1 %i.ch, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i.i.i", label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !2627

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %i.ci = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN4llvm14TimeTraceScopeD2Ev.exit
  %.sroa.087.0.lcssa.i.i.i.i = phi i32 [ 0, %_ZN4llvm14TimeTraceScopeD2Ev.exit ], [ %i.ci, %._crit_edge.loopexit.i.i.i.i ] ; 8 uses
  %i.cj = sub nsw i32 %i.bn, %.sroa.087.0.lcssa.i.i.i.i
  switch i32 %i.cj, label %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit" [
    i32 3, label %40
    i32 2, label %bb.j
    i32 1, label %bb.m
  ]

40:                                               ; preds = %._crit_edge.i.i.i.i
  %41 = icmp slt i32 %.sroa.087.0.lcssa.i.i.i.i, 0
  br i1 %41, label %bb.i, label %46

bb.i:                                             ; preds = %40
  %42 = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %43 = load i32, ptr %i.ck, align 8, !tbaa !971
  %i.cl = zext i32 %43 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %42, i64 %i.cl
  %44 = sext i32 %.sroa.087.0.lcssa.i.i.i.i to i64
  %45 = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %44
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i"

46:                                               ; preds = %40
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %48 = load ptr, ptr %47, align 8, !tbaa !970
  %49 = zext nneg i32 %.sroa.087.0.lcssa.i.i.i.i to i64
  %50 = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %49
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i": ; preds = %46, %bb.i
  %.0.i.i70.i.i.i.i = phi ptr [ %45, %bb.i ], [ %50, %46 ]
  %51 = load ptr, ptr %.0.i.i70.i.i.i.i, align 8, !tbaa !2777
  %52 = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %51)
  br i1 %52, label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i", label %53

53:                                               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i"
  %54 = add nsw i32 %.sroa.087.0.lcssa.i.i.i.i, 1
  br label %bb.j

bb.j:                                             ; preds = %53, %._crit_edge.i.i.i.i
  %.sroa.087.1.i.i.i.i = phi i32 [ %54, %53 ], [ %.sroa.087.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 5 uses
  %i.cn = icmp slt i32 %.sroa.087.1.i.i.i.i, 0
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !971
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cr
  %i.ct = sext i32 %.sroa.087.1.i.i.i.i to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !970
  %i.cx = zext nneg i32 %.sroa.087.1.i.i.i.i to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i": ; preds = %bb.l, %bb.k
  %.0.i.i72.i.i.i.i = phi ptr [ %i.cu, %bb.k ], [ %i.cy, %bb.l ]
  %i.cz = load ptr, ptr %.0.i.i72.i.i.i.i, align 8, !tbaa !2777
  %i.da = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.cz)
  br i1 %i.da, label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i", label %55

55:                                               ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i"
  %56 = add nsw i32 %.sroa.087.1.i.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %55, %._crit_edge.i.i.i.i
  %.sroa.087.2.i.i.i.i = phi i32 [ %56, %55 ], [ %.sroa.087.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.db = icmp slt i32 %.sroa.087.2.i.i.i.i, 0
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !971
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df
  %i.dh = sext i32 %.sroa.087.2.i.i.i.i to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.dh
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i"

bb.o:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !970
  %i.dl = zext nneg i32 %.sroa.087.2.i.i.i.i to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i": ; preds = %bb.o, %bb.n
  %.0.i.i74.i.i.i.i = phi ptr [ %i.di, %bb.n ], [ %i.dm, %bb.o ]
  %i.dn = load ptr, ptr %.0.i.i74.i.i.i.i, align 8, !tbaa !2777
  %i.do = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.dn)
  br i1 %i.do, label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i", label %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit"

.loopexit.loopexit.split.loop.exit.i.i.i.i:       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i.i.i"
  %indvars113.le129.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  br label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i"

.loopexit.loopexit.split.loop.exit117.i.i.i.i:    ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit65.i.i.i.i"
  %indvars113.le.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dp = or disjoint i32 %indvars113.le.i.i.i.i, 1
  br label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i"

.loopexit.loopexit.split.loop.exit119.i.i.i.i:    ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit67.i.i.i.i"
  %indvars113.le125.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dq = or disjoint i32 %indvars113.le125.i.i.i.i, 2
  br label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i"

.loopexit.loopexit.split.loop.exit121.i.i.i.i:    ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit69.i.i.i.i"
  %indvars113.le127.i.i.i.i = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.dr = or disjoint i32 %indvars113.le127.i.i.i.i, 3
  br label %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i"

"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i": ; preds = %.loopexit.loopexit.split.loop.exit121.i.i.i.i, %.loopexit.loopexit.split.loop.exit119.i.i.i.i, %.loopexit.loopexit.split.loop.exit117.i.i.i.i, %.loopexit.loopexit.split.loop.exit.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i"
  %.sroa.021.0.in.sroa.speculated.i.i.i.i = phi i32 [ %.sroa.087.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit73.i.i.i.i" ], [ %i.dr, %.loopexit.loopexit.split.loop.exit121.i.i.i.i ], [ %.sroa.087.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i" ], [ %.sroa.087.0.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit71.i.i.i.i" ], [ %i.dq, %.loopexit.loopexit.split.loop.exit119.i.i.i.i ], [ %i.dp, %.loopexit.loopexit.split.loop.exit117.i.i.i.i ], [ %indvars113.le129.i.i.i.i, %.loopexit.loopexit.split.loop.exit.i.i.i.i ] ; 5 uses
  %i.ds = icmp eq i32 %.sroa.021.0.in.sroa.speculated.i.i.i.i, %i.bn
  br i1 %i.ds, label %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i"
  %.sroa.016.042.i.i = add nsw i32 %.sroa.021.0.in.sroa.speculated.i.i.i.i, 1 ; 2 uses
  %.not43.i.i = icmp eq i32 %.sroa.016.042.i.i, %i.bn
  br i1 %.not43.i.i, label %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2840 ; 3 uses
  %i.dv = sext i32 %.sroa.016.042.i.i to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.t ] ; 5 uses
  %.sroa.027.045.i.i = phi i32 [ %.sroa.021.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.027.1.i.i, %bb.t ] ; 6 uses
  %.sroa.016.0.in44.i.i = phi i32 [ %.sroa.021.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i ], [ %i.fa, %bb.t ]
  %i.dw = icmp slt i32 %.sroa.016.0.in44.i.i, -1
  br i1 %i.dw, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i": ; preds = %bb.p
  %i.dx = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.dy = load i32, ptr %i.du, align 8, !tbaa !971
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !2777
  %i.ed = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.ec)
  br i1 %i.ed, label %bb.t, label %bb.q

"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.thread.i.i": ; preds = %bb.p
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !970
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2777
  %i.eh = call fastcc noundef zeroext i1 @_ZL22ShouldRemoveFromUnusedPN5clang4SemaEPKNS_14DeclaratorDeclE(ptr noundef nonnull %0, ptr noundef %i.eg)
  br i1 %i.eh, label %bb.t, label %.thread.i.i

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i"
  %i.ei = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.ej = load i32, ptr %i.du, align 8, !tbaa !971
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit.i.i

.thread.i.i:                                      ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.thread.i.i"
  %i.em = load ptr, ptr %i.dt, align 8, !tbaa !970
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit.i.i

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit.i.i: ; preds = %.thread.i.i, %bb.q
  %.pn.i.i = phi ptr [ %i.el, %bb.q ], [ %i.em, %.thread.i.i ]
  %.0.i.i.i = getelementptr inbounds [8 x i8], ptr %.pn.i.i, i64 %indvars.iv.i.i
  %i.en = load ptr, ptr %.0.i.i.i, align 8, !tbaa !2777
  %i.eo = icmp slt i32 %.sroa.027.045.i.i, 0
  br i1 %i.eo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit.i.i
  %i.ep = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.eq = load i32, ptr %i.du, align 8, !tbaa !971
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.er
  %i.et = sext i32 %.sroa.027.045.i.i to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.et
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit12.i.i

bb.s:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit.i.i
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !970
  %i.ew = zext nneg i32 %.sroa.027.045.i.i to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ew
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit12.i.i

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit12.i.i: ; preds = %bb.s, %bb.r
  %.0.i11.i.i = phi ptr [ %i.eu, %bb.r ], [ %i.ex, %bb.s ]
  store ptr %i.en, ptr %.0.i11.i.i, align 8, !tbaa !2777
  %i.ey = add nsw i32 %.sroa.027.045.i.i, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit12.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i"
  %.sroa.027.1.i.i = phi i32 [ %.sroa.027.045.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.i.i" ], [ %i.ey, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit12.i.i ], [ %.sroa.027.045.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit.thread.i.i" ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ez = trunc nsw i64 %indvars.iv.next.i.i to i32
  %.not.i.i = icmp eq i32 %i.bn, %i.ez
  %i.fa = trunc nsw i64 %indvars.iv.i.i to i32
  br i1 %.not.i.i, label %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit", label %bb.p, !llvm.loop !2628

"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit": ; preds = %bb.t, %._crit_edge.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i", %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i", %.preheader.i.i
  %.sroa.027.2.i.i = phi i32 [ %i.bn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN5clang4Sema25ActOnEndOfTranslationUnitEvE3$_0EclINS2_10LazyVectorIPKNS2_14DeclaratorDeclENS2_18ExternalSemaSourceEXadL_ZNSB_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplISA_EEEELj2ELj2EE8iteratorEEEbT_.exit75.i.i.i.i" ], [ %i.bn, %"_ZSt9__find_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0EEET_SI_SI_T0_.exit.i.i" ], [ %i.bn, %._crit_edge.i.i.i.i ], [ %.sroa.021.0.in.sroa.speculated.i.i.i.i, %.preheader.i.i ], [ %.sroa.027.1.i.i, %bb.t ] ; 4 uses
  %i.fb = load i32, ptr %i.bm, align 8, !tbaa !971 ; 6 uses
  %i.fc = icmp slt i32 %.sroa.027.2.i.i, 0
  br i1 %i.fc, label %bb.u, label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i

bb.u:                                             ; preds = %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit"
  %i.fd = icmp slt i32 %i.fb, 0
  %i.fe = load ptr, ptr %i.bl, align 8, !tbaa !970 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2840 ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !971 ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fh ; 2 uses
  %i.fj = sext i32 %.sroa.027.2.i.i to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fj ; 3 uses
  br i1 %i.fd, label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit3.i, label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit3.i: ; preds = %bb.u
  %i.fl = sext i32 %i.fb to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fl ; 2 uses
  %.idx.neg = mul nsw i64 %i.fl, -8               ; 2 uses
  %.not613 = icmp eq i32 %i.fb, -1
  br i1 %.not613, label %bb.w, label %bb.v, !prof !1744

bb.v:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit3.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr nonnull align 8 %i.fm, i64 %.idx.neg, i1 false)
  %.pre.i.i = load ptr, ptr %i.bl, align 8, !tbaa !970
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit.i

bb.w:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit3.i
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !2777
  store ptr %i.fn, ptr %i.fk, align 8, !tbaa !2777
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit.i

_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit.i: ; preds = %bb.w, %bb.v
  %i.fo = phi ptr [ %.pre.i.i, %bb.v ], [ %i.fe, %bb.w ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx.neg
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = lshr exact i64 %i.fs, 3
  %i.fu = trunc i64 %i.ft to i32
  store i32 %i.fu, ptr %i.ff, align 8, !tbaa !971
  br label %_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE5eraseENS9_8iteratorESA_.exit

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i: ; preds = %bb.u
  %.idx612 = add i32 %i.fg, %.sroa.027.2.i.i
  store i32 %.idx612, ptr %i.ff, align 8, !tbaa !971
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !970 ; 2 uses
  br label %bb.y

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i: ; preds = %"_ZSt9remove_ifIN5clang10LazyVectorIPKNS0_14DeclaratorDeclENS0_18ExternalSemaSourceEXadL_ZNS5_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS4_EEEELj2ELj2EE8iteratorEZNS0_4Sema25ActOnEndOfTranslationUnitEvE3$_0ET_SE_SE_T0_.exit"
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !970 ; 3 uses
  %i.fz = zext nneg i32 %.sroa.027.2.i.i to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = icmp slt i32 %i.fb, 0
  br i1 %i.gb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i
  %i.gc = load ptr, ptr %i.bl, align 8, !tbaa !970
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2840
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !971
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gf
  %i.gh = sext i32 %i.fb to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gh
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit11.i

bb.y:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i
  %i.gj = phi ptr [ %i.fw, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i ], [ %i.fy, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i ] ; 2 uses
  %.0.i831.i = phi ptr [ %i.fw, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i ], [ %i.ga, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i ]
  %i.gk = phi ptr [ %i.fv, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.thread32.i ], [ %i.fx, %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit9.i ]
  %i.gl = zext nneg i32 %i.fb to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit11.i

_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit11.i: ; preds = %bb.y, %bb.x
  %i.gn = phi ptr [ %i.fy, %bb.x ], [ %i.gj, %bb.y ] ; 3 uses
  %.0.i830.i = phi ptr [ %i.ga, %bb.x ], [ %.0.i831.i, %bb.y ] ; 3 uses
  %i.go = phi ptr [ %i.fx, %bb.x ], [ %i.gk, %bb.y ] ; 2 uses
  %.0.i10.i = phi ptr [ %i.gi, %bb.x ], [ %i.gm, %bb.y ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !971
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gr
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %.0.i10.i to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 4 uses
  %i.gw = icmp sgt i64 %i.gv, 8
  br i1 %i.gw, label %bb.z, label %bb.aa, !prof !1373

bb.z:                                             ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit11.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i830.i, ptr nonnull align 8 %.0.i10.i, i64 %i.gv, i1 false)
  %.pre.i12.i = load ptr, ptr %i.go, align 8, !tbaa !970
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit13.i

bb.aa:                                            ; preds = %_ZNK5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EE8iteratordeEv.exit11.i
  %i.gx = icmp eq i64 %i.gv, 8
  br i1 %i.gx, label %bb.ab, label %_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit13.i

bb.ab:                                            ; preds = %bb.aa
  %i.gy = load ptr, ptr %.0.i10.i, align 8, !tbaa !2777
  store ptr %i.gy, ptr %.0.i830.i, align 8, !tbaa !2777
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit13.i

_ZN4llvm15SmallVectorImplIPKN5clang14DeclaratorDeclEE5eraseEPKS4_S7_.exit13.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gz = phi ptr [ %.pre.i12.i, %bb.z ], [ %i.gn, %bb.aa ], [ %i.gn, %bb.ab ]
  %i.ha = getelementptr inbounds i8, ptr %.0.i830.i, i64 %i.gv
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = lshr exact i64 %i.hd, 3
  %i.hf = trunc i64 %i.he to i32
end_hunk_0
