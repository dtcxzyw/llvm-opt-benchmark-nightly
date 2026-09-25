Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RetainPtrCtorAdoptChecker?download=true
inline.NumInlined: 17704
inline.NumDeleted: 9115
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang19RecursiveASTVisitorIZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKNS_19TranslationUnitDeclERNS_4ento15AnalysisManagerERNS6_11BugReporterEE12LocalVisitorE26WalkUpFromCXXConstructExprEPNS_16CXXConstructExprE:bb.a
  %i.aw = load ptr, ptr %8, align 8, !tbaa !53, !alias.scope !1475
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !1475
  br label %_ZN5clang11safeGetNameINS_13CXXRecordDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i

_ZN5clang11safeGetNameINS_13CXXRecordDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i.i, %._crit_edge.i.i4.i.i.i
  %i.ay = call noundef zeroext i1 @_ZN5clang18isRetainPtrOrOSPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8) #21
  br i1 %i.ay, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %_ZN5clang11safeGetNameINS_13CXXRecordDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1476
  %.not26.i.i = icmp eq i32 %i.ba, 0
  %i.bb = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !54
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %.not26.i.i, label %_ZZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, label %bb.l

.critedge.i.i:                                    ; preds = %_ZN5clang11safeGetNameINS_13CXXRecordDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i
  %i.bg = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i: ; preds = %.critedge.i.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !54
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bl = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker9isAdoptFnEPKN5clang4DeclE(ptr noundef %.8.val)
  br i1 %i.bl, label %_ZZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %.not.i.i.i.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.8.val, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !1477
  %i.bo = and i32 %i.bn, 124
  %i.bp = add nsw i32 %i.bo, -20
  %i.bq = icmp ult i32 %i.bp, 64
  br i1 %i.bq, label %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i.i, label %._crit_edge.i.i.i.sink.split.i

_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i.i: ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %.sroa.0.0.copyload.i.i34.i.i = load i64, ptr %i.br, align 8, !tbaa !51, !noalias !1477 ; 3 uses
  %i.bs = and i64 %.sroa.0.0.copyload.i.i34.i.i, 7
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %._crit_edge.i.i.i.sink.split.i

bb.o:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i.i
  %.not2.i.i36.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i34.i.i, 0
  br i1 %.not2.i.i36.i.i, label %._crit_edge.i.i.i.thread.i40.i.i, label %bb.p

._crit_edge.i.i.i.thread.i40.i.i:                 ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1478)
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bu, ptr %9, align 8, !tbaa !49, !alias.scope !1479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !1479
  store i64 0, ptr %i.b, align 8, !tbaa !51, !noalias !1479
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bv = inttoptr i64 %.sroa.0.0.copyload.i.i34.i.i to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !330, !noalias !1477 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !332, !noalias !1477 ; 2 uses
  %i.ca = and i64 %i.bz, 4294967295               ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.cb, ptr %9, align 8, !tbaa !49, !alias.scope !1481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !1481
  store i64 %i.ca, ptr %i.b, align 8, !tbaa !51, !noalias !1481
  %i.cc = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cc, label %bb.q, label %._crit_edge.i.i.i.i37.i.i

bb.q:                                             ; preds = %bb.p
  %i.cd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #21 ; 2 uses
  store ptr %i.cd, ptr %9, align 8, !tbaa !53, !alias.scope !1481
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !1481
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !54, !alias.scope !1481
  br label %._crit_edge.i.i.i.i37.i.i

._crit_edge.i.i.i.i37.i.i:                        ; preds = %bb.q, %bb.p
  %i.cf = phi ptr [ %i.cd, %bb.q ], [ %i.cb, %bb.p ] ; 2 uses
  %trunc.i38.i.i = trunc i64 %i.bz to i32
  switch i32 %trunc.i38.i.i, label %bb.s [
    i32 1, label %bb.r
    i32 0, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i37.i.i
  %i.cg = load i8, ptr %i.by, align 8, !tbaa !54
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !54
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i37.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr nonnull align 8 %i.by, i64 %i.ca, i1 false)
  br label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i

_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i37.i.i, %._crit_edge.i.i.i.thread.i40.i.i
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !1481 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !55, !alias.scope !1481
  %i.cj = load ptr, ptr %9, align 8, !tbaa !53, !alias.scope !1481
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !1481
  %.pre.i.i = load i64, ptr %i.ci, align 8, !tbaa !55 ; 2 uses
  %.pre73.pre.i.i = load ptr, ptr %9, align 8, !tbaa !53 ; 6 uses
  %i.cl = icmp eq i64 %.pre.i.i, 9
  br i1 %i.cl, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.i, label %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.thread.i

_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.i: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i
  %i.cm = load i64, ptr %.pre73.pre.i.i, align 1
  %i.cn = xor i64 %i.cm, 8381320305422132594
  %i.co = getelementptr i8, ptr %.pre73.pre.i.i, i64 8
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64
  %i.cr = xor i64 %i.cq, 114
  %i.cs = or i64 %i.cn, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %.pre73.pre.i.i, %i.cw
  br i1 %i.cx, label %.critedge29.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i

_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.thread.i: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %.pre73.pre.i.i, %i.cy
  br i1 %i.cz, label %.critedge29.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.thread.i: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.thread.i
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !54
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.pre73.pre.i.i, i64 noundef %i.db) #23
  br label %._crit_edge.i.i.i.sink.split.i

.critedge29.i.thread.i:                           ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.thread.i
  %i.dc = icmp ult i64 %.pre.i.i, 16
  call void @llvm.assume(i1 %i.dc)
  br label %._crit_edge.i.i.i.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i: ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.i
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !54
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef nonnull %.pre73.pre.i.i, i64 noundef %i.de) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %i.cv, label %_ZZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, label %._crit_edge.i.i.i.i

.critedge29.i.i:                                  ; preds = %_ZN5clang11safeGetNameINS_4DeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %i.cv, label %_ZZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPKNS1_16CXXConstructExprE.exit, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.sink.split.i:                   ; preds = %.critedge29.i.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.thread.i, %_ZN4llvm16dyn_cast_or_nullIN5clang9NamedDeclEKNS1_4DeclEEEDaPT0_.exit.i.i.i, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.sink.split.i, %.critedge29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.df, ptr %10, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 21, ptr %i.a, align 8, !tbaa !51
  %i.dg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21 ; 2 uses
  store ptr %i.dg, ptr %10, align 8, !tbaa !53
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.dg, ptr noundef nonnull align 1 dereferenceable(21) @.str.31, i64 21, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !55
  %i.dj = load ptr, ptr %10, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.dl = load i16, ptr %0, align 8
  %i.dm = and i16 %i.dl, 511
  %.not.i.i.i.i.i.i = icmp eq i16 %i.dm, 118      ; 2 uses
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %0, ptr null
  %11 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i.i, i64 48
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %11, ptr %i.dn
  %i.do = load ptr, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !215
  %i.dp = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #24 ; 4 uses
  store ptr %i.dp, ptr %i.d, align 8, !tbaa !215
  %i.dq = call fastcc noundef i32 @_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker7isOwnedEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(264) %.0.val, ptr noundef %i.dp)
  %i.dr = load i16, ptr %i.dp, align 8
  %i.ds = and i16 %i.dr, 511
  %i.dt = add nsw i16 %i.ds, -96
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.dt, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !338
  %i.dw = call noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #21 ; 3 uses
  %.not.i.i.i.i44.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i44.i.i, label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = and i32 %i.dy, 127
  %i.ea = add nsw i32 %i.dz, -35
  %i.eb = icmp ult i32 %i.ea, 6
  br i1 %i.eb, label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.i.i, label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i

_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.i.i: ; preds = %bb.u
  %i.ec = getelementptr i8, ptr %i.dw, i64 40
  %.val.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !51, !noalias !1482
  %i.ed = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker22isCreateOrCopyFunctionEPKN5clang12FunctionDeclE(i64 %.val.i.i.i)
  br i1 %i.ed, label %bb.v, label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i

bb.v:                                             ; preds = %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.val, i64 184
  %i.ef = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1483 ; 0 uses
  br label %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i

_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i: ; preds = %bb.v, %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.i.i, %bb.u, %bb.t, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store ptr null, ptr %i.e, align 8, !tbaa !215
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !215
  %i.eh = call noundef zeroext i1 @_ZN5clang11isAllocInitEPKNS_4ExprEPS2_(ptr noundef %i.eg, ptr noundef nonnull %i.e) #21
  br i1 %i.eh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.val, i64 184 ; 2 uses
  %i.ej = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1484 ; 0 uses
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !215
  %.not27.i.i = icmp eq ptr %i.ek, null
  br i1 %.not27.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1485 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE.exit.thread.i.i
  switch i32 %i.dq, label %bb.z [
    i32 1, label %bb.ap
    i32 2, label %.sink.split.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.em = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %i.en = load i8, ptr %i.em, align 8, !tbaa !284, !range !71, !noundef !72
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !215
  %i.eq = call noundef zeroext i1 @_ZN5clang11isAllocInitEPKNS_4ExprEPS2_(ptr noundef %i.ep, ptr noundef null) #21
  br i1 %i.eq, label %.sink.split.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !215
  %i.es = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125RetainPtrCtorAdoptChecker14isCreateOrCopyEPKN5clang4ExprE(ptr noundef %i.er)
  br i1 %i.es, label %.sink.split.i.i, label %bb.ap

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.aa, %bb.y
  %.not.i2.i = phi i1 [ true, %bb.y ], [ false, %bb.aa ], [ true, %bb.ab ]
  %.sink.i.i = phi ptr [ null, %bb.y ], [ @.str.16, %bb.aa ], [ null, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.et, ptr %4, align 8, !tbaa !397
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.eu, align 8, !tbaa !398
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 100, ptr %i.ev, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.ew, align 8, !tbaa !403
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.ex, align 8, !tbaa !404
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.ey, align 4, !tbaa !405
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %5, align 8, !tbaa !45
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %4, ptr %i.fa, align 8, !tbaa !407
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !408
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !409 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 17
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.sink.split.i.i
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.25, i64 noundef 17) #21
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.ad:                                            ; preds = %.sink.split.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.fe, ptr noundef nonnull align 1 dereferenceable(17) @.str.25, i64 17, i1 false)
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !409
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 17
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !409
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi ptr [ %i.fj, %bb.ac ], [ %5, %bb.ad ]
  %i.fm = load ptr, ptr %10, align 8, !tbaa !53
  %i.fn = load i64, ptr %i.di, align 8, !tbaa !55
  %i.fo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef %i.fm, i64 noundef %i.fn) #21 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !408
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !409 ; 2 uses
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ult i64 %i.fv, 49
  br i1 %i.fw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.fx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, ptr noundef nonnull @.str.32, i64 noundef 49) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fs, ptr noundef nonnull align 1 dereferenceable(49) @.str.32, i64 49, i1 false)
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !409
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 49
  store ptr %i.fz, ptr %i.fr, align 8, !tbaa !409
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i:           ; preds = %bb.af, %bb.ae
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i
  %i.ga = load ptr, ptr %i.fb, align 8, !tbaa !408
  %i.gb = load ptr, ptr %i.fd, align 8, !tbaa !409 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.27, i64 noundef 1) #21 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %.pre.i3.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !409
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  store i8 32, ptr %i.gb, align 1
  %i.ge = load ptr, ptr %i.fd, align 8, !tbaa !409
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.fd, align 8, !tbaa !409
  br label %_ZN4llvm9StringRefC2EPKc.exit.i.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i.i:              ; preds = %bb.ai, %bb.ah
  %i.gg = phi ptr [ %.pre.i3.i, %bb.ah ], [ %i.gf, %bb.ai ] ; 2 uses
  %.0.i.i12.i.i = phi ptr [ %i.gd, %bb.ah ], [ %5, %bb.ai ] ; 3 uses
  %i.gh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink.i.i) #21 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i12.i.i, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !408
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i12.i.i, i64 32 ; 2 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gg to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ugt i64 %i.gh, %i.gn
  br i1 %i.go, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  %i.gp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i12.i.i, ptr noundef nonnull %.sink.i.i, i64 noundef %i.gh) #21 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i

bb.ak:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i.i
  %.not.i2.i14.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not.i2.i14.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 1 %.sink.i.i, i64 %i.gh, i1 false)
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !409
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gh
  store ptr %i.gr, ptr %i.gk, align 8, !tbaa !409
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit16.i.i:           ; preds = %bb.al, %bb.ak, %bb.aj, %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i
  %i.gs = load ptr, ptr %i.fb, align 8, !tbaa !408
  %i.gt = load ptr, ptr %i.fd, align 8, !tbaa !409 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
end_hunk_0
