Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Registry?download=true
inline.NumInlined: 88006
inline.NumDeleted: 30746
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 287
begin_hunk_0_@_ZNK5clang11ParmVarDecl13hasDefaultArgEv
declare noundef zeroext i1 @_ZNK5clang11ParmVarDecl13hasDefaultArgEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal22matcher_isArrayMatcher7matchesERKNS_10CXXNewExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 1048576
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_hasPlacementArg0Matcher7matchesERKNS_10CXXNewExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !918
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1192 ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i32, ptr %1, align 8                ; 2 uses
  %i.i = lshr i32 %i.h, 20
  %.lobit.i.i.i.i.i = and i32 %i.i, 1
  %i.j = lshr i32 %i.h, 24
  %.lobit.i.i.i.i = and i32 %i.j, 1
  %i.k = add nuw nsw i32 %.lobit.i.i.i.i.i, %.lobit.i.i.i.i
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %i.n = zext i32 %i.d to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1193 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3355)
  %i.q = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #19, !noalias !3356
  store i32 %i.q, ptr %4, align 8, !tbaa !915, !alias.scope !3356
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !917, !alias.scope !3356
  %i.s = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal34matcher_hasAnyPlacementArg0Matcher7matchesERKNS_10CXXNewExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.674, align 8            ; 6 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !956
  store ptr %3, ptr %i.b, align 8, !tbaa !958
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %1, align 8                ; 2 uses
  %i.e = lshr i32 %i.d, 20
  %.lobit.i.i.i.i = and i32 %i.e, 1
  %i.f = lshr i32 %i.d, 24
  %.lobit.i.i.i = and i32 %i.f, 1
  %i.g = add nuw nsw i32 %.lobit.i.i.i.i, %.lobit.i.i.i
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !918
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %i.n = call ptr @_ZSt9__find_ifIN5clang4Stmt12CastIteratorINS0_4ExprEKPKS3_KPKS1_EEN9__gnu_cxx5__ops10_Iter_predIZNKS0_12ast_matchers8internal34matcher_hasAnyPlacementArg0Matcher7matchesERKNS0_10CXXNewExprEPNSF_14ASTMatchFinderEPNSF_21BoundNodesTreeBuilderEEUlS5_E_EEET_SQ_SQ_T0_St26random_access_iterator_tag(ptr nonnull %i.i, ptr nonnull %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_pred.1018") align 8 %4)
  %i.o = icmp ne ptr %i.m, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal28matcher_hasArraySize0Matcher7matchesERKNS_10CXXNewExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 1048576
  %.not17 = icmp eq i32 %i.b, 0
  br i1 %.not17, label %bb.b, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit

_ZNK5clang10CXXNewExpr12getArraySizeEv.exit:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !937  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit13

_ZNK5clang10CXXNewExpr12getArraySizeEv.exit13:    ; preds = %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  %i.f = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #19, !noalias !3363
  store i32 %i.f, ptr %4, align 8, !tbaa !915, !alias.scope !3363
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !917, !alias.scope !3363
  %i.h = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit13, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit, %bb.a
  %i.i = phi i1 [ false, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit ], [ false, %bb.a ], [ %i.h, %_ZNK5clang10CXXNewExpr12getArraySizeEv.exit13 ]
  ret i1 %i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal28matcher_hasDefinitionMatcher7matchesERKNS_13CXXRecordDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXRecordDecl13hasDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal23matcher_isScopedMatcher7matchesERKNS_8EnumDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(164) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i40, ptr %i.a, align 8
  %i.c = icmp slt i40 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal32matcher_hasTrailingReturnMatcher7matchesERKNS_12FunctionDeclEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !918
  %i.b = and i64 %.sroa.0.0.copyload.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !924 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 16
  %.not.i = icmp eq i8 %i.f, 24
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !918
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !924
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i8, ptr %i.k, align 16
  %i.m = icmp eq i8 %i.l, 24
  br i1 %i.m, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread11

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #19 ; 2 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread11, label %.thread17

.thread17:                                        ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 16
  %i.q = and i64 %i.p, 4294967296
  %i.r = icmp ne i64 %i.q, 0
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread11

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.e, align 16
  %i.t = and i64 %i.s, 4294967296
  %i.u = icmp ne i64 %i.t, 0
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread11

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.thread11: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit, %bb.c, %.thread17
  %i.v = phi i1 [ %i.r, %.thread17 ], [ %i.u, %bb.c ], [ false, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit ], [ false, %bb.b ]
  ret i1 %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal47matcher_ignoringElidableConstructorCall0Matcher7matchesERKNS_4ExprEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511                        ; 2 uses
  %.not = icmp eq i16 %i.b, 62
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3373 ; 2 uses
  %.pre = load i16, ptr %i.d, align 8
  %.pre35 = and i16 %.pre, 511
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i16 [ %.pre35, %bb.b ], [ %i.b, %bb.a ]
  %.019 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.e = add nsw i16 %.pre-phi, -119
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.e, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %.019, align 8             ; 2 uses
  %i.g = and i32 %i.f, 524288
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %i.f, 511
  %.not.i.i.i.i = icmp eq i32 %i.h, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %.019, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %6, ptr %i.i
  %i.j = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !1193 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %.not34 = icmp eq i16 %i.l, 50
  br i1 %.not34, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8 ; 3 uses
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3376
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi ptr [ %i.q, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3378)
  %i.w = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #19, !noalias !3379
  store i32 %i.w, ptr %5, align 8, !tbaa !915, !alias.scope !3379
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !917, !alias.scope !3379
  %i.y = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3381)
  %i.aa = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %1) #19, !noalias !3382
  store i32 %i.aa, ptr %4, align 8, !tbaa !915, !alias.scope !3382
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !917, !alias.scope !3382
  %i.ac = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.3 = phi i1 [ %i.ac, %bb.j ], [ %i.y, %bb.i ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal36matcher_isStandaloneDirectiveMatcher7matchesERKNS_22OMPExecutableDirectiveEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang22OMPExecutableDirective21isStandaloneDirectiveEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZNK5clang22OMPExecutableDirective21isStandaloneDirectiveEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal34matcher_hasStructuredBlock0Matcher7matchesERKNS_22OMPExecutableDirectiveEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5clang22OMPExecutableDirective21isStandaloneDirectiveEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call noundef ptr @_ZN5clang22OMPExecutableDirective18getStructuredBlockEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3388)
  %i.d = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #19, !noalias !3389
  store i32 %i.d, ptr %4, align 8, !tbaa !915, !alias.scope !3389
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !917, !alias.scope !3389
  %i.f = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal28matcher_hasAnyClause0Matcher7matchesERKNS_22OMPExecutableDirectiveEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3390 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5clang22OMPExecutableDirective7clausesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3392
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNK5clang22OMPExecutableDirective7clausesEv.exit

_ZNK5clang22OMPExecutableDirective7clausesEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.42.0.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.sroa.01.0.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i, i64 %.sroa.42.0.i ; 2 uses
  %i.h = tail call noundef ptr @_ZN5clang12ast_matchers8internal26matchesFirstInPointerRangeINS1_7MatcherINS_9OMPClauseEEEPKPS4_EET0_RKT_S9_S9_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %.sroa.01.0.i, ptr noundef %i.g, ptr noundef %2, ptr noundef %3)
  %i.i = icmp ne ptr %i.h, %i.g
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang12ast_matchers8internal26matchesFirstInPointerRangeINS1_7MatcherINS_9OMPClauseEEEPKPS4_EET0_RKT_S9_S9_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %5 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %6 = alloca %"class.clang::ast_matchers::internal::BoundNodesTreeBuilder", align 8 ; 11 uses
  %.not19 = icmp eq ptr %1, %2
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.01321, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %2
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !3393

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01321 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %.01420 = phi ptr [ undef, %.lr.ph ], [ %.115, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.a, ptr %6, align 8, !tbaa !1022
  store i32 0, ptr %i.b, align 8, !tbaa !954
  store i32 1, ptr %i.c, align 4, !tbaa !1023
  %i.g = load i32, ptr %i.d, align 8, !tbaa !954
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %4) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.c, %bb.d
  %i.i = load ptr, ptr %.01321, align 8, !tbaa !3399 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !3400)
  call void @llvm.experimental.noalias.scope.decl(metadata !3401)
  %i.j = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_9OMPClauseE(ptr noundef nonnull align 4 dereferenceable(12) %i.i) #19, !noalias !3402
  store i32 %i.j, ptr %5, align 8, !tbaa !915, !alias.scope !3402
  store ptr %i.i, ptr %i.e, align 8, !tbaa !917, !alias.scope !3402
  %i.k = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %3, ptr noundef nonnull %6) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, %bb.e
  %.115 = phi ptr [ %.01321, %bb.e ], [ %.01420, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit ] ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !1022   ; 3 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !954  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = mul nuw nsw i64 %i.o, 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1029
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang12DynTypedNodeEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.s)
  %.not.i.i.i16 = icmp eq ptr %i.m, %i.q
  br i1 %.not.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !1022
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, %bb.f
  %i.t = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @free(ptr noundef %i.t) #19
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEESC_EEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISJ_EET0_:bb.a
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !9154
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_8CallExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_8CallExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1899 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %.split.loop.exit11

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext i32 %i.b to i64
  %i.f = load i32, ptr %1, align 8
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9159

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.e, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.k = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1193
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 511
  %i.p = icmp eq i16 %i.o, 116
  br i1 %i.p, label %bb.b, label %.split.loop.exit, !llvm.loop !9159

.split.loop.exit:                                 ; preds = %bb.c
  %i.q = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.q, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1894
  %i.t = icmp eq i32 %.0.lcssa.sink, %i.s
  ret i1 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  %3 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23, !noalias !9169 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !1036, !noalias !9169
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_26CXXUnresolvedConstructExprEjEE, i64 16), ptr %i.a, align 8, !tbaa !1020, !noalias !9169
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %0, align 4, !tbaa !1079, !noalias !9169
  store i32 %i.d, ptr %i.c, align 4, !tbaa !1902, !noalias !9169
  %i.e = atomicrmw add ptr %i.b, i32 1 monotonic, align 4, !noalias !9169 ; 0 uses
  store i8 0, ptr %3, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 292, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 292, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1035, !alias.scope !9170
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1058 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1059
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.a, ptr %i.k, align 8, !tbaa !1035
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1058
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.g, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.a
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %.pr, align 8, !tbaa !1020
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23, !noalias !9171 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !1036, !noalias !9171
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_15ObjCMessageExprEjEE, i64 16), ptr %i.t, align 8, !tbaa !1020, !noalias !9171
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.w = load i32, ptr %0, align 4, !tbaa !1079, !noalias !9171
  store i32 %i.w, ptr %i.v, align 4, !tbaa !1904, !noalias !9171
  %i.x = atomicrmw add ptr %i.u, i32 1 monotonic, align 4, !noalias !9171 ; 0 uses
  store i8 0, ptr %2, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 226, ptr %.sroa.44.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 226, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.y, align 8, !tbaa !1035, !alias.scope !9172
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !1058 ; 4 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !1059
  %.not.i.i.i4 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !1035
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !1058
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pr.i = load ptr, ptr %i.y, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i5, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !9168
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_31matcher_argumentCountIs0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_16CXXConstructExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_16CXXConstructExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1907 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader.a, label %.split.loop.exit11

.preheader.a:                                     ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.a
  %i.d = zext i32 %i.b to i64
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr %4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9173

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.d, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1193
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.b, label %.split.loop.exit, !llvm.loop !9173

.split.loop.exit:                                 ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader.a, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.n, %.split.loop.exit ], [ 0, %.preheader.a ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1897
  %i.q = icmp eq i32 %.0.lcssa.sink, %i.p
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_26CXXUnresolvedConstructExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_26CXXUnresolvedConstructExprEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917
  %i.c = load ptr, ptr %0, align 8, !tbaa !1020
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %2, ptr noundef %3) #19
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_26CXXUnresolvedConstructExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !918  ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %.split.loop.exit11

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9174

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.e, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.f = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  %i.k = icmp eq i16 %i.j, 116
  br i1 %i.k, label %bb.b, label %.split.loop.exit, !llvm.loop !9174

.split.loop.exit:                                 ; preds = %bb.c
  %i.l = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.l, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1902
  %i.o = icmp eq i32 %.0.lcssa.sink, %i.n
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_15ObjCMessageExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal31matcher_argumentCountIs0MatcherINS_15ObjCMessageExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = and i32 %i.b, 65535                      ; 2 uses
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 65535
  br label %.split.loop.exit11

bb.c:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.d, !llvm.loop !9175

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv16 = phi i64 [ %i.f, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1193
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.c, label %.split.loop.exit, !llvm.loop !9175

.split.loop.exit:                                 ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.c, %.preheader, %.split.loop.exit, %bb.b
  %.0.lcssa.sink = phi i32 [ %i.g, %bb.b ], [ %i.n, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1904
  %i.q = icmp eq i32 %.0.lcssa.sink, %i.p
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang12ast_matchers7dynamic8internal16matcherMarshall1INS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEERKjEENS1_14VariantMatcherEPFvvEN4llvm9StringRefENS1_11SourceRangeENSK_8ArrayRefINS1_11ParserValueEEEPNS1_11DiagnosticsE(ptr dead_on_unwind noalias writable sret(%"class.clang::ast_matchers::dynamic::VariantMatcher") align 8 %0, ptr noundef %1, ptr %2, i64 %3, i64 %4, i64 %5, ptr noundef byval(%"class.llvm::ArrayRef.746") align 8 %6, ptr noundef %7) #3 comdat {
bb.a:
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.clang::ast_matchers::dynamic::Diagnostics::ArgStream", align 8 ; 4 uses
  %14 = alloca %"class.clang::ast_matchers::dynamic::Diagnostics::ArgStream", align 8 ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.clang::ast_matchers::dynamic::ArgKind", align 8 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.clang::ast_matchers::internal::PolymorphicMatcher.1080", align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1739 ; 2 uses
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.d = tail call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %4, i64 %5, i32 noundef 2) #19
  store ptr %i.d, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 10, ptr %i.e, align 8, !tbaa !1742
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !1743
  store i32 1, ptr %12, align 8, !tbaa !918
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(34) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 11, ptr %i.h, align 8, !tbaa !1742
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !1743
  store i64 %i.c, ptr %11, align 8, !tbaa !918
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(34) %11) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN5clang12ast_matchers7dynamic14VariantMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %6, align 8, !tbaa !1744   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers7dynamic12VariantValue10isUnsignedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.03.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8
  %i.o = tail call ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics8addErrorENS1_11SourceRangeENS2_9ErrorTypeE(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, i32 noundef 3) #19
  store ptr %i.o, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 10, ptr %i.p, align 8, !tbaa !1742
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !1743
  store i32 1, ptr %10, align 8, !tbaa !918
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang12ast_matchers7dynamic11Diagnostics9ArgStreamlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(34) %10) #19
end_hunk_1
begin_hunk_2_@_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEESC_EEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISJ_EET0_:bb.a
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !9184
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJS9_SA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_8CallExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_8CallExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1899 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %.split.loop.exit11

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext i32 %i.b to i64
  %i.f = load i32, ptr %1, align 8
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9189

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.e, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.k = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1193
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 511
  %i.p = icmp eq i16 %i.o, 116
  br i1 %i.p, label %bb.b, label %.split.loop.exit, !llvm.loop !9189

.split.loop.exit:                                 ; preds = %bb.c
  %i.q = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.q, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1909
  %i.t = icmp uge i32 %.0.lcssa.sink, %i.s
  ret i1 %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  %3 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23, !noalias !9199 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !1036, !noalias !9199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_26CXXUnresolvedConstructExprEjEE, i64 16), ptr %i.a, align 8, !tbaa !1020, !noalias !9199
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %0, align 4, !tbaa !1079, !noalias !9199
  store i32 %i.d, ptr %i.c, align 4, !tbaa !1913, !noalias !9199
  %i.e = atomicrmw add ptr %i.b, i32 1 monotonic, align 4, !noalias !9199 ; 0 uses
  store i8 0, ptr %3, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 292, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 292, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1035, !alias.scope !9200
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1058 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1059
  %.not.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.a, ptr %i.k, align 8, !tbaa !1035
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !1058
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.m, ptr %i.g, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.a
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pr = load ptr, ptr %i.f, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %.pr, align 8, !tbaa !1020
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit: ; preds = %bb.c, %bb.b, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.t = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23, !noalias !9201 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !1036, !noalias !9201
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_15ObjCMessageExprEjEE, i64 16), ptr %i.t, align 8, !tbaa !1020, !noalias !9201
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.w = load i32, ptr %0, align 4, !tbaa !1079, !noalias !9201
  store i32 %i.w, ptr %i.v, align 4, !tbaa !1915, !noalias !9201
  %i.x = atomicrmw add ptr %i.u, i32 1 monotonic, align 4, !noalias !9201 ; 0 uses
  store i8 0, ptr %2, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 226, ptr %.sroa.44.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 226, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.y, align 8, !tbaa !1035, !alias.scope !9202
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !1058 ; 4 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !1059
  %.not.i.i.i4 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !1035
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !1058
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pr.i = load ptr, ptr %i.y, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i5, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.af = atomicrmw sub ptr %i.ae, i32 1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.e, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !9198
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_36matcher_argumentCountAtLeast0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISK_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_16CXXConstructExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_16CXXConstructExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1907 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader.a, label %.split.loop.exit11

.preheader.a:                                     ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.a
  %i.d = zext i32 %i.b to i64
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.g, ptr %4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9203

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.d, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1193
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.b, label %.split.loop.exit, !llvm.loop !9203

.split.loop.exit:                                 ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader.a, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.n, %.split.loop.exit ], [ 0, %.preheader.a ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1911
  %i.q = icmp uge i32 %.0.lcssa.sink, %i.p
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_26CXXUnresolvedConstructExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_26CXXUnresolvedConstructExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !918  ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %.split.loop.exit11

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.c, !llvm.loop !9204

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv16 = phi i64 [ %i.e, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.f = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  %i.k = icmp eq i16 %i.j, 116
  br i1 %i.k, label %bb.b, label %.split.loop.exit, !llvm.loop !9204

.split.loop.exit:                                 ; preds = %bb.c
  %i.l = trunc nuw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.b, %.preheader, %.split.loop.exit, %bb.a
  %.0.lcssa.sink = phi i32 [ %i.b, %bb.a ], [ %i.l, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1913
  %i.o = icmp uge i32 %.0.lcssa.sink, %i.n
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_15ObjCMessageExprEjED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal36matcher_argumentCountAtLeast0MatcherINS_15ObjCMessageExprEjE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = and i32 %i.b, 65535                      ; 2 uses
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %.split.loop.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 65535
  br label %.split.loop.exit11

bb.c:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.split.loop.exit11, label %bb.d, !llvm.loop !9205

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv16 = phi i64 [ %i.f, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %i.h = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1193
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 511
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.c, label %.split.loop.exit, !llvm.loop !9205

.split.loop.exit:                                 ; preds = %bb.d
  %i.n = trunc nuw nsw i64 %indvars.iv16 to i32
  br label %.split.loop.exit11

.split.loop.exit11:                               ; preds = %bb.c, %.preheader, %.split.loop.exit, %bb.b
  %.0.lcssa.sink = phi i32 [ %i.g, %bb.b ], [ %i.n, %.split.loop.exit ], [ 0, %.preheader ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1915
  %i.q = icmp uge i32 %.0.lcssa.sink, %i.p
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang12ast_matchers7dynamic8internal25variadicMatcherDescriptorINS0_8internal15BindableMatcherINS_4StmtEEENS4_7MatcherINS_18ArraySubscriptExprEEETnPFT_N4llvm8ArrayRefIPKT0_EEEXadL_ZNS4_25makeDynCastAllOfCompositeIS6_S9_EENS5_ISB_EENSD_IPKNS8_ISE_EEEEEEEENS1_14VariantMatcherENSC_9StringRefENS1_11SourceRangeENSD_INS1_11ParserValueEEEPNS1_11DiagnosticsE(ptr dead_on_unwind noalias writable sret(%"class.clang::ast_matchers::dynamic::VariantMatcher") align 8 %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef byval(%"class.llvm::ArrayRef.746") align 8 %5, ptr noundef %6) #3 comdat {
bb.a:
  %7 = alloca %"class.clang::ast_matchers::internal::Matcher.75", align 8 ; 5 uses
  %8 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.2159", align 8 ; 5 uses
  %9 = alloca %"class.std::optional.815", align 8 ; 6 uses
  %10 = alloca %"class.clang::ast_matchers::dynamic::VariantMatcher::MatcherOps", align 4 ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.std::optional.815", align 8 ; 6 uses
  %16 = alloca %"class.clang::ast_matchers::dynamic::VariantMatcher::MatcherOps", align 4 ; 5 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"class.llvm::SmallVector.2147", align 8 ; 10 uses
  %21 = alloca %"class.llvm::SmallVector.2152", align 8 ; 26 uses
  %22 = alloca %"class.clang::ast_matchers::dynamic::Diagnostics::ArgStream", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.clang::ast_matchers::dynamic::ArgKind", align 8 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.clang::ast_matchers::dynamic::Diagnostics::ArgStream", align 8 ; 4 uses
  %27 = alloca %"class.clang::ast_matchers::dynamic::Diagnostics::ArgStream", align 8 ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.clang::ast_matchers::dynamic::ArgKind", align 8 ; 4 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.clang::ast_matchers::internal::Matcher.1360", align 8 ; 6 uses
  %32 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 6 uses
  %.sroa.055 = alloca [16 x i8], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.b = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.b, ptr %20, align 8, !tbaa !1022
  %i.c = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !954
  %i.d = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 8, ptr %i.d, align 4, !tbaa !1023
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1739 ; 7 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal7MatcherINS1_18ArraySubscriptExprEEEE7reserveEm.exit.thread, label %bb.b

_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal7MatcherINS1_18ArraySubscriptExprEEEE7reserveEm.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.h, ptr %21, align 8, !tbaa !1022
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !954
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 8, ptr %i.j, align 4, !tbaa !1023
  %.pre86 = load ptr, ptr %20, align 8, !tbaa !1022
  br label %.critedge40

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal7MatcherINS1_18ArraySubscriptExprEEEE7reserveEm.exit.thread113

_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal7MatcherINS1_18ArraySubscriptExprEEEE7reserveEm.exit.thread113: ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %i.f to i32
  store i32 %i.l, ptr %i.c, align 8, !tbaa !954
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.m, ptr %21, align 8, !tbaa !1022
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !954
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 8, ptr %i.o, align 4, !tbaa !1023
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.b, i64 noundef %i.f, i64 noundef 8) #19
  %i.p = trunc i64 %i.f to i32
  store i32 %i.p, ptr %i.c, align 8, !tbaa !954
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.q, ptr %21, align 8, !tbaa !1022
end_hunk_2
begin_hunk_3_@_ZNK5clang12ast_matchers8internal40matcher_forEachArgumentWithParam0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEENS4_INS_11ParmVarDeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE:bb.a
  %i.ak = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !14792 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  store i32 0, ptr %i.al, align 4, !tbaa !1036, !noalias !14792
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal22matcher_callee1MatcherINS_19CXXOperatorCallExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.ak, align 8, !tbaa !1020, !noalias !14792
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0188, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.s, ptr %i.an, align 8, !tbaa !1035, !noalias !14792
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers6calleeERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4, !noalias !14792 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers6calleeERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.h
  %i.aq = atomicrmw add ptr %i.al, i32 1 monotonic, align 4, !noalias !14792 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14793)
  call void @llvm.experimental.noalias.scope.decl(metadata !14794)
  call void @llvm.experimental.noalias.scope.decl(metadata !14795)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !14796
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19, !noalias !14796
  call void @llvm.experimental.noalias.scope.decl(metadata !14797)
  store i8 0, ptr %18, align 8, !noalias !14796
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 288, ptr %.sroa.4196.0..sroa_idx, align 4, !noalias !14796
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 288, ptr %.sroa.5197.0..sroa_idx, align 8, !noalias !14796
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !1035, !alias.scope !14797, !noalias !14796
  %i.as = atomicrmw add ptr %i.al, i32 1 monotonic, align 4, !noalias !14798 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 186) #19, !noalias !14796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 12, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1035, !noalias !14796 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !1035, !alias.scope !14796
  %.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i20, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4, !noalias !14796 ; 0 uses
  %.pr.i.i.i21 = load ptr, ptr %i.au, align 8, !tbaa !1035, !noalias !14796 ; 4 uses
  %.not.i.i.i.i.i.i.i22 = icmp eq ptr %.pr.i.i.i21, null
  br i1 %.not.i.i.i.i.i.i.i22, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.pr.i.i.i21, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4, !noalias !14796
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.j, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %.pr.i.i.i21, align 8, !tbaa !1020, !noalias !14796
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !14796
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i21) #19, !noalias !14796, !inline_history !479
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i: ; preds = %bb.j, %bb.i, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_19CXXOperatorCallExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !1035, !noalias !14796 ; 4 uses
  %.not.i.i.i.i3.i.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i3.i.i.i23, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4, !noalias !14796
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.l, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !1020, !noalias !14796
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !14796
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.be) #19, !noalias !14796, !inline_history !480
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !14796
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !14796
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !14799)
  call void @llvm.experimental.noalias.scope.decl(metadata !14800)
  %i.bl = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %1) #19, !noalias !14801
  store i32 %i.bl, ptr %16, align 8, !tbaa !915, !alias.scope !14801
  %i.bm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %1, ptr %i.bm, align 8, !tbaa !917, !alias.scope !14801
  %i.bn = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %2, ptr noundef nonnull %22) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.bo = zext i1 %i.bn to i32
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = atomicrmw sub ptr %i.bq, i32 1 acq_rel, align 4
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.n, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !1020
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #19, !inline_history !18
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit: ; preds = %bb.n, %bb.m, %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_19CXXOperatorCallExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.bw = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.o, label %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit

bb.o:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !1020
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.ak) #19, !inline_history !334
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit, %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.s, align 8, !tbaa !1020
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #19, !inline_history !64
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ch = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.s, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !1020
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #19, !inline_history !17
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_19CXXOperatorCallExprEED2Ev.exit, %bb.r, %bb.s
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i26, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = atomicrmw sub ptr %i.cn, i32 1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.u, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !1020
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(12) %i.cm) #19, !inline_history !22
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit, %bb.t, %bb.u
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i27, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.w, label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !1020
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.ct) #19, !inline_history !481
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29

_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29: ; preds = %bb.w, %bb.v, %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0188)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !1907
  %i.dc = icmp ugt i32 %i.db, %i.bo
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_13CXXMethodDeclEED2Ev.exit29
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 4
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ef = zext i1 %i.bn to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 2 uses
  %.0203 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 2 uses
  %.016202 = phi i32 [ 0, %.lr.ph ], [ %i.nf, %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderD2Ev.exit109 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr %i.dd, ptr %26, align 8, !tbaa !1022
  store i32 0, ptr %i.de, align 8, !tbaa !954
  store i32 1, ptr %i.df, align 4, !tbaa !1023
  %i.eg = load i32, ptr %i.dg, align 8, !tbaa !954
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %26, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.x, %bb.y
  %i.ei = load i16, ptr %1, align 8
  %i.ej = and i16 %i.ei, 511
  %.not.i.i.i.i30 = icmp eq i16 %i.ej, 118        ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i30, ptr %1, ptr null
  %i.ek = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i30, ptr %i.ek, ptr %31
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %indvars.iv
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1193
  %i.en = call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !14802)
  call void @llvm.experimental.noalias.scope.decl(metadata !14803)
  %i.eo = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #19, !noalias !14804
  store i32 %i.eo, ptr %15, align 8, !tbaa !915, !alias.scope !14804
  store ptr %i.en, ptr %i.di, align 8, !tbaa !917, !alias.scope !14804
  %i.ep = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %2, ptr noundef nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br i1 %i.ep, label %bb.z, label %bb.cg

bb.z:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr %i.dj, ptr %27, align 8, !tbaa !1022
  store i32 0, ptr %i.dk, align 8, !tbaa !954
  store i32 1, ptr %i.dl, align 4, !tbaa !1023
  %i.eq = load i32, ptr %i.de, align 8, !tbaa !954
  %.not.i.i.i31 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i31, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 8 dereferenceable(64) %26) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0178)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0165)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0153)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0153, ptr noundef nonnull align 8 dereferenceable(12) %i.dm, i64 12, i1 false)
  %i.es = load ptr, ptr %i.dn, align 8, !tbaa !1035, !noalias !14805 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = atomicrmw add ptr %i.et, i32 1 monotonic, align 4, !noalias !14805 ; 0 uses
  br label %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit

_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit: ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit32, %bb.ab
  %i.ev = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !14806 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !1036, !noalias !14806
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal28matcher_hasParameter0MatcherINS_18CXXConstructorDeclEjNS1_7MatcherINS_11ParmVarDeclEEEEE, i64 16), ptr %i.ev, align 8, !tbaa !1020, !noalias !14806
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 %.016202, ptr %i.ex, align 4, !tbaa !2132, !noalias !14806
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ey, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0153, i64 12, i1 false), !noalias !14806
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store ptr %i.es, ptr %i.ez, align 8, !tbaa !1035, !noalias !14806
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = atomicrmw add ptr %i.fa, i32 1 monotonic, align 4, !noalias !14806 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers12hasParameterERKjRKNS0_8internal7MatcherINS_11ParmVarDeclEEE.exit, %bb.ac
  %i.fc = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4, !noalias !14806 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !14807
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !14807
  call void @llvm.experimental.noalias.scope.decl(metadata !14808)
  store i8 0, ptr %14, align 8, !noalias !14807
  store i32 125, ptr %.sroa.4160.0..sroa_idx, align 4, !noalias !14807
  store i32 125, ptr %.sroa.5161.0..sroa_idx, align 8, !noalias !14807
  store ptr %i.ev, ptr %i.do, align 8, !tbaa !1035, !alias.scope !14808, !noalias !14807
  %i.fd = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4, !noalias !14809 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i32 80) #19, !noalias !14807
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0165, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  %i.fe = load ptr, ptr %i.dp, align 8, !tbaa !1035, !noalias !14807 ; 10 uses
  %.not.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.fe, null ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = atomicrmw add ptr %i.ff, i32 1 monotonic, align 4, !noalias !14807 ; 0 uses
  %.pr.i.i.i37 = load ptr, ptr %i.dp, align 8, !tbaa !1035, !noalias !14807 ; 4 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %.pr.i.i.i37, null
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36
  %i.fh = getelementptr inbounds nuw i8, ptr %.pr.i.i.i37, i64 8
  %i.fi = atomicrmw sub ptr %i.fh, i32 1 acq_rel, align 4, !noalias !14807
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.ae, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr %.pr.i.i.i37, align 8, !tbaa !1020, !noalias !14807
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !14807
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i37) #19, !noalias !14807, !inline_history !482
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39: ; preds = %bb.ae, %bb.ad, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i36, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_18CXXConstructorDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.fn = load ptr, ptr %i.do, align 8, !tbaa !1035, !noalias !14807 ; 4 uses
  %.not.i.i.i.i3.i.i.i40 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i3.i.i.i40, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = atomicrmw sub ptr %i.fo, i32 1 acq_rel, align 4, !noalias !14807
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.ag, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fr = load ptr, ptr %i.fn, align 8, !tbaa !1020, !noalias !14807
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !14807
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.fn) #19, !noalias !14807, !inline_history !483
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i39, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !14807
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !14807
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fv = atomicrmw add ptr %i.fu, i32 1 monotonic, align 4, !noalias !14810 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit

_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit: ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_18CXXConstructorDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, %bb.ah
  %i.fw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !14811 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  store i32 0, ptr %i.fx, align 4, !tbaa !1036, !noalias !14811
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_16CXXConstructExprENS1_7MatcherINS_4DeclEEEEE, i64 16), ptr %i.fw, align 8, !tbaa !1020, !noalias !14811
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !14812)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.fy, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0165, i64 12, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fe, ptr %i.fz, align 8, !tbaa !1035, !alias.scope !14812, !noalias !14811
  br i1 %.not.i.i.i.i.i.i.i.i35, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.gb = atomicrmw add ptr %i.ga, i32 1 monotonic, align 4, !noalias !14813 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, %bb.ai
  %i.gc = atomicrmw add ptr %i.fx, i32 1 monotonic, align 4, !noalias !14811 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !14814
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !14814
  call void @llvm.experimental.noalias.scope.decl(metadata !14815)
  store i8 0, ptr %12, align 8, !noalias !14814
  store i32 312, ptr %.sroa.4173.0..sroa_idx, align 4, !noalias !14814
  store i32 312, ptr %.sroa.5174.0..sroa_idx, align 8, !noalias !14814
  store ptr %i.fw, ptr %i.dq, align 8, !tbaa !1035, !alias.scope !14815, !noalias !14814
  %i.gd = atomicrmw add ptr %i.fx, i32 1 monotonic, align 4, !noalias !14816 ; 0 uses
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 186) #19, !noalias !14814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.0178, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %i.ge = load ptr, ptr %i.dr, align 8, !tbaa !1035, !noalias !14814 ; 3 uses
  %.not.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i.i44, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = atomicrmw add ptr %i.gf, i32 1 monotonic, align 4, !noalias !14814 ; 0 uses
  %.pr.i.i.i46 = load ptr, ptr %i.dr, align 8, !tbaa !1035, !noalias !14814 ; 4 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %.pr.i.i.i46, null
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, label %bb.aj

bb.aj:                                            ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr.i.i.i46, i64 8
  %i.gi = atomicrmw sub ptr %i.gh, i32 1 acq_rel, align 4, !noalias !14814
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.ak, label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %.pr.i.i.i46, align 8, !tbaa !1020, !noalias !14814
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !14814
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i46) #19, !noalias !14814, !inline_history !484
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48

_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48: ; preds = %bb.ak, %bb.aj, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4StmtEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i45, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_16CXXConstructExprEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.gn = load ptr, ptr %i.dq, align 8, !tbaa !1035, !noalias !14814 ; 4 uses
  %.not.i.i.i.i3.i.i.i49 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i3.i.i.i49, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = atomicrmw sub ptr %i.go, i32 1 acq_rel, align 4, !noalias !14814
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %bb.am, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.am:                                            ; preds = %bb.al
  %i.gr = load ptr, ptr %i.gn, align 8, !tbaa !1020, !noalias !14814
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !14814
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(12) %i.gn) #19, !noalias !14814, !inline_history !485
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4StmtEEENS1_7MatcherINS_16CXXConstructExprEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4StmtEED2Ev.exit.i.i.i48, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !14814
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !14814
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0149)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0136)
end_hunk_3
begin_hunk_4_@_ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_8CallExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE:bb.a
.thread:                                          ; preds = %bb.j, %bb.b, %bb.d, %bb.a
  %i.ak = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat {
bb.a:
  %2 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  %3 = alloca %"class.clang::ast_matchers::internal::DynTypedMatcher", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !18933 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !1036, !noalias !18933
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %i.a, align 8, !tbaa !1020, !noalias !18933
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !noalias !18933
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1035, !noalias !18933 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1035, !noalias !18933
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 1 monotonic, align 4, !noalias !18933 ; 0 uses
  br label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit

_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit: ; preds = %bb.a, %bb.b
  %i.i = atomicrmw add ptr %i.b, i32 1 monotonic, align 4, !noalias !18933 ; 0 uses
  store i8 0, ptr %3, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 292, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 292, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.j, align 8, !tbaa !1035, !alias.scope !18934
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1058 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1059
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.a, ptr %i.o, align 8, !tbaa !1035
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !1058
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.k, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pr = load ptr, ptr %i.j, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.d, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %.pr, align 8, !tbaa !1020
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.x = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !18935 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !1036, !noalias !18935
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_15ObjCMessageExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %i.x, align 8, !tbaa !1020, !noalias !18935
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !noalias !18935
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !1035, !noalias !18935 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !1035, !noalias !18935
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4, !noalias !18935 ; 0 uses
  br label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i

_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i: ; preds = %bb.e, %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  %i.ae = atomicrmw add ptr %i.y, i32 1 monotonic, align 4, !noalias !18935 ; 0 uses
  store i8 0, ptr %2, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 226, ptr %.sroa.44.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 226, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.x, ptr %i.af, align 8, !tbaa !1035, !alias.scope !18936
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !1058 ; 4 uses
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !1059
  %.not.i.i.i4 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.x, ptr %i.ai, align 8, !tbaa !1035
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !1058
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_30matcher_hasAnyArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pr.i = load ptr, ptr %i.af, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i5, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.am = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.g, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !18932
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_30matcher_hasAnyArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !18937
  br label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_16CXXConstructExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BoundNodesTreeBuilder", align 8 ; 11 uses
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 511
  %.not.i.i.i.i = icmp eq i16 %i.b, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %6 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %6, ptr %i.c ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1907 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 %.idx
  %.not26 = icmp eq i32 %i.e, 0
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.g
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.018.027 = phi ptr [ %spec.select.i.i.i.i, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.018.027, align 8, !tbaa !937 ; 3 uses
  %i.p = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i16, ptr %i.o, align 8
  %i.r = and i16 %i.q, 511
  %i.s = icmp eq i16 %i.r, 116
  br i1 %i.s, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.h, ptr %5, align 8, !tbaa !1022
  store i32 0, ptr %i.i, align 8, !tbaa !954
  store i32 1, ptr %i.j, align 4, !tbaa !1023
  %i.t = load i32, ptr %i.k, align 8, !tbaa !954
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !18942)
  call void @llvm.experimental.noalias.scope.decl(metadata !18943)
  %i.v = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #19, !noalias !18944
  store i32 %i.v, ptr %4, align 8, !tbaa !915, !alias.scope !18944
  store ptr %i.o, ptr %i.m, align 8, !tbaa !917, !alias.scope !18944
  %i.w = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef nonnull %5) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, %bb.g
  %i.y = load ptr, ptr %5, align 8, !tbaa !1022   ; 3 uses
  %i.z = load i32, ptr %i.i, align 8, !tbaa !954  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.h
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i = mul nuw nsw i64 %i.aa, 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1029
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang12DynTypedNodeEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.ae)
  %.not.i.i.i16 = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i.i16, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !1022
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i, %bb.h
  %i.af = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.h
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @free(ptr noundef %i.af) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers8internal13BoundNodesMapELb0EE13destroy_rangeEPS4_S6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.w, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.j, %bb.b, %bb.d, %bb.a
  %i.ah = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.j ]
  ret i1 %i.ah
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !18945
  br label %_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal30matcher_hasAnyArgument0MatcherINS_26CXXUnresolvedConstructExprENS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BoundNodesTreeBuilder", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !918  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %.01627, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01627 = phi ptr [ %i.a, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.01627, align 8, !tbaa !1193 ; 3 uses
  %i.n = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i16, ptr %i.m, align 8
  %i.p = and i16 %i.o, 511
  %i.q = icmp eq i16 %i.p, 116
  br i1 %i.q, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.f, ptr %5, align 8, !tbaa !1022
  store i32 0, ptr %i.g, align 8, !tbaa !954
  store i32 1, ptr %i.h, align 4, !tbaa !1023
  %i.r = load i32, ptr %i.i, align 8, !tbaa !954
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  br label %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit

_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !18950)
  call void @llvm.experimental.noalias.scope.decl(metadata !18951)
  %i.t = call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #19, !noalias !18952
  store i32 %i.t, ptr %4, align 8, !tbaa !915, !alias.scope !18952
  store ptr %i.m, ptr %i.k, align 8, !tbaa !917, !alias.scope !18952
  %i.u = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef nonnull %5) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5clang12ast_matchers8internal21BoundNodesTreeBuilderC2ERKS2_.exit
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang12ast_matchers8internal13BoundNodesMapEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
end_hunk_4
begin_hunk_5_@_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSA_SB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_:bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !1036, !noalias !19443
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %i.a, align 8, !tbaa !1020, !noalias !19443
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.b, align 8, !tbaa !1079, !noalias !19443
  store i32 %i.e, ptr %i.d, align 4, !tbaa !2222, !noalias !19443
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 12, i1 false), !noalias !19443
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1035, !noalias !19443 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !1035, !noalias !19443
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 1 monotonic, align 4, !noalias !19443 ; 0 uses
  br label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit

_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit: ; preds = %bb.a, %bb.b
  %i.l = atomicrmw add ptr %i.c, i32 1 monotonic, align 4, !noalias !19443 ; 0 uses
  store i8 0, ptr %3, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 292, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 292, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1035, !alias.scope !19444
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1058 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1059
  %.not.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.a, ptr %i.r, align 8, !tbaa !1035
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !1058
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.n, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS7_EEv.exit
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pr = load ptr, ptr %i.m, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %.pr, align 8, !tbaa !1020
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #19, !inline_history !6
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit: ; preds = %bb.d, %bb.c, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.aa = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !19445 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !1036, !noalias !19445
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %i.aa, align 8, !tbaa !1020, !noalias !19445
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !1079, !noalias !19445
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !2224, !noalias !19445
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 12, i1 false), !noalias !19445
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !1035, !noalias !19445 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !1035, !noalias !19445
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i32 1 monotonic, align 4, !noalias !19445 ; 0 uses
  br label %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i

_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i: ; preds = %bb.e, %_ZN5clang12ast_matchers8internal7MatcherINS_26CXXUnresolvedConstructExprEED2Ev.exit
  %i.aj = atomicrmw add ptr %i.ab, i32 1 monotonic, align 4, !noalias !19445 ; 0 uses
  store i8 0, ptr %2, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 226, ptr %.sroa.44.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 226, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !1035, !alias.scope !19446
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !1058 ; 4 uses
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !1059
  %.not.i.i.i4 = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, label %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.aa, ptr %i.an, align 8, !tbaa !1035
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1058
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !1058
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNKR5clang12ast_matchers8internal18PolymorphicMatcherINS1_27matcher_hasArgument0MatcherEFvNS1_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS1_7MatcherINS_4ExprEEEEEcvNSB_IT_EEIS8_EEv.exit.i
  call void @_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.al, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pr.i = load ptr, ptr %i.ak, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i5, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8
  %i.ar = atomicrmw sub ptr %i.aq, i32 1 acq_rel, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.g, label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %.pr.i, align 8, !tbaa !1020
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i) #19, !inline_history !19442
  br label %_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit

_ZN5clang12ast_matchers7dynamic8internal17mergePolyMatchersINS0_8internal18PolymorphicMatcherINS4_27matcher_hasArgument0MatcherEFvNS4_8TypeListIJNS_8CallExprENS_16CXXConstructExprENS_26CXXUnresolvedConstructExprENS_15ObjCMessageExprEEEEEJjNS4_7MatcherINS_4ExprEEEEEENS7_IJSB_EEEEEvRKT_RSt6vectorINS4_15DynTypedMatcherESaISN_EET0_.exit: ; preds = %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.thread.i, %_ZNSt6vectorIN5clang12ast_matchers8internal15DynTypedMatcherESaIS3_EE9push_backEOS3_.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !19447
  br label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_16CXXConstructExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2220 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1907
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %1, ptr null
  %5 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %5, ptr %i.g
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1193 ; 2 uses
  %i.k = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr %i.j, align 8
  %i.m = and i16 %i.l, 511
  %i.n = icmp eq i16 %i.m, 116
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19453)
  %i.q = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #19, !noalias !19454
  store i32 %i.q, ptr %4, align 8, !tbaa !915, !alias.scope !19454
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.p, ptr %i.r, align 8, !tbaa !917, !alias.scope !19454
  %i.s = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !19455
  br label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_26CXXUnresolvedConstructExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2222 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !918
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1193 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.h, align 8
  %i.k = and i16 %i.j, 511
  %i.l = icmp eq i16 %i.k, 116
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19461)
  %i.o = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #19, !noalias !19462
  store i32 %i.o, ptr %4, align 8, !tbaa !915, !alias.scope !19462
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !917, !alias.scope !19462
  %i.q = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.q, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !5
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit

_ZN5clang12ast_matchers8internal7MatcherINS_4ExprEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEEE, i64 16), ptr %0, align 8, !tbaa !1020
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1020
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #19, !inline_history !19463
  br label %_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit

_ZN5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5clang12ast_matchers8internal27matcher_hasArgument0MatcherINS_15ObjCMessageExprEjNS1_7MatcherINS_4ExprEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 65535
  %.not = icmp ult i32 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1193 ; 2 uses
  %i.j = tail call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_5
