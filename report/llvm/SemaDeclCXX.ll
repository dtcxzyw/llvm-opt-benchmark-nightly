Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaDeclCXX?download=true
inline.NumInlined: 22648
inline.NumDeleted: 9795
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN12_GLOBAL__N_125UninitializedFieldVisitor21VisitImplicitCastExprEPN5clang16ImplicitCastExprE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2213
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.e, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 19
  %i.e = and i32 %i.d, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.h, i1 noundef zeroext false)
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.j = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.i) #26, !inline_history !3226
  br i1 %i.j, label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1), !inline_history !3226
  br label %_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit

_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE13VisitCallExprEPNS_8CallExprE.exit: ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor24VisitCXXOperatorCallExprEPN5clang19CXXOperatorCallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %i.e = icmp eq i16 %i.d, 24
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26, !inline_history !2215
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %1, align 8
  %i.i = lshr i32 %i.h, 19
  %i.j = and i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.m, i1 noundef zeroext false), !inline_history !2215
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.o = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.n) #26, !inline_history !53
  br i1 %i.o, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1), !inline_history !53
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i32, ptr %1, align 8
  %i.r = lshr i32 %i.q, 19
  %i.s = and i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !2199 ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not13 = icmp eq i32 %i.w, 0
  br i1 %.not13, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.ab, %.lr.ph ], [ %i.u, %bb.f ] ; 2 uses
  %i.z = load ptr, ptr %.sroa.08.014, align 8, !tbaa !1506
  %i.aa = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #27
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.aa, i1 noundef zeroext false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.y
  br i1 %.not, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit: ; preds = %.lr.ph, %bb.f, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor22VisitCXXMemberCallExprEPN5clang17CXXMemberCallExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1506 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %i.e = icmp eq i16 %i.d, 46
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.b, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i32, ptr %1, align 8
  %i.h = lshr i32 %i.g, 19
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !2199 ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.q, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.08.014, align 8, !tbaa !1506
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.o
  br i1 %.not, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_ZNK5clang8CallExpr15isCallToStdMoveEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #26, !inline_history !2215
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %1, align 8
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.y, i1 noundef zeroext false), !inline_history !2215
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !2214, !nonnull !107, !align !791
  %i.aa = tail call noundef zeroext i1 @_ZNK5clang8CallExpr24isUnevaluatedBuiltinCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %i.z) #26, !inline_history !53
  br i1 %i.aa, label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1), !inline_history !53
  br label %_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit

_ZN12_GLOBAL__N_125UninitializedFieldVisitor13VisitCallExprEPN5clang8CallExprE.exit: ; preds = %.lr.ph, %bb.b, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE18VisitCXXTypeidExprEPNS_13CXXTypeidExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr22isPotentiallyEvaluatedEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.d = inttoptr i64 %i.c to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor21VisitCXXConstructExprEPN5clang16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !116
  %i.d = call noundef zeroext i1 @_ZNK5clang18CXXConstructorDecl17isCopyConstructorERj(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr %1, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i = icmp eq i16 %i.f, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115  ; 5 uses
  %i.i = load i16, ptr %i.h, align 8              ; 3 uses
  %i.j = and i16 %i.i, 511
  %.not = icmp eq i16 %i.j, 55
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1641
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1640 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 34359738360
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1506 ; 2 uses
  %.pre = load i16, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.u = phi i16 [ %.pre, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  %.0 = phi ptr [ %i.t, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %i.v = and i16 %i.u, 511
  %.not19 = icmp eq i16 %i.v, 81
  br i1 %.not19, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %.0, align 8
  %i.x = and i32 %i.w, 66584576
  %i.y = icmp eq i32 %i.x, 2621440
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2213
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ], [ %.0, %bb.e ]
  call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %.1, i1 noundef zeroext false)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor19VisitBinaryOperatorEPN5clang14BinaryOperatorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = and i32 %i.a, 33030144
  %i.c = icmp eq i32 %i.b, 11010048
  br i1 %i.c, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1506 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 511
  %.not = icmp eq i16 %i.g, 46
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2216 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = add nsw i32 %i.l, -53
  %i.n = icmp ult i32 %i.m, -3
  %.not1316 = icmp eq ptr %i.i, null
  %.not13 = or i1 %.not1316, %i.n
  br i1 %.not13, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !92
  %i.p = and i64 %.sroa.0.0.copyload.i, -16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !92
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 16
  %i.y = and i8 %i.x, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !112
  %.not.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !113

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  store ptr %i.i, ptr %i.ag, align 1
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !101
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit: ; preds = %bb.g, %bb.f, %bb.b, %bb.d, %bb.c, %bb.a
  %i.aj = load i32, ptr %1, align 8
  %i.ak = lshr i32 %i.aj, 19
  %i.al = and i32 %i.ak, 62
  %i.am = add nsw i32 %i.al, -22
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1506
  tail call fastcc void @_ZN12_GLOBAL__N_125UninitializedFieldVisitor11HandleValueEPN5clang4ExprEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %i.ap, i1 noundef zeroext false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1506
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ar)
  br label %bb.j

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9ValueDeclELb1EE9push_backES3_.exit
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEE9VisitStmtEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.2468", align 8 ; 6 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.2468") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !92     ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.4.0.copyload
  %.not3.i6 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i6, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1506 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_125UninitializedFieldVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1508 ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_0
