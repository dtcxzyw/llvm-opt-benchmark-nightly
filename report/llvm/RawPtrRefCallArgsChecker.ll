Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RawPtrRefCallArgsChecker?download=true
inline.NumInlined: 1769
inline.NumDeleted: 1159
begin_hunk_0_@_ZZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker12checkASTDeclEPKN5clang19TranslationUnitDeclERNS1_4ento15AnalysisManagerERNS5_11BugReporterEEN12LocalVisitor21VisitCXXConstructExprEPNS1_16CXXConstructExprE:bb.a
  br i1 %.not72.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.am = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.al) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8 ; 3 uses
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !212
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i:   ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.au = icmp eq ptr %.0.i.i.i.i.i.i, null
  br i1 %i.au, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i
  %i.av = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i, i64 -64
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.av) #21, !inline_history !317
  br i1 %i.az, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.j, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i.i, %_ZNK5clang8CallExpr15getDirectCalleeEv.exit.i.i, %bb.f
  %i.ba = load i32, ptr %1, align 8
  %i.bb = lshr i32 %i.ba, 25
  %i.bc = and i32 %i.bb, 63
  switch i32 %i.bc, label %.critedge58.i.i [
    i32 29, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 28, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 24, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 23, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 22, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 21, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 20, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 19, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 18, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 15, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
    i32 25, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i
  ]

.critedge58.i.i:                                  ; preds = %.critedge.i.i, %bb.e
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.k

bb.k:                                             ; preds = %.critedge58.i.i
  %i.bd = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker26isMethodOnWTFContainerTypeEPKN5clang12FunctionDeclE(ptr noundef %i.f)
  br i1 %i.bd, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i32 @_ZNK5clang12FunctionDecl21getOverloadedOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #21
  %i.bf = add i32 %i.be, -30
  %or.cond13.i.i = icmp ult i32 %i.bf, 7
  br i1 %or.cond13.i.i, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call noundef zeroext i1 @_ZN5clang15isCtorOfSafePtrEPKNS_12FunctionDeclE(ptr noundef nonnull %i.f) #21
  br i1 %i.bg, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call noundef zeroext i1 @_ZN5clang15isPtrConversionEPKNS_12FunctionDeclE(ptr noundef nonnull %i.f) #21
  br i1 %i.bh, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN5clang11safeGetNameINS_12FunctionDeclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %i.f)
  %i.bi = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25)
  br i1 %i.bi, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26)
  br i1 %i.bj, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.27)
  br i1 %i.bk, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.28)
  br i1 %i.bl, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.29)
  br i1 %i.bm, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.30)
  br i1 %i.bn, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.31)
  br i1 %i.bo, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.32)
  br i1 %i.bp, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33)
  br i1 %i.bq, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.34)
  br i1 %i.br, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.35)
  br i1 %i.bs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.36)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.6.i.i = phi i1 [ true, %bb.o ], [ %i.bt, %bb.z ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !35
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.6.i.i, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.ab

_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i: ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %bb.d
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bz = load i16, ptr %1, align 8
  %i.ca = and i16 %i.bz, 511
  switch i16 %i.ca, label %.thread67.i.i [
    i16 93, label %bb.ad
    i16 94, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker12checkThisArgEPKN5clang9NamedDeclEPKNS1_17CXXMemberCallExprEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %1, ptr noundef %i.d)
  br label %.thread67.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, 124
  %i.ce = icmp eq i32 %i.cd, 36
  br i1 %i.ce, label %bb.ae, label %.thread67.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !188 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !35 ; 2 uses
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !35
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i, 7
  %i.cn = or i64 %i.cm, %i.cl
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call i16 %i.cq(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i64 %i.cn) #21, !inline_history !318
  %i.cs = and i16 %i.cr, 257
  %or.cond.i.i = icmp eq i16 %i.cs, 257
  br i1 %or.cond.i.i, label %bb.af, label %.thread67.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ct = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker15isPtrOriginSafeEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.cg)
  br i1 %i.ct, label %.thread67.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker15reportBugOnThisEPKN5clang9NamedDeclEPKNS1_4ExprEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.cg, ptr noundef %i.d)
  br label %.thread67.i.i

.thread67.i.i:                                    ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.cu = phi i64 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  %i.cv = phi i32 [ 0, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.ab ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !235 ; 2 uses
  %i.cy = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #21 ; 0 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !235
  %i.da = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #21
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db
  %i.dd = icmp ult ptr %i.cx, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i, label %.critedge.i8.i

.lr.ph.i.i:                                       ; preds = %.thread67.i.i
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i ] ; 4 uses
  %.02554.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %i.ea, %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i ] ; 2 uses
  %i.de = load i32, ptr %i.u, align 8, !tbaa !325
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.i.i, %i.df
  br i1 %i.dg, label %bb.ai, label %.critedge.loopexit.i.i

.critedge.loopexit.i.i:                           ; preds = %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i, %bb.ah
  %.0.lcssa.ph.in.i.i = phi i64 [ %indvars.iv.i.i, %bb.ah ], [ %indvars.iv.next.i.i, %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i ]
  %.0.lcssa.ph.i.i = trunc i64 %.0.lcssa.ph.in.i.i to i32
  br label %.critedge.i8.i

.critedge.i8.i:                                   ; preds = %.critedge.loopexit.i.i, %.thread67.i.i
  %.0.lcssa.i.i = phi i32 [ %i.cv, %.thread67.i.i ], [ %.0.lcssa.ph.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.dh = load i32, ptr %i.u, align 8, !tbaa !325
  %i.di = icmp ult i32 %.0.lcssa.i.i, %i.dh
  br i1 %i.di, label %.lr.ph59.i.i.a, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit

.lr.ph59.i.i.a:                                   ; preds = %.critedge.i8.i
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dj = zext i32 %.0.lcssa.i.i to i64
  br label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.dk = load i16, ptr %1, align 8
  %i.dl = and i16 %i.dk, 511
  %.not.i.i.i.i27.i.i = icmp eq i16 %i.dl, 118    ; 2 uses
  %spec.select.i.i.i.i.i.i28.i.i = select i1 %.not.i.i.i.i27.i.i, ptr %1, ptr null
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i28.i.i, i64 48
  %spec.select.i.i.i.i29.i.i = select i1 %.not.i.i.i.i27.i.i, ptr %i.dm, ptr %3
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i29.i.i, i64 %indvars.iv.i.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !188 ; 3 uses
  %i.dp = load ptr, ptr %.02554.i.i, align 8, !tbaa !205 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %.sroa.0.0.copyload.i30.i.i = load i64, ptr %i.dq, align 8, !tbaa !35
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call i16 %i.dt(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i64 %.sroa.0.0.copyload.i30.i.i) #21, !inline_history !319
  %i.dv = and i16 %i.du, 257
  %or.cond.i.i.i = icmp eq i16 %i.dv, 257
  br i1 %or.cond.i.i.i, label %bb.aj, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.dw = load i16, ptr %i.do, align 8
  %i.dx = and i16 %i.dw, 511
  %.not.i.i.i = icmp eq i16 %i.dx, 116
  br i1 %.not.i.i.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dy = call noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %i.do) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i = phi ptr [ %i.dy, %bb.ak ], [ %i.do, %bb.aj ] ; 2 uses
  %i.dz = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker15isPtrOriginSafeEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %.0.i.i.i)
  br i1 %i.dz, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker9reportBugEPKN5clang9NamedDeclEPKNS1_4ExprEPKNS1_11ParmVarDeclEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.f, ptr noundef %.0.i.i.i, ptr noundef nonnull %i.dp, ptr noundef %i.d)
  br label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i

_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.02554.i.i, i64 8 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eb = load ptr, ptr %i.cw, align 8, !tbaa !235
  %i.ec = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #21
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = icmp ult ptr %i.ea, %i.ee
  br i1 %i.ef, label %bb.ah, label %.critedge.loopexit.i.i, !llvm.loop !320

bb.an:                                            ; preds = %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i, %.lr.ph59.i.i.a
  %indvars.iv61.i.i = phi i64 [ %i.dj, %.lr.ph59.i.i.a ], [ %indvars.iv.next62.i.i, %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i ] ; 2 uses
  %i.eg = load i16, ptr %1, align 8
  %i.eh = and i16 %i.eg, 511
  %.not.i.i.i.i31.i.i = icmp eq i16 %i.eh, 118    ; 2 uses
  %spec.select.i.i.i.i.i.i32.i.i = select i1 %.not.i.i.i.i31.i.i, ptr %1, ptr null
  %i.ei = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i32.i.i, i64 48
  %spec.select.i.i.i.i33.i.i = select i1 %.not.i.i.i.i31.i.i, ptr %i.ei, ptr %4
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i33.i.i, i64 %indvars.iv61.i.i
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !188 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0.0.copyload.i34.i.i = load i64, ptr %i.el, align 8, !tbaa !35
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call i16 %i.eo(ptr noundef nonnull align 8 dereferenceable(264) %i.b, i64 %.sroa.0.0.copyload.i34.i.i) #21, !inline_history !319
  %i.eq = and i16 %i.ep, 257
  %or.cond.i35.i.i = icmp eq i16 %i.eq, 257
  br i1 %or.cond.i35.i.i, label %bb.ao, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i

bb.ao:                                            ; preds = %bb.an
  %i.er = load i16, ptr %i.ek, align 8
  %i.es = and i16 %i.er, 511
  %.not.i36.i.i = icmp eq i16 %i.es, 116
  br i1 %.not.i36.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.et = call noundef ptr @_ZN5clang17CXXDefaultArgExpr7getExprEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ek) #21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i37.i.i = phi ptr [ %i.et, %bb.ap ], [ %i.ek, %bb.ao ] ; 2 uses
  %i.eu = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker15isPtrOriginSafeEPKN5clang4ExprE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef %.0.i37.i.i)
  br i1 %i.eu, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker9reportBugEPKN5clang9NamedDeclEPKNS1_4ExprEPKNS1_11ParmVarDeclEPKNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull %i.f, ptr noundef %.0.i37.i.i, ptr noundef null, ptr noundef %i.d)
  br label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i

_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i: ; preds = %bb.ar, %bb.aq, %bb.an
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.ev = load i32, ptr %i.u, align 8, !tbaa !325
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next62.i.i, %i.ew
  br i1 %i.ex, label %bb.an, label %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit, !llvm.loop !321

_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker18visitConstructExprEPKN5clang16CXXConstructExprEPKNS1_4DeclE.exit: ; preds = %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker8checkArgEPKN5clang9NamedDeclEPKNS1_4ExprENS1_8QualTypeEPKNS1_11ParmVarDeclEPKNS1_4DeclE.exit38.i.i, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.i.i, %bb.b, %bb.c, %bb.j, %.critedge58.i.i, %bb.k, %bb.l, %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNK12_GLOBAL__N_124RawPtrRefCallArgsChecker14shouldSkipCallIN5clang16CXXConstructExprEEEbPKT_PKNS2_12FunctionDeclE.exit.i, %.critedge.i8.i
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23VisitCXXBoolLiteralExprEPNS_18CXXBoolLiteralExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitCXXBindTemporaryExprEPNS_20CXXBindTemporaryExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE14VisitBlockExprEPNS_9BlockExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitBinaryOperatorEPNS_14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitCompoundAssignOperatorEPNS_22CompoundAssignOperatorE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitAtomicExprEPNS_10AtomicExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitAsTypeExprEPNS_10AsTypeExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23VisitArrayTypeTraitExprEPNS_18ArrayTypeTraitExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23VisitArraySubscriptExprEPNS_18ArraySubscriptExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE21VisitArraySectionExprEPNS_16ArraySectionExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22VisitArrayInitLoopExprEPNS_17ArrayInitLoopExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23VisitArrayInitIndexExprEPNS_18ArrayInitIndexExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitAddrLabelExprEPNS_13AddrLabelExprE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE32VisitAbstractConditionalOperatorEPNS_27AbstractConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24VisitConditionalOperatorEPNS_19ConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30VisitBinaryConditionalOperatorEPNS_25BinaryConditionalOperatorE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitAttributedStmtEPNS_14AttributedStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE33VisitUnresolvedSYCLKernelCallStmtEPNS_28UnresolvedSYCLKernelCallStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitSwitchStmtEPNS_10SwitchStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitSwitchCaseEPNS_10SwitchCaseE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE16VisitDefaultStmtEPNS_11DefaultStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE13VisitCaseStmtEPNS_8CaseStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE23VisitSYCLKernelCallStmtEPNS_18SYCLKernelCallStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitSEHTryStmtEPNS_10SEHTryStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE17VisitSEHLeaveStmtEPNS_12SEHLeaveStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE19VisitSEHFinallyStmtEPNS_14SEHFinallyStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitSEHExceptStmtEPNS_13SEHExceptStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE15VisitReturnStmtEPNS_10ReturnStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitOpenACCConstructStmtEPNS_20OpenACCConstructStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitOpenACCWaitConstructEPNS_20OpenACCWaitConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitOpenACCUpdateConstructEPNS_22OpenACCUpdateConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitOpenACCShutdownConstructEPNS_24OpenACCShutdownConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE24VisitOpenACCSetConstructEPNS_19OpenACCSetConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitOpenACCInitConstructEPNS_20OpenACCInitConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitOpenACCExitDataConstructEPNS_24OpenACCExitDataConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE30VisitOpenACCEnterDataConstructEPNS_25OpenACCEnterDataConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitOpenACCCacheConstructEPNS_21OpenACCCacheConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE35VisitOpenACCAssociatedStmtConstructEPNS_30OpenACCAssociatedStmtConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitOpenACCLoopConstructEPNS_20OpenACCLoopConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitOpenACCHostDataConstructEPNS_24OpenACCHostDataConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE25VisitOpenACCDataConstructEPNS_20OpenACCDataConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitOpenACCComputeConstructEPNS_23OpenACCComputeConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE29VisitOpenACCCombinedConstructEPNS_24OpenACCCombinedConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitOpenACCAtomicConstructEPNS_22OpenACCAtomicConstructE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE26VisitObjCForCollectionStmtEPNS_21ObjCForCollectionStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE28VisitObjCAutoreleasePoolStmtEPNS_23ObjCAutoreleasePoolStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE18VisitObjCAtTryStmtEPNS_13ObjCAtTryStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20VisitObjCAtThrowStmtEPNS_15ObjCAtThrowStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitObjCAtSynchronizedStmtEPNS_22ObjCAtSynchronizedStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE22VisitObjCAtFinallyStmtEPNS_17ObjCAtFinallyStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE20VisitObjCAtCatchStmtEPNS_15ObjCAtCatchStmtE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZN5clang30DynamicRecursiveASTVisitorBaseILb0EE27VisitOMPExecutableDirectiveEPNS_22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #0 align 2

end_hunk_0
