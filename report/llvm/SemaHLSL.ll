Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaHLSL?download=true
inline.NumInlined: 8651
inline.NumDeleted: 3917
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZL27containsIncompleteArrayTypeN5clang8QualTypeE:bb.a
  %.12 = phi i1 [ %i.be, %.lr.ph100 ], [ false, %bb.b ], [ true, %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit ], [ false, %_ZNK5clang4Type5getAsINS_10RecordTypeEEEPKT_v.exit ], [ false, %.loopexit ], [ %i.be, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ], [ true, %.lr.ph ]
  ret i1 %.12
}

declare i64 @_ZNK5clang10ASTContext23removeAddrSpaceQualTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang12InitListExpr11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIiEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !1223, !range !821, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !47
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1225 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIiEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1229
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1225
  br label %_ZN5clanglsIiEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit

_ZN5clanglsIiEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = sext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1230
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 2, ptr %i.o, align 1, !tbaa !814
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1225 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !1230  ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !1230
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !15
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !819, !range !821, !noundef !87
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1242 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !834
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #23, !inline_history !1248
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !1249
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !47
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1251
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !47
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1225 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1229
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !1225
  br label %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1230
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 2, ptr %i.ay, align 1, !tbaa !814
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !1225 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1230 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1230
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIiEERKS0_RKT_.exit, %_ZN5clanglsIiEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit
  ret ptr %0
}

declare void @_ZN5clang12InitListExpr11resizeInitsERKNS_10ASTContextEj(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5clang12InitListExpr10updateInitERKNS_10ASTContextEjPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(23904), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang8SemaHLSL20checkMatrixComponentERNS_4SemaENS_8QualTypeERNS_13ExprValueKindENS_14SourceLocationEPKNS_14IdentifierInfoES6_(ptr noundef nonnull align 8 dereferenceable(273) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, i64 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, i32 %4, ptr nofree noundef readonly captures(none) %5, i32 %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.1336", align 8 ; 10 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %i.g = alloca i32, align 4                      ; 14 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %21 = alloca %"class.clang::SourceRange", align 4 ; 5 uses
  %i.s = and i64 %2, -16
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !836 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i8, ptr %i.v, align 16
  %.not.i = icmp eq i8 %i.w, 28
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_18ConstantMatrixTypeEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.u) #23
  br label %_ZNK5clang4Type6castAsINS_18ConstantMatrixTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_18ConstantMatrixTypeEEEPKT_v.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %i.x, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1271 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !1274 ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1735 ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1739 ; 5 uses
  store i32 %i.ag, ptr %i.b, align 4, !tbaa !47
  %i.ah = icmp samesign ult i64 %i.ac, 2
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5clang4Type6castAsINS_18ConstantMatrixTypeEEEPKT_v.exit
  %i.ai = tail call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.aa, i64 %i.ac, ptr nonnull @.str.35, i64 73, i32 %4, i32 %6)
  br label %bb.am

bb.d:                                             ; preds = %_ZNK5clang4Type6castAsINS_18ConstantMatrixTypeEEEPKT_v.exit
  %i.aj = load i8, ptr %i.aa, align 8, !tbaa !814
  %i.ak = icmp eq i8 %i.aj, 95
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 17
  %i.am = load i8, ptr %i.al, align 1, !tbaa !814
  %i.an = icmp eq i8 %i.am, 109                   ; 7 uses
  %. = select i1 %i.an, i32 4, i32 3              ; 2 uses
  %.lhs.trunc = trunc i64 %i.ab to i32            ; 3 uses
  %i.ao = urem i32 %.lhs.trunc, %.
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = tail call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.aa, i64 %i.ac, ptr nonnull @.str.36, i64 47, i32 %4, i32 %6)
  br label %bb.am

bb.g:                                             ; preds = %bb.e
  %i.aq = select i1 %i.an, ptr @.str.37, ptr @.str.38
  %i.ar = select i1 %i.an, i64 27, i64 25
  %i.as = tail call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.aa, i64 %i.ac, ptr nonnull %i.aq, i64 %i.ar, i32 %4, i32 %6)
  br label %bb.am

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.at = mul i32 %i.ag, %i.ae                    ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store ptr %i.av, ptr %7, align 8, !tbaa !1458
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 16, ptr %i.ax, align 8, !tbaa !1461
  %i.ay = icmp ugt i32 %i.at, 16
  br i1 %i.ay, label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %bb.h
  store i64 0, ptr %i.aw, align 8, !tbaa !1460
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.av, i64 noundef %i.au, i64 noundef 1) #23
  %i.az = load ptr, ptr %7, align 8, !tbaa !1458
  br label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.h
  %.not.i145 = icmp eq i32 %i.at, 0
  br i1 %.not.i145, label %_ZN4llvm11SmallVectorIbLj16EEC2EmRKb.exit, label %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i

_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i: ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %.sink.i = phi ptr [ %i.az, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.av, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 0, i64 %i.au, i1 false), !tbaa !1319
  br label %_ZN4llvm11SmallVectorIbLj16EEC2EmRKb.exit

_ZN4llvm11SmallVectorIbLj16EEC2EmRKb.exit:        ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm15SmallVectorImplIbE6assignEmb.exit.sink.split.i
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !1460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !47
  %.not139266.not = icmp eq i32 %.lhs.trunc, 0
  br i1 %.not139266.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIbLj16EEC2EmRKb.exit
  %i.ba = select i1 %i.an, i32 2, i32 1
  %i.bb = add i32 %4, 1                           ; 3 uses
  %i.bc = add i32 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = load ptr, ptr %7, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.y
  %i.bj = phi i32 [ 0, %.lr.ph ], [ %i.ep, %bb.y ] ; 3 uses
  %.0118268 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.y ]
  %.0124267 = phi i32 [ 0, %.lr.ph ], [ %i.eq, %bb.y ] ; 6 uses
  %i.bk = zext i32 %.0124267 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.bk ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !814 ; 3 uses
  %.not134 = icmp eq i8 %i.bm, 95                 ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %.not134, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !814
  %.not135 = icmp eq i8 %i.bo, 109
  br i1 %.not135, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !814
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.br = phi i8 [ %i.bq, %bb.m ], [ %i.bm, %bb.l ] ; 2 uses
  store i8 %i.br, ptr %i.f, align 1, !tbaa !814
  %i.bs = icmp eq i8 %i.br, %i.bm
  %i.bt = select i1 %i.bs, i32 1, i32 2
  %i.bu = add i32 %.0124267, %4
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.f, i64 1, ptr nonnull @.str.39, i64 11, i32 %i.bv, i32 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %.thread218

bb.o:                                             ; preds = %bb.i
  br i1 %.not134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = add i32 %i.bb, %.0124267
  %i.by = call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.bl, i64 1, ptr nonnull @.str.40, i64 10, i32 %i.bx, i32 %6)
  br label %.thread218

bb.q:                                             ; preds = %bb.o, %bb.k
  %.sink379 = phi i64 [ 2, %bb.k ], [ 1, %bb.o ]
  %.sink = phi i64 [ 3, %bb.k ], [ 2, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink379
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !814 ; 2 uses
  store i8 %i.ca, ptr %i.d, align 1, !tbaa !814
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.sink
  %storemerge = load i8, ptr %i.cb, align 1, !tbaa !814 ; 6 uses
  store i8 %storemerge, ptr %i.e, align 1, !tbaa !814
  %i.cc = add i8 %i.ca, -58
  %i.cd = icmp ult i8 %i.cc, -10
  br i1 %i.cd, label %bb.r, label %.thread310

bb.r:                                             ; preds = %bb.q
  %i.ce = add i32 %i.bc, %.0124267
  %i.cf = call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.d, i64 1, ptr nonnull @.str.41, i64 14, i32 %i.ce, i32 %6) ; 0 uses
  %i.cg = add i8 %storemerge, -48
  %i.ch = icmp ult i8 %i.cg, 10
  br i1 %i.ch, label %.thread218, label %.critedge

.thread310:                                       ; preds = %bb.q
  %i.ci = add i8 %storemerge, -48
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %.thread311, label %.critedge

.critedge:                                        ; preds = %.thread310, %bb.r
  %i.ck = select i1 %i.an, i32 3, i32 2
  %i.cl = add i32 %i.bb, %i.ck
  %i.cm = add i32 %i.cl, %.0124267
  %i.cn = call fastcc i64 @_ZL25ReportMatrixInvalidMemberRN5clang4SemaEN4llvm9StringRefES3_NS_14SourceLocationES4_(ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr nonnull %i.e, i64 1, ptr nonnull @.str.42, i64 17, i32 %i.cm, i32 %6) ; 0 uses
  br label %.thread218

.thread311:                                       ; preds = %.thread310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.co = load i8, ptr %i.d, align 1, !tbaa !814
  %i.cp = sext i8 %i.co to i32                    ; 2 uses
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  store i32 %i.cq, ptr %i.g, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.cr = zext nneg i8 %storemerge to i32         ; 3 uses
  %i.cs = add nsw i32 %i.cr, -48                  ; 2 uses
  store i32 %i.cs, ptr %i.h, align 4, !tbaa !47
  br i1 %i.an, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread311
  %i.ct = icmp ugt i32 %i.cq, 3
  br i1 %i.ct, label %bb.t, label %.thread314

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i32 %4, i32 noundef 3965) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.cu = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 0, ptr %i.j, align 4, !tbaa !47
  %i.cv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cu, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 %6, ptr %9, align 4, !tbaa !47
  store i32 %6, ptr %i.bf, align 4, !tbaa !47
  %i.cw = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cv, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.cx = icmp ult i8 %storemerge, 52
  br i1 %i.cx, label %.thread223, label %.critedge141

.thread314:                                       ; preds = %bb.s
  %i.cy = icmp ult i8 %storemerge, 52
  br i1 %i.cy, label %._crit_edge294, label %.critedge141

.critedge141:                                     ; preds = %.thread314, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i32 %4, i32 noundef 3965) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i32 1, ptr %i.k, align 4, !tbaa !47
  %i.cz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i32 0, ptr %i.l, align 4, !tbaa !47
  %i.da = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cz, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 %6, ptr %11, align 4, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %6, ptr %i.db, align 4, !tbaa !47
  %i.dc = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.da, ptr noundef nonnull align 4 dereferenceable(8) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
end_hunk_0
