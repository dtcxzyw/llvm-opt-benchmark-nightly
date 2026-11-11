Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CIndex?download=true
inline.NumInlined: 13967
inline.NumDeleted: 7767
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@clang_Cursor_isExternalSymbol:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2247
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !2248
  %i.k = zext i32 %i.j to i64
  %i.l = tail call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.h, i64 %i.k) #38 ; 2 uses
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = extractvalue { ptr, i32 } %i.l, 1
  store ptr %i.m, ptr %1, align 8, !tbaa !89
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.n, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2249
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !2250
  %i.s = zext i32 %i.r to i64
  %i.t = tail call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.p, i64 %i.s) #38 ; 2 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = extractvalue { ptr, i32 } %i.t, 1
  store ptr %i.u, ptr %2, align 8, !tbaa !89
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.v, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not26 = icmp eq ptr %3, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.x = load i8, ptr %i.w, align 8, !tbaa !2251, !range !87, !noundef !88
  %i.y = zext nneg i8 %i.x to i32
  store i32 %i.y, ptr %3, align 4, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.g, %bb.h
  %spec.select = zext i1 %.not23 to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.2 = phi i32 [ %spec.select, %bb.i ], [ 0, %bb.a ]
  ret i32 %.2
}

declare noundef ptr @_ZNK5clang4Decl27getExternalSourceSymbolAttrEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @clang_Cursor_getBinaryOpcode(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm", align 8 ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 8
  %i.a = add i32 %.sroa.0.0.copyload, -157
  %i.b = icmp ult i32 %i.a, -57
  br i1 %i.b, label %clang_getCursorBinaryOperatorKind.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5clang8cxcursor13getCursorExprE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = and i16 %i.d, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.e, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.c, align 8
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 63
  %i.i = add nuw nsw i32 %i.h, 1
  br label %clang_getCursorBinaryOperatorKind.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i16 %i.d, 511
  %.not.i = icmp eq i16 %i.j, 103
  br i1 %.not.i, label %bb.e, label %clang_getCursorBinaryOperatorKind.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @_ZNK5clang26CXXRewrittenBinaryOperator17getDecomposedFormEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CXXRewrittenBinaryOperator::DecomposedForm") align 8 %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c) #45
  %i.k = load i32, ptr %1, align 8, !tbaa !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.l = add nsw i32 %i.k, 1
  br label %clang_getCursorBinaryOperatorKind.exit

clang_getCursorBinaryOperatorKind.exit:           ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.3.i = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.l, %bb.e ], [ %i.i, %bb.c ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @clang_Cursor_getBinaryOpcodeStr(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -34
  %or.cond.i = icmp ult i32 %i.a, -33
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_ZN5clang8cxstring11createEmptyEv() #38
  br label %clang_getBinaryOperatorKindSpelling.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %0, -1
  %i.d = tail call { ptr, i64 } @_ZN5clang14BinaryOperator12getOpcodeStrENS_18BinaryOperatorKindE(i32 noundef %i.c) #38 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call { ptr, i32 } @_ZN5clang8cxstring9createDupEN4llvm9StringRefE(ptr %i.e, i64 %i.f) #38
  br label %clang_getBinaryOperatorKindSpelling.exit

clang_getBinaryOperatorKindSpelling.exit:         ; preds = %bb.b, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %bb.c ]
  ret { ptr, i32 } %.pn.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @clang_Cursor_getCommentRange(ptr dead_on_unwind noalias writable sret(%struct.CXSourceRange) align 8 %0, ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL19getCursorRawComment8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @clang_getNullRange(ptr dead_on_unwind writable sret(%struct.CXSourceRange) align 8 %0) #38
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %1) #38 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !84 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2592
  %.val = load ptr, ptr %i.c, align 8, !tbaa !1400 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2600
  %.val3 = load ptr, ptr %i.d, align 8, !tbaa !1401 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  %.sroa.0.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32 ; 4 uses
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZNK5clang13SourceManager19isMacroArgExpansionENS_14SourceLocationEPS1_(ptr noundef nonnull align 8 dereferenceable(776) %.val, i32 %.sroa.0.4.extract.trunc.i, ptr noundef null) #38, !noalias !2258
  br i1 %i.f, label %.thread4.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.g = tail call { i64, i8 } @_ZNK5clang13SourceManager17getExpansionRangeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %.val, i32 %.sroa.0.4.extract.trunc.i) #38, !noalias !2258 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { i64, i8 } %i.g, 0
  %.fca.1.extract.i.i = extractvalue { i64, i8 } %i.g, 1
  %.sroa.019.4.extract.shift.i.i = lshr i64 %.fca.0.extract.i.i, 32
  %.sroa.019.4.extract.trunc.i.i = trunc nuw i64 %.sroa.019.4.extract.shift.i.i to i32 ; 2 uses
  %i.h = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.h, label %bb.e, label %_ZN5clang5cxlocL20translateSourceRangeERNS_10ASTContextENS_11SourceRangeE.exit

bb.e:                                             ; preds = %.split.i.i, %bb.c
  %.sroa.020.028.i.i = phi i32 [ %.sroa.019.4.extract.trunc.i.i, %.split.i.i ], [ %.sroa.0.4.extract.trunc.i, %bb.c ] ; 5 uses
  %.not29.i.i = icmp eq i32 %.sroa.020.028.i.i, 0
  br i1 %.not29.i.i, label %_ZN5clang5cxlocL20translateSourceRangeERNS_10ASTContextENS_11SourceRangeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %.sroa.020.028.i.i, -1
  br i1 %i.i, label %_ZNK5clang13SourceManager14getSpellingLocENS_14SourceLocationE.exit.i.i, label %.thread4.i

.thread4.i:                                       ; preds = %bb.f, %bb.d
  %.sroa.020.028.i36.i = phi i32 [ %.sroa.020.028.i.i, %bb.f ], [ %.sroa.0.4.extract.trunc.i, %bb.d ] ; 2 uses
  %i.j = tail call i32 @_ZNK5clang13SourceManager22getSpellingLocSlowCaseENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %.val, i32 %.sroa.020.028.i36.i) #38, !noalias !2258
  br label %_ZNK5clang13SourceManager14getSpellingLocENS_14SourceLocationE.exit.i.i

_ZNK5clang13SourceManager14getSpellingLocENS_14SourceLocationE.exit.i.i: ; preds = %.thread4.i, %bb.f
  %.sroa.020.028.i37.i = phi i32 [ %.sroa.020.028.i36.i, %.thread4.i ], [ %.sroa.020.028.i.i, %bb.f ]
  %.sroa.01.0.i.i.i = phi i32 [ %i.j, %.thread4.i ], [ %.sroa.020.028.i.i, %bb.f ]
  %i.k = tail call noundef i32 @_ZN5clang5Lexer18MeasureTokenLengthENS_14SourceLocationERKNS_13SourceManagerERKNS_11LangOptionsE(i32 %.sroa.01.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(776) %.val, ptr noundef nonnull align 8 dereferenceable(1136) %.val3) #38, !noalias !2258
  %i.l = add i32 %i.k, %.sroa.020.028.i37.i
  br label %_ZN5clang5cxlocL20translateSourceRangeERNS_10ASTContextENS_11SourceRangeE.exit

_ZN5clang5cxlocL20translateSourceRangeERNS_10ASTContextENS_11SourceRangeE.exit: ; preds = %.split.i.i, %bb.e, %_ZNK5clang13SourceManager14getSpellingLocENS_14SourceLocationE.exit.i.i
  %.sroa.020.1.i.i = phi i32 [ %i.l, %_ZNK5clang13SourceManager14getSpellingLocENS_14SourceLocationE.exit.i.i ], [ 0, %bb.e ], [ %.sroa.019.4.extract.trunc.i.i, %.split.i.i ]
  store ptr %.val, ptr %0, align 8, !tbaa !89, !alias.scope !2258
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val3, ptr %i.m, align 8, !tbaa !89, !alias.scope !2258
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.n, align 8, !tbaa !91, !alias.scope !2258
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.020.1.i.i, ptr %i.o, align 4, !tbaa !92, !alias.scope !2258
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang5cxlocL20translateSourceRangeERNS_10ASTContextENS_11SourceRangeE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19getCursorRawComment8CXCursor(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %.fr48 = freeze i32 %i.a                        ; 4 uses
  %i.b = add i32 %.fr48, -40
  %or.cond.i = icmp ult i32 %i.b, -39             ; 2 uses
  %i.c = icmp ult i32 %.fr48, 600
  %narrow.i.not = and i1 %or.cond.i, %i.c
  br i1 %or.cond.i, label %switch.early.test, label %.thread52

.thread52:                                        ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  br label %bb.c

switch.early.test:                                ; preds = %bb.a
  switch i32 %.fr48, label %.thread [
    i32 604, label %bb.b
    i32 603, label %bb.b
    i32 602, label %bb.b
    i32 601, label %bb.b
    i32 600, label %bb.b
    i32 501, label %bb.b
  ]

bb.b:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  %i.e = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 2 uses
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread52, %bb.b
  %i.f = phi ptr [ %i.d, %.thread52 ], [ %i.e, %bb.b ]
  %i.g = tail call noundef ptr @_ZN5clang8cxcursor13getCursorDeclE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call noundef ptr @_ZNK5clang10ASTContext25getRawCommentForAnyRedeclEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEEPS5_(ptr noundef nonnull align 8 dereferenceable(23904) %i.f, i64 %i.h, ptr noundef null) #38
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %.fr48, 501
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef ptr @_ZN5clang8cxcursor24getCursorMacroDefinitionE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZN5clang8cxcursor16getCursorASTUnitE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !665
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1033
  %i.q = tail call noundef ptr @_ZNK5clang12Preprocessor29getLocalMacroDirectiveHistoryEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(3344) %i.n, ptr noundef %i.p) #38 ; 2 uses
  %.not2946 = icmp eq ptr %i.q, null
  br i1 %.not2946, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.047 = phi ptr [ %i.q, %.lr.ph ], [ %i.y, %bb.j ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.047, i64 12
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 3
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1038 ; 3 uses
  %.not31 = icmp eq ptr %i.w, null
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i = load i32, ptr %i.w, align 8, !tbaa !84
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 4, !tbaa !84
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.x = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.y = load ptr, ptr %.047, align 8, !tbaa !1039 ; 2 uses
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %.thread, label %bb.g, !llvm.loop !2259

bb.k:                                             ; preds = %bb.i
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = or i64 %i.z, 2
  %i.ab = tail call noundef ptr @_ZNK5clang10ASTContext25getRawCommentForAnyRedeclEN4llvm12PointerUnionIJPKNS_4DeclEPKNS_9MacroInfoEEEEPS5_(ptr noundef nonnull align 8 dereferenceable(23904) %i.e, i64 %i.aa, ptr noundef null) #38
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.f, %switch.early.test, %bb.e, %bb.d, %bb.k, %bb.c
  %.6 = phi ptr [ null, %switch.early.test ], [ %i.i, %bb.c ], [ null, %bb.d ], [ %i.ab, %bb.k ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.j ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @clang_Cursor_getRawCommentText(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL19getCursorRawComment8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_ZN5clang8cxstring10createNullEv() #38
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.02.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !1236
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !973
  br label %_ZNK5clang10RawComment10getRawTextERKNS_13SourceManagerE.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2592
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1400, !nonnull !88, !align !1043
  %i.j = tail call { ptr, i64 } @_ZNK5clang10RawComment14getRawTextSlowERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(776) %i.i) #38 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !1236
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !973
  %i.n = load i8, ptr %i.d, align 8
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.d, align 8
  br label %_ZNK5clang10RawComment10getRawTextERKNS_13SourceManagerE.exit

_ZNK5clang10RawComment10getRawTextERKNS_13SourceManagerE.exit: ; preds = %bb.d, %bb.e
  %.pre-phi7 = phi i64 [ %.sroa.3.0.copyload.i, %bb.d ], [ %i.l, %bb.e ]
  %.pre-phi = phi ptr [ %.sroa.02.0.copyload.i, %bb.d ], [ %i.k, %bb.e ]
  %i.p = tail call { ptr, i32 } @_ZN5clang8cxstring9createRefEN4llvm9StringRefE(ptr %.pre-phi, i64 %.pre-phi7) #38
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang10RawComment10getRawTextERKNS_13SourceManagerE.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.p, %_ZNK5clang10RawComment10getRawTextERKNS_13SourceManagerE.exit ], [ %i.b, %bb.b ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @clang_Cursor_getBriefCommentText(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL19getCursorRawComment8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_ZN5clang8cxstring10createNullEv() #38
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(23904) ptr @_ZN5clang8cxcursor16getCursorContextE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 2
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2261
  br label %_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZNK5clang10RawComment16extractBriefTextERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, ptr noundef nonnull align 8 dereferenceable(23904) %i.c) #38
  br label %_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit

_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %.not.i5 = icmp eq ptr %.0.i, null
  br i1 %.not.i5, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #38
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.f ], [ 0, %_ZNK5clang10RawComment12getBriefTextERKNS_10ASTContextE.exit ]
  %i.k = tail call { ptr, i32 } @_ZN5clang8cxstring9createRefEN4llvm9StringRefE(ptr %.0.i, i64 %.sroa.0.0.i) #38
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %_ZN4llvm9StringRefC2EPKc.exit ], [ %i.b, %bb.b ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @clang_Cursor_getModule(ptr nofree noundef readonly byval(%struct.CXCursor) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !111
  %i.b = icmp eq i32 %i.a, 600
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN5clang8cxcursor13getCursorDeclE8CXCursor(ptr noundef nonnull byval(%struct.CXCursor) align 8 %0) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
