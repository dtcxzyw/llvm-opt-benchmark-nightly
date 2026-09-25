Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaInit?download=true
inline.NumInlined: 8999
inline.NumDeleted: 3745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang22InitializationSequence7PerformERNS_4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEN4llvm15MutableArrayRefIPNS_4ExprEEEPNS_8QualTypeE:bb.a
  store i64 %i.awg, ptr %26, align 8, !tbaa !1110
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hb, %bb.hc, %bb.ha, %bb.he, %.thread1160, %bb.hh, %bb.gx
  %i.awh = phi i64 [ %i.mw, %bb.hb ], [ %i.mw, %bb.hc ], [ %i.aun, %bb.ha ], [ %i.mw, %bb.he ], [ %i.awg, %.thread1160 ], [ %i.mw, %bb.hh ], [ %i.mw, %bb.gx ]
  %i.awi = phi i64 [ %i.mx, %bb.hb ], [ %i.mx, %bb.hc ], [ %i.aun, %bb.ha ], [ %i.mx, %bb.he ], [ %i.awg, %.thread1160 ], [ %i.mx, %bb.hh ], [ %i.mx, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  br label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread

bb.hu:                                            ; preds = %bb.be
  %i.awj = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.sroa.059.0.copyload = load i64, ptr %i.awj, align 8, !tbaa !713
  %i.awk = load i24, ptr %i.nb, align 8
  %i.awl = lshr i24 %i.awk, 9
  %i.awm = and i24 %i.awl, 3
  %i.awn = zext nneg i24 %i.awm to i32
  %i.awo = call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull %i.nb, i64 %.sroa.059.0.copyload, i32 noundef 62, i32 noundef %i.awn, ptr noundef null, i32 noundef 0) #25 ; 3 uses
  store i64 %i.awo, ptr %26, align 8, !tbaa !1110
  br label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread

bb.hv:                                            ; preds = %bb.be
  store i64 0, ptr %26, align 8, !tbaa !1368
  call fastcc void @_ZL33TryOrBuildParenListInitializationRN5clang4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEN4llvm8ArrayRefIPNS_4ExprEEERNS_22InitializationSequenceEbPNS_12ActionResultISB_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8084) %0, i1 noundef zeroext false, ptr noundef nonnull %26)
  %i.awp = load i64, ptr %26, align 8, !tbaa !1368 ; 37 uses
  %i.awq = and i64 %i.awp, -2                     ; 2 uses
  %i.awr = inttoptr i64 %i.awq to ptr             ; 2 uses
  %i.aws = icmp ne i64 %i.awq, 0
  %or.cond48 = and i1 %i.jd, %i.aws
  br i1 %or.cond48, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %.sroa.0.0.copyload.i928 = load i64, ptr %i.awt, align 8, !tbaa !713
  store i64 %.sroa.0.0.copyload.i928, ptr %6, align 8, !tbaa !713
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.val = load i32, ptr %2, align 8, !tbaa !1162
  switch i32 %.val, label %bb.hy [
    i32 7, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 6, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 22, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 3, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 4, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 8, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 0, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 10, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 11, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 12, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 13, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 16, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 5, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 14, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 15, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 17, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 18, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 2, label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
    i32 1, label %bb.hz
    i32 20, label %bb.hz
    i32 9, label %bb.hz
    i32 19, label %bb.hz
    i32 21, label %bb.hz
  ]

bb.hy:                                            ; preds = %bb.hx
  unreachable

bb.hz:                                            ; preds = %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx
  %i.awu = call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef %i.awr) #25 ; 3 uses
  store i64 %i.awu, ptr %26, align 8, !tbaa !1110
  br label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread

bb.ia:                                            ; preds = %bb.be
  %i.awv = load ptr, ptr %i.kv, align 8, !tbaa !710, !nonnull !711, !align !712
  %i.aww = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.0.copyload.i.i.i.i.i931 = load i64, ptr %i.aww, align 8
  %i.awx = and i64 %.0.copyload.i.i.i.i.i931, -16
  %i.awy = inttoptr i64 %i.awx to ptr
  %i.awz = load ptr, ptr %i.awy, align 16, !tbaa !716
  %i.axa = ptrtoint ptr %i.awz to i64
  %i.axb = and i64 %i.axa, -8
  %i.axc = call noundef ptr @_ZN5clang16ImplicitCastExpr6CreateERKNS_10ASTContextENS_8QualTypeENS_8CastKindEPNS_4ExprEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_13ExprValueKindENS_17FPOptionsOverrideE(ptr noundef nonnull align 8 dereferenceable(23904) %i.awv, i64 %i.axb, i32 noundef 4, ptr noundef %i.nb, ptr noundef null, i32 noundef 0, i64 0) #25
  %i.axd = ptrtoint ptr %i.axc to i64             ; 3 uses
  store i64 %i.axd, ptr %26, align 8, !tbaa !1368
  br label %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread

_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread: ; preds = %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gs, %bb.gu, %_ZNK5clang10ASTContext24getAsIncompleteArrayTypeENS_8QualTypeE.exit868, %bb.ft, %bb.fr, %bb.fs, %bb.dp, %bb.do, %bb.dn, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit774, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cr, %bb.cq, %.critedge32, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %bb.hx, %.thread1139, %bb.eo, %bb.ee, %bb.bx, %bb.by, %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit, %_ZN4llvm5APIntD2Ev.exit, %bb.et, %bb.es, %bb.hz, %bb.fq, %bb.bg, %bb.bh, %bb.ia, %bb.hu, %bb.ht, %bb.gd, %_ZN5clang27ObjCIndirectCopyRestoreExprC2EPNS_4ExprENS_8QualTypeEb.exit, %bb.fx, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %_ZNK5clang18InitializationKind20hasParenOrBraceRangeEv.exit, %bb.ei, %bb.eh, %bb.eg, %bb.cw, %bb.cv, %bb.cu, %bb.cc, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit.thread, %bb.br, %bb.be
  %i.axe = phi i64 [ %i.aor, %bb.gs ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.re, %bb.by ], [ %i.mw, %bb.be ], [ %i.re, %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit ], [ %i.mw, %bb.eo ], [ %i.awu, %bb.hz ], [ %i.awo, %bb.hu ], [ %i.awh, %bb.ht ], [ %i.mw, %_ZNK5clang10ASTContext24getAsIncompleteArrayTypeENS_8QualTypeE.exit868 ], [ %i.aoh, %bb.gd ], [ %i.aod, %_ZN5clang27ObjCIndirectCopyRestoreExprC2EPNS_4ExprENS_8QualTypeEb.exit ], [ %i.mw, %bb.fx ], [ %i.mw, %bb.fq ], [ %i.mw, %_ZN4llvm5APIntD2Ev.exit ], [ %i.mw, %bb.fr ], [ %i.zk, %bb.dp ], [ %i.alf, %bb.fo ], [ %i.akt, %bb.fn ], [ %i.akd, %bb.fm ], [ %i.mw, %bb.fl ], [ %i.ahz, %.thread1139 ], [ %i.re, %bb.bx ], [ %i.ahb, %bb.es ], [ %i.ahg, %bb.et ], [ %i.agi, %_ZNK5clang18InitializationKind20hasParenOrBraceRangeEv.exit ], [ %i.aeb, %bb.ei ], [ %i.adk, %bb.eh ], [ %i.adg, %bb.eg ], [ %.sroa.0986.0, %bb.ee ], [ %i.uo, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit ], [ %i.wi, %bb.cw ], [ %i.wg, %bb.cv ], [ %i.we, %bb.cu ], [ %i.re, %.critedge32 ], [ %i.rv, %bb.cc ], [ %i.rt, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit.thread ], [ %i.axd, %bb.ia ], [ %i.mw, %bb.br ], [ %i.nt, %bb.bh ], [ 1, %bb.bg ], [ %i.ur, %bb.cq ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit774 ], [ %i.zk, %bb.dn ], [ %i.zk, %bb.do ], [ %i.mw, %bb.fs ], [ %i.mw, %bb.ft ], [ %i.atk, %bb.gu ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.ok, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit ] ; 2 uses
  %i.axf = phi i64 [ %i.aor, %bb.gs ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.awp, %bb.hx ], [ %i.re, %bb.by ], [ %i.mx, %bb.be ], [ %i.re, %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit ], [ %i.mx, %bb.eo ], [ %i.awu, %bb.hz ], [ %i.awo, %bb.hu ], [ %i.awi, %bb.ht ], [ %i.mx, %_ZNK5clang10ASTContext24getAsIncompleteArrayTypeENS_8QualTypeE.exit868 ], [ %i.aoh, %bb.gd ], [ %i.aod, %_ZN5clang27ObjCIndirectCopyRestoreExprC2EPNS_4ExprENS_8QualTypeEb.exit ], [ %i.mx, %bb.fx ], [ %i.mx, %bb.fq ], [ %i.mx, %_ZN4llvm5APIntD2Ev.exit ], [ %i.mx, %bb.fr ], [ %i.zk, %bb.dp ], [ %i.alf, %bb.fo ], [ %i.akt, %bb.fn ], [ %i.akd, %bb.fm ], [ %i.mx, %bb.fl ], [ %i.ahz, %.thread1139 ], [ %i.re, %bb.bx ], [ %i.ahb, %bb.es ], [ %i.ahg, %bb.et ], [ %i.agi, %_ZNK5clang18InitializationKind20hasParenOrBraceRangeEv.exit ], [ %i.aeb, %bb.ei ], [ %i.adk, %bb.eh ], [ %i.adg, %bb.eg ], [ %.sroa.0986.0, %bb.ee ], [ %i.uo, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit ], [ %i.wi, %bb.cw ], [ %i.wg, %bb.cv ], [ %i.we, %bb.cu ], [ %i.re, %.critedge32 ], [ %i.rv, %bb.cc ], [ %i.rt, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit.thread ], [ %i.axd, %bb.ia ], [ %i.mx, %bb.br ], [ %i.nt, %bb.bh ], [ 1, %bb.bg ], [ %i.ur, %bb.cq ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %bb.cr ], [ %i.uo, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit774 ], [ %i.zk, %bb.dn ], [ %i.zk, %bb.do ], [ %i.mx, %bb.fs ], [ %i.mx, %bb.ft ], [ %i.atk, %bb.gu ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.aor, %bb.gs ], [ %i.ol, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit ]
  %.2.ph = phi i8 [ %.010721206, %bb.gs ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.hx ], [ %.010721206, %bb.by ], [ %.010721206, %bb.be ], [ %.010721206, %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit ], [ 1, %bb.eo ], [ %.010721206, %bb.hz ], [ %.010721206, %bb.hu ], [ %.010721206, %bb.ht ], [ %.010721206, %_ZNK5clang10ASTContext24getAsIncompleteArrayTypeENS_8QualTypeE.exit868 ], [ %.010721206, %bb.gd ], [ %.010721206, %_ZN5clang27ObjCIndirectCopyRestoreExprC2EPNS_4ExprENS_8QualTypeEb.exit ], [ %.010721206, %bb.fx ], [ %.010721206, %bb.fq ], [ %.010721206, %_ZN4llvm5APIntD2Ev.exit ], [ %.010721206, %bb.fr ], [ %.010721206, %bb.dp ], [ %.010721206, %bb.fo ], [ %.010721206, %bb.fn ], [ %.010721206, %bb.fm ], [ %.010721206, %bb.fl ], [ %.010721206, %.thread1139 ], [ %.010721206, %bb.bx ], [ %.010721206, %bb.es ], [ %.010721206, %bb.et ], [ %.010721206, %_ZNK5clang18InitializationKind20hasParenOrBraceRangeEv.exit ], [ %.010721206, %bb.ei ], [ %.010721206, %bb.eh ], [ %.010721206, %bb.eg ], [ %.010721206, %bb.ee ], [ %.010721206, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit ], [ %.010721206, %bb.cw ], [ %.010721206, %bb.cv ], [ %.010721206, %bb.cu ], [ %.010721206, %.critedge32 ], [ %.010721206, %bb.cc ], [ %.010721206, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit.thread ], [ %.010721206, %bb.ia ], [ %.010721206, %bb.br ], [ %.010721206, %bb.bh ], [ %.010721206, %bb.bg ], [ %.010721206, %bb.cq ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %bb.cr ], [ %.010721206, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit774 ], [ %.010721206, %bb.dn ], [ %.010721206, %bb.do ], [ %.010721206, %bb.fs ], [ %.010721206, %bb.ft ], [ %.010721206, %bb.gu ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %bb.gs ], [ %.010721206, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit ]
  %.sroa.01071.14.ph = phi i64 [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.hx ], [ %.sroa.01071.01207, %bb.by ], [ %.sroa.01071.01207, %bb.be ], [ %.sroa.01071.01207, %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit ], [ %.sroa.01071.01207, %bb.eo ], [ %.sroa.01071.01207, %bb.hz ], [ %.sroa.01071.01207, %bb.hu ], [ %.sroa.01071.01207, %bb.ht ], [ %.sroa.01071.01207, %_ZNK5clang10ASTContext24getAsIncompleteArrayTypeENS_8QualTypeE.exit868 ], [ %.sroa.01071.01207, %bb.gd ], [ %.sroa.01071.01207, %_ZN5clang27ObjCIndirectCopyRestoreExprC2EPNS_4ExprENS_8QualTypeEb.exit ], [ %.sroa.01071.01207, %bb.fx ], [ %.sroa.01071.01207, %bb.fq ], [ %.sroa.01071.01207, %_ZN4llvm5APIntD2Ev.exit ], [ %.sroa.01071.01207, %bb.fr ], [ %.sroa.01071.01207, %bb.dp ], [ %.sroa.01071.01207, %bb.fo ], [ %.sroa.01071.01207, %bb.fn ], [ %.sroa.01071.01207, %bb.fm ], [ %.sroa.01071.01207, %bb.fl ], [ %.sroa.01071.01207, %.thread1139 ], [ %.sroa.01071.01207, %bb.bx ], [ %.sroa.01071.01207, %bb.es ], [ %.sroa.01071.01207, %bb.et ], [ %.sroa.01071.01207, %_ZNK5clang18InitializationKind20hasParenOrBraceRangeEv.exit ], [ %.sroa.01071.01207, %bb.ei ], [ %.sroa.01071.01207, %bb.eh ], [ %.sroa.01071.01207, %bb.eg ], [ %.sroa.01071.01207, %bb.ee ], [ %.sroa.01071.41094, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit ], [ %.sroa.01071.01207, %bb.cw ], [ %.sroa.01071.01207, %bb.cv ], [ %.sroa.01071.01207, %bb.cu ], [ %.sroa.01071.01207, %.critedge32 ], [ %.sroa.01071.01207, %bb.cc ], [ %.sroa.01071.01207, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit.thread ], [ %.sroa.01071.01207, %bb.ia ], [ %.sroa.01071.01207, %bb.br ], [ %.sroa.01071.01207, %bb.bh ], [ %.sroa.01071.01207, %bb.bg ], [ %.sroa.01071.41094, %bb.cq ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %bb.cr ], [ %.sroa.01071.41094, %_ZL21shouldBindAsTemporaryRKN5clang17InitializedEntityE.exit774 ], [ %.sroa.01071.01207, %bb.dn ], [ %.sroa.01071.01207, %bb.do ], [ %.sroa.01071.01207, %bb.fs ], [ %.sroa.01071.01207, %bb.ft ], [ %.sroa.01071.01207, %bb.gu ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.01207, %bb.gs ], [ %.sroa.01071.1, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit ]
  %i.axg = load ptr, ptr %i.h, align 8, !tbaa !1413
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 40 ; 3 uses
  store ptr %i.axh, ptr %i.h, align 8, !tbaa !1413
  %.not630 = icmp eq ptr %i.axh, %i.ku
  br i1 %.not630, label %._crit_edge.loopexit, label %bb.bb, !llvm.loop !1682

.critedge658.thread1172:                          ; preds = %bb.bb, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit, %bb.bf, %bb.bm, %bb.bq, %bb.bs, %bb.bz, %_ZL19getAssignmentActionRKN5clang17InitializedEntityEb.exit, %bb.dq, %bb.ef, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit, %.thread1090, %"_ZZN5clang22InitializationSequence7PerformERNS_4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEN4llvm15MutableArrayRefIPNS_4ExprEEEPNS_8QualTypeEENK3$_0clESE_.exit", %bb.cj, %bb.ck, %.critedge674, %.thread1134, %.thread1122, %bb.fg, %.thread1129, %.critedge673
  %.sroa.01071.15.ph = phi i64 [ %i.apt, %.critedge673 ], [ 1, %.thread1129 ], [ 1, %bb.fg ], [ 1, %.thread1134 ], [ %i.atl, %.critedge674 ], [ 1, %.thread1122 ], [ 1, %"_ZZN5clang22InitializationSequence7PerformERNS_4SemaERKNS_17InitializedEntityERKNS_18InitializationKindEN4llvm15MutableArrayRefIPNS_4ExprEEEPNS_8QualTypeEENK3$_0clESE_.exit" ], [ 1, %_ZNK5clang17PartialDiagnosticlsINS_8QualTypeEEERKS0_RKT_.exit ], [ 1, %.thread1090 ], [ %.sroa.01071.2, %_ZN4llvm11SmallVectorIPN5clang4ExprELj8EED2Ev.exit ], [ 1, %bb.ef ], [ 1, %bb.dq ], [ 1, %_ZL19getAssignmentActionRKN5clang17InitializedEntityEb.exit ], [ 1, %bb.bb ], [ 1, %bb.bz ], [ 1, %bb.bs ], [ 1, %bb.bq ], [ 1, %bb.bm ], [ 1, %bb.bf ], [ %.sroa.01071.1, %_ZN4llvm11SmallVectorIPN5clang16CXXBaseSpecifierELj4EED2Ev.exit ], [ 1, %bb.cj ], [ 1, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.jd

._crit_edge.loopexit:                             ; preds = %_ZNK5clang24MaterializeTemporaryExpr18getStorageDurationEv.exit.thread
  %.pre1220 = and i64 %i.axe, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit
  %.pre-phi = phi i64 [ %.pre1220, %._crit_edge.loopexit ], [ %i.kn, %_ZN5clang32EnterExpressionEvaluationContextC2ERNS_4SemaENS0_11InitListTagEb.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.axi = inttoptr i64 %.pre-phi to ptr          ; 5 uses
  %.not654 = icmp eq i64 %.pre-phi, 0
  br i1 %.not654, label %bb.jd, label %bb.ib

bb.ib:                                            ; preds = %._crit_edge
  call void @_ZN5clang4sema17checkInitLifetimeERNS_4SemaERKNS_17InitializedEntityEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.axi) #25
  %i.axj = load i32, ptr %2, align 8, !tbaa !1162 ; 4 uses
  %i.axk = and i32 %i.axj, -17
  %or.cond50 = icmp eq i32 %i.axk, 6
  br i1 %or.cond50, label %_ZNK5clang17InitializedEntity7getDeclEv.exit934, label %thread-pre-split

_ZNK5clang17InitializedEntity7getDeclEv.exit934:  ; preds = %bb.ib
  %i.axl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.axm = load ptr, ptr %i.axl, align 8          ; 3 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 68
  %i.axo = load i32, ptr %i.axn, align 4
  %i.axp = trunc i32 %i.axo to i1
  %i.axq = ptrtoint ptr %i.axm to i64
  br i1 %i.axp, label %bb.ic, label %thread-pre-split

bb.ic:                                            ; preds = %_ZNK5clang17InitializedEntity7getDeclEv.exit934
  %i.axr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.0.0.copyload.i935 = load i32, ptr %i.axr, align 4, !tbaa !1089
  switch i32 %i.axj, label %bb.if [
    i32 19, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 6, label %bb.id
    i32 22, label %bb.id
    i32 21, label %bb.id
    i32 18, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 17, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 20, label %bb.ie
    i32 15, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 14, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 16, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 8, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 9, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 10, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 11, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 7, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 12, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
    i32 13, label %_ZNK5clang17InitializedEntity7getDeclEv.exit938
  ]

bb.id:                                            ; preds = %bb.ic, %bb.ic, %bb.ic
  br label %_ZNK5clang17InitializedEntity7getDeclEv.exit938

bb.ie:                                            ; preds = %bb.ic
  %i.axs = and i64 %i.axq, -8
  %i.axt = inttoptr i64 %i.axs to ptr
  br label %_ZNK5clang17InitializedEntity7getDeclEv.exit938

bb.if:                                            ; preds = %bb.ic
  unreachable

_ZNK5clang17InitializedEntity7getDeclEv.exit938:  ; preds = %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.ic, %bb.id, %bb.ie
  %.0.i936 = phi ptr [ %i.axm, %bb.id ], [ %i.axt, %bb.ie ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ], [ null, %bb.ic ]
  call void @_ZN5clang4Sema27CheckBitFieldInitializationENS_14SourceLocationEPNS_9FieldDeclEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %1, i32 %.sroa.0.0.copyload.i935, ptr noundef %.0.i936, ptr noundef nonnull %i.axi) #25
  %.pr1176.pre = load i32, ptr %2, align 8, !tbaa !1162
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZNK5clang17InitializedEntity7getDeclEv.exit938, %_ZNK5clang17InitializedEntity7getDeclEv.exit934, %bb.ib
  %i.axu = phi i32 [ %i.axj, %bb.ib ], [ %i.axj, %_ZNK5clang17InitializedEntity7getDeclEv.exit934 ], [ %.pr1176.pre, %_ZNK5clang17InitializedEntity7getDeclEv.exit938 ]
  %i.axv = icmp eq i32 %i.axu, 3                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.axw = getelementptr inbounds nuw i8, ptr %1, i64 12616
  %i.axx = load i32, ptr %i.axw, align 8, !tbaa !1085
  %i.axy = getelementptr inbounds nuw i8, ptr %1, i64 13768
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !1158
  %i.aya = icmp ugt i32 %i.axx, %i.axz
  br i1 %i.aya, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.ig

bb.ig:                                            ; preds = %thread-pre-split
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %.sroa.0.0.copyload.i.i939 = load i64, ptr %i.ayb, align 8, !tbaa !713
  %i.ayc = and i64 %.sroa.0.0.copyload.i.i939, -16
  %i.ayd = inttoptr i64 %i.ayc to ptr             ; 2 uses
  %i.aye = load ptr, ptr %i.ayd, align 16, !tbaa !716
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i940 = load i64, ptr %i.ayf, align 8, !tbaa !713
  %i.ayg = and i64 %.sroa.0.0.copyload.i.i.i.i.i940, -16
  %i.ayh = inttoptr i64 %i.ayg to ptr
  %i.ayi = load ptr, ptr %i.ayh, align 16, !tbaa !716
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 16
  %i.ayk = load i8, ptr %i.ayj, align 16
  %i.ayl = icmp eq i8 %i.ayk, 49
  br i1 %i.ayl, label %bb.ih, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.axv, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %bb.ih
  %i.aym = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axi) #24 ; 5 uses
  %i.ayn = load i16, ptr %i.aym, align 8
  %i.ayo = and i16 %i.ayn, 511
  %i.ayp = add nsw i16 %i.ayo, -119
  %spec.select.i.i.i.i.i.i.i.i.i946 = icmp ult i16 %i.ayp, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i946, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.aym, i64 32
  %i.ayr = load i32, ptr %i.ayq, align 8, !tbaa !1712
  %.not61.i = icmp eq i32 %i.ayr, 1
  br i1 %.not61.i, label %bb.ik, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.ik:                                            ; preds = %bb.ij
  %i.ays = getelementptr inbounds nuw i8, ptr %i.aym, i64 16
  %i.ayt = load ptr, ptr %i.ays, align 8, !tbaa !1713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ayu = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl23isCopyOrMoveConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.ayt, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ayu, label %bb.il, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.il:                                            ; preds = %bb.ik
  %i.ayv = load i16, ptr %i.aym, align 8
  %i.ayw = and i16 %i.ayv, 511
  %.not.i.i.i.i.i947 = icmp eq i16 %i.ayw, 118
  %spec.select.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i947, i64 48, i64 40
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.aym, i64 %spec.select.v.i.i.i.i.i
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !1274
  %i.ayz = call noundef ptr @_ZN5clang4Expr14IgnoreImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ayy) #24
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ih
  %.1.i941 = phi ptr [ %i.ayz, %bb.il ], [ %i.axi, %bb.ih ]
  %i.aza = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1.i941) #24 ; 8 uses
  %i.azb = load i16, ptr %i.aza, align 8
  %i.azc = and i16 %i.azb, 511
  %i.azd = add nsw i16 %i.azc, -96
  %spec.select.i.i.i.i.i.i.i.i74.i = icmp ult i16 %i.azd, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i74.i, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aze = call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aza) #25
  br i1 %i.aze, label %bb.io, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.io:                                            ; preds = %bb.in
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aza, i64 40
  %i.azg = load i32, ptr %i.aza, align 8
  %i.azh = lshr i32 %i.azg, 19
  %i.azi = and i32 %i.azh, 1
  %i.azj = zext nneg i32 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.azj
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !1274
  %i.azm = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azl) #24 ; 3 uses
  br i1 %i.axv, label %bb.ip, label %bb.ix

bb.ip:                                            ; preds = %bb.io
  %i.azn = call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #24 ; 3 uses
  %i.azo = load i16, ptr %i.azn, align 8
  %i.azp = and i16 %i.azo, 511
  %.not.i945 = icmp eq i16 %i.azp, 73
  br i1 %.not.i945, label %bb.iq, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.iq:                                            ; preds = %bb.ip
  %i.azq = load i32, ptr %i.azn, align 8
  %i.azr = and i32 %i.azq, 8388608
  %.not112.i = icmp eq i32 %i.azr, 0
  br i1 %.not112.i, label %bb.ir, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.ir:                                            ; preds = %bb.iq
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !1405 ; 5 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 28 ; 2 uses
  %i.azv = load i32, ptr %i.azu, align 4
  %i.azw = and i32 %i.azv, 127
  %i.azx = add nsw i32 %i.azw, -48
  %i.azy = icmp ult i32 %i.azx, -7
  %.not64113.i = icmp eq ptr %i.azt, null
  %.not64.i = or i1 %.not64113.i, %i.azy
  br i1 %.not64.i, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.azz = call noundef zeroext i1 @_ZNK5clang7VarDecl15hasLocalStorageEv(ptr noundef nonnull align 8 dereferenceable(100) %i.azt)
  br i1 %i.azz, label %bb.it, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.it:                                            ; preds = %bb.is
  %i.baa = call noundef zeroext i1 @_ZNK5clang4Decl7hasAttrINS_10BlocksAttrEEEbv(ptr noundef nonnull align 8 dereferenceable(33) %i.azt)
  br i1 %i.baa, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azt, i64 48
  %.sroa.0.0.copyload.i78.i = load i64, ptr %i.bab, align 8, !tbaa !713
  %i.bac = and i64 %.sroa.0.0.copyload.i78.i, -16
  %i.bad = inttoptr i64 %i.bac to ptr             ; 2 uses
  %i.bae = load ptr, ptr %i.bad, align 16, !tbaa !716
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  %.sroa.0.0.copyload.i.i.i.i80.i = load i64, ptr %i.baf, align 8, !tbaa !713
  %i.bag = and i64 %.sroa.0.0.copyload.i.i.i.i80.i, -16
  %i.bah = inttoptr i64 %i.bag to ptr
  %i.bai = load ptr, ptr %i.bah, align 16, !tbaa !716
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 16
  %i.bak = load i8, ptr %i.baj, align 16
  %i.bal = icmp eq i8 %i.bak, 49
  br i1 %i.bal, label %bb.iv, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.iv:                                            ; preds = %bb.iu
  %i.bam = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  %i.ban = load i64, ptr %i.bam, align 8, !tbaa !713
  %i.bao = and i64 %i.ban, -16
  %i.bap = inttoptr i64 %i.bao to ptr
  %i.baq = load ptr, ptr %i.bap, align 16, !tbaa !716
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bad, i64 8
  %i.bas = load i64, ptr %i.bar, align 8, !tbaa !713
  %i.bat = and i64 %i.bas, -16
  %i.bau = inttoptr i64 %i.bat to ptr
  %i.bav = load ptr, ptr %i.bau, align 16, !tbaa !716
  %i.baw = icmp eq ptr %i.baq, %i.bav
  br i1 %i.baw, label %bb.iw, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.iw:                                            ; preds = %bb.iv
  %i.bax = load i32, ptr %i.azu, align 4
  %i.bay = and i32 %i.bax, 127
  %i.baz = icmp eq i32 %i.bay, 44
  %..i = select i1 %i.baz, i32 7581, i32 7503
  br label %.critedge70.i

bb.ix:                                            ; preds = %bb.io
  %i.bba = call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azm) #24
  %i.bbb = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bba) #24 ; 2 uses
  %i.bbc = load i24, ptr %i.bbb, align 8
  %i.bbd = and i24 %i.bbc, 1536
  %i.bbe = icmp eq i24 %i.bbd, 0
  br i1 %i.bbe, label %bb.iy, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

bb.iy:                                            ; preds = %bb.ix
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %.sroa.0.0.copyload.i81.i = load i64, ptr %i.bbf, align 8, !tbaa !713
  %i.bbg = and i64 %.sroa.0.0.copyload.i81.i, -16
  %i.bbh = inttoptr i64 %i.bbg to ptr
  %i.bbi = load ptr, ptr %i.bbh, align 16, !tbaa !716
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 8
  %.sroa.0.0.copyload.i.i.i.i83.i = load i64, ptr %i.bbj, align 8, !tbaa !713
  %i.bbk = and i64 %.sroa.0.0.copyload.i.i.i.i83.i, -16
  %i.bbl = inttoptr i64 %i.bbk to ptr
  %i.bbm = load ptr, ptr %i.bbl, align 16, !tbaa !716
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 16
  %i.bbo = load i8, ptr %i.bbn, align 16
  %i.bbp = icmp eq i8 %i.bbo, 49
  br i1 %i.bbp, label %.critedge70.i, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit

.critedge70.i:                                    ; preds = %bb.iy, %bb.iw
  %.455.i = phi i32 [ %..i, %bb.iw ], [ 7502, %bb.iy ]
  %i.bbq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bbr = call i32 @_ZNK5clang8CallExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aza)
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bbq, i32 %i.bbr, i32 noundef %.455.i) #25
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #25
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.aza, i64 32
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !1149
  %i.bbu = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bbt) #24 ; 2 uses
  %i.bbv = icmp slt i32 %i.bbu, 0
  br i1 %i.bbv, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.iz

bb.iz:                                            ; preds = %.critedge70.i
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.aza, i64 20
  %.sroa.0.0.copyload.i84.i = load i32, ptr %i.bbw, align 4, !tbaa !1089 ; 2 uses
  %i.bbx = icmp slt i32 %.sroa.0.0.copyload.i84.i, 0
  br i1 %i.bbx, label %_ZL23CheckMoveOnConstructionRN5clang4SemaEPKNS_4ExprEb.exit, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bby = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azm) #24 ; 3 uses
  %i.bbz = icmp slt i32 %i.bby, 0
  br i1 %i.bbz, label %.lr.ph.i, label %.critedge4.i

.lr.ph.i:                                         ; preds = %bb.ja
  %i.bca = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  br label %bb.jb

bb.jb:                                            ; preds = %bb.jc, %.lr.ph.i
  %.sroa.092.0114.i = phi i32 [ %i.bby, %.lr.ph.i ], [ %.sroa.091.0.extract.trunc.i, %bb.jc ] ; 3 uses
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !1428, !nonnull !711, !align !712
  %i.bcc = call noundef zeroext i1 @_ZNK5clang13SourceManager34isAtStartOfImmediateMacroExpansionENS_14SourceLocationEPS1_(ptr noundef nonnull align 8 dereferenceable(776) %i.bcb, i32 %.sroa.092.0114.i, ptr noundef null) #25
  br i1 %i.bcc, label %bb.jc, label %.critedge4.i

bb.jc:                                            ; preds = %bb.jb
  %i.bcd = load ptr, ptr %i.bca, align 8, !tbaa !1428, !nonnull !711, !align !712
  %i.bce = call { i64, i8 } @_ZNK5clang13SourceManager26getImmediateExpansionRangeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.bcd, i32 %.sroa.092.0114.i) #25
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.bce, 0
  %.sroa.091.0.extract.trunc.i = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.bcf = icmp slt i32 %.sroa.091.0.extract.trunc.i, 0
  br i1 %i.bcf, label %bb.jb, label %.critedge4.i, !llvm.loop !1683

.critedge4.i:                                     ; preds = %bb.jc, %bb.jb, %bb.ja
  %.sroa.092.0.lcssa.i = phi i32 [ %i.bby, %bb.ja ], [ %.sroa.092.0114.i, %bb.jb ], [ %.sroa.091.0.extract.trunc.i, %bb.jc ]
  %i.bcg = add i32 %.sroa.092.0.lcssa.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bch = call i32 @_ZNK5clang8CallExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aza)
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bbq, i32 %i.bch, i32 noundef 6526) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.sroa.290.0.insert.ext.i = zext i32 %i.bcg to i64
  %.sroa.290.0.insert.shift.i = shl nuw i64 %.sroa.290.0.insert.ext.i, 32
  %.sroa.089.0.insert.ext.i = zext nneg i32 %i.bbu to i64
  %.sroa.089.0.insert.insert.i = or disjoint i64 %.sroa.290.0.insert.shift.i, %.sroa.089.0.insert.ext.i
  %i.bci = getelementptr inbounds nuw i8, ptr %9, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bci, i8 0, i64 9, i1 false), !alias.scope !1714
  %i.bcj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  store ptr %i.bck, ptr %i.bcj, align 8, !tbaa !1165, !alias.scope !1714
  %i.bcl = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 0, ptr %i.bcl, align 8, !tbaa !1166, !alias.scope !1714
  store i8 0, ptr %i.bck, align 8, !tbaa !713, !alias.scope !1714
  %i.bcm = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 0, ptr %i.bcm, align 8, !tbaa !1170, !alias.scope !1714
  store i64 %.sroa.089.0.insert.insert.i, ptr %9, align 8, !alias.scope !1714
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 1, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !1164, !alias.scope !1714
  %i.bcn = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(57) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %.sroa.2.0.insert.ext.i942 = zext nneg i32 %.sroa.0.0.copyload.i84.i to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i943 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i942, 32
  %.sroa.0.0.insert.insert.i944 = or disjoint i64 %.sroa.2.0.insert.shift.i943, %.sroa.2.0.insert.ext.i942
  %i.bco = getelementptr inbounds nuw i8, ptr %10, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bco, i8 0, i64 9, i1 false), !alias.scope !1715
  %i.bcp = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 4 uses
  store ptr %i.bcq, ptr %i.bcp, align 8, !tbaa !1165, !alias.scope !1715
  %i.bcr = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.bcr, align 8, !tbaa !1166, !alias.scope !1715
  store i8 0, ptr %i.bcq, align 8, !tbaa !713, !alias.scope !1715
  %i.bcs = getelementptr inbounds nuw i8, ptr %10, i64 56
end_hunk_0
