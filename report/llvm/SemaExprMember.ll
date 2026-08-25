Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExprMember?download=true
inline.NumInlined: 3337
inline.NumDeleted: 1882
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZN4llvm23SmallVectorTemplateBaseIN5clang4sema17FunctionScopeInfo9WeakUseTyELb1EE15growAndPushBackES4_ = comdat any

$_ZNK5clang16ObjCProtocolDecl13hasDefinitionEv = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_ = comdat any

$_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_ = comdat any

$_ZN5clang13ExtVectorType21getNumericAccessorIdxEc = comdat any

$_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_ = comdat any

$_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE4growEm = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9NamedDeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_ = comdat any

$_ZTVN5clang4Sema18BoundTypeDiagnoserIJNS_11SourceRangeEEEE = comdat any

$_ZTVN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEEE = comdat any

$_ZTVN5clang13DeclFilterCCCINS_12ObjCIvarDeclEEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN5clang4Sema18BoundTypeDiagnoserIJNS_11SourceRangeEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN5clang4Sema18BoundTypeDiagnoserIJNS_11SourceRangeEEE8diagnoseERS0_NS_14SourceLocationENS_8QualTypeE, ptr @_ZN5clang4Sema13TypeDiagnoserD2Ev, ptr @_ZN5clang4Sema18BoundTypeDiagnoserIJNS_11SourceRangeEEED0Ev] }, comdat, align 8
@_ZN5clang4Stmt17StatisticsEnabledE = external local_unnamed_addr global i8, align 1
@_ZTVN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEE8diagnoseERS0_NS_14SourceLocationENS_8QualTypeE, ptr @_ZN5clang4Sema13TypeDiagnoserD2Ev, ptr @_ZN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEED0Ev] }, comdat, align 8
@_ZTVN5clang13DeclFilterCCCINS_12ObjCIvarDeclEEE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5clang27CorrectionCandidateCallbackD2Ev, ptr @_ZN5clang13DeclFilterCCCINS_12ObjCIvarDeclEED0Ev, ptr @_ZN5clang13DeclFilterCCCINS_12ObjCIvarDeclEE17ValidateCandidateERKNS_14TypoCorrectionE, ptr @_ZN5clang27CorrectionCandidateCallback13RankCandidateERKNS_14TypoCorrectionE, ptr @_ZN5clang13DeclFilterCCCINS_12ObjCIvarDeclEE5cloneEv] }, comdat, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@switch.table._ZL23CheckExtVectorComponentRN5clang4SemaENS_8QualTypeERNS_13ExprValueKindENS_14SourceLocationEPKNS_14IdentifierInfoES5_.9 = private unnamed_addr constant [26 x i8] [i8 3, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 0, i8 1, i8 2], align 8
@switch.table._ZN5clang13ExtVectorType21getNumericAccessorIdxEc = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema31isPotentialImplicitMemberAccessERKNS_12CXXScopeSpecERNS_12LookupResultEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !696, !align !697
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 4096
  %.not = icmp eq i64 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !698  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 3 uses
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !699
  br label %_ZNK5clang4Decl14getDeclContextEv.exit.i

_ZNK5clang4Decl14getDeclContextEv.exit.i:         ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 127                        ; 2 uses
  %i.u = icmp eq i16 %i.t, 63
  br i1 %i.u, label %bb.e, label %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit

bb.e:                                             ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i
  %i.v = tail call noundef ptr @_ZN5clang11DeclContext16getRedeclContextEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i) #17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 8
  %.pre3.i = and i16 %.pre.i, 127
  br label %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit

_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit:    ; preds = %_ZNK5clang4Decl14getDeclContextEv.exit.i, %bb.e
  %.pre-phi.i = phi i16 [ %.pre3.i, %bb.e ], [ %i.t, %_ZNK5clang4Decl14getDeclContextEv.exit.i ]
  %i.w = add nsw i16 %.pre-phi.i, -59
  %spec.select.i.i = icmp ult i16 %i.w, 4         ; 2 uses
  %brmerge.not = and i1 %3, %spec.select.i.i
  br i1 %brmerge.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit
  %i.x = load i32, ptr %1, align 8, !tbaa !701
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  %.not2.i.i = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %.not2.i.i, label %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit, label %.critedge

_ZNK5clang12CXXScopeSpec7isEmptyEv.exit:          ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !702
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit
  %i.ad = load i32, ptr %2, align 8, !tbaa !703
  switch i32 %i.ad, label %bb.h [
    i32 3, label %.critedge
    i32 4, label %.critedge.fold.split
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !698 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ae, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i10 = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i10, -8
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 127                      ; 2 uses
  switch i32 %i.aj, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit [
    i32 54, label %bb.i
    i32 55, label %bb.i
    i32 77, label %bb.i
    i32 79, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ak = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ag) #18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre12 = and i32 %.pre, 127
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit

_ZNK5clang12LookupResult12getFoundDeclEv.exit:    ; preds = %bb.h, %bb.i
  %.pre-phi = phi i32 [ %i.aj, %bb.h ], [ %.pre12, %bb.i ] ; 2 uses
  %i.al = icmp eq i32 %.pre-phi, 33
  %i.am = add nsw i32 %.pre-phi, -49
  %i.an = icmp ult i32 %i.am, 4
  %i.ao = or i1 %i.al, %i.an
  br label %.critedge

.critedge.fold.split:                             ; preds = %bb.g
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.fold.split, %bb.f, %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit, %bb.a, %_ZNK5clang12LookupResult12getFoundDeclEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang12CXXScopeSpec7isEmptyEv.exit ], [ false, %bb.g ], [ %i.ao, %_ZNK5clang12LookupResult12getFoundDeclEv.exit ], [ false, %bb.f ], [ %spec.select.i.i, %_ZNK5clang9NamedDecl16isCXXClassMemberEv.exit ], [ true, %.critedge.fold.split ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema31BuildPossibleImplicitMemberExprERKNS_12CXXScopeSpecENS_14SourceLocationERNS_12LookupResultEPKNS_24TemplateArgumentListInfoEPKNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(168) %3, ptr noundef %4, ptr nofree noundef readonly captures(address) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %class.anon.1236, align 8           ; 5 uses
  %7 = alloca %"class.llvm::SmallPtrSet.1222", align 8 ; 17 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::DeclarationName", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZNK5clang4Sema27getFunctionLevelDeclContextEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i1 noundef zeroext false) #17 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11136
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = icmp ult i64 %.0.copyload.i.i.i.i.i, 16  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 124
  %.not.i = icmp eq i16 %i.f, 36
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -72 ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isImplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168) %i.g) #17
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZNK5clang12FunctionDecl30getDependentSpecializationInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %i.g) #17
  %i.j = icmp ne ptr %i.i, null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.048.shrunk.i = phi i1 [ %i.j, %bb.c ], [ false, %bb.b ], [ false, %bb.a ] ; 2 uses
  %.043.i = phi i1 [ false, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !703
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = select i1 %.043.i, i32 8, i32 5
  br i1 %.048.shrunk.i, label %_ZL28ClassifyImplicitMemberAccessRN5clang4SemaERKNS_12LookupResultE.exit.thread, label %_ZL28ClassifyImplicitMemberAccessRN5clang4SemaERKNS_12LookupResultE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.n, ptr %7, align 8, !tbaa !719
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 4, ptr %i.o, align 8, !tbaa !720
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 9 uses
  store i32 0, ptr %i.p, align 4, !tbaa !721
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store i8 1, ptr %i.q, align 8, !tbaa !722
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !698  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !723  ; 2 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %.not112116.i = icmp eq i32 %i.u, 0
  br i1 %.not112116.i, label %.critedge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i
  %.pre123.i = load i32, ptr %i.p, align 4, !tbaa !721
  %.pre123.fr.i = freeze i32 %.pre123.i
  %i.x = icmp eq i32 %.pre123.fr.i, 0             ; 2 uses
  %brmerge.i = or i1 %.048.shrunk.i, %i.x
  %..i = select i1 %i.x, i32 0, i32 7
  br i1 %brmerge.i, label %.critedge.i, label %bb.m

.lr.ph.i:                                         ; preds = %bb.f, %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i
  %.051119.i = phi i1 [ %.152.i, %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i ], [ false, %bb.f ] ; 2 uses
  %.053118.i = phi i1 [ %.154.i, %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i ], [ false, %bb.f ] ; 3 uses
  %.sroa.0107.0117.i = phi ptr [ %i.bj, %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i ], [ %i.s, %bb.f ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0107.0117.i, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0107.0117.i, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 127
  switch i32 %i.ac, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i [
    i32 54, label %bb.g
    i32 55, label %bb.g
    i32 77, label %bb.g
    i32 79, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.ad = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.z) #18
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i:  ; preds = %bb.g, %.lr.ph.i
  %.0.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.z, %.lr.ph.i ] ; 3 uses
  %i.ae = call noundef zeroext i1 @_ZNK5clang9NamedDecl19isCXXInstanceMemberEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i) #17
  br i1 %i.ae, label %bb.h, label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i

bb.h:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 127                      ; 2 uses
  %i.ai = add nsw i32 %i.ah, -49
  %or.cond.i = icmp ult i32 %i.ai, 4
  %i.aj = icmp eq i32 %i.ah, 33
  %narrow.i = or i1 %i.aj, %or.cond.i
  %i.ak = or i1 %.051119.i, %narrow.i             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8 ; 3 uses
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ap = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !699
  br label %_ZN5clang4Decl14getDeclContextEv.exit.i

_ZN5clang4Decl14getDeclContextEv.exit.i:          ; preds = %bb.j, %bb.i
  %.0.i67.i = phi ptr [ %i.ao, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = getelementptr inbounds i8, ptr %.0.i67.i, i64 -64 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !724
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(144) %i.as) #17, !inline_history !726 ; 3 uses
  %i.ax = load i8, ptr %i.q, align 8, !tbaa !722, !range !727, !noalias !728, !noundef !696
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.k:                                             ; preds = %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.az = load ptr, ptr %7, align 8, !tbaa !719, !noalias !728 ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !721, !noalias !728 ; 4 uses
  %i.bb = zext i32 %i.ba to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.be, %.critedge.i.i.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.bd = load ptr, ptr %.023.i.i.i, align 8, !tbaa !731, !noalias !728
  %.not15.i.i.i = icmp eq ptr %i.bd, %i.aw
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, %i.bc
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.k
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !720, !noalias !728
  %i.bg = icmp ult i32 %i.ba, %i.bf
  br i1 %i.bg, label %bb.l, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = add nuw i32 %i.ba, 1
  store i32 %i.bh, ptr %i.p, align 4, !tbaa !721, !noalias !728
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !731, !noalias !728
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i: ; preds = %._crit_edge.i.i.i, %_ZN5clang4Decl14getDeclContextEv.exit.i
  %i.bi = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %i.aw) #17, !noalias !728 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i

_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.l, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i
  %.154.i = phi i1 [ true, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i ], [ %.053118.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i ], [ %.053118.i, %bb.l ], [ %.053118.i, %.lr.ph.i.i.i ] ; 4 uses
  %.152.i = phi i1 [ %.051119.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i ], [ %i.ak, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i ], [ %i.ak, %bb.l ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0107.0117.i, i64 8 ; 2 uses
  %.not112.i.a = icmp eq ptr %i.bj, %i.w
  br i1 %.not112.i.a, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !698
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !723
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [792 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -792
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !732
  switch i32 %i.br, label %bb.q [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 3, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br i1 %.152.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !8, !nonnull !696, !align !697
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bu, 8192
  %.not57.i = icmp eq i64 %i.bv, 0                ; 2 uses
  %spec.select.i = select i1 %.not57.i, i32 10, i32 9
  %spec.select65.i = select i1 %.not57.i, i32 11, i32 9
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.not60.i.a = phi i32 [ 10, %bb.m ], [ 6, %bb.p ], [ %spec.select.i, %bb.o ], [ 10, %bb.n ] ; 2 uses
  %.not63.i = phi i32 [ 11, %bb.m ], [ 6, %bb.p ], [ %spec.select65.i, %bb.o ], [ 11, %bb.n ]
  br i1 %.043.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %..not60.i = select i1 %.154.i, i32 2, i32 %.not60.i.a
  br label %.critedge.i

bb.s:                                             ; preds = %bb.q
  %i.bw = load i16, ptr %i.d, align 8             ; 2 uses
  %i.bx = and i16 %i.bw, 124
  %.not113.i = icmp eq i16 %i.bx, 36
  br i1 %.not113.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.by = call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bz, align 8 ; 3 uses
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cc = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !699
  br label %_ZN5clang13CXXMethodDecl9getParentEv.exit.i

_ZN5clang13CXXMethodDecl9getParentEv.exit.i:      ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi ptr [ %i.cc, %bb.u ], [ %i.cf, %bb.v ]
  %i.cg = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 -64 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !724
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(144) %i.cg) #17, !inline_history !726
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cl = and i16 %i.bw, 127
  %i.cm = add nsw i16 %i.cl, -63
  %i.cn = icmp ult i16 %i.cm, -3
  %i.co = getelementptr inbounds i8, ptr %i.a, i64 -64
  br i1 %i.cn, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5clang13CXXMethodDecl9getParentEv.exit.i
  %.246.i = phi ptr [ %i.ck, %_ZN5clang13CXXMethodDecl9getParentEv.exit.i ], [ %i.co, %bb.w ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !777
  %.not61.i.a = icmp eq ptr %i.cq, null
  br i1 %.not61.i.a, label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %.246.i, align 8, !tbaa !724
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(144) %.246.i) #17, !inline_history !726
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !777 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !724
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(144) %i.cv) #17, !inline_history !726
  %.not62.i = icmp eq ptr %i.cu, %i.cz
  br i1 %.not62.i, label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load i8, ptr %i.q, align 8, !tbaa !722, !range !727, !noundef !696
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !721
  %i.dd = shl i32 %i.dc, 2
  %i.de = load i32, ptr %i.o, align 8, !tbaa !720 ; 3 uses
  %i.df = icmp ult i32 %i.dd, %i.de
  %i.dg = icmp ugt i32 %i.de, 32
  %or.cond.i.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %7) #17
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dh = load ptr, ptr %7, align 8, !tbaa !719
  %i.di = zext i32 %i.de to i64
  %i.dj = shl nuw nsw i64 %i.di, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dh, i8 -1, i64 %i.dj, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  store i32 0, ptr %i.p, align 4, !tbaa !721
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i:     ; preds = %bb.ad, %bb.ab
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !777 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !724
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef ptr %i.dn(ptr noundef nonnull align 8 dereferenceable(144) %i.dk) #17, !inline_history !726 ; 3 uses
  %i.dp = load i8, ptr %i.q, align 8, !tbaa !722, !range !727, !noalias !778, !noundef !696
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ae, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i70.i

bb.ae:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %i.dr = load ptr, ptr %7, align 8, !tbaa !719, !noalias !778 ; 2 uses
  %i.ds = load i32, ptr %i.p, align 4, !tbaa !721, !noalias !778 ; 4 uses
  %i.dt = zext i32 %i.ds to i64
  %.idx.i.i85.i = shl nuw nsw i64 %i.dt, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i.i85.i ; 2 uses
  %.not22.i.i86.i = icmp eq i32 %i.ds, 0
  br i1 %.not22.i.i86.i, label %._crit_edge.i.i92.i, label %.lr.ph.i.i87.i

.lr.ph.i.i87.i:                                   ; preds = %bb.ae, %.critedge.i.i90.i
  %.023.i.i88.i = phi ptr [ %i.dw, %.critedge.i.i90.i ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.dv = load ptr, ptr %.023.i.i88.i, align 8, !tbaa !731, !noalias !778
  %.not15.i.i89.i = icmp eq ptr %i.dv, %i.do
  br i1 %.not15.i.i89.i, label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i, label %.critedge.i.i90.i

.critedge.i.i90.i:                                ; preds = %.lr.ph.i.i87.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.023.i.i88.i, i64 8 ; 2 uses
  %.not.i.i91.i = icmp eq ptr %i.dw, %i.du
  br i1 %.not.i.i91.i, label %._crit_edge.i.i92.i, label %.lr.ph.i.i87.i

._crit_edge.i.i92.i:                              ; preds = %.critedge.i.i90.i, %bb.ae
  %i.dx = load i32, ptr %i.o, align 8, !tbaa !720, !noalias !778
  %i.dy = icmp ult i32 %i.ds, %i.dx
  br i1 %i.dy, label %bb.af, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i70.i

bb.af:                                            ; preds = %._crit_edge.i.i92.i
  %i.dz = add nuw i32 %i.ds, 1
  store i32 %i.dz, ptr %i.p, align 4, !tbaa !721, !noalias !778
  store ptr %i.do, ptr %i.du, align 8, !tbaa !731, !noalias !778
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i70.i: ; preds = %._crit_edge.i.i92.i, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %i.ea = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef %i.do) #17, !noalias !778 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i

_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i: ; preds = %.lr.ph.i.i87.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i70.i, %bb.af, %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %7, ptr %6, align 8, !tbaa !781
  %i.eb = load ptr, ptr %.246.i, align 8, !tbaa !724
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(144) %.246.i) #17, !inline_history !783 ; 2 uses
  %i.ef = load i8, ptr %i.q, align 8, !tbaa !722, !range !727, !noundef !696
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ag, label %"_ZZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEEENK3$_0clES7_.exit.i.i"

bb.ag:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i
  %i.eh = load ptr, ptr %7, align 8, !tbaa !719   ; 2 uses
  %i.ei = load i32, ptr %i.p, align 4, !tbaa !721 ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ej, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.ei, 0
  br i1 %.not17.i.i.i.i.i, label %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i, label %.lr.ph.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.01418.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, %i.ek
  br i1 %.not.i.i.i.i.i, label %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %.01418.i.i.i.i.i = phi ptr [ %i.el, %bb.ah ], [ %i.eh, %bb.ag ] ; 2 uses
  %i.em = load ptr, ptr %.01418.i.i.i.i.i, align 8, !tbaa !731
  %.not15.i.i.not.i.i.i = icmp eq ptr %i.em, %i.ee
  br i1 %.not15.i.i.not.i.i.i, label %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.thread.i, label %bb.ah

"_ZZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEEENK3$_0clES7_.exit.i.i": ; preds = %_ZN4llvm15SmallPtrSetImplIPKN5clang13CXXRecordDeclEE6insertES4_.exit97.i
  %i.en = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %i.ee) #17
  %.not.i.i98.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i98.i, label %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i, label %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.thread.i

_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i, %"_ZZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEEENK3$_0clES7_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.aj

_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i: ; preds = %bb.ah, %"_ZZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEEENK3$_0clES7_.exit.i.i", %bb.ag
  %i.eo = ptrtoint ptr %6 to i64
  %i.ep = call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl11forallBasesEN4llvm12function_refIFbPKS0_EEE(ptr noundef nonnull align 8 dereferenceable(144) %.246.i, ptr nonnull @"_ZN4llvm12function_refIFbPKN5clang13CXXRecordDeclEEE11callback_fnIZL24isProvablyNotDerivedFromRNS1_4SemaEPS2_RKNS_11SmallPtrSetIS4_Lj4EEEE3$_0EEblS4_", i64 %i.eo) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i
  %i.eq = select i1 %.154.i, i32 3, i32 %.not63.i
  br label %.critedge.i

bb.aj:                                            ; preds = %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.i, %_ZL24isProvablyNotDerivedFromRN5clang4SemaEPNS_13CXXRecordDeclERKN4llvm11SmallPtrSetIPKS2_Lj4EEE.exit.thread.i
  %i.er = select i1 %.154.i, i32 1, i32 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aj, %bb.ai, %bb.w, %bb.r, %._crit_edge.i, %bb.f
  %.5.i = phi i32 [ %.not60.i.a, %bb.w ], [ 0, %bb.f ], [ %..not60.i, %bb.r ], [ %i.eq, %bb.ai ], [ %i.er, %bb.aj ], [ %..i, %._crit_edge.i ]
  %i.es = load i8, ptr %i.q, align 8, !tbaa !722, !range !727, !noundef !696
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i
end_hunk_0
