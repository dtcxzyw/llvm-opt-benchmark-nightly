Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL71tryImplicitlyCaptureThisIfImplicitMemberFunctionAccessWithDependentArgsRN5clang4SemaEPKNS_20UnresolvedMemberExprENS_14SourceLocationE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17MayBeFunctionTypeRKN5clang10ASTContextEPKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(23904) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1514
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !788 ; 5 uses
  %i.c = and i64 %.sroa.0.0.copyload.i, -16
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !791 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %i.g = load i16, ptr %i.f, align 1
  %i.h = and i16 %i.g, 4
  %i.i = icmp ne i16 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 19352
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.j, align 8
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i5
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19368
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.l, align 8
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i6
  %or.cond41 = select i1 %or.cond, i1 true, i1 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 19376
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.n, align 8
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i9
  %or.cond43 = select i1 %or.cond41, i1 true, i1 %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 19344
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.p, align 8
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i12
  %or.cond45 = select i1 %or.cond43, i1 true, i1 %i.q
  br i1 %or.cond45, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !788
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %i.x = add i8 %i.w, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.x, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZNK5clang4Type23isFunctionReferenceTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.e)
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.d, align 16, !tbaa !791
  %i.aa = tail call noundef zeroext i1 @_ZNK5clang4Type27isMemberFunctionPointerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.z)
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.d, align 16, !tbaa !791
  %i.ac = tail call noundef zeroext i1 @_ZNK5clang4Type21isFunctionPointerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ab)
  br i1 %i.ac, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.d, align 16, !tbaa !791 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.0.0.copyload.i.i.i.i20 = load i64, ptr %i.ae, align 8, !tbaa !788
  %i.af = and i64 %.sroa.0.0.copyload.i.i.i.i20, -16
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !791
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ai, align 16
  switch i8 %i.aj, label %bb.g [
    i8 11, label %.critedge
    i8 49, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef ptr @_ZNK5clang4Type23getContainedDeducedTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ad) #30 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread, label %_ZNK5clang4Type15isUndeducedTypeEv.exit

_ZNK5clang4Type15isUndeducedTypeEv.exit:          ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 16
  %i.an = and i32 %i.am, 402653184
  %.not3.i = icmp eq i32 %i.an, 0
  br i1 %.not3.i, label %.critedge, label %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread

_ZNK5clang4Type15isUndeducedTypeEv.exit.thread:   ; preds = %bb.g, %_ZNK5clang4Type15isUndeducedTypeEv.exit
  %i.ao = call noundef zeroext i1 @_ZN4llvm3isaIJN5clang8CallExprENS1_11DeclRefExprENS1_10MemberExprENS1_23CXXPseudoDestructorExprENS1_12OverloadExprENS1_20UnresolvedMemberExprENS1_13UnaryOperatorEEPKNS1_4ExprEEEbRKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZNK5clang4Type15isUndeducedTypeEv.exit, %bb.a, %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread
  %.0 = phi i1 [ %i.ao, %_ZNK5clang4Type15isUndeducedTypeEv.exit.thread ], [ true, %bb.a ], [ true, %_ZNK5clang4Type15isUndeducedTypeEv.exit ], [ true, %bb.f ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

declare i64 @_ZN5clang4Sema28BuildCallToObjectOfClassTypeEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i32, ptr, i64, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL25rebuildUnknownAnyFunctionRN5clang4SemaEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::RebuildUnknownAnyFunction", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %0, ptr %2, align 8, !tbaa !1535
  %i.a = call fastcc i64 @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125RebuildUnknownAnyFunctionENS_12ActionResultIPNS_4ExprELb1EEEJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, -2
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = call i64 @_ZN5clang4Sema30DefaultFunctionArrayConversionEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.d, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i64 %.sroa.0.0
}

declare i64 @_ZN5clang4Sema25BuildCallToMemberFunctionEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i32, ptr, i64, i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @_ZN5clang4Sema23BuildOverloadedCallExprEPNS_5ScopeEPNS_4ExprEPNS_20UnresolvedLookupExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES7_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, ptr noundef, i32, ptr noundef byval(%"class.llvm::MutableArrayRef") align 8, i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang10SemaAMDGPU34AddPotentiallyUnguardedBuiltinUserEPNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang4Sema27getFunctionLevelDeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL26rewriteBuiltinFunctionDeclPN5clang4SemaERNS_10ASTContextEPNS_12FunctionDeclEN4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(23904) %1, ptr noundef nonnull %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.2458", align 8 ; 12 uses
  %7 = alloca %"class.clang::Sema::SFINAETrap", align 8 ; 10 uses
  %8 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 10 uses
  %9 = alloca %"struct.clang::AssociatedConstraint", align 8 ; 4 uses
  %10 = alloca %"class.llvm::SmallVector.2460", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !788
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !791 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %i.g = icmp eq i8 %i.f, 24
  %spec.select.i.i.i = select i1 %i.g, ptr %i.d, ptr null ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17784
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1589, !nonnull !97, !align !787
  %i.j = tail call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %2, i1 noundef zeroext false) #30
  %i.k = tail call noundef ptr @_ZNK5clang7Builtin7Context13getTypeStringEj(ptr noundef nonnull align 8 dereferenceable(176) %i.i, i32 noundef %i.j) #30
  %i.l = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 42) #31
  %i.m = icmp ne ptr %i.l, null
  %i.n = icmp ne ptr %spec.select.i.i.i, null
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 16
  %i.q = lshr i64 %i.p, 48
  %i.r = icmp ult i64 %4, %i.q
  br i1 %i.r, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !858
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i32 0, ptr %i.t, align 8, !tbaa !859
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 8, ptr %i.u, align 4, !tbaa !876
  call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 noundef 0, ptr noundef null, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %0, ptr %7, align 8, !tbaa !1535
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 13760 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1536
  store ptr %7, ptr %i.w, align 8, !tbaa !1536
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1538
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !1541
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.z, align 1, !tbaa !1542
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 18 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !864, !nonnull !97, !align !787 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 204
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1577 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0                    ; 2 uses
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.aa, align 2, !tbaa !1578
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %i.ah, align 8, !tbaa !1579
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 48 ; 2 uses
  %i.aj = load i64, ptr %i.o, align 16
  %i.ak = lshr i64 %i.aj, 45
  %.idx = and i64 %i.ak, 524280                   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx
  %.not185 = icmp samesign eq i64 %.idx, 0
  br i1 %.not185, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.c ] ; 2 uses
  %.078188 = phi i1 [ %.280.ph, %bb.m ], [ false, %bb.c ] ; 2 uses
  %.083186 = phi ptr [ %i.dz, %bb.m ], [ %i.ai, %bb.c ] ; 2 uses
  %i.am = load i64, ptr %.083186, align 8, !tbaa !788 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1514
  %i.ap = call i64 @_ZN5clang4Sema30DefaultFunctionArrayConversionEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ao, i1 noundef zeroext true), !inline_history !1667 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ar = and i64 %i.ap, -2
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = call i64 @_ZN5clang4Sema23DefaultLvalueConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.as), !inline_history !1667 ; 2 uses
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit, label %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit

_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit: ; preds = %bb.d
  %i.av = and i64 %i.at, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.0.0.copyload.i89 = load i64, ptr %i.ax, align 8, !tbaa !788
  %i.ay = and i64 %i.am, -16
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !791 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !788
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !791
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i8, ptr %i.bf, align 16
  %i.bh = icmp eq i8 %i.bg, 40
  br i1 %i.bh, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit
  %i.bi = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ba) #30
  %i.bj = and i64 %i.bi, -16
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bl, align 8 ; 2 uses
  %i.bm = and i64 %.0.copyload.i.i.i.i.i.i.i, 8
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType15hasAddressSpaceEv.exit.thread, label %_ZNK5clang8QualType15hasAddressSpaceEv.exit

_ZNK5clang8QualType15hasAddressSpaceEv.exit:      ; preds = %bb.e
  %i.bn = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.0.0.copyload.i.i.i.i92 = load i64, ptr %i.bp, align 8, !tbaa !815
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i.i92, 4294966784
  %.not179 = icmp eq i64 %i.bq, 0
  br i1 %.not179, label %_ZNK5clang8QualType15hasAddressSpaceEv.exit.thread, label %.critedge

_ZNK5clang8QualType15hasAddressSpaceEv.exit.thread: ; preds = %bb.e, %_ZNK5clang8QualType15hasAddressSpaceEv.exit
  %i.br = and i64 %.sroa.0.0.copyload.i89, -16
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !791 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.copyload.i.i.i.i94 = load i64, ptr %i.bu, align 8, !tbaa !788
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i.i94, -16
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !791
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.by, align 16
  %i.ca = icmp eq i8 %i.bz, 40
  br i1 %i.ca, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK5clang8QualType15hasAddressSpaceEv.exit.thread
  %i.cb = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bt) #30
  %i.cc = and i64 %i.cb, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i.i.i.i.i.i.i97 = load i64, ptr %i.ce, align 8 ; 2 uses
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i.i97, 8
  %.not.i.i.i98 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i98, label %.critedge, label %_ZNK5clang8QualType15hasAddressSpaceEv.exit101

_ZNK5clang8QualType15hasAddressSpaceEv.exit101:   ; preds = %bb.f
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i.i97, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.copyload.i.i.i.i99 = load i64, ptr %i.ci, align 8, !tbaa !815
  %i.cj = and i64 %.sroa.0.0.copyload.i.i.i.i99, 4294966784
  %.not180 = icmp eq i64 %i.cj, 0
  br i1 %.not180, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang8QualType15hasAddressSpaceEv.exit101
  %i.ck = load ptr, ptr %i.bs, align 16, !tbaa !791
  %i.cl = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ck) #30
  %i.cm = and i64 %i.cl, -16
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.0.copyload.i.i.i.i.i.i.i104 = load i64, ptr %i.co, align 8 ; 2 uses
  %i.cp = and i64 %.0.copyload.i.i.i.i.i.i.i104, 8
  %.not.i.i.i105 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i105, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread, label %_ZNK5clang8QualType15getAddressSpaceEv.exit

_ZNK5clang8QualType15getAddressSpaceEv.exit:      ; preds = %bb.g
  %i.cq = and i64 %.0.copyload.i.i.i.i.i.i.i104, -16
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %.sroa.0.0.copyload.i.i.i.i106 = load i64, ptr %i.cs, align 8, !tbaa !815
  %i.ct = trunc i64 %.sroa.0.0.copyload.i.i.i.i106 to i32
  %i.cu = lshr i32 %i.ct, 9
  %i.cv = add nsw i32 %i.cu, -16
  %spec.select.i = icmp ult i32 %i.cv, 3
  br i1 %spec.select.i, label %.critedge, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread

.critedge:                                        ; preds = %bb.f, %_ZNK5clang8QualType15hasAddressSpaceEv.exit101, %_ZNK5clang8QualType15hasAddressSpaceEv.exit.thread, %_ZNK5clang8QualType15hasAddressSpaceEv.exit, %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit, %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %i.cw = load i32, ptr %i.t, align 8, !tbaa !859 ; 2 uses
  %i.cx = load i32, ptr %i.u, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.cw, %i.cx
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.am)
  br label %bb.m

bb.i:                                             ; preds = %.critedge
  %i.cy = zext i32 %i.cw to i64
  %i.cz = load ptr, ptr %6, align 8, !tbaa !858
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store i64 %i.am, ptr %i.da, align 1
  %i.db = load i32, ptr %i.t, align 8, !tbaa !859
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.t, align 8, !tbaa !859
  br label %bb.m

_ZNK5clang8QualType15getAddressSpaceEv.exit.thread: ; preds = %bb.g, %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %i.dd = load ptr, ptr %i.az, align 16, !tbaa !791
  %i.de = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dd) #30
  %i.df = load ptr, ptr %i.bs, align 16, !tbaa !791
  %i.dg = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.df) #30
  %i.dh = and i64 %i.dg, -16
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.copyload.i.i.i.i.i.i.i111 = load i64, ptr %i.dj, align 8 ; 2 uses
  %i.dk = and i64 %.0.copyload.i.i.i.i.i.i.i111, 8
  %.not.i.i.i112 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i112, label %_ZNK5clang8QualType15getAddressSpaceEv.exit115, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread
  %i.dl = and i64 %.0.copyload.i.i.i.i.i.i.i111, -16
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.0.0.copyload.i.i.i.i113 = load i64, ptr %i.dn, align 8, !tbaa !815
  %i.do = trunc i64 %.sroa.0.0.copyload.i.i.i.i113 to i32
  %i.dp = lshr i32 %i.do, 9
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit115

_ZNK5clang8QualType15getAddressSpaceEv.exit115:   ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread, %bb.j
  %.sroa.0.0.i.i.i114 = phi i32 [ %i.dp, %bb.j ], [ 0, %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread ]
  %i.dq = call i64 @_ZNK5clang10ASTContext20getAddrSpaceQualTypeENS_8QualTypeENS_6LangASE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.de, i32 noundef %.sroa.0.0.i.i.i114) #30
  %i.dr = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %1, i64 %i.dq) #30 ; 2 uses
  %i.ds = load i32, ptr %i.t, align 8, !tbaa !859 ; 2 uses
  %i.dt = load i32, ptr %i.u, align 4, !tbaa !876
  %.not.i116 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i116, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit115
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dr)
  br label %bb.m

bb.l:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit115
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %6, align 8, !tbaa !858
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store i64 %i.dr, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.t, align 8, !tbaa !859
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.t, align 8, !tbaa !859
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.k, %bb.l
  %.280.ph = phi i1 [ true, %bb.l ], [ true, %bb.k ], [ %.078188, %bb.h ], [ %.078188, %bb.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.083186, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.al
  br i1 %.not, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit, label %.lr.ph

_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit: ; preds = %bb.d, %.lr.ph, %bb.m
  %.not.lcssa.ph = phi i1 [ %.280.ph, %bb.m ], [ false, %.lr.ph ], [ false, %bb.d ]
  %.pre = load ptr, ptr %7, align 8, !tbaa !1580  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 248
  %.pre203 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !864 ; 2 uses
  %.pre204 = load i8, ptr %i.aa, align 2, !tbaa !1578, !range !96
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %.pre203, i64 204
  %.pre206 = load i32, ptr %.phi.trans.insert205, align 4, !tbaa !1577
  %i.ea = trunc nuw i8 %.pre204 to i1
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit, %bb.c
  %i.eb = phi i32 [ %i.ae, %bb.c ], [ %.pre206, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit ]
  %i.ec = phi i1 [ %i.af, %bb.c ], [ %i.ea, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit ]
  %i.ed = phi ptr [ %i.ac, %bb.c ], [ %.pre203, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit ] ; 2 uses
  %i.ee = phi ptr [ %0, %bb.c ], [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit ]
  %.not.lcssa = phi i1 [ false, %bb.c ], [ %.not.lcssa.ph, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit.loopexit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 204
  %i.eg = icmp eq i32 %i.eb, 5
  br i1 %i.eg, label %bb.n, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang8QualTypeELb1EE9push_backES2_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 194
  store i8 1, ptr %i.eh, align 2, !tbaa !1581
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
end_hunk_0
