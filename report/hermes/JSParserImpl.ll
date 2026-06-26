inline.NumInlined: 6239
inline.NumDeleted: 1654
begin_hunk_0_@_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !279
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load i8, ptr %i.n, align 8, !tbaa !280, !range !81, !noundef !75
  %i.p = trunc nuw i8 %i.o to i1
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.thread: ; preds = %bb.a, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.q = phi i1 [ true, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ true, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit ], [ %i.p, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ true, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit ], [ true, %bb.a ]
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl18checkAsyncFunctionEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i64 0) #17
  %i.c = and i64 %i.b, 8589934591
  %i.d = icmp eq i64 %i.c, 4294967300
  ret i1 %i.d
}

declare i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160), i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl7eatSemiEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !235
  switch i32 %i.c, label %bb.c [
    i32 60, label %bb.b
    i32 51, label %bb.e
    i32 120, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.e, ptr %i.a, align 8, !tbaa !85
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load i8, ptr %i.f, align 8, !tbaa !280, !range !81, !noundef !75
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %brmerge = or i1 %1, %i.h
  br i1 %brmerge, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !277
  store ptr @.str.82, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.j, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.m, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.a ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.e = load i32, ptr %i.d, align 4, !tbaa !133
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit, label %bb.b, !prof !281

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 8) #17
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !132
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.j, align 1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !132
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !141
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.q, align 8, !tbaa !230
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes12UniqueStringELb1EE9push_backERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !145
  %i.t = icmp eq ptr %1, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1204
  store i8 1, ptr %i.u, align 4, !tbaa !282
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.e, align 1, !tbaa !277
  store ptr @.str.83, ptr %1, align 8, !tbaa !278
  store i8 3, ptr %i.d, align 8, !tbaa !274
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.g, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !241
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !247
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !248
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !250
  %i.k = add i64 %2, -1
  %i.l = add i64 %i.k, %i.h
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = urem i64 %i.m, %2
  %i.o = add i64 %i.n, %i.h
  %i.p = sub i64 %i.m, %i.o                       ; 3 uses
  store i64 %i.p, ptr %i.i, align 8, !tbaa !250
  %i.q = icmp ugt i64 %0, 262144
  br i1 %i.q, label %.critedge.i.i, label %bb.b, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.p, %0                         ; 2 uses
  %i.s = icmp ugt i64 %i.r, 262144
  br i1 %i.s, label %.critedge.i.i, label %bb.c, !prof !251

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.t = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %0, i64 noundef %2) #17
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.p, %i.h
  %i.v = inttoptr i64 %i.u to ptr
  store i64 %i.r, ptr %i.i, align 8, !tbaa !250
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

_ZN6hermes7Context12allocateNodeEmm.exit:         ; preds = %.critedge.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.v, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseFunctionDeclarationENS1_5ParamEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i1 noundef zeroext true, i1 noundef zeroext %2) ; 2 uses
  %i.b = extractvalue { i64, i8 } %i.a, 0
  %i.c = extractvalue { i64, i8 } %i.a, 1         ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select = select i1 %i.d, i64 %i.b, i64 undef
  %spec.select3 = and i8 %i.c, 1
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %spec.select3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 11 uses
  %5 = alloca %"class.llvh::simple_ilist", align 8 ; 7 uses
  %6 = alloca %"class.llvh::simple_ilist", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 13 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279
  %i.l = icmp eq ptr %i.k, %i.i
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ %i.l, %bb.b ] ; 6 uses
  %i.n = zext i1 %i.m to i8                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.o, align 8, !tbaa !229 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.q = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.p, i32 noundef 0) #17 ; 2 uses
  store ptr %i.q, ptr %i.d, align 8, !tbaa !85
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.r = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.p, i32 noundef 0) #17 ; 2 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !85
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.q, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ]
  %i.t = load i32, ptr %i.s, align 8, !tbaa !235
  %i.u = icmp eq i32 %i.t, 66                     ; 6 uses
  br i1 %i.u, label %bb.e, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.p, i32 noundef 0) #17
  store ptr %i.v, ptr %i.d, align 8, !tbaa !85
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %bb.d, %bb.e
  %i.w = zext i1 %i.u to i8                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1205 ; 5 uses
  %.in.sroa.speculate.load.true = load i8, ptr %i.x, align 1, !tbaa !283 ; 2 uses
  %.in.sroa.speculated = select i1 %2, i8 %.in.sroa.speculate.load.true, i8 %i.w
  store i8 %.in.sroa.speculated, ptr %i.x, align 1, !tbaa !283
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1206 ; 5 uses
  %.in78.sroa.speculate.load.true = load i8, ptr %i.y, align 2, !tbaa !283 ; 2 uses
  %.in78.sroa.speculated = select i1 %2, i8 %.in78.sroa.speculate.load.true, i8 %i.n
  store i8 %.in78.sroa.speculated, ptr %i.y, align 2, !tbaa !283
  %i.z = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.aa = extractvalue { i64, i8 } %i.z, 0        ; 2 uses
  %i.ab = extractvalue { i64, i8 } %i.z, 1
  %.not = xor i1 %2, true                         ; 2 uses
  %i.ac = and i32 %1, 4
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.ad
  %i.ae = trunc nuw i8 %i.ab to i1                ; 3 uses
  %or.cond196 = select i1 %or.cond, i1 true, i1 %i.ae
  br i1 %or.cond196, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.c, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.c, i64 1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.as

bb.g:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 188
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !284
  %.not200 = icmp eq i32 %i.ah, 0
  %.pre203.pre208 = load ptr, ptr %i.d, align 8, !tbaa !85 ; 3 uses
  br i1 %.not200, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr %.pre203.pre208, align 8, !tbaa !235
  %i.aj = icmp eq i32 %i.ai, 74
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeParamsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.al = extractvalue { i64, i8 } %i.ak, 1
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.i
  %i.an = extractvalue { i64, i8 } %i.ak, 0
  %i.ao = inttoptr i64 %i.an to ptr
  %.pre = load ptr, ptr %0, align 8, !tbaa !239
  %.pre203.pre = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.g
  %.pre203 = phi ptr [ %.pre203.pre, %.thread ], [ %.pre203.pre208, %bb.h ], [ %.pre203.pre208, %bb.g ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.thread ], [ %i.af, %bb.h ], [ %i.af, %bb.g ]
  %.162 = phi ptr [ %i.ao, %.thread ], [ null, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !285, !range !81, !noundef !75
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %.pre203, align 8, !tbaa !235 ; 2 uses
  %i.au = icmp eq i32 %i.at, 74
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTSTypeParametersEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.aw = extractvalue { i64, i8 } %i.av, 1
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread184, label %bb.as

.thread184:                                       ; preds = %bb.l
  %i.ay = extractvalue { i64, i8 } %i.av, 0
  %i.az = inttoptr i64 %i.ay to ptr
  %.pre202 = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.j, %.thread184
  %.ph = phi ptr [ %.pre203, %bb.j ], [ %.pre202, %.thread184 ]
  %.364.ph = phi ptr [ %.162, %bb.j ], [ %i.az, %.thread184 ]
  %.pr = load i32, ptr %.ph, align 8, !tbaa !235
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.k
  %i.ba = phi i32 [ %.pr, %thread-pre-split ], [ %i.at, %bb.k ]
  %.364 = phi ptr [ %.364.ph, %thread-pre-split ], [ %.162, %bb.k ] ; 4 uses
  %i.bb = icmp eq i32 %i.ba, 53
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = select i1 %2, ptr @.str.87, ptr @.str.88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 53, ptr %i.b, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.86, ptr noundef nonnull %i.bc, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.as

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %4, ptr %4, align 8, !tbaa !231
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %4, ptr %i.bd, align 8, !tbaa !234
  %i.be = load i8, ptr %i.x, align 1, !tbaa !283, !range !81, !noundef !75 ; 2 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !283
  %i.bf = load i8, ptr %i.y, align 2, !tbaa !283, !range !81, !noundef !75 ; 2 uses
  store i8 %i.n, ptr %i.y, align 2, !tbaa !283
  %i.bg = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl21parseFormalParametersENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.bg, label %bb.p, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 188
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !284
  %.not201 = icmp eq i32 %i.bj, 0
  %.pre207.pre210 = load ptr, ptr %i.d, align 8, !tbaa !85 ; 4 uses
  br i1 %.not201, label %.thread188, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %.pre207.pre210, align 8, !tbaa !235
  %i.bl = icmp eq i32 %i.bk, 92
  br i1 %i.bl, label %bb.r, label %.thread188

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre207.pre210, i64 8
  %.sroa.0.0.copyload.i.i85 = load ptr, ptr %i.bm, align 8, !tbaa !229
  %i.bn = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.p, i32 noundef 3) #17 ; 4 uses
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !235
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90: ; preds = %bb.r
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !196
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !279
  %i.bu = icmp eq ptr %i.bt, %i.br
  br i1 %i.bu, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit91, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90.thread: ; preds = %bb.r, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit90
  %i.bv = ptrtoint ptr %.sroa.0.0.copyload.i.i85 to i64
  %i.bw = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseReturnTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.bv, i8 1, i32 noundef 1) #17 ; 2 uses
  %i.bx = extractvalue { i64, i8 } %i.bw, 1
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl17parseFunctionBodyENS1_5ParamEbbbNS0_7JSLexer14GrammarContextEb:bb.a
.lr.ph.i.i.i49:                                   ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51, %.lr.ph.i.preheader.i.i47
  %.05.i.i.i50 = phi ptr [ %i.gu, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51 ], [ %i.gt, %.lr.ph.i.preheader.i.i47 ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.05.i.i.i50, i64 -40 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !131 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.05.i.i.i50, i64 -24
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i49
  call void @free(ptr noundef %i.gv) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51:   ; preds = %bb.t, %.lr.ph.i.i.i49
  %.not.i.i.i52 = icmp eq ptr %i.gq, %i.gu
  br i1 %.not.i.i.i52, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i53, label %.lr.ph.i.i.i49, !llvm.loop !340

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i53: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i51
  %.pre.i.i54 = load ptr, ptr %i.ff, align 8, !tbaa !131
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i55

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i55: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i53, %_ZNK6hermes6parser6detail12JSParserImpl18copySeenDirectivesEv.exit
  %i.gy = phi ptr [ %.pre.i.i54, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i53 ], [ %i.gq, %_ZNK6hermes6parser6detail12JSParserImpl18copySeenDirectivesEv.exit ] ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fg
  br i1 %i.gz, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i55
  call void @free(ptr noundef %i.gy) #17
  br label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56

_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i55, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56, %bb.n, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit
  %.sroa.059.3 = phi i64 [ %.sroa.059.0, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit ], [ %.sroa.059.1, %bb.m ], [ %i.ev, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56 ], [ %i.ev, %bb.n ]
  %.sroa.3.2 = phi i8 [ 1, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit ], [ 0, %bb.m ], [ 1, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit56 ], [ 1, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.059.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.c = load i32, ptr %i.b, align 4, !tbaa !284
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2, i32 noundef %3) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %1, i8 %2) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i8 } [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret { i64, i8 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingRestElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.e, ptr %i.a, align 8, !tbaa !85
  %i.f = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i8 } %i.f, 0
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !252
  %i.m = icmp eq i32 %i.l, 97
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !277
  store ptr @.str.113, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.o, align 8, !tbaa !274
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.r, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i7 = load ptr, ptr %i.s, align 8, !tbaa !229
  %i.t = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240  ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !241
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !247
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !248
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !250 ; 2 uses
  %i.ae = add i64 %i.ab, 7
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = and i64 %i.af, 7
  %.neg12 = add i64 %i.ad, 7
  %i.ah = sub i64 %.neg12, %i.ag                  ; 3 uses
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !250
  %i.ai = add i64 %i.ah, 56                       ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 262144
  br i1 %i.aj, label %.critedge.i.i.i, label %bb.e, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.ak = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.t, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.e:                                             ; preds = %bb.d
  %i.al = add i64 %i.ah, %i.ab
  %i.am = inttoptr i64 %i.al to ptr
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ak, %.critedge.i.i.i ], [ %i.am, %bb.e ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 96, ptr %i.an, align 8, !tbaa !252
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.j, ptr %i.ap, align 8, !tbaa !345
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.aq, align 8, !tbaa !229
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i7, ptr %i.ar, align 8, !tbaa !229
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.as, align 8, !tbaa !229
  %i.at = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.c
  %.sroa.010.0 = phi i64 [ undef, %bb.c ], [ %i.at, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ 0, %bb.c ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !348
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !348
  %i.d = icmp ugt i32 %i.c, 1023
  br i1 %i.d, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %bb.h

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = load i32, ptr %i.g, align 8, !tbaa !235
  switch i32 %i.h, label %bb.e [
    i32 55, label %bb.c
    i32 49, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseArrayBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

bb.d:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.j = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseObjectBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit: ; preds = %bb.c, %bb.d
  %.sink14.i = phi { i64, i8 } [ %i.j, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = extractvalue { i64, i8 } %.sink14.i, 0
  %i.l = extractvalue { i64, i8 } %.sink14.i, 1   ; 2 uses
  %i.m = trunc i8 %i.l to i1                      ; 2 uses
  %spec.select10.i = select i1 %i.m, i64 %i.k, i64 undef
  %.sroa.3.2.i = and i8 %i.l, 1
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %spec.select10.i, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.3.2.i, 1
  br i1 %i.m, label %.thread, label %bb.h

bb.e:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.n = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.o = extractvalue { i64, i8 } %i.n, 1
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.t, align 1, !tbaa !277
  store ptr @.str.112, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.s, align 8, !tbaa !274
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.v, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.h

.thread:                                          ; preds = %bb.e, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit
  %.pn = phi { i64, i8 } [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %i.n, %bb.e ]
  %.2.in = extractvalue { i64, i8 } %.pn, 0       ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = icmp eq i32 %i.x, 93
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  %.2 = inttoptr i64 %.2.in to ptr
  %i.z = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingInitializerENS1_5ParamEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef %.2) ; 2 uses
  %i.aa = extractvalue { i64, i8 } %i.z, 0
  %i.ab = extractvalue { i64, i8 } %i.z, 1        ; 2 uses
  %i.ac = trunc nuw i8 %i.ab to i1
  %spec.select = select i1 %i.ac, i64 %i.aa, i64 undef
  %spec.select22 = and i8 %i.ab, 1
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit, %bb.f, %bb.b
  %.sroa.018.2 = phi i64 [ undef, %bb.b ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %spec.select, %bb.g ], [ undef, %bb.f ], [ %.2.in, %.thread ]
  %.sroa.3.4 = phi i8 [ 0, %bb.b ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %spec.select22, %bb.g ], [ 0, %bb.f ], [ 1, %.thread ]
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !348
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !348
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.018.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.4, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !348
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !348
  %i.d = icmp ugt i32 %i.c, 1023
  br i1 %i.d, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %.critedge

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !235  ; 2 uses
  switch i32 %i.h, label %bb.w [
    i32 49, label %bb.c
    i32 8, label %bb.d
    i32 60, label %bb.e
    i32 6, label %bb.h
    i32 32, label %bb.i
    i32 23, label %bb.j
    i32 5, label %bb.k
    i32 10, label %bb.l
    i32 9, label %bb.m
    i32 11, label %bb.n
    i32 33, label %bb.r
    i32 12, label %bb.s
    i32 28, label %bb.t
    i32 29, label %bb.u
    i32 20, label %bb.v
  ]

bb.c:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1         ; 2 uses
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select = select i1 %i.l, i64 %i.j, i64 undef
  %spec.select100 = and i8 %i.k, 1
  br label %.critedge

bb.d:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.m = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseLexicalDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1), !inline_history !350 ; 2 uses
  %i.n = extractvalue { i64, i8 } %i.m, 0
  %i.o = extractvalue { i64, i8 } %i.m, 1         ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %spec.select101 = select i1 %i.p, i64 %i.n, i64 undef
  %spec.select102 = and i8 %i.o, 1
  br label %.critedge

bb.e:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240  ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !241
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !247
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !248
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !250
  %i.ab = add i64 %i.aa, 7                        ; 2 uses
  %i.ac = add i64 %i.ab, %i.y
  %i.ad = and i64 %i.ac, 7
  %i.ae = sub i64 %i.ab, %i.ad                    ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !250
  %i.af = add i64 %i.ae, 48                       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 262144
  br i1 %i.ag, label %.critedge.i.i.i.i, label %bb.f, !prof !251

.critedge.i.i.i.i:                                ; preds = %bb.e
  %i.ah = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.q, i64 noundef 48, i64 noundef 8) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %i.ae, %i.y
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.z, align 8, !tbaa !250
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i.i ], [ %i.aj, %bb.f ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store i32 20, ptr %i.ak, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.al, i8 0, i64 28, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.an, align 8, !tbaa !229
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i.i = load ptr, ptr %i.ao, align 8, !tbaa !229
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i.i, ptr %i.ap, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i.i = load ptr, ptr %i.am, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i.i, ptr %i.aq, align 8, !tbaa !229
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ar, i32 noundef 0) #17
  store ptr %i.as, ptr %i.f, align 8, !tbaa !85
  %i.at = ptrtoint ptr %.0.i.i.i.i to i64
  br label %.critedge

bb.h:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.au = and i32 %1, 2
  %i.av = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseIfStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.au) ; 2 uses
  %i.aw = extractvalue { i64, i8 } %i.av, 0
  %i.ax = extractvalue { i64, i8 } %i.av, 1       ; 2 uses
  %i.ay = trunc nuw i8 %i.ax to i1
  %spec.select103 = select i1 %i.ay, i64 %i.aw, i64 undef
  %spec.select104 = and i8 %i.ax, 1
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.az = and i32 %1, 2
  %i.ba = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseWhileStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.az) ; 2 uses
  %i.bb = extractvalue { i64, i8 } %i.ba, 0
  %i.bc = extractvalue { i64, i8 } %i.ba, 1       ; 2 uses
  %i.bd = trunc nuw i8 %i.bc to i1
  %spec.select105 = select i1 %i.bd, i64 %i.bb, i64 undef
  %spec.select106 = and i8 %i.bc, 1
  br label %.critedge

bb.j:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.be = and i32 %1, 2
  %i.bf = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseDoWhileStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i8 } %i.bf, 0
  %i.bh = extractvalue { i64, i8 } %i.bf, 1       ; 2 uses
  %i.bi = trunc nuw i8 %i.bh to i1
  %spec.select107 = select i1 %i.bi, i64 %i.bg, i64 undef
  %spec.select108 = and i8 %i.bh, 1
  br label %.critedge

bb.k:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.bj = and i32 %1, 2
  %i.bk = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseForStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.bj) ; 2 uses
  %i.bl = extractvalue { i64, i8 } %i.bk, 0
  %i.bm = extractvalue { i64, i8 } %i.bk, 1       ; 2 uses
  %i.bn = trunc nuw i8 %i.bm to i1
  %spec.select109 = select i1 %i.bn, i64 %i.bl, i64 undef
  %spec.select110 = and i8 %i.bm, 1
  br label %.critedge

bb.l:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.bo = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseContinueStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.bp = extractvalue { i64, i8 } %i.bo, 0
  %i.bq = extractvalue { i64, i8 } %i.bo, 1       ; 2 uses
  %i.br = trunc nuw i8 %i.bq to i1
  %spec.select111 = select i1 %i.br, i64 %i.bp, i64 undef
  %spec.select112 = and i8 %i.bq, 1
  br label %.critedge

bb.m:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.bs = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBreakStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.bt = extractvalue { i64, i8 } %i.bs, 0
  %i.bu = extractvalue { i64, i8 } %i.bs, 1       ; 2 uses
  %i.bv = trunc nuw i8 %i.bu to i1
  %spec.select113 = select i1 %i.bv, i64 %i.bt, i64 undef
  %spec.select114 = and i8 %i.bu, 1
  br label %.critedge

bb.n:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.bw = and i32 %1, 2
  %.not129 = icmp eq i32 %i.bw, 0
  br i1 %.not129, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 180
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !351, !range !81, !noundef !75
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cb, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.cd, align 1, !tbaa !277
  store ptr @.str.97, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.cc, align 8, !tbaa !274
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cf, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cg = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseReturnStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.ch = extractvalue { i64, i8 } %i.cg, 0
  %i.ci = extractvalue { i64, i8 } %i.cg, 1       ; 2 uses
  %i.cj = trunc nuw i8 %i.ci to i1
  %spec.select115 = select i1 %i.cj, i64 %i.ch, i64 undef
  %spec.select116 = and i8 %i.ci, 1
  br label %.critedge

bb.r:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.ck = and i32 %1, 2
  %i.cl = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseWithStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.ck) ; 2 uses
  %i.cm = extractvalue { i64, i8 } %i.cl, 0
  %i.cn = extractvalue { i64, i8 } %i.cl, 1       ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  %spec.select117 = select i1 %i.co, i64 %i.cm, i64 undef
  %spec.select118 = and i8 %i.cn, 1
  br label %.critedge

bb.s:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.cp = and i32 %1, 2
  %i.cq = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseSwitchStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.cp) ; 2 uses
  %i.cr = extractvalue { i64, i8 } %i.cq, 0
  %i.cs = extractvalue { i64, i8 } %i.cq, 1       ; 2 uses
  %i.ct = trunc nuw i8 %i.cs to i1
  %spec.select119 = select i1 %i.ct, i64 %i.cr, i64 undef
  %spec.select120 = and i8 %i.cs, 1
  br label %.critedge

bb.t:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.cu = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseThrowStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison) ; 2 uses
  %i.cv = extractvalue { i64, i8 } %i.cu, 0
  %i.cw = extractvalue { i64, i8 } %i.cu, 1       ; 2 uses
  %i.cx = trunc nuw i8 %i.cw to i1
  %spec.select121 = select i1 %i.cx, i64 %i.cv, i64 undef
  %spec.select122 = and i8 %i.cw, 1
  br label %.critedge

bb.u:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.cy = and i32 %1, 2
  %i.cz = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTryStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.cy) ; 2 uses
  %i.da = extractvalue { i64, i8 } %i.cz, 0
  %i.db = extractvalue { i64, i8 } %i.cz, 1       ; 2 uses
  %i.dc = trunc nuw i8 %i.db to i1
  %spec.select123 = select i1 %i.dc, i64 %i.da, i64 undef
  %spec.select124 = and i8 %i.db, 1
  br label %.critedge

bb.v:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.dd = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseDebuggerStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.de = extractvalue { i64, i8 } %i.dd, 0
  %i.df = extractvalue { i64, i8 } %i.dd, 1       ; 2 uses
  %i.dg = trunc nuw i8 %i.df to i1
  %spec.select125 = select i1 %i.dg, i64 %i.de, i64 undef
  %spec.select126 = and i8 %i.df, 1
  br label %.critedge

bb.w:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.dh = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 188
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !284
  %.not130 = icmp eq i32 %i.dj, 0
  br i1 %.not130, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 185
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !352, !range !81, !noundef !75
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = icmp eq i32 %i.h, 1
  %or.cond = and i1 %i.dn, %i.dm
  br i1 %or.cond, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !204
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !279
  %i.ds = icmp eq ptr %i.dr, %i.dp
  br i1 %i.ds, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  %i.dt = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl27checkMaybeFlowMatchSlowPathEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.dt, label %bb.y, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread, !prof !353

bb.y:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit
  %i.du = and i32 %1, 2
  %i.dv = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl26tryParseMatchStatementFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.du) #17 ; 2 uses
  %i.dw = extractvalue { i64, i8 } %i.dv, 1
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dy = extractvalue { i64, i8 } %i.dv, 0       ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread, label %.critedge

_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %bb.z, %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit, %bb.x, %bb.w
  %i.dz = and i32 %1, 2
  %i.ea = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseExpressionOrLabelledStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.dz) ; 2 uses
  %i.eb = extractvalue { i64, i8 } %i.ea, 0
  %i.ec = extractvalue { i64, i8 } %i.ea, 1       ; 2 uses
  %i.ed = trunc nuw i8 %i.ec to i1
  %spec.select127 = select i1 %i.ed, i64 %i.eb, i64 undef
  %spec.select128 = and i8 %i.ec, 1
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.d, %bb.c, %bb.y, %bb.z, %bb.g, %bb.b
  %.sroa.098.17 = phi i64 [ undef, %bb.b ], [ %spec.select103, %bb.h ], [ %spec.select101, %bb.d ], [ %spec.select105, %bb.i ], [ %spec.select127, %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread ], [ %i.at, %bb.g ], [ undef, %bb.y ], [ %spec.select125, %bb.v ], [ %spec.select123, %bb.u ], [ %spec.select107, %bb.j ], [ %spec.select109, %bb.k ], [ %spec.select111, %bb.l ], [ %spec.select113, %bb.m ], [ %spec.select115, %bb.q ], [ %spec.select117, %bb.r ], [ %spec.select119, %bb.s ], [ %spec.select121, %bb.t ], [ %i.dy, %bb.z ], [ %spec.select, %bb.c ]
  %.sroa.18.17 = phi i8 [ 0, %bb.b ], [ %spec.select104, %bb.h ], [ %spec.select102, %bb.d ], [ %spec.select106, %bb.i ], [ %spec.select128, %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread ], [ 1, %bb.g ], [ 0, %bb.y ], [ %spec.select126, %bb.v ], [ %spec.select124, %bb.u ], [ %spec.select108, %bb.j ], [ %spec.select110, %bb.k ], [ %spec.select112, %bb.l ], [ %spec.select114, %bb.m ], [ %spec.select116, %bb.q ], [ %spec.select118, %bb.r ], [ %spec.select120, %bb.s ], [ %spec.select122, %bb.t ], [ 1, %bb.z ], [ %spec.select100, %bb.c ]
  %i.ee = load i32, ptr %i.a, align 8, !tbaa !348
  %i.ef = add i32 %i.ee, -1
  store i32 %i.ef, ptr %i.a, align 8, !tbaa !348
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.098.17, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.18.17, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !229 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %4, ptr %4, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.g, align 8, !tbaa !234
  br i1 %3, label %.preheader, label %.critedge.i.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 8, !tbaa !235
  %i.i = icmp eq i32 %i.h, 112
  br i1 %i.i, label %.lr.ph, label %.critedge.i.preheader

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.j = call noundef ptr @_ZN6hermes6parser6detail12JSParserImpl14parseDirectiveEv(ptr noundef nonnull align 8 dereferenceable(2824) %0), !inline_history !236 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %4, align 8, !tbaa !231    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %4, ptr %i.l, align 8, !tbaa !234
  store ptr %i.k, ptr %i.j, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !234
  store ptr %i.j, ptr %4, align 8, !tbaa !231
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.o = load i32, ptr %i.n, align 8, !tbaa !235
  %i.p = icmp eq i32 %i.o, 112
  br i1 %i.p, label %.lr.ph, label %.critedge.i.preheader, !llvm.loop !237

.critedge.i.preheader:                            ; preds = %bb.b, %.lr.ph, %.preheader, %bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.preheader, %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !235
  switch i32 %i.r, label %bb.c [
    i32 120, label %bb.d
    i32 51, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge.i
  %i.s = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22parseStatementListItemENS1_5ParamENS2_17AllowImportExportERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !236
  br i1 %i.s, label %.critedge.i, label %.loopexit, !llvm.loop !238

bb.d:                                             ; preds = %.critedge.i, %.critedge.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !240  ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !241
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !247
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !248
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !250 ; 2 uses
  %i.ae = add i64 %i.ab, 7
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = and i64 %i.af, 7
  %.neg16 = add i64 %i.ad, 7
  %i.ah = sub i64 %.neg16, %i.ag                  ; 3 uses
  store i64 %i.ah, ptr %i.ac, align 8, !tbaa !250
  %i.ai = add i64 %i.ah, 72                       ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 262144
  br i1 %i.aj, label %.critedge.i.i.i, label %bb.e, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.ak = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.t, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.e:                                             ; preds = %bb.d
  %i.al = add i64 %i.ah, %i.ab
  %i.am = inttoptr i64 %i.al to ptr
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.ak, %.critedge.i.i.i ], [ %i.am, %bb.e ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 21, ptr %i.an, align 8, !tbaa !252
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  store i8 0, ptr %i.ap, align 4, !tbaa !312
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 53
  store i8 0, ptr %i.aq, align 1, !tbaa !314
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 54
  store i8 0, ptr %i.ar, align 2, !tbaa !315
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 7 uses
  store ptr %i.as, ptr %i.as, align 8, !tbaa !231
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !234
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !234 ; 4 uses
  %i.av = icmp eq ptr %i.as, %4
  %i.aw = icmp eq ptr %i.au, %4
  %or.cond.i.i.i.i.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !231   ; 2 uses
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !231 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %4, ptr %i.az, align 8, !tbaa !234
  store ptr %i.ay, ptr %4, align 8, !tbaa !231
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !234
  store ptr %i.as, ptr %i.au, align 8, !tbaa !231
  store ptr %i.au, ptr %i.at, align 8, !tbaa !234
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !tbaa !229
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !229
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.bd, align 8, !tbaa !229
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.be, align 8, !tbaa !229
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !235
  %i.bh = icmp eq i32 %i.bg, 51
  br i1 %i.bh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 51, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.h:                                             ; preds = %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %i.bi = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef %2) #17
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !85
  %i.bj = ptrtoint ptr %.0.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.g, %bb.h
  %.sroa.07.1 = phi i64 [ undef, %bb.g ], [ %i.bj, %bb.h ], [ undef, %bb.c ]
  %.sroa.2.1 = phi i8 [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.07.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseVariableStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseLexicalDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1)
  ret { i64, i8 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseEmptyStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !241
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250  ; 2 uses
  %i.n = add i64 %i.k, 7
  %i.o = add i64 %i.n, %i.m
  %i.p = and i64 %i.o, 7
  %.neg2 = add i64 %i.m, 7
  %i.q = sub i64 %.neg2, %i.p                     ; 3 uses
  store i64 %i.q, ptr %i.l, align 8, !tbaa !250
  %i.r = add i64 %i.q, 48                         ; 2 uses
  %i.s = icmp ugt i64 %i.r, 262144
  br i1 %i.s, label %.critedge.i.i.i, label %bb.b, !prof !251
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl19parseThrowStatementENS1_5ParamE:bb.a
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !277
  store ptr @.str.161, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.j, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.m, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !277
  store ptr @.str.162, ptr %4, align 8, !tbaa !278
  store i8 3, ptr %i.o, align 8, !tbaa !274
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.n, i32 noundef 3, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0
  %i.s = extractvalue { i64, i8 } %i.q, 1
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !235
  switch i32 %i.v, label %bb.f [
    i32 60, label %bb.e
    i32 51, label %bb.h
    i32 120, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.w, ptr %i.a, align 8, !tbaa !85
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.f, align 8, !tbaa !280, !range !81, !noundef !75
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i8 = load ptr, ptr %i.z, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.ab, align 1, !tbaa !277
  store ptr @.str.82, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.aa, align 8, !tbaa !274
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ad, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i8, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.d, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !240 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !241
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !247
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !248
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !250 ; 2 uses
  %i.aq = add i64 %i.an, 7
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = and i64 %i.ar, 7
  %.neg13 = add i64 %i.ap, 7
  %i.at = sub i64 %.neg13, %i.as                  ; 3 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !250
  %i.au = add i64 %i.at, 56                       ; 2 uses
  %i.av = icmp ugt i64 %i.au, 262144
  br i1 %i.av, label %.critedge.i.i.i, label %bb.i, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.h
  %i.aw = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.af, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = add i64 %i.at, %i.an
  %i.ay = inttoptr i64 %i.ax to ptr
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.aw, %.critedge.i.i.i ], [ %i.ay, %bb.i ] ; 8 uses
  %i.az = inttoptr i64 %i.r to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 25, ptr %i.ba, align 8, !tbaa !252
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !416
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bd, align 8, !tbaa !229
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9, ptr %i.be, align 8, !tbaa !229
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bf, align 8, !tbaa !229
  %i.bg = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.c, %bb.b
  %.sroa.010.1 = phi i64 [ undef, %bb.b ], [ %i.bg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.g ], [ undef, %bb.c ]
  %.sroa.2.1 = phi i8 [ 0, %bb.b ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.g ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTryStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !229 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !85
  %i.l = load i32, ptr %i.k, align 8, !tbaa !235
  %i.m = icmp eq i32 %i.l, 49
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 49, ptr %i.f, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.f, i64 1, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.n = and i32 %1, 2                            ; 3 uses
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.n, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  %i.p = extractvalue { i64, i8 } %i.o, 0
  %i.q = extractvalue { i64, i8 } %i.o, 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8, !tbaa !229 ; 6 uses
  %i.u = load i32, ptr %i.s, align 8, !tbaa !235  ; 2 uses
  %i.v = icmp eq i32 %i.u, 18
  br i1 %i.v, label %bb.e, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8, !tbaa !85
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235  ; 2 uses
  %i.y = icmp eq i32 %i.x, 53
  br i1 %i.y, label %bb.f, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit44

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !85
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !235
  switch i32 %i.aa, label %bb.i [
    i32 55, label %bb.g
    i32 49, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseArrayBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseObjectBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit: ; preds = %bb.g, %bb.h
  %.sink14.i = phi { i64, i8 } [ %i.ac, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ad = extractvalue { i64, i8 } %.sink14.i, 0
  %i.ae = extractvalue { i64, i8 } %.sink14.i, 1  ; 2 uses
  %i.af = trunc i8 %i.ae to i1                    ; 2 uses
  %spec.select10.i = select i1 %i.af, i64 %i.ad, i64 undef
  %.sroa.3.2.i = and i8 %i.ae, 1
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %spec.select10.i, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.3.2.i, 1
  br i1 %i.af, label %.thread, label %.critedge

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.ah = extractvalue { i64, i8 } %i.ag, 1
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 1, ptr %i.e, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge

.thread:                                          ; preds = %bb.i, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit
  %.pn = phi { i64, i8 } [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %i.ag, %bb.i ]
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !235
  %i.al = icmp eq i32 %i.ak, 54
  br i1 %i.al, label %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit.thread, label %bb.k

_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit.thread: ; preds = %.thread
  %.242.in = extractvalue { i64, i8 } %.pn, 0
  %.242 = inttoptr i64 %.242.in to ptr
  %i.am = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.am, ptr %i.g, align 8, !tbaa !85
  %.pre = load i32, ptr %i.am, align 8, !tbaa !235
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit44

bb.k:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 54, ptr %i.d, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.d, i64 1, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, ptr %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.critedge

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit44: ; preds = %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit.thread, %bb.e
  %i.an = phi i32 [ %.pre, %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit.thread ], [ %i.x, %bb.e ]
  %.343 = phi ptr [ %.242, %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit.thread ], [ null, %bb.e ]
  %i.ao = icmp eq i32 %i.an, 49
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 49, ptr %i.c, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.c, i64 1, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166, ptr %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.critedge

bb.m:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit44
  %i.ap = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.n, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 1
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread71, label %.critedge

.thread71:                                        ; preds = %bb.m
  %i.as = extractvalue { i64, i8 } %i.ap, 0
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.av = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.au, i64 noundef 8) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 70, ptr %i.aw, align 8, !tbaa !252
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %.343, ptr %i.ay, align 8, !tbaa !418
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %i.at, ptr %i.az, align 8, !tbaa !420
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ba, align 8, !tbaa !229
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !229
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.bc, align 8, !tbaa !229
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.bd, align 8, !tbaa !229
  %.pre77 = load ptr, ptr %i.g, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre77, i64 8
  %.sroa.0.0.copyload.i46.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !229
  %.pre79 = load i32, ptr %.pre77, align 8, !tbaa !235
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %.thread71, %bb.d
  %i.be = phi i32 [ %.pre79, %.thread71 ], [ %i.u, %bb.d ]
  %.sroa.0.0.copyload.i46 = phi ptr [ %.sroa.0.0.copyload.i46.pre, %.thread71 ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.237 = phi ptr [ %i.av, %.thread71 ], [ null, %bb.d ] ; 3 uses
  %i.bf = icmp eq i32 %i.be, 25
  br i1 %i.bf, label %bb.n, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit47

bb.n:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.bg = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.bg, ptr %i.g, align 8, !tbaa !85
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !235
  %i.bi = icmp eq i32 %i.bh, 49
  br i1 %i.bi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 49, ptr %i.b, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr %.sroa.0.0.copyload.i46)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.bj = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl10parseBlockENS1_5ParamENS0_7JSLexer14GrammarContextEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.n, i32 noundef 0, i1 noundef zeroext false) ; 2 uses
  %i.bk = extractvalue { i64, i8 } %i.bj, 1
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread73, label %.critedge

.thread73:                                        ; preds = %bb.p
  %i.bm = extractvalue { i64, i8 } %i.bj, 0
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit47

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit47: ; preds = %.thread73, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %.139 = phi ptr [ %i.bn, %.thread73 ], [ null, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit ] ; 3 uses
  %i.bo = icmp ne ptr %.237, null
  %i.bp = icmp ne ptr %.139, null                 ; 2 uses
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 18, ptr %i.a, align 4, !tbaa !264
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 25, ptr %i.bq, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 2, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.164, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.critedge

bb.r:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit47
  %.139..237 = select i1 %i.bp, ptr %.139, ptr %.237
  %.sroa.06.0.in = getelementptr inbounds nuw i8, ptr %.139..237, i64 32
  %.sroa.06.0 = load ptr, ptr %.sroa.06.0.in, align 8, !tbaa !229
  %i.br = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !240 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !241
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !247
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !248
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !250
  %i.cc = add i64 %i.cb, 7                        ; 2 uses
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = and i64 %i.cd, 7
  %i.cf = sub i64 %i.cc, %i.ce                    ; 3 uses
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !250
  %i.cg = add i64 %i.cf, 72                       ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, 262144
  br i1 %i.ch, label %.critedge.i.i.i, label %bb.s, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.r
  %i.ci = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.br, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.s:                                             ; preds = %bb.r
  %i.cj = add i64 %i.cf, %i.bz
  %i.ck = inttoptr i64 %i.cj to ptr
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.s
  %.0.i.i.i = phi ptr [ %i.ci, %.critedge.i.i.i ], [ %i.ck, %bb.s ] ; 10 uses
  %i.cl = inttoptr i64 %i.p to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 31, ptr %i.cm, align 8, !tbaa !252
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !421
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %.237, ptr %i.cp, align 8, !tbaa !423
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store ptr %.139, ptr %i.cq, align 8, !tbaa !424
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cr, align 8, !tbaa !229
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.06.0, ptr %i.cs, align 8, !tbaa !229
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ct, align 8, !tbaa !229
  %i.cu = ptrtoint ptr %.0.i.i.i to i64
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.o, %bb.q, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.c, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit, %bb.j, %bb.m, %bb.p, %bb.b
  %.sroa.067.1 = phi i64 [ undef, %bb.b ], [ %i.cu, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.q ], [ undef, %bb.m ], [ undef, %bb.o ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ undef, %bb.l ], [ undef, %bb.k ], [ undef, %bb.c ], [ undef, %bb.j ], [ undef, %bb.p ]
  %.sroa.2.8 = phi i8 [ 0, %bb.b ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.j ], [ 0, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.067.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.8, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseDebuggerStatementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl22parseDebuggerStatementEv:bb.a
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !250 ; 2 uses
  %i.ab = add i64 %i.y, 7
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, 7
  %.neg7 = add i64 %i.aa, 7
  %i.ae = sub i64 %.neg7, %i.ad                   ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !250
  %i.af = add i64 %i.ae, 48                       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 262144
  br i1 %i.ag, label %.critedge.i.i.i, label %bb.f, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.ah = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.q, i64 noundef 48, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %i.ae, %i.y
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.z, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.f
  %.0.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i ], [ %i.aj, %bb.f ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 19, ptr %i.ak, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.am, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i4, ptr %i.an, align 8, !tbaa !229
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ao, align 8, !tbaa !229
  %i.ap = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.d
  %.sroa.0.0 = phi i64 [ %i.ap, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.d ]
  %.sroa.2.0 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl26tryParseMatchStatementFlowENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824), i32) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl34parseExpressionOrLabelledStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !235  ; 2 uses
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 49, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
    i32 36, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
    i32 4, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !279
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i64 0) #17
  %i.l = and i64 %i.k, 8589934591
  %i.m = icmp eq i64 %i.l, 4294967300
  %.pre65 = load ptr, ptr %i.a, align 8, !tbaa !85 ; 2 uses
  br i1 %i.m, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread: ; preds = %bb.c, %bb.a, %bb.a, %bb.a
  %i.n = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %.pre65, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.q, align 1, !tbaa !277
  store ptr @.str.118, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.p, align 8, !tbaa !274
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.s, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.pre64 = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread, %bb.c, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %.ph = phi ptr [ %i.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ %.pre65, %bb.c ], [ %.pre64, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_EEEbT_DpT0_.exit.thread ] ; 5 uses
  %.pr = load i32, ptr %.ph, align 8, !tbaa !235
  %i.t = icmp eq i32 %.pr, 1
  br i1 %i.t, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !146
  %i.w = getelementptr inbounds nuw i8, ptr %.ph, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !279
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %bb.d, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread

bb.d:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26
  %i.z = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.z, align 8, !tbaa !229 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.aa, i32 noundef 0) #17 ; 3 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !85
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !235
  %i.ad = icmp eq i32 %i.ac, 55
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.ae, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ag, align 1, !tbaa !277
  store ptr @.str.119, ptr %4, align 8, !tbaa !278
  store i8 3, ptr %i.af, align 8, !tbaa !274
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ai, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.copyload.i27, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.aj, align 8, !tbaa !324
  %i.ak = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.aa, i32 noundef 0) #17 ; 2 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !85
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %bb.f, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26
  %i.al = phi ptr [ %.ph, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread ], [ %i.ak, %bb.f ], [ %.ph, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0.0.copyload.i33 = load ptr, ptr %i.am, align 8, !tbaa !229 ; 3 uses
  %i.an = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 0) ; 2 uses
  %i.ao = extractvalue { i64, i8 } %i.an, 0       ; 4 uses
  %i.ap = extractvalue { i64, i8 } %i.an, 1
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.t

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread: ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i3370 = load ptr, ptr %i.ar, align 8, !tbaa !229
  %i.as = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 0) ; 2 uses
  %i.at = extractvalue { i64, i8 } %i.as, 0
  %i.au = extractvalue { i64, i8 } %i.as, 1
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge, label %bb.t

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread
  br i1 %i.d, label %bb.h, label %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge

._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread, %bb.g
  %.sroa.0.0.copyload.i337176 = phi ptr [ %.sroa.0.0.copyload.i33, %bb.g ], [ %.sroa.0.0.copyload.i3370, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread ]
  %i.aw = phi i64 [ %i.ao, %bb.g ], [ %i.at, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.ax = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !252
  %i.ba = icmp eq i32 %i.az, 66
  %.pre66 = load ptr, ptr %i.a, align 8, !tbaa !85 ; 3 uses
  br i1 %i.ba, label %bb.i, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %.pre66, align 8, !tbaa !235 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 92
  br i1 %i.bc, label %bb.j, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.bd, i32 noundef 0) #17 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !235
  %i.bg = icmp eq i32 %i.bf, 4
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i1 noundef zeroext true, i1 noundef zeroext false), !inline_history !425 ; 2 uses
  %i.bi = extractvalue { i64, i8 } %i.bh, 1
  %i.bj = trunc i8 %i.bi to i1
  br i1 %i.bj, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.k
  %i.bk = extractvalue { i64, i8 } %i.bh, 0
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.sroa.0.0.copyload.i34 = load ptr, ptr %i.bm, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bo, align 1, !tbaa !277
  store ptr @.str.120, ptr %5, align 8, !tbaa !278
  store i8 3, ptr %i.bn, align 8, !tbaa !274
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bq, i32 noundef 0, ptr %.sroa.0.0.copyload.i34, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.br = and i32 %1, 2
  %i.bs = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.br) ; 2 uses
  %i.bt = extractvalue { i64, i8 } %i.bs, 1
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %.thread56, label %bb.t

.thread56:                                        ; preds = %bb.l
  %i.bv = extractvalue { i64, i8 } %i.bs, 0
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %bb.m

bb.m:                                             ; preds = %.thread56, %.thread
  %.2 = phi ptr [ %i.bl, %.thread ], [ %i.bw, %.thread56 ] ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !240 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !241
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !247
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !248
  %i.cf = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !250
  %i.ci = add i64 %i.ch, 7                        ; 2 uses
  %i.cj = add i64 %i.ci, %i.cf
  %i.ck = and i64 %i.cj, 7
  %i.cl = sub i64 %i.ci, %i.ck                    ; 3 uses
  store i64 %i.cl, ptr %i.cg, align 8, !tbaa !250
  %i.cm = add i64 %i.cl, 72                       ; 2 uses
  %i.cn = icmp ugt i64 %i.cm, 262144
  br i1 %i.cn, label %.critedge.i.i.i, label %bb.n, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.m
  %i.co = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bx, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cp = add i64 %i.cl, %i.cf
  %i.cq = inttoptr i64 %i.cp to ptr
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.n
  %.0.i.i.i = phi ptr [ %i.co, %.critedge.i.i.i ], [ %i.cq, %bb.n ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 29, ptr %i.cr, align 8, !tbaa !252
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cs, i8 0, i64 28, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store i32 -1, ptr %i.ct, align 8, !tbaa !362
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %i.ax, ptr %i.cu, align 8, !tbaa !426
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store ptr %.2, ptr %i.cv, align 8, !tbaa !429
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.cx, align 8, !tbaa !229
  %i.cy = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.cy, align 8, !tbaa !229
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.cz, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.da, align 8, !tbaa !229
  %i.db = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.t

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split: ; preds = %bb.h, %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge
  %.sroa.0.0.copyload.i337175 = phi ptr [ %.sroa.0.0.copyload.i33, %bb.h ], [ %.sroa.0.0.copyload.i337176, %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge ]
  %i.dc = phi i64 [ %i.ao, %bb.h ], [ %i.aw, %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge ]
  %.ph68 = phi ptr [ %.pre66, %bb.h ], [ %.pre, %._ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit_crit_edge ] ; 2 uses
  %.pr69 = load i32, ptr %.ph68, align 8, !tbaa !235
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split, %bb.i
  %.sroa.0.0.copyload.i337174 = phi ptr [ %.sroa.0.0.copyload.i337175, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split ], [ %.sroa.0.0.copyload.i33, %bb.i ] ; 2 uses
  %i.dd = phi i64 [ %i.dc, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split ], [ %i.ao, %bb.i ]
  %i.de = phi i32 [ %.pr69, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split ], [ %i.bb, %bb.i ]
  %i.df = phi ptr [ %.ph68, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exitthread-pre-split ], [ %.pre66, %bb.i ]
  switch i32 %i.de, label %bb.p [
    i32 60, label %bb.o
    i32 51, label %bb.r
    i32 120, label %bb.r
  ]

bb.o:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.dg, i32 noundef 0) #17
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !85
  br label %bb.r

bb.p:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !280, !range !81, !noundef !75
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.0.0.copyload.i.i39 = load ptr, ptr %i.dl, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.dn, align 1, !tbaa !277
  store ptr @.str.82, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.dm, align 8, !tbaa !274
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.dp, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i39, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.t

bb.r:                                             ; preds = %bb.o, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit, %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i40 = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.dr = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !240 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !241
  %i.dv = zext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !247
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !248
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !250
  %i.ec = add i64 %i.eb, 7                        ; 2 uses
  %i.ed = add i64 %i.ec, %i.dz
  %i.ee = and i64 %i.ed, 7
  %i.ef = sub i64 %i.ec, %i.ee                    ; 3 uses
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !250
  %i.eg = add i64 %i.ef, 64                       ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 262144
  br i1 %i.eh, label %.critedge.i.i.i42, label %bb.s, !prof !251

.critedge.i.i.i42:                                ; preds = %bb.r
  %i.ei = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dr, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43

bb.s:                                             ; preds = %bb.r
  %i.ej = add i64 %i.ef, %i.dz
  %i.ek = inttoptr i64 %i.ej to ptr
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43:  ; preds = %.critedge.i.i.i42, %bb.s
  %.0.i.i.i41 = phi ptr [ %i.ei, %.critedge.i.i.i42 ], [ %i.ek, %bb.s ] ; 9 uses
  %i.el = inttoptr i64 %i.dd to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i41, i8 0, i64 16, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 16
  store i32 30, ptr %i.em, align 8, !tbaa !252
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 20
  store i32 0, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 48
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !336
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 56
  store ptr null, ptr %i.ep, align 8, !tbaa !339
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 24
  store ptr %.sroa.0.0.copyload.i337174, ptr %i.eq, align 8, !tbaa !229
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 32
  store ptr %.sroa.0.0.copyload.i.i40, ptr %i.er, align 8, !tbaa !229
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 40
  store ptr %.sroa.0.0.copyload.i337174, ptr %i.es, align 8, !tbaa !229
  %i.et = ptrtoint ptr %.0.i.i.i41 to i64
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread, %bb.l, %bb.k, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43, %bb.q
  %.sroa.054.0 = phi i64 [ %i.db, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread ], [ undef, %bb.k ], [ %i.et, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43 ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread ]
  %.sroa.3.2 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread ], [ 0, %bb.k ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit43 ], [ 0, %bb.q ], [ 0, %bb.l ], [ 0, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit26.thread.thread ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.054.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6parser6detail12JSParserImpl18copySeenDirectivesEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.182") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !133
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.g = load i32, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit
  %i.j = phi i32 [ %i.ab, %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit ], [ 0, %bb.a ] ; 2 uses
  %.010 = phi ptr [ %i.ac, %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.010, align 8, !tbaa !214 ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !133
  %.not.i = icmp ult i32 %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !281

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = phi i32 [ %.pre.i, %bb.b ], [ %i.j, %.lr.ph ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !131
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.o ; 6 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !344 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store i32 0, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 24, ptr %i.s, align 4, !tbaa !133
  %i.t = icmp ugt i64 %.sroa.2.0.copyload.i, 24
  br i1 %i.t, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull %i.q, i64 noundef %.sroa.2.0.copyload.i, i64 noundef 1) #17
  %.pre7.pre.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !132
  %i.u = zext i32 %.pre7.pre.i.i.i.i to i64
  %.pre2.i = load ptr, ptr %i.p, align 8, !tbaa !131
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp samesign eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.v = phi ptr [ %.pre2.i, %.thread.i.i ], [ %i.q, %bb.d ]
  %.pre7.i.i4.i.i = phi i64 [ %i.u, %.thread.i.i ], [ 0, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.pre7.i.i4.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !132
  br label %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit

_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i32 [ 0, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.y = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.z = add i32 %i.x, %i.y
  store i32 %i.z, ptr %i.r, align 8, !tbaa !132
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !132
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.b, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh15SmallVectorImplINS_11SmallStringILj24EEEE12emplace_backIJRKNS_9StringRefEEEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !348
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !348
  %i.d = icmp ugt i32 %i.c, 1023
  br i1 %i.d, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %bb.i

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !235  ; 2 uses
  switch i32 %i.h, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread [
    i32 4, label %bb.d
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !279  ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %bb.c, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit

bb.c:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.n, i64 0) #17
  %i.p = and i64 %i.o, 8589934591
  %i.q = icmp eq i64 %i.p, 4294967300
  br i1 %i.q, label %bb.d, label %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge

._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !85  ; 2 uses
  %.pre31 = load i32, ptr %.pre, align 8, !tbaa !235
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread

bb.d:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %bb.c
  %i.r = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext true, i1 noundef zeroext false), !inline_history !425 ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0
  %i.t = extractvalue { i64, i8 } %i.r, 1
  %spec.select3.i = and i8 %i.t, 1                ; 2 uses
  %.not32 = icmp eq i8 %spec.select3.i, 0
  %spec.select = select i1 %.not32, i64 undef, i64 %i.s
  br label %bb.i

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread: ; preds = %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.u = phi i32 [ %.pre31, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.h, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit ]
  %i.v = phi ptr [ %.pre, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread_crit_edge ], [ %i.g, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit ]
  switch i32 %i.u, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread21 [
    i32 36, label %bb.e
    i32 19, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread._ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit_crit_edge
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread._ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit_crit_edge: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit

bb.e:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.w = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseClassDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 0
  %i.y = extractvalue { i64, i8 } %i.w, 1         ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  %spec.select23 = select i1 %i.z, i64 %i.x, i64 undef
  %spec.select24 = and i8 %i.y, 1
  br label %bb.i

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread._ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit_crit_edge, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.aa = phi ptr [ %.pre33, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread._ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit_crit_edge ], [ %i.l, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !146
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread21

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit
  %i.ae = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseLexicalDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1) ; 2 uses
  %i.af = extractvalue { i64, i8 } %i.ae, 0
  %i.ag = extractvalue { i64, i8 } %i.ae, 1       ; 2 uses
  %i.ah = trunc nuw i8 %i.ag to i1
  %spec.select25 = select i1 %i.ah, i64 %i.af, i64 undef
  %spec.select26 = and i8 %i.ag, 1
  br label %bb.i

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread21: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 188
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !284
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread21
  %i.al = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseFlowDeclarationEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.am = extractvalue { i64, i8 } %i.al, 0
  %i.an = extractvalue { i64, i8 } %i.al, 1       ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1
  %spec.select27 = select i1 %i.ao, i64 %i.am, i64 undef
  %spec.select28 = and i8 %i.an, 1
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !285, !range !81, !noundef !75
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseTSDeclarationEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.at = extractvalue { i64, i8 } %i.as, 0
  %i.au = extractvalue { i64, i8 } %i.as, 1       ; 2 uses
  %i.av = trunc nuw i8 %i.au to i1
  %spec.select29 = select i1 %i.av, i64 %i.at, i64 undef
  %spec.select30 = and i8 %i.au, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread, %bb.e, %bb.d, %bb.g, %bb.b
  %.sroa.019.5 = phi i64 [ undef, %bb.b ], [ %spec.select, %bb.d ], [ %spec.select29, %bb.h ], [ %spec.select23, %bb.e ], [ %spec.select25, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %spec.select27, %bb.f ], [ undef, %bb.g ]
  %.sroa.620.5 = phi i8 [ 0, %bb.b ], [ %spec.select3.i, %bb.d ], [ %spec.select30, %bb.h ], [ %spec.select24, %bb.e ], [ %spec.select26, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJPNS_12UniqueStringEEEEbT_DpT0_.exit.thread ], [ %spec.select28, %bb.f ], [ 0, %bb.g ]
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !348
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !348
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.019.5, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.620.5, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseClassDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !230, !range !81, !noundef !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !132  ; 6 uses
  store i8 1, ptr %i.c, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !tbaa !229 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.j, i32 noundef 0) #17 ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !85
  %i.l = load i32, ptr %i.k, align 8, !tbaa !235
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.o = extractvalue { i64, i8 } %i.n, 1
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.q = extractvalue { i64, i8 } %i.n, 0
  %i.r = inttoptr i64 %i.q to ptr
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.s = and i32 %1, 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.219, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.f:                                             ; preds = %.thread, %bb.d
  %.1 = phi ptr [ %i.r, %.thread ], [ null, %bb.d ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 188
  %i.v = load i32, ptr %i.u, align 4, !tbaa !284
  %.not39 = icmp eq i32 %i.v, 0
  br i1 %.not39, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = icmp eq i32 %i.x, 74
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeParamsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.aa = extractvalue { i64, i8 } %i.z, 1
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.thread34, label %bb.m

.thread34:                                        ; preds = %bb.h
  %i.ac = extractvalue { i64, i8 } %i.z, 0
  %i.ad = inttoptr i64 %i.ac to ptr
  %.pre = load ptr, ptr %0, align 8, !tbaa !239
  br label %bb.i

bb.i:                                             ; preds = %.thread34, %bb.g, %bb.f
  %i.ae = phi ptr [ %.pre, %.thread34 ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  %.113 = phi ptr [ %i.ad, %.thread34 ], [ null, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !285, !range !81, !noundef !75
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !235
  %i.ak = icmp eq i32 %i.aj, 74
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTSTypeParametersEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.am = extractvalue { i64, i8 } %i.al, 1
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.thread36, label %bb.m

.thread36:                                        ; preds = %bb.k
  %i.ao = extractvalue { i64, i8 } %i.al, 0
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %bb.l

bb.l:                                             ; preds = %.thread36, %bb.j, %bb.i
  %.3 = phi ptr [ %i.ap, %.thread36 ], [ %.113, %bb.j ], [ %.113, %bb.i ]
  %i.aq = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseClassTailEN4llvh5SMLocEPNS_6ESTree4NodeES7_NS2_14ClassParseKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i, ptr noundef %.1, ptr noundef %.3, i32 noundef 0) ; 2 uses
  %i.ar = extractvalue { i64, i8 } %i.aq, 0
  %i.as = extractvalue { i64, i8 } %i.aq, 1       ; 2 uses
  %i.at = trunc nuw i8 %i.as to i1
  %spec.select = select i1 %i.at, i64 %i.ar, i64 undef
  %spec.select38 = and i8 %i.as, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.c, %bb.e
  %.sroa.032.1 = phi i64 [ undef, %bb.k ], [ undef, %bb.h ], [ undef, %bb.e ], [ undef, %bb.c ], [ %spec.select, %bb.l ]
  %.sroa.2.6 = phi i8 [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38, %bb.l ]
  store i8 %i.d, ptr %i.c, align 8, !tbaa !230
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.av = zext i32 %i.f to i64                    ; 2 uses
  %i.aw = load i32, ptr %i.e, align 8, !tbaa !132 ; 3 uses
  %i.ax = icmp ult i32 %i.f, %i.aw
  br i1 %i.ax, label %.sink.split.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp ugt i32 %i.f, %i.aw
  br i1 %i.ay, label %bb.o, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !133
  %i.bb = icmp ugt i32 %i.f, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull %i.bc, i64 noundef %i.av, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !132
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi.i.in.i = phi i32 [ %.pre.i.i, %bb.p ], [ %i.aw, %bb.o ] ; 2 uses
  %.not13.i.i = icmp eq i32 %i.f, %.pre-phi.i.in.i
  br i1 %.not13.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %.pre-phi.i.i = zext i32 %.pre-phi.i.in.i to i64 ; 2 uses
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !131
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.pre-phi.i.i
  %i.bf = sub nsw i64 %i.av, %.pre-phi.i.i
  %i.bg = shl nsw i64 %i.bf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bg, i1 false), !tbaa !214
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.q, %bb.m
  store i32 %i.f, ptr %i.e, align 8, !tbaa !132
  br label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit: ; preds = %bb.n, %.sink.split.i.i
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.032.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseLexicalDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 16 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !235
  %i.d = icmp eq i32 %i.c, 19
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !229 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.h, i32 noundef 0) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %4, ptr %4, align 8, !tbaa !231
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %4, ptr %i.j, align 8, !tbaa !234
  %i.k = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseVariableDeclarationENS1_5ParamEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr %.sroa.0.0.copyload.i.i), !inline_history !373 ; 2 uses
  %i.l = extractvalue { i64, i8 } %i.k, 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.lr.ph.i39, label %_ZN6hermes6parser6detail12JSParserImpl28parseVariableDeclarationListENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEENS4_5SMLocE.exit.thread

.lr.ph.i39:                                       ; preds = %bb.a, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.i
  %i.n = phi { i64, i8 } [ %i.w, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.i ], [ %i.k, %bb.a ]
  %i.o = extractvalue { i64, i8 } %i.n, 0
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !231    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %4, ptr %i.r, align 8, !tbaa !234
  store ptr %i.q, ptr %i.p, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !234
  store ptr %i.p, ptr %4, align 8, !tbaa !231
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !235
  switch i32 %i.u, label %bb.c [
    i32 61, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.i
    i32 60, label %bb.b
    i32 51, label %.loopexit54
    i32 120, label %.loopexit54
  ]

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.i: ; preds = %.lr.ph.i39
  %i.v = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.h, i32 noundef 0) #17, !inline_history !373
  store ptr %i.v, ptr %i.a, align 8, !tbaa !85
  %i.w = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseVariableDeclarationENS1_5ParamEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr %.sroa.0.0.copyload.i.i), !inline_history !373 ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 1
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.lr.ph.i39, label %_ZN6hermes6parser6detail12JSParserImpl28parseVariableDeclarationListENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEENS4_5SMLocE.exit.thread, !llvm.loop !374

bb.b:                                             ; preds = %.lr.ph.i39
  %i.z = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.h, i32 noundef 0) #17
  store ptr %i.z, ptr %i.a, align 8, !tbaa !85
  br label %.loopexit54

bb.c:                                             ; preds = %.lr.ph.i39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !280, !range !81, !noundef !75
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.loopexit54, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.ad, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.af, align 1, !tbaa !277
  store ptr @.str.82, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.ae, align 8, !tbaa !274
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ah, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i14, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl28parseVariableDeclarationListENS1_5ParamERN4llvh12simple_ilistINS_6ESTree4NodeEJEEENS4_5SMLocE.exit.thread

.loopexit54:                                      ; preds = %.lr.ph.i39, %.lr.ph.i39, %bb.b, %bb.c
  br i1 %i.d, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.loopexit54
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !234 ; 2 uses
  %.not2528 = icmp eq ptr %i.ai, %4
  br i1 %.not2528, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.019.029 = phi ptr [ %i.ai, %.lr.ph ], [ %i.ar, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !389
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ao, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i8 1, ptr %i.ak, align 1, !tbaa !277
  store ptr @.str.105, ptr %5, align 8, !tbaa !278
  store i8 3, ptr %i.aj, align 8, !tbaa !274
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ap, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.019.029, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !234 ; 2 uses
  %.not25 = icmp eq ptr %i.ar, %4
  br i1 %.not25, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.h, %bb.e, %.loopexit54
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i15 = load ptr, ptr %i.as, align 8, !tbaa !229 ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !240 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !241
  %i.ax = zext i32 %i.aw to i64
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !247
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !248
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !250
  %i.be = add i64 %i.bd, 7                        ; 2 uses
  %i.bf = add i64 %i.be, %i.bb
  %i.bg = and i64 %i.bf, 7
  %i.bh = sub i64 %i.be, %i.bg                    ; 3 uses
  store i64 %i.bh, ptr %i.bc, align 8, !tbaa !250
  %i.bi = add i64 %i.bh, 72                       ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 262144
  br i1 %i.bj, label %.critedge.i.i.i, label %bb.i, !prof !251

.critedge.i.i.i:                                  ; preds = %.loopexit
  %i.bk = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.at, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.i:                                             ; preds = %.loopexit
  %i.bl = add i64 %i.bh, %i.bb
  %i.bm = inttoptr i64 %i.bl to ptr
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !250
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl22parseExportDeclarationEv:bb.a
  %.0.i.i.i65 = phi ptr [ %i.cu, %.critedge.i.i.i66 ], [ %i.cw, %bb.n ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i65, i8 0, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 16
  store i32 90, ptr %i.cx, align 8, !tbaa !252
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 20
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 48
  store ptr %.054, ptr %i.cz, align 8, !tbaa !435
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.da, align 8, !tbaa !229
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 32
  store ptr %.sroa.0.0.copyload.i.i64, ptr %i.db, align 8, !tbaa !229
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dc, align 8, !tbaa !229
  %i.dd = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i65, i64 8
  store ptr %3, ptr %i.de, align 8, !tbaa !234
  store ptr %i.dd, ptr %.0.i.i.i65, align 8, !tbaa !231
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %.0.i.i.i65, ptr %i.df, align 8, !tbaa !234
  store ptr %.0.i.i.i65, ptr %3, align 8, !tbaa !231
  %.sroa.0.0.copyload.i.i68 = load ptr, ptr %i.cc, align 8, !tbaa !229
  %i.dg = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !240 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !241
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !247
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !248
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !250
  %i.dr = add i64 %i.dq, 7                        ; 2 uses
  %i.ds = add i64 %i.dr, %i.do
  %i.dt = and i64 %i.ds, 7
  %i.du = sub i64 %i.dr, %i.dt                    ; 3 uses
  store i64 %i.du, ptr %i.dp, align 8, !tbaa !250
  %i.dv = add i64 %i.du, 88                       ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 262144
  br i1 %i.dw, label %.critedge.i.i.i70, label %bb.o, !prof !251

.critedge.i.i.i70:                                ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit67
  %i.dx = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dg, i64 noundef 88, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71

bb.o:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit67
  %i.dy = add i64 %i.du, %i.do
  %i.dz = inttoptr i64 %i.dy to ptr
  store i64 %i.dv, ptr %i.dp, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71:  ; preds = %.critedge.i.i.i70, %bb.o
  %.0.i.i.i69 = phi ptr [ %i.dx, %.critedge.i.i.i70 ], [ %i.dz, %bb.o ] ; 11 uses
  %i.ea = inttoptr i64 %i.bn to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i.i69, i8 0, i64 16, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 16
  store i32 88, ptr %i.ed, align 8, !tbaa !252
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 56 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ee, i8 0, i64 36, i1 false)
  store ptr %i.ef, ptr %i.ef, align 8, !tbaa !231
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 64 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !234
  %i.eh = load ptr, ptr %i.cb, align 8, !tbaa !234 ; 4 uses
  %i.ei = icmp eq ptr %i.ef, %3
  %i.ej = icmp eq ptr %i.eh, %3
  %or.cond.i.i.i.i.i.i = or i1 %i.ei, %i.ej
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree26ExportNamedDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_PNS_12UniqueStringE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71
  %i.ek = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !231
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %3, ptr %i.em, align 8, !tbaa !234
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ef, ptr %i.en, align 8, !tbaa !234
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !231
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !234
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree26ExportNamedDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_PNS_12UniqueStringE.exit

_ZN6hermes6ESTree26ExportNamedDeclarationNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_PNS_12UniqueStringE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71, %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 72
  store ptr %i.ea, ptr %i.eo, align 8, !tbaa !437
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 80
  store ptr %i.ec, ptr %i.ep, align 8, !tbaa !439
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.eq, align 8, !tbaa !229
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 32
  store ptr %.sroa.0.0.copyload.i.i68, ptr %i.er, align 8, !tbaa !229
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.es, align 8, !tbaa !229
  %i.et = ptrtoint ptr %.0.i.i.i69 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bn

bb.q:                                             ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i72 = load ptr, ptr %i.eu, align 8, !tbaa !229
  %i.ev = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !240 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !241
  %i.ez = zext i32 %i.ey to i64
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !247
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !248
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !250
  %i.fg = add i64 %i.ff, 7                        ; 2 uses
  %i.fh = add i64 %i.fg, %i.fd
  %i.fi = and i64 %i.fh, 7
  %i.fj = sub i64 %i.fg, %i.fi                    ; 3 uses
  store i64 %i.fj, ptr %i.fe, align 8, !tbaa !250
  %i.fk = add i64 %i.fj, 64                       ; 2 uses
  %i.fl = icmp ugt i64 %i.fk, 262144
  br i1 %i.fl, label %.critedge.i.i.i74, label %bb.r, !prof !251

.critedge.i.i.i74:                                ; preds = %bb.q
  %i.fm = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ev, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75

bb.r:                                             ; preds = %bb.q
  %i.fn = add i64 %i.fj, %i.fd
  %i.fo = inttoptr i64 %i.fn to ptr
  store i64 %i.fk, ptr %i.fe, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75:  ; preds = %.critedge.i.i.i74, %bb.r
  %.0.i.i.i73 = phi ptr [ %i.fm, %.critedge.i.i.i74 ], [ %i.fo, %bb.r ] ; 9 uses
  %i.fp = inttoptr i64 %i.bn to ptr
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i73, i8 0, i64 16, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 16
  store i32 92, ptr %i.fs, align 8, !tbaa !252
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 20
  store i32 0, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 48
  store ptr %i.fp, ptr %i.fu, align 8, !tbaa !440
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 56
  store ptr %i.fr, ptr %i.fv, align 8, !tbaa !442
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.fw, align 8, !tbaa !229
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 32
  store ptr %.sroa.0.0.copyload.i.i72, ptr %i.fx, align 8, !tbaa !229
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.fy, align 8, !tbaa !229
  %i.fz = ptrtoint ptr %.0.i.i.i73 to i64
  br label %bb.bn

bb.s:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.thread
  %i.ga = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 5 uses
  store ptr %i.ga, ptr %i.b, align 8, !tbaa !85
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !348
  %i.gd = add i32 %i.gc, 1                        ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 8, !tbaa !348
  %i.ge = icmp ugt i32 %i.gd, 1023
  br i1 %i.ge, label %bb.t, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

bb.t:                                             ; preds = %bb.s
  %i.gf = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %bb.at

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.s
  %i.gg = load i32, ptr %i.ga, align 8, !tbaa !235 ; 3 uses
  %i.gh = icmp eq i32 %i.gg, 4
  br i1 %i.gh, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 3 uses
  %i.gj = icmp eq i32 %i.gg, 1
  br i1 %i.gj, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77: ; preds = %bb.u
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !166
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !279
  %i.gn = icmp eq ptr %i.gm, %i.gk
  br i1 %i.gn, label %bb.v, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread.thread

bb.v:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77
  %i.go = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i64 0) #17
  %i.gp = and i64 %i.go, 8589934591
  %i.gq = icmp eq i64 %i.gp, 4294967300
  br i1 %i.gq, label %bb.w, label %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread_crit_edge

._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %.pre207 = load i32, ptr %.pre, align 8, !tbaa !235
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread

bb.w:                                             ; preds = %bb.v, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.gr = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 4, i1 noundef zeroext true, i1 noundef zeroext false), !inline_history !425 ; 2 uses
  %i.gs = extractvalue { i64, i8 } %i.gr, 1
  %i.gt = trunc i8 %i.gs to i1
  br i1 %i.gt, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.gu = extractvalue { i64, i8 } %i.gr, 0
  %i.gv = inttoptr i64 %i.gu to ptr               ; 2 uses
  %i.gw = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !240 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !241
  %i.ha = zext i32 %i.gz to i64
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !247
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !248
  %i.he = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 3 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !250
  %i.hh = add i64 %i.hg, 7                        ; 2 uses
  %i.hi = add i64 %i.hh, %i.he
  %i.hj = and i64 %i.hi, 7
  %i.hk = sub i64 %i.hh, %i.hj                    ; 3 uses
  store i64 %i.hk, ptr %i.hf, align 8, !tbaa !250
  %i.hl = add i64 %i.hk, 56                       ; 2 uses
  %i.hm = icmp ugt i64 %i.hl, 262144
  br i1 %i.hm, label %.critedge.i.i.i79, label %bb.y, !prof !251

.critedge.i.i.i79:                                ; preds = %bb.x
  %i.hn = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.gw, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit80

bb.y:                                             ; preds = %bb.x
  %i.ho = add i64 %i.hk, %i.he
  %i.hp = inttoptr i64 %i.ho to ptr
  store i64 %i.hl, ptr %i.hf, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit80

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit80:  ; preds = %.critedge.i.i.i79, %bb.y
  %.0.i.i.i78 = phi ptr [ %i.hn, %.critedge.i.i.i79 ], [ %i.hp, %bb.y ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i78, i8 0, i64 16, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 16
  store i32 91, ptr %i.hq, align 8, !tbaa !252
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hr, i8 0, i64 28, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 48
  store ptr %i.gv, ptr %i.hs, align 8, !tbaa !443
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ht, align 8, !tbaa !229
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %.sroa.0.0.copyload.i.i.i81 = load ptr, ptr %i.hu, align 8, !tbaa !229
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i81, ptr %i.hv, align 8, !tbaa !229
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i.i.i78, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.hw, align 8, !tbaa !229
  %i.hx = ptrtoint ptr %.0.i.i.i78 to i64
  br label %bb.at

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread: ; preds = %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread_crit_edge, %bb.u
  %i.hy = phi i32 [ %.pre207, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread_crit_edge ], [ %i.gg, %bb.u ] ; 2 uses
  %i.hz = phi ptr [ %.pre, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread_crit_edge ], [ %i.ga, %bb.u ]
  %i.ia = icmp eq i32 %i.hy, 36
  br i1 %i.ia, label %bb.z, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread.thread

bb.z:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread
  %i.ib = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseClassDeclarationENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 4) ; 2 uses
  %i.ic = extractvalue { i64, i8 } %i.ib, 1
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.aa, label %bb.at

bb.aa:                                            ; preds = %bb.z
  %i.ie = extractvalue { i64, i8 } %i.ib, 0
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.ih = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.ig, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 91, ptr %i.ii, align 8, !tbaa !252
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ij, i8 0, i64 28, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store ptr %i.if, ptr %i.ik, align 8, !tbaa !443
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.il, align 8, !tbaa !229
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %.sroa.0.0.copyload.i.i.i82 = load ptr, ptr %i.im, align 8, !tbaa !229
  %i.in = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i82, ptr %i.in, align 8, !tbaa !229
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.io, align 8, !tbaa !229
  %i.ip = ptrtoint ptr %i.ih to i64
  br label %bb.at

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread
  %i.iq = phi ptr [ %i.hz, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread ], [ %i.ga, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77 ]
  %i.ir = phi i32 [ %i.hy, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread ], [ 1, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77 ]
  %i.is = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 188
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !284
  %.not185 = icmp eq i32 %i.iu, 0
  br i1 %.not185, label %.thread251, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit77.thread.thread
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 184
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !430, !range !81, !noundef !75 ; 2 uses
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = icmp eq i32 %i.ir, 1
  %or.cond190 = and i1 %i.iy, %i.ix
  br i1 %or.cond190, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83: ; preds = %bb.ab
  %i.iz = load ptr, ptr %i.gi, align 8, !tbaa !166
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !279
  %i.jc = icmp eq ptr %i.jb, %i.iz
  br i1 %i.jc, label %bb.ac, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread.thread

bb.ac:                                            ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83
  %i.jd = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl23checkAsyncComponentFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.jd, label %bb.ad, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread

bb.ad:                                            ; preds = %bb.ac
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.sroa.0.0.copyload.i.i84 = load ptr, ptr %i.jf, align 8, !tbaa !229
  %i.jg = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17
  store ptr %i.jg, ptr %i.b, align 8, !tbaa !85
  %i.jh = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i84, i1 noundef zeroext false, i1 noundef zeroext true) #17 ; 2 uses
  %i.ji = extractvalue { i64, i8 } %i.jh, 1
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.ae, label %bb.at

bb.ae:                                            ; preds = %bb.ad
  %i.jk = extractvalue { i64, i8 } %i.jh, 0
  %i.jl = inttoptr i64 %i.jk to ptr               ; 2 uses
  %i.jm = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.jn = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.jm, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jn, i8 0, i64 16, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store i32 91, ptr %i.jo, align 8, !tbaa !252
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jp, i8 0, i64 28, i1 false)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  store ptr %i.jl, ptr %i.jq, align 8, !tbaa !443
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.jr, align 8, !tbaa !229
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %.sroa.0.0.copyload.i.i.i89 = load ptr, ptr %i.js, align 8, !tbaa !229
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i89, ptr %i.jt, align 8, !tbaa !229
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ju, align 8, !tbaa !229
  %i.jv = ptrtoint ptr %i.jn to i64
  br label %bb.at

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread: ; preds = %bb.ac
  %.pre208 = load ptr, ptr %0, align 8, !tbaa !239 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre208, i64 188
  %.pre209 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !284
  %i.jw = icmp eq i32 %.pre209, 0
  br i1 %i.jw, label %.thread251, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread_crit_edge

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread_crit_edge: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.pre208, i64 184
  %.pre280 = load i8, ptr %.phi.trans.insert279, align 8, !tbaa !430, !range !81
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread_crit_edge, %bb.ab
  %i.jx = phi i8 [ %.pre280, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread_crit_edge ], [ %i.iw, %bb.ab ]
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread.thread, label %.thread253

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread
  %i.jz = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.jz, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit83.thread.thread.thread
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.kb, align 8, !tbaa !229
  %i.kc = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #17 ; 2 uses
  %i.kd = extractvalue { i64, i8 } %i.kc, 1
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.kf = extractvalue { i64, i8 } %i.kc, 0
  %i.kg = inttoptr i64 %i.kf to ptr               ; 2 uses
  %i.kh = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.ki = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.kh, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ki, i8 0, i64 16, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 91, ptr %i.kj, align 8, !tbaa !252
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kk, i8 0, i64 28, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  store ptr %i.kg, ptr %i.kl, align 8, !tbaa !443
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.km, align 8, !tbaa !229
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %.sroa.0.0.copyload.i.i.i90 = load ptr, ptr %i.kn, align 8, !tbaa !229
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i90, ptr %i.ko, align 8, !tbaa !229
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser6detail12JSParserImpl30ensureDestructuringInitializedEPNS_6ESTree23VariableDeclarationNodeE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.08.012 = load ptr, ptr %i.b, align 8, !tbaa !234 ; 2 uses
  %.not1113 = icmp eq ptr %.sroa.08.012, %i.a
  br i1 %.not1113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.08.014 = phi ptr [ %.sroa.08.012, %.lr.ph ], [ %.sroa.08.0, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !388  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !252
  %i.j = add i32 %i.i, -94
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !389
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i8 1, ptr %i.d, align 1, !tbaa !277
  store ptr @.str.107, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.c, align 8, !tbaa !274
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.o, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 8
  %.sroa.08.0 = load ptr, ptr %i.p, align 8, !tbaa !234 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.08.0, %i.a
  br i1 %.not11, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parsePrivateNameEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !240  ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !241
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !247
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !248
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250  ; 2 uses
  %i.n = add i64 %i.k, 7
  %i.o = add i64 %i.n, %i.m
  %i.p = and i64 %i.o, 7
  %.neg10 = add i64 %i.m, 7
  %i.q = sub i64 %.neg10, %i.p                    ; 3 uses
  store i64 %i.q, ptr %i.l, align 8, !tbaa !250
  %i.r = add i64 %i.q, 72                         ; 2 uses
  %i.s = icmp ugt i64 %i.r, 262144
  br i1 %i.s, label %.critedge.i.i.i, label %bb.b, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.c, i64 noundef 72, i64 noundef 8) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add i64 %i.q, %i.k
  %i.v = inttoptr i64 %i.u to ptr
  store i64 %i.r, ptr %i.l, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.b
  %i.w = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.b, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.v, %bb.b ] ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.z, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !302
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.ac, align 8, !tbaa !304
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.ad, align 8, !tbaa !305
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ah, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.ai, align 8, !tbaa !229
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ak, align 8, !tbaa !229 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.al, i32 noundef 1) #17
  store ptr %i.am, ptr %i.a, align 8, !tbaa !85
  %i.an = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !240 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !241
  %i.ar = zext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !247
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !248
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !250 ; 2 uses
  %i.ay = add i64 %i.av, 7
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = and i64 %i.az, 7
  %.neg13 = add i64 %i.ax, 7
  %i.bb = sub i64 %.neg13, %i.ba                  ; 3 uses
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !250
  %i.bc = add i64 %i.bb, 56                       ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 262144
  br i1 %i.bd, label %.critedge.i.i.i6, label %bb.c, !prof !251

.critedge.i.i.i6:                                 ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.be = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.an, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit7

bb.c:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bf = add i64 %i.bb, %i.av
  %i.bg = inttoptr i64 %i.bf to ptr
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit7

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit7:   ; preds = %.critedge.i.i.i6, %bb.c
  %.0.i.i.i5 = phi ptr [ %i.be, %.critedge.i.i.i6 ], [ %i.bg, %bb.c ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i5, i8 0, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 16
  store i32 67, ptr %i.bh, align 8, !tbaa !252
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 48
  store ptr %.0.i.i.i, ptr %i.bj, align 8, !tbaa !446
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bk, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i.i8 = load ptr, ptr %i.ah, align 8, !tbaa !229
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i8, ptr %i.bl, align 8, !tbaa !229
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i5, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bm, align 8, !tbaa !229
  %i.bn = ptrtoint ptr %.0.i.i.i5 to i64
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.bn, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseVariableDeclarationENS1_5ParamEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !229 ; 3 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !235
  switch i32 %i.e, label %bb.d [
    i32 55, label %bb.b
    i32 49, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseArrayBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseObjectBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1), !inline_history !349
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit: ; preds = %bb.b, %bb.c
  %.sink14.i = phi { i64, i8 } [ %i.g, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = extractvalue { i64, i8 } %.sink14.i, 0
  %i.i = extractvalue { i64, i8 } %.sink14.i, 1   ; 2 uses
  %i.j = trunc i8 %i.i to i1                      ; 2 uses
  %spec.select10.i = select i1 %i.j, i64 %i.h, i64 undef
  %.sroa.3.2.i = and i8 %i.i, 1
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %spec.select10.i, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.3.2.i, 1
  br i1 %i.j, label %.thread, label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.k = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.l = extractvalue { i64, i8 } %i.k, 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

.thread:                                          ; preds = %bb.d, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit
  %.pn = phi { i64, i8 } [ %.fca.1.insert.i, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %i.k, %bb.d ]
  %.2.in = extractvalue { i64, i8 } %.pn, 0
  %.2 = inttoptr i64 %.2.in to ptr                ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !235
  %i.p = icmp eq i32 %i.o, 93
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !229
  %i.r = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !240  ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !241
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !247
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !248
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !250
  %i.ac = add i64 %i.ab, 7                        ; 2 uses
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = and i64 %i.ad, 7
  %i.af = sub i64 %i.ac, %i.ae                    ; 3 uses
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !250
  %i.ag = add i64 %i.af, 64                       ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 262144
  br i1 %i.ah, label %.critedge.i.i.i, label %bb.g, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.f
  %i.ai = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.r, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = add i64 %i.af, %i.z
  %i.ak = inttoptr i64 %i.aj to ptr
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.g
  %.0.i.i.i = phi ptr [ %i.ai, %.critedge.i.i.i ], [ %i.ak, %bb.g ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 71, ptr %i.al, align 8, !tbaa !252
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.am, i8 0, i64 36, i1 false)
  store ptr %.2, ptr %i.an, align 8, !tbaa !448
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ao, align 8, !tbaa !229
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ap, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !229
  %i.ar = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.k

bb.h:                                             ; preds = %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.copyload.i.i20 = load ptr, ptr %i.as, align 8, !tbaa !229
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.at, i32 noundef 0) #17
  store ptr %i.au, ptr %i.b, align 8, !tbaa !85
  %i.av = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef 1, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.aw = extractvalue { i64, i8 } %i.av, 0
  %i.ax = extractvalue { i64, i8 } %i.av, 1
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i21 = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.ba = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !241
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !247
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !248
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !250
  %i.bl = add i64 %i.bk, 7                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.bi
  %i.bn = and i64 %i.bm, 7
  %i.bo = sub i64 %i.bl, %i.bn                    ; 3 uses
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !250
  %i.bp = add i64 %i.bo, 64                       ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 262144
  br i1 %i.bq, label %.critedge.i.i.i23, label %bb.j, !prof !251

.critedge.i.i.i23:                                ; preds = %bb.i
  %i.br = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ba, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24

bb.j:                                             ; preds = %bb.i
  %i.bs = add i64 %i.bo, %i.bi
  %i.bt = inttoptr i64 %i.bs to ptr
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24:  ; preds = %.critedge.i.i.i23, %bb.j
  %.0.i.i.i22 = phi ptr [ %i.br, %.critedge.i.i.i23 ], [ %i.bt, %bb.j ] ; 9 uses
  %i.bu = inttoptr i64 %i.aw to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i22, i8 0, i64 16, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 16
  store i32 71, ptr %i.bv, align 8, !tbaa !252
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 20
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 48
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !389
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 56
  store ptr %.2, ptr %i.by, align 8, !tbaa !448
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.bz, align 8, !tbaa !229
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 32
  store ptr %.sroa.0.0.copyload.i.i21, ptr %i.ca, align 8, !tbaa !229
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i22, i64 40
  store ptr %.sroa.0.0.copyload.i.i20, ptr %i.cb, align 8, !tbaa !229
  %i.cc = ptrtoint ptr %.0.i.i.i22 to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24, %bb.h, %bb.e, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sroa.033.1 = phi i64 [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ %i.ar, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.e ], [ %i.cc, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24 ], [ undef, %bb.h ]
  %.sroa.3.3 = phi i8 [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE.exit ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.e ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit24 ], [ 0, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.033.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.3, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = load i32, ptr %i.b, align 8, !tbaa !235
  %i.d = icmp eq i32 %i.c, 55
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseArrayBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseObjectBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14 = phi { i64, i8 } [ %i.f, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = extractvalue { i64, i8 } %.sink14, 0
  %i.h = extractvalue { i64, i8 } %.sink14, 1     ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %spec.select10 = select i1 %i.i, i64 %i.g, i64 undef
  %.sroa.3.2 = and i8 %i.h, 1
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select10, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit:
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %class.anon.273, align 8            ; 5 uses
  %7 = alloca %"class.llvh::SmallVector.274", align 8 ; 17 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %0, ptr %6, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !133
  store ptr null, ptr %i.a, align 8, !tbaa !322
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !451
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !455
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.b, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = call fastcc { i64, i8 } @"_ZZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeEENK3$_0clERZNS2_25parseAssignmentExpressionES3_S4_S5_S8_E5StateS3_S4_S5_S8_"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) ; 2 uses
  %storemerge40 = extractvalue { i64, i8 } %i.h, 1
  %i.i = trunc nuw i8 %storemerge40 to i1
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit
  %.val1868 = load ptr, ptr %7, align 8, !tbaa !131 ; 2 uses
  %.val1969 = load i32, ptr %i.b, align 8, !tbaa !132 ; 3 uses
  %i.j = zext i32 %.val1969 to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.val1868, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !458
  %.not70 = icmp eq ptr %i.m, null
  br i1 %.not70, label %.preheader, label %.lr.ph73

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit24
  %.val18 = load ptr, ptr %7, align 8, !tbaa !131 ; 2 uses
  %.val19 = load i32, ptr %i.b, align 8, !tbaa !132 ; 3 uses
  %i.n = zext i32 %.val19 to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.val18, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !458
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.preheader, label %.lr.ph73, !llvm.loop !459

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.preheader
  %.pn41.lcssa = phi { i64, i8 } [ %i.h, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %.val19.lcssa = phi i32 [ %.val1969, %.lr.ph.preheader ], [ %.val19, %.lr.ph ]
  %.sroa.0.0.le = extractvalue { i64, i8 } %.pn41.lcssa, 0 ; 2 uses
  %storemerge3242 = add i32 %.val19.lcssa, -1     ; 3 uses
  store i32 %storemerge3242, ptr %i.b, align 8, !tbaa !132
  %.not.i2543 = icmp eq i32 %storemerge3242, 0
  br i1 %.not.i2543, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = inttoptr i64 %.sroa.0.0.le to ptr
  br label %bb.d

.lr.ph73:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi i64 [ %i.n, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %.val1972 = phi i32 [ %.val19, %.lr.ph ], [ %.val1969, %.lr.ph.preheader ] ; 2 uses
  %.val1871 = phi ptr [ %.val18, %.lr.ph ], [ %.val1868, %.lr.ph.preheader ]
  %i.x = icmp ugt i32 %.val1972, 30000
  br i1 %i.x, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !277
  store ptr @.str.83, ptr %5, align 8, !tbaa !278
  store i8 3, ptr %i.ab, align 8, !tbaa !274
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ae, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph73
  %i.af = load i32, ptr %i.c, align 4, !tbaa !133
  %.not.i22 = icmp ult i32 %.val1972, %i.af
  br i1 %.not.i22, label %_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit24, label %bb.c, !prof !281

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 48) #17
  %.pre.i23 = load i32, ptr %i.b, align 8, !tbaa !132
  %.pre = load ptr, ptr %7, align 8, !tbaa !131
  %.pre54 = zext i32 %.pre.i23 to i64
  br label %_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit24

_ZN4llvh15SmallVectorImplIZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS3_5ParamENS4_23AllowTypedArrowFunctionENS4_20CoverTypedParametersEPNS1_6ESTree4NodeEE5StateE12emplace_backIJEEEvDpOT_.exit24: ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.w, %bb.b ], [ %.pre54, %bb.c ]
  %i.ag = phi ptr [ %.val1871, %bb.b ], [ %.pre, %bb.c ]
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %.pre-phi ; 4 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !322
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i8 0, ptr %i.ai, align 8, !tbaa !451
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 0, ptr %i.aj, align 8, !tbaa !455
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = load i32, ptr %i.b, align 8, !tbaa !132
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.b, align 8, !tbaa !132
  %.val16 = load ptr, ptr %7, align 8, !tbaa !131
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %.val16, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -48
  %i.aq = call fastcc { i64, i8 } @"_ZZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeEENK3$_0clERZNS2_25parseAssignmentExpressionES3_S4_S5_S8_E5StateS3_S4_S5_S8_"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i32 %1, i32 noundef 1, i32 noundef 0, ptr noundef null) ; 2 uses
  %storemerge = extractvalue { i64, i8 } %i.aq, 1
  %i.ar = trunc nuw i8 %storemerge to i1
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !459

bb.d:                                             ; preds = %.lr.ph46, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %storemerge3245 = phi i32 [ %storemerge3242, %.lr.ph46 ], [ %storemerge32, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  %.sroa.0.144 = phi ptr [ %i.v, %.lr.ph46 ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ]
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !85  ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !235 ; 3 uses
  switch i32 %i.at, label %bb.e [
    i32 54, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
    i32 7, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
    i32 56, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
    i32 51, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.au = and i32 %i.at, -2
  %i.av = icmp eq i32 %i.au, 60
  br i1 %i.av, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread, label %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i

_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i: ; preds = %bb.e
  switch i32 %i.at, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit [
    i32 120, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
    i32 92, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  ]

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !279
  %i.az = icmp eq ptr %i.ay, %i.aw
  %i.ba = load i8, ptr %i.t, align 8, !range !81
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread, label %bb.f

_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i
  %.old29 = load i8, ptr %i.t, align 8, !tbaa !280, !range !81, !noundef !75
  %.old30 = trunc nuw i8 %.old29 to i1
  br i1 %.old30, label %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.be, align 1, !tbaa !277
  store ptr @.str.252, ptr %8, align 8, !tbaa !278
  store i8 3, ptr %i.bd, align 8, !tbaa !274
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bg, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %8, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.loopexit

_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i, %_ZNK6hermes6parser6detail12JSParserImpl6checkNINS0_9TokenKindEJS4_S4_S4_S4_S4_S4_S4_EEEbT_DpT0_.exit.i, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %_ZNK6hermes6parser6detail12JSParserImpl28checkEndAssignmentExpressionENS2_16OfEndsAssignmentE.exit
  %.val = load ptr, ptr %7, align 8, !tbaa !131
  %i.bh = zext i32 %storemerge3245 to i64
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -48
  %.sroa.02.0.copyload = load ptr, ptr %i.bj, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.sroa.0.0.copyload = load ptr, ptr %i.bk, align 8, !tbaa !229
  %i.bl = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !240 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !241
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !247
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !248
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE:bb.a
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !229
  %i.as = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %3, ptr %i.at, align 8, !tbaa !234
  store ptr %i.as, ptr %.0.i.i.i, align 8, !tbaa !231
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.0.i.i.i, ptr %i.au, align 8, !tbaa !234
  store ptr %.0.i.i.i, ptr %3, align 8, !tbaa !231
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.av = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingRestElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.aw = extractvalue { i64, i8 } %i.av, 1
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.g, label %.thread42

bb.g:                                             ; preds = %bb.f
  %i.ay = extractvalue { i64, i8 } %i.av, 0
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !241
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !247
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !248
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !250 ; 2 uses
  %i.bl = add i64 %i.bi, 7
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = and i64 %i.bm, 7
  %.neg51 = add i64 %i.bk, 7
  %i.bo = sub i64 %.neg51, %i.bn                  ; 3 uses
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !250
  %i.bp = add i64 %i.bo, 56                       ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, 262144
  br i1 %i.bq, label %.critedge.i.i.i24, label %bb.h, !prof !251

.critedge.i.i.i24:                                ; preds = %bb.g
  %i.br = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ba, i64 noundef 56, i64 noundef 8) #17
  br label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bs = add i64 %i.bo, %i.bi
  %i.bt = inttoptr i64 %i.bs to ptr
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %bb.h, %.critedge.i.i.i24
  %.0.i.i.i23 = phi ptr [ %i.br, %.critedge.i.i.i24 ], [ %i.bt, %bb.h ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i23, i8 0, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 16
  store i32 275, ptr %i.bu, align 8, !tbaa !252
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bv, i8 0, i64 28, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 48
  store ptr %i.az, ptr %i.bw, align 8, !tbaa !483
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !229
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.by, align 8, !tbaa !229
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.bz, align 8, !tbaa !229
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ca, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.bx, align 8, !tbaa !229
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.cb, align 8, !tbaa !229
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.cc = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.cd = extractvalue { i64, i8 } %i.cc, 1
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.thread39, label %.thread42

.thread39:                                        ; preds = %bb.i
  %i.cf = extractvalue { i64, i8 } %i.cc, 0
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %bb.j

bb.j:                                             ; preds = %.thread, %.thread39
  %.321 = phi ptr [ %.0.i.i.i23, %.thread ], [ %i.cg, %.thread39 ] ; 4 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.321, i64 8
  store ptr %3, ptr %i.ci, align 8, !tbaa !234
  store ptr %i.ch, ptr %.321, align 8, !tbaa !231
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %.321, ptr %i.cj, align 8, !tbaa !234
  store ptr %.321, ptr %3, align 8, !tbaa !231
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !235
  %i.cm = icmp eq i32 %i.cl, 61
  br i1 %i.cm, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.thread46
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i26 = load ptr, ptr %i.cn, align 8, !tbaa !229
  %i.co = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !240 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !241
  %i.cs = zext i32 %i.cr to i64
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !247
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !248
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !250 ; 2 uses
  %i.cz = add i64 %i.cw, 7
  %i.da = add i64 %i.cz, %i.cy
  %i.db = and i64 %i.da, 7
  %.neg57 = add i64 %i.cy, 7
  %i.dc = sub i64 %.neg57, %i.db                  ; 3 uses
  store i64 %i.dc, ptr %i.cx, align 8, !tbaa !250
  %i.dd = add i64 %i.dc, 64                       ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 262144
  br i1 %i.de, label %.critedge.i.i.i28, label %bb.k, !prof !251

.critedge.i.i.i28:                                ; preds = %.loopexit
  %i.df = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.co, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit29

bb.k:                                             ; preds = %.loopexit
  %i.dg = add i64 %i.dc, %i.cw
  %i.dh = inttoptr i64 %i.dg to ptr
  store i64 %i.dd, ptr %i.cx, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit29

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit29:  ; preds = %.critedge.i.i.i28, %bb.k
  %.0.i.i.i27 = phi ptr [ %i.df, %.critedge.i.i.i28 ], [ %i.dh, %bb.k ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i27, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 16
  store i32 42, ptr %i.di, align 8, !tbaa !252
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dj, i8 0, i64 28, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 48 ; 7 uses
  store ptr %i.dk, ptr %i.dk, align 8, !tbaa !231
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 56 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !234
  %i.dm = load ptr, ptr %i.k, align 8, !tbaa !234 ; 4 uses
  %i.dn = icmp eq ptr %i.dk, %3
  %i.do = icmp eq ptr %i.dm, %3
  %or.cond.i.i.i.i.i.i = or i1 %i.dn, %i.do
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit29
  %i.dp = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !231
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %3, ptr %i.dr, align 8, !tbaa !234
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dk, ptr %i.ds, align 8, !tbaa !234
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !231
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !234
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit29, %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.dt, align 8, !tbaa !229
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 32
  store ptr %.sroa.0.0.copyload.i.i26, ptr %i.du, align 8, !tbaa !229
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i27, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.dv, align 8, !tbaa !229
  %i.dw = ptrtoint ptr %.0.i.i.i27 to i64
  br label %.thread42

.thread42:                                        ; preds = %bb.i, %bb.f, %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %.sroa.036.0 = phi i64 [ %i.dw, %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.f ], [ undef, %bb.i ]
  %.sroa.3.5 = phi i8 [ 1, %_ZN6hermes6ESTree22SequenceExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.f ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %.thread42
  %.sroa.036.1 = phi i64 [ %.sroa.036.0, %.thread42 ], [ undef, %bb.a ], [ %i.e, %bb.b ]
  %.sroa.3.6 = phi i8 [ %.sroa.3.5, %.thread42 ], [ 0, %bb.a ], [ 1, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.036.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { i64, i8 } @"_ZZN6hermes6parser6detail12JSParserImpl16parseIfStatementENS1_5ParamEENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::simple_ilist", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !354    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = load i32, ptr %i.c, align 8, !tbaa !235
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %i.a, i32 0, i1 noundef zeroext true, i1 noundef zeroext false), !inline_history !425 ; 2 uses
  %i.g = extractvalue { i64, i8 } %i.f, 1
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i8 } %i.f, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = load i8, ptr %i.j, align 8, !tbaa !230, !range !81, !noundef !75
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = inttoptr i64 %i.i to ptr                 ; 10 uses
  br i1 %i.l, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !277
  store ptr @.str.281, ptr %1, align 8, !tbaa !278
  store i8 3, ptr %i.o, align 8, !tbaa !274
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.r, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.t = load i8, ptr %i.s, align 8, !tbaa !310, !range !81, !noundef !75
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 129
  %i.w = load i8, ptr %i.v, align 1, !tbaa !311, !range !81, !noundef !75
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i4 = load ptr, ptr %i.y, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aa, align 1, !tbaa !277
  store ptr @.str.282, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.z, align 8, !tbaa !274
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ac, i32 noundef 0, ptr %.sroa.0.0.copyload.i4, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %3, ptr %i.ae, align 8, !tbaa !234
  store ptr %3, ptr %i.m, align 8, !tbaa !231
  store ptr %i.m, ptr %i.ad, align 8, !tbaa !234
  store ptr %i.m, ptr %3, align 8, !tbaa !231
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !240 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !241
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !247
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !248
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !250
  %i.aq = add i64 %i.ap, 7                        ; 2 uses
  %i.ar = add i64 %i.aq, %i.an
  %i.as = and i64 %i.ar, 7
  %i.at = sub i64 %i.aq, %i.as                    ; 3 uses
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !250
  %i.au = add i64 %i.at, 72                       ; 2 uses
  %i.av = icmp ugt i64 %i.au, 262144
  br i1 %i.av, label %.critedge.i.i.i, label %bb.h, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.aw = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.af, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = add i64 %i.at, %i.an
  %i.ay = inttoptr i64 %i.ax to ptr
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.aw, %.critedge.i.i.i ], [ %i.ay, %bb.h ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 21, ptr %i.az, align 8, !tbaa !252
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ba, i8 0, i64 28, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  store i8 0, ptr %i.bb, align 4, !tbaa !312
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 53
  store i8 0, ptr %i.bc, align 1, !tbaa !314
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 54
  store i8 0, ptr %i.bd, align 2, !tbaa !315
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 7 uses
  store ptr %i.be, ptr %i.be, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !234
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !234 ; 4 uses
  %i.bh = icmp eq ptr %i.be, %3
  %i.bi = icmp eq ptr %i.bg, %3
  %or.cond.i.i.i.i.i.i = or i1 %i.bh, %i.bi
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bj = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !231
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %3, ptr %i.bl, align 8, !tbaa !234
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.be, ptr %i.bm, align 8, !tbaa !234
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !231
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !234
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !229
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.bo, align 8, !tbaa !229
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.bp, align 8, !tbaa !229
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.bq, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.bn, align 8, !tbaa !229
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.br, align 8, !tbaa !229
  %i.bs = ptrtoint ptr %.0.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !486
  %i.bv = and i32 %i.bu, 2
  %i.bw = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %i.a, i32 %i.bv) ; 2 uses
  %i.bx = extractvalue { i64, i8 } %i.bw, 0
  %i.by = extractvalue { i64, i8 } %i.bw, 1       ; 2 uses
  %i.bz = trunc nuw i8 %i.by to i1
  %spec.select = select i1 %i.bz, i64 %i.bx, i64 undef
  %spec.select14 = and i8 %i.by, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, %bb.b
  %.sroa.013.2 = phi i64 [ undef, %bb.b ], [ %i.bs, %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ %spec.select, %bb.j ]
  %.sroa.3.2 = phi i8 [ 0, %bb.b ], [ 1, %_ZN6hermes6ESTree18BlockStatementNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ %spec.select14, %bb.j ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.013.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl27parseLeftHandSideExpressionEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !229
  %i.d = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl38parseNewExpressionOrOptionalExpressionENS2_17IsConstructorCallE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 0) ; 2 uses
  %i.e = extractvalue { i64, i8 } %i.d, 1
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, i8 } %i.d, 0
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl31parseLeftHandSideExpressionTailEN4llvh5SMLocEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i, ptr noundef %i.h) ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.j, %bb.b ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24reparseAssignmentPatternEPNS_6ESTree4NodeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2824) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !487
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge117

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !252  ; 4 uses
  switch i32 %i.d, label %bb.f [
    i32 44, label %bb.c
    i32 43, label %bb.d
    i32 66, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl28reparseArrayAsignmentPatternEPNS_6ESTree19ArrayExpressionNodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) ; 2 uses
  %i.f = extractvalue { i64, i8 } %i.e, 0
  %i.g = extractvalue { i64, i8 } %i.e, 1
  br label %.critedge108.thread

bb.d:                                             ; preds = %bb.b
  %i.h = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl30reparseObjectAssignmentPatternEPNS_6ESTree20ObjectExpressionNodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) ; 2 uses
  %i.i = extractvalue { i64, i8 } %i.h, 0
  %i.j = extractvalue { i64, i8 } %i.h, 1
  br label %.critedge108.thread

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !302
  %i.n = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl25validateBindingIdentifierENS1_5ParamEN4llvh7SMRangeEPNS_12UniqueStringENS0_9TokenKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 poison, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef %i.m, i32 noundef 1) ; 0 uses
  %i.o = ptrtoint ptr %1 to i64
  br label %.critedge108.thread

bb.f:                                             ; preds = %bb.b
  %i.p = add i32 %i.d, -94
  %i.q = icmp ult i32 %i.p, 4
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %1 to i64
  br label %.critedge108.thread

bb.h:                                             ; preds = %bb.f
  %.not213 = icmp eq i32 %i.d, 276
  br i1 %.not213, label %bb.i, label %.critedge108

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !488
  %i.u = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24reparseAssignmentPatternEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %i.t, i1 noundef zeroext %2) ; 2 uses
  %i.v = extractvalue { i64, i8 } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !490  ; 3 uses
  %i.y = trunc nuw i8 %i.v to i1
  br i1 %i.y, label %bb.j, label %.critedge108.thread

bb.j:                                             ; preds = %bb.i
  %i.z = extractvalue { i64, i8 } %i.u, 0         ; 5 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !252 ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 95
  %.not94197 = icmp eq i64 %i.z, 0                ; 3 uses
  %.not94 = or i1 %.not94197, %i.ad
  br i1 %.not94, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !466
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ah, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ai, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.aj, align 8, !tbaa !229
  br label %.critedge108.thread

.critedge:                                        ; preds = %bb.j
  %i.ak = icmp ne i32 %i.ac, 94
  %.not95 = or i1 %.not94197, %i.ak
  br i1 %.not95, label %.critedge104, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store ptr %i.x, ptr %i.al, align 8, !tbaa !468
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i124 = load ptr, ptr %i.am, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i124, ptr %i.an, align 8, !tbaa !229
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i9.i125 = load ptr, ptr %i.ao, align 8, !tbaa !229
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i125, ptr %i.ap, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i126 = load ptr, ptr %i.am, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i126, ptr %i.aq, align 8, !tbaa !229
  br label %.critedge108.thread

.critedge104:                                     ; preds = %.critedge
  %i.ar = icmp ne i32 %i.ac, 66
  %.not96 = or i1 %.not94197, %i.ar
  br i1 %.not96, label %.critedge104..critedge108_crit_edge, label %bb.m

.critedge104..critedge108_crit_edge:              ; preds = %.critedge104
  %.pre = load i32, ptr %i.c, align 8, !tbaa !252
  br label %.critedge108

bb.m:                                             ; preds = %.critedge104
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.x, ptr %i.as, align 8, !tbaa !304
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i8, ptr %i.at, align 8, !tbaa !491, !range !81, !noundef !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i8 %i.au, ptr %i.av, align 8, !tbaa !305
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i128 = load ptr, ptr %i.aw, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i128, ptr %i.ax, align 8, !tbaa !229
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i9.i129 = load ptr, ptr %i.ay, align 8, !tbaa !229
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i129, ptr %i.az, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i130 = load ptr, ptr %i.aw, align 8, !tbaa !229
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i130, ptr %i.ba, align 8, !tbaa !229
  br label %.critedge108.thread

.critedge108:                                     ; preds = %.critedge104..critedge108_crit_edge, %bb.h
  %i.bb = phi i32 [ %.pre, %.critedge104..critedge108_crit_edge ], [ %i.d, %bb.h ]
  %.not214 = icmp eq i32 %i.bb, 205
  br i1 %.not214, label %bb.n, label %.critedge117

bb.n:                                             ; preds = %.critedge108
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !492
  %i.be = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24reparseAssignmentPatternEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef %i.bd, i1 noundef zeroext %2) ; 2 uses
  %i.bf = extractvalue { i64, i8 } %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !495 ; 6 uses
  %i.bi = trunc nuw i8 %i.bf to i1
  br i1 %i.bi, label %bb.o, label %.critedge108.thread

bb.o:                                             ; preds = %bb.n
  %i.bj = extractvalue { i64, i8 } %i.be, 0       ; 5 uses
  %i.bk = inttoptr i64 %i.bj to ptr               ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !252 ; 3 uses
  %i.bn = icmp ne i32 %i.bm, 95
  %.not98201 = icmp eq i64 %i.bj, 0               ; 3 uses
  %.not98 = or i1 %.not98201, %i.bn
  br i1 %.not98, label %.critedge111, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
end_hunk_6
begin_hunk_7_@_ZN6hermes6parser6detail12JSParserImpl24reparseAssignmentPatternEPNS_6ESTree4NodeEb:bb.a
.critedge113:                                     ; preds = %.critedge111
  %i.bz = icmp ne i32 %i.bm, 66
  %.not100 = or i1 %.not98201, %i.bz
  br i1 %.not100, label %.critedge117, label %bb.r

bb.r:                                             ; preds = %.critedge113
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store ptr %i.bh, ptr %i.ca, align 8, !tbaa !304
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.0.0.copyload.i.i.i141 = load ptr, ptr %i.cb, align 8, !tbaa !229
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.0.0.copyload.i.i9.i142 = load ptr, ptr %i.cc, align 8, !tbaa !229
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i142, ptr %i.cd, align 8, !tbaa !229
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %.sroa.0.0.copyload.i.i.i141, ptr %i.ce, align 8, !tbaa !229
  br label %.critedge108.thread

.critedge117:                                     ; preds = %.critedge108, %.critedge113, %bb.a
  br i1 %2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge117
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i144 = load ptr, ptr %i.cf, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i146 = load ptr, ptr %.sroa.2.0..sroa_idx.i145, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.ch, align 1, !tbaa !277
  store ptr @.str.247, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.cg, align 8, !tbaa !274
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cj, i32 noundef 0, ptr %.sroa.0.0.copyload.i144, ptr %.sroa.2.0.copyload.i146, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.critedge108.thread

bb.t:                                             ; preds = %.critedge117
  %i.ck = ptrtoint ptr %1 to i64
  br label %.critedge108.thread

.critedge108.thread:                              ; preds = %bb.p, %bb.q, %bb.n, %bb.r, %bb.k, %bb.l, %bb.i, %bb.m, %bb.e, %bb.d, %bb.c, %bb.t, %bb.s, %bb.g
  %.sroa.0172.8 = phi i64 [ %i.r, %bb.g ], [ undef, %bb.s ], [ %i.ck, %bb.t ], [ %i.z, %bb.m ], [ %i.f, %bb.c ], [ %i.o, %bb.e ], [ %i.i, %bb.d ], [ undef, %bb.i ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ undef, %bb.n ], [ %i.bj, %bb.p ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ]
  %.sroa.12.7 = phi i8 [ 1, %bb.g ], [ 0, %bb.s ], [ 1, %bb.t ], [ 1, %bb.m ], [ %i.g, %bb.c ], [ 1, %bb.e ], [ %i.j, %bb.d ], [ 0, %bb.i ], [ 1, %bb.k ], [ 1, %bb.l ], [ 0, %bb.n ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0172.8, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.12.7, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parsePrimaryExpressionEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !348
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !348
  %i.d = icmp ugt i32 %i.c, 1023
  br i1 %i.d, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, !prof !251

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22recursionDepthExceededEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 0 uses
  br label %bb.as

_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 24 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85   ; 25 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !235  ; 2 uses
  switch i32 %i.h, label %bb.ar [
    i32 13, label %bb.c
    i32 1, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
    i32 16, label %bb.l
    i32 14, label %bb.n
    i32 15, label %bb.n
    i32 111, label %bb.p
    i32 115, label %bb.r
    i32 112, label %bb.t
    i32 113, label %bb.v
    i32 55, label %bb.x
    i32 49, label %bb.y
    i32 53, label %bb.z
    i32 4, label %bb.al
    i32 36, label %bb.am
    i32 116, label %bb.an
    i32 117, label %bb.an
    i32 74, label %bb.ao
  ]

bb.c:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !241
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !247
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !248
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !250
  %i.t = add i64 %i.s, 7                          ; 2 uses
  %i.u = add i64 %i.t, %i.q
  %i.v = and i64 %i.u, 7
  %i.w = sub i64 %i.t, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.r, align 8, !tbaa !250
  %i.x = add i64 %i.w, 48                         ; 2 uses
  %i.y = icmp ugt i64 %i.x, 262144
  br i1 %i.y, label %.critedge.i.i.i, label %bb.d, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.c
  %i.z = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.i, i64 noundef 48, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = add i64 %i.w, %i.q
  %i.ab = inttoptr i64 %i.aa to ptr
  store i64 %i.x, ptr %i.r, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.z, %.critedge.i.i.i ], [ %i.ab, %bb.d ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 40, ptr %i.ac, align 8, !tbaa !252
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i8 0, i64 28, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ah, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.ai, align 8, !tbaa !229
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.aj, i32 noundef 1) #17
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !85
  %i.al = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.as

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !159
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !279 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1205
  %i.as = load i8, ptr %i.ar, align 1, !range !81
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55

bb.e:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.au, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.aw, align 1, !tbaa !277
  store ptr @.str.172, ptr %1, align 8, !tbaa !278
  store i8 3, ptr %i.av, align 8, !tbaa !274
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ay, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.pre250 = load ptr, ptr %i.f, align 8, !tbaa !85 ; 2 uses
  %.pre251 = load i32, ptr %.pre250, align 8, !tbaa !235
  %i.az = icmp eq i32 %.pre251, 1
  br i1 %i.az, label %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55_crit_edge, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread

._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55_crit_edge: ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre250, i64 32
  %.pre291 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !279
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55: ; preds = %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55_crit_edge, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.ba = phi ptr [ %.pre291, %._ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55_crit_edge ], [ %i.ap, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.f, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread

bb.f:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.be, i64 0) #17
  %i.bg = and i64 %i.bf, 8589934591
  %i.bh = icmp eq i64 %i.bg, 4294967300
  br i1 %i.bh, label %bb.g, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread

bb.g:                                             ; preds = %bb.f
  %i.bi = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !496 ; 2 uses
  %i.bj = extractvalue { i64, i8 } %i.bi, 0
  %i.bk = extractvalue { i64, i8 } %i.bi, 1
  %spec.select3.i = and i8 %i.bk, 1               ; 2 uses
  %.not281 = icmp eq i8 %spec.select3.i, 0
  %spec.select = select i1 %.not281, i64 undef, i64 %i.bj
  br label %bb.as

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread: ; preds = %bb.e, %bb.f, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55
  %i.bl = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 188
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !284
  %.not224 = icmp eq i32 %i.bn, 0
  br i1 %.not224, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 185
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !352, !range !81, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.i, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !85  ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !235
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !204
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !279
  %i.by = icmp eq ptr %i.bx, %i.bv
  br i1 %i.by, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  %i.bz = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl27checkMaybeFlowMatchSlowPathEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br i1 %i.bz, label %bb.j, label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit._ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread_crit_edge

_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit._ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread_crit_edge: ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit
  %.pre252 = load ptr, ptr %0, align 8, !tbaa !239
  br label %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread

bb.j:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit
  %i.ca = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl35parseMatchCallOrMatchExpressionFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.cb = extractvalue { i64, i8 } %i.ca, 0
  %i.cc = extractvalue { i64, i8 } %i.ca, 1
  br label %bb.as

_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread: ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit._ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread_crit_edge, %bb.i, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %bb.h, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread
  %i.cd = phi ptr [ %.pre252, %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit._ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread_crit_edge ], [ %i.bl, %bb.i ], [ %i.bl, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i ], [ %i.bl, %bb.h ], [ %i.bl, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit55.thread ] ; 3 uses
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !85  ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !240 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !241
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !247
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !248
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !250 ; 2 uses
  %i.cp = add i64 %i.cm, 7
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = and i64 %i.cq, 7
  %.neg289 = add i64 %i.co, 7
  %i.cs = sub i64 %.neg289, %i.cr                 ; 3 uses
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !250
  %i.ct = add i64 %i.cs, 72                       ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 262144
  br i1 %i.cu, label %.critedge.i.i.i274, label %bb.k, !prof !251

.critedge.i.i.i274:                               ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread
  %i.cv = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cd, i64 noundef 72, i64 noundef 8) #17
  %.pre292 = load ptr, ptr %i.f, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275

bb.k:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19checkMaybeFlowMatchEv.exit.thread
  %i.cw = add i64 %i.cs, %i.cm
  %i.cx = inttoptr i64 %i.cw to ptr
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275: ; preds = %.critedge.i.i.i274, %bb.k
  %i.cy = phi ptr [ %.pre292, %.critedge.i.i.i274 ], [ %i.ce, %bb.k ]
  %.0.i.i.i273 = phi ptr [ %i.cv, %.critedge.i.i.i274 ], [ %i.cx, %bb.k ] ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i273, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 16
  store i32 66, ptr %i.db, align 8, !tbaa !252
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dc, i8 0, i64 28, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 48
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !302
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 56
  store ptr null, ptr %i.de, align 8, !tbaa !304
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 64
  store i8 0, ptr %i.df, align 8, !tbaa !305
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i56 = load ptr, ptr %i.dg, align 8, !tbaa !229
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i56, ptr %i.dh, align 8, !tbaa !229
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.0.0.copyload.i.i9.i57 = load ptr, ptr %i.di, align 8, !tbaa !229
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i57, ptr %i.dj, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i58 = load ptr, ptr %i.dg, align 8, !tbaa !229
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i273, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i58, ptr %i.dk, align 8, !tbaa !229
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.dl, i32 noundef 1) #17
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !85
  %i.dn = ptrtoint ptr %.0.i.i.i273 to i64
  br label %bb.as

bb.l:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.do = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !240 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !241
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !247
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !248
  %i.dw = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !250
  %i.dz = add i64 %i.dy, 7                        ; 2 uses
  %i.ea = add i64 %i.dz, %i.dw
  %i.eb = and i64 %i.ea, 7
  %i.ec = sub i64 %i.dz, %i.eb                    ; 3 uses
  store i64 %i.ec, ptr %i.dx, align 8, !tbaa !250
  %i.ed = add i64 %i.ec, 48                       ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, 262144
  br i1 %i.ee, label %.critedge.i.i.i65, label %bb.m, !prof !251

.critedge.i.i.i65:                                ; preds = %bb.l
  %i.ef = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.do, i64 noundef 48, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66

bb.m:                                             ; preds = %bb.l
  %i.eg = add i64 %i.ec, %i.dw
  %i.eh = inttoptr i64 %i.eg to ptr
  store i64 %i.ed, ptr %i.dx, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66:  ; preds = %.critedge.i.i.i65, %bb.m
  %.0.i.i.i64 = phi ptr [ %i.ef, %.critedge.i.i.i65 ], [ %i.eh, %bb.m ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i64, i8 0, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 16
  store i32 34, ptr %i.ei, align 8, !tbaa !252
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ej, i8 0, i64 28, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i67 = load ptr, ptr %i.ek, align 8, !tbaa !229
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i67, ptr %i.el, align 8, !tbaa !229
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i68 = load ptr, ptr %i.em, align 8, !tbaa !229
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i68, ptr %i.en, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i69 = load ptr, ptr %i.ek, align 8, !tbaa !229
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i.i64, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i69, ptr %i.eo, align 8, !tbaa !229
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ep, i32 noundef 1) #17
  store ptr %i.eq, ptr %i.f, align 8, !tbaa !85
  %i.er = ptrtoint ptr %.0.i.i.i64 to i64
  br label %bb.as

bb.n:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.es = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !240 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !241
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !247
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ew
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !248
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !250
  %i.fd = add i64 %i.fc, 7                        ; 2 uses
  %i.fe = add i64 %i.fd, %i.fa
  %i.ff = and i64 %i.fe, 7
  %i.fg = sub i64 %i.fd, %i.ff                    ; 3 uses
  store i64 %i.fg, ptr %i.fb, align 8, !tbaa !250
  %i.fh = add i64 %i.fg, 56                       ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, 262144
  br i1 %i.fi, label %.critedge.i.i.i76, label %bb.o, !prof !251

.critedge.i.i.i76:                                ; preds = %bb.n
  %i.fj = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.es, i64 noundef 56, i64 noundef 8) #17
  %.pre248 = load ptr, ptr %i.f, align 8, !tbaa !85
  %.pre249 = load i32, ptr %.pre248, align 8, !tbaa !235
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77

bb.o:                                             ; preds = %bb.n
  %i.fk = add i64 %i.fg, %i.fa
  %i.fl = inttoptr i64 %i.fk to ptr
  store i64 %i.fh, ptr %i.fb, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77:  ; preds = %.critedge.i.i.i76, %bb.o
  %i.fm = phi i32 [ %.pre249, %.critedge.i.i.i76 ], [ %i.h, %bb.o ]
end_hunk_7
begin_hunk_8_@_ZN6hermes6parser6detail12JSParserImpl22parsePrimaryExpressionEv:bb.a
  store ptr %.sroa.0.0.copyload.i.i9.i90, ptr %i.hd, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i91 = load ptr, ptr %i.ha, align 8, !tbaa !229
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i.i.i86, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i91, ptr %i.he, align 8, !tbaa !229
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.hf, i32 noundef 1) #17
  store ptr %i.hg, ptr %i.f, align 8, !tbaa !85
  %i.hh = ptrtoint ptr %.0.i.i.i86 to i64
  br label %bb.as

bb.r:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.hi = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !241
  %i.hm = zext i32 %i.hl to i64
  %i.hn = load ptr, ptr %i.hi, align 8, !tbaa !247
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !248
  %i.hq = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !250
  %i.ht = add i64 %i.hs, 7                        ; 2 uses
  %i.hu = add i64 %i.ht, %i.hq
  %i.hv = and i64 %i.hu, 7
  %i.hw = sub i64 %i.ht, %i.hv                    ; 3 uses
  store i64 %i.hw, ptr %i.hr, align 8, !tbaa !250
  %i.hx = add i64 %i.hw, 56                       ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, 262144
  br i1 %i.hy, label %.critedge.i.i.i98, label %bb.s, !prof !251

.critedge.i.i.i98:                                ; preds = %bb.r
  %i.hz = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.hi, i64 noundef 56, i64 noundef 8) #17
  %.pre246 = load ptr, ptr %i.f, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99

bb.s:                                             ; preds = %bb.r
  %i.ia = add i64 %i.hw, %i.hq
  %i.ib = inttoptr i64 %i.ia to ptr
  store i64 %i.hx, ptr %i.hr, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99:  ; preds = %.critedge.i.i.i98, %bb.s
  %i.ic = phi ptr [ %.pre246, %.critedge.i.i.i98 ], [ %i.g, %bb.s ]
  %.0.i.i.i97 = phi ptr [ %i.hz, %.critedge.i.i.i98 ], [ %i.ib, %bb.s ] ; 8 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !499
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i97, i8 0, i64 16, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 16
  store i32 39, ptr %i.if, align 8, !tbaa !252
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ig, i8 0, i64 28, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 48
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !500
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i100 = load ptr, ptr %i.ii, align 8, !tbaa !229
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i100, ptr %i.ij, align 8, !tbaa !229
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i101 = load ptr, ptr %i.ik, align 8, !tbaa !229
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i101, ptr %i.il, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i102 = load ptr, ptr %i.ii, align 8, !tbaa !229
  %i.im = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i102, ptr %i.im, align 8, !tbaa !229
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.io = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.in, i32 noundef 1) #17
  store ptr %i.io, ptr %i.f, align 8, !tbaa !85
  %i.ip = ptrtoint ptr %.0.i.i.i97 to i64
  br label %bb.as

bb.t:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.iq = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !240 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !241
  %i.iu = zext i32 %i.it to i64
  %i.iv = load ptr, ptr %i.iq, align 8, !tbaa !247
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iu
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !248
  %i.iy = ptrtoint ptr %i.ix to i64               ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 3 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !250
  %i.jb = add i64 %i.ja, 7                        ; 2 uses
  %i.jc = add i64 %i.jb, %i.iy
  %i.jd = and i64 %i.jc, 7
  %i.je = sub i64 %i.jb, %i.jd                    ; 3 uses
  store i64 %i.je, ptr %i.iz, align 8, !tbaa !250
  %i.jf = add i64 %i.je, 56                       ; 2 uses
  %i.jg = icmp ugt i64 %i.jf, 262144
  br i1 %i.jg, label %.critedge.i.i.i109, label %bb.u, !prof !251

.critedge.i.i.i109:                               ; preds = %bb.t
  %i.jh = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.iq, i64 noundef 56, i64 noundef 8) #17
  %.pre245 = load ptr, ptr %i.f, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110

bb.u:                                             ; preds = %bb.t
  %i.ji = add i64 %i.je, %i.iy
  %i.jj = inttoptr i64 %i.ji to ptr
  store i64 %i.jf, ptr %i.iz, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110: ; preds = %.critedge.i.i.i109, %bb.u
  %i.jk = phi ptr [ %.pre245, %.critedge.i.i.i109 ], [ %i.g, %bb.u ]
  %.0.i.i.i108 = phi ptr [ %i.jh, %.critedge.i.i.i109 ], [ %i.jj, %bb.u ] ; 8 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i108, i8 0, i64 16, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 16
  store i32 36, ptr %i.jn, align 8, !tbaa !252
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jo, i8 0, i64 28, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 48
  store ptr %i.jm, ptr %i.jp, align 8, !tbaa !334
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i111 = load ptr, ptr %i.jq, align 8, !tbaa !229
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i111, ptr %i.jr, align 8, !tbaa !229
  %i.js = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i112 = load ptr, ptr %i.js, align 8, !tbaa !229
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i112, ptr %i.jt, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i113 = load ptr, ptr %i.jq, align 8, !tbaa !229
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i.i.i108, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i113, ptr %i.ju, align 8, !tbaa !229
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jw = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.jv, i32 noundef 1) #17
  store ptr %i.jw, ptr %i.f, align 8, !tbaa !85
  %i.jx = ptrtoint ptr %.0.i.i.i108 to i64
  br label %bb.as

bb.v:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.jy = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !240 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !241
  %i.kc = zext i32 %i.kb to i64
  %i.kd = load ptr, ptr %i.jy, align 8, !tbaa !247
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kc
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !248
  %i.kg = ptrtoint ptr %i.kf to i64               ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !250
  %i.kj = add i64 %i.ki, 7                        ; 2 uses
  %i.kk = add i64 %i.kj, %i.kg
  %i.kl = and i64 %i.kk, 7
  %i.km = sub i64 %i.kj, %i.kl                    ; 3 uses
  store i64 %i.km, ptr %i.kh, align 8, !tbaa !250
  %i.kn = add i64 %i.km, 64                       ; 2 uses
  %i.ko = icmp ugt i64 %i.kn, 262144
  br i1 %i.ko, label %.critedge.i.i.i120, label %bb.w, !prof !251

.critedge.i.i.i120:                               ; preds = %bb.v
  %i.kp = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.jy, i64 noundef 64, i64 noundef 8) #17
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !85
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121

bb.w:                                             ; preds = %bb.v
  %i.kq = add i64 %i.km, %i.kg
  %i.kr = inttoptr i64 %i.kq to ptr
  store i64 %i.kn, ptr %i.kh, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121: ; preds = %.critedge.i.i.i120, %bb.w
  %i.ks = phi ptr [ %.pre, %.critedge.i.i.i120 ], [ %i.g, %bb.w ]
  %.0.i.i.i119 = phi ptr [ %i.kp, %.critedge.i.i.i120 ], [ %i.kr, %bb.w ] ; 8 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !502
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 20
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 48
  %i.ky = load <2 x ptr>, ptr %i.ku, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i119, i8 0, i64 16, i1 false)
  store i32 38, ptr %i.kv, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.kw, i8 0, i64 28, i1 false)
  store <2 x ptr> %i.ky, ptr %i.kx, align 8, !tbaa !214
  %i.kz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i122 = load ptr, ptr %i.kz, align 8, !tbaa !229
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i122, ptr %i.la, align 8, !tbaa !229
  %i.lb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.0.0.copyload.i.i9.i123 = load ptr, ptr %i.lb, align 8, !tbaa !229
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i123, ptr %i.lc, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i124 = load ptr, ptr %i.kz, align 8, !tbaa !229
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i124, ptr %i.ld, align 8, !tbaa !229
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lf = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.le, i32 noundef 1) #17
  store ptr %i.lf, ptr %i.f, align 8, !tbaa !85
  %i.lg = ptrtoint ptr %.0.i.i.i119 to i64
  br label %bb.as

bb.x:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.lh = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseArrayLiteralEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.li = extractvalue { i64, i8 } %i.lh, 0
  %i.lj = extractvalue { i64, i8 } %i.lh, 1       ; 2 uses
  %i.lk = trunc nuw i8 %i.lj to i1
  %spec.select210 = select i1 %i.lk, i64 %i.li, i64 undef
  %spec.select211 = and i8 %i.lj, 1
  br label %bb.as

bb.y:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.ll = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseObjectLiteralEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.lm = extractvalue { i64, i8 } %i.ll, 0
  %i.ln = extractvalue { i64, i8 } %i.ll, 1       ; 2 uses
  %i.lo = trunc nuw i8 %i.ln to i1
  %spec.select212 = select i1 %i.lo, i64 %i.lm, i64 undef
  %spec.select213 = and i8 %i.ln, 1
  br label %bb.as

bb.z:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i130 = load ptr, ptr %i.lp, align 8, !tbaa !229 ; 5 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.lr = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.lq, i32 noundef 0) #17 ; 3 uses
  store ptr %i.lr, ptr %i.f, align 8, !tbaa !85
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !235
  switch i32 %i.ls, label %bb.ac [
    i32 54, label %bb.aa
    i32 59, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %.sroa.2.0..sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %.sroa.2.0.copyload.i.i137 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i136, align 8, !tbaa !229
  %i.lt = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.lq, i32 noundef 0) #17
  store ptr %i.lt, ptr %i.f, align 8, !tbaa !85
  %i.lu = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.lv = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.lu, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lv, i8 0, i64 16, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store i32 272, ptr %i.lw, align 8, !tbaa !252
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  store i32 0, ptr %i.lx, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store ptr %.sroa.0.0.copyload.i.i130, ptr %i.ly, align 8, !tbaa !229
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store ptr %.sroa.2.0.copyload.i.i137, ptr %i.lz, align 8, !tbaa !229
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 40
  store ptr %.sroa.0.0.copyload.i.i130, ptr %i.ma, align 8, !tbaa !229
  %i.mb = ptrtoint ptr %i.lv to i64
  br label %bb.as

bb.ab:                                            ; preds = %bb.z
  %i.mc = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingRestElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1) ; 2 uses
  %i.md = extractvalue { i64, i8 } %i.mc, 1
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %.thread, label %bb.as

.thread:                                          ; preds = %bb.ab
  %i.mf = extractvalue { i64, i8 } %i.mc, 0
  %i.mg = inttoptr i64 %i.mf to ptr               ; 3 uses
  %i.mh = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.mi = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 56, ptr noundef nonnull align 8 dereferenceable(656) %i.mh, i64 noundef 8) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mi, i8 0, i64 16, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i32 275, ptr %i.mj, align 8, !tbaa !252
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.mk, i8 0, i64 28, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  store ptr %i.mg, ptr %i.ml, align 8, !tbaa !483
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i140 = load ptr, ptr %i.mm, align 8, !tbaa !229
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i140, ptr %i.mn, align 8, !tbaa !229
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %.sroa.0.0.copyload.i.i9.i141 = load ptr, ptr %i.mo, align 8, !tbaa !229
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i141, ptr %i.mp, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i142 = load ptr, ptr %i.mm, align 8, !tbaa !229
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i142, ptr %i.mq, align 8, !tbaa !229
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.mr = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.ms = extractvalue { i64, i8 } %i.mr, 1
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %.thread205, label %bb.as

.thread205:                                       ; preds = %bb.ac
  %i.mu = extractvalue { i64, i8 } %i.mr, 0
  %i.mv = inttoptr i64 %i.mu to ptr
  br label %bb.ad

bb.ad:                                            ; preds = %.thread205, %.thread
  %.2 = phi ptr [ %i.mi, %.thread ], [ %i.mv, %.thread205 ] ; 10 uses
  %i.mw = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 188
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !284
  %.not222 = icmp eq i32 %i.my, 0
  br i1 %.not222, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.mz = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !252
  %i.nb = icmp ne i32 %i.na, 276
  %.not223 = icmp eq ptr %.2, null
  %.not = select i1 %i.nb, i1 true, i1 %.not223
  br i1 %.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nc = getelementptr inbounds nuw i8, ptr %.2, i64 56
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !490
  %.not52 = icmp eq ptr %i.nd, null
  br i1 %.not52, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ne = getelementptr inbounds nuw i8, ptr %.2, i64 64
  %i.nf = load i8, ptr %i.ne, align 8, !tbaa !491, !range !81, !noundef !75
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nh = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.ni = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.mw, i64 noundef 8)
  %i.nj = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.nk = load <2 x ptr>, ptr %i.nj, align 8, !tbaa !388
  br label %.critedge.sink.split

bb.ai:                                            ; preds = %bb.ae
  %i.nl = load ptr, ptr %i.f, align 8, !tbaa !85  ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !235
  %i.nn = icmp eq i32 %i.nm, 92
  br i1 %i.nn, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %.sroa.0.0.copyload.i.i144 = load ptr, ptr %i.no, align 8, !tbaa !229
  %i.np = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.lq, i32 noundef 3) #17
  store ptr %i.np, ptr %i.f, align 8, !tbaa !85
  %i.nq = ptrtoint ptr %.sroa.0.0.copyload.i.i144 to i64
  %i.nr = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.nq, i8 1, i32 noundef 1) #17 ; 2 uses
  %i.ns = extractvalue { i64, i8 } %i.nr, 1
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %.thread207, label %bb.as

.thread207:                                       ; preds = %bb.aj
  %i.nu = extractvalue { i64, i8 } %i.nr, 0
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.nx = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.ny = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(656) %i.nx, i64 noundef 8)
  %i.nz = insertelement <2 x ptr> poison, ptr %.2, i64 0
  %i.oa = insertelement <2 x ptr> %i.nz, ptr %i.nv, i64 1
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ah, %.thread207
  %.sink272 = phi ptr [ %i.ny, %.thread207 ], [ %i.ni, %bb.ah ] ; 8 uses
  %.sink262 = phi ptr [ %i.nw, %.thread207 ], [ %i.nh, %bb.ah ]
  %i.ob = phi <2 x ptr> [ %i.oa, %.thread207 ], [ %i.nk, %bb.ah ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sink272, i8 0, i64 16, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %.sink272, i64 16
  store i32 205, ptr %i.oc, align 8, !tbaa !252
  %i.od = getelementptr inbounds nuw i8, ptr %.sink272, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.od, i8 0, i64 28, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sink272, i64 48
  store <2 x ptr> %i.ob, ptr %i.oe, align 8, !tbaa !388
  %i.of = getelementptr inbounds nuw i8, ptr %.sink272, i64 24
  store ptr %.sroa.0.0.copyload.i.i130, ptr %i.of, align 8, !tbaa !229
  %i.og = getelementptr inbounds nuw i8, ptr %.sink262, i64 16
  %.sroa.0.0.copyload.i.i.i149 = load ptr, ptr %i.og, align 8, !tbaa !229
  %i.oh = getelementptr inbounds nuw i8, ptr %.sink272, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i149, ptr %i.oh, align 8, !tbaa !229
  %i.oi = getelementptr inbounds nuw i8, ptr %.sink272, i64 40
  store ptr %.sroa.0.0.copyload.i.i130, ptr %i.oi, align 8, !tbaa !229
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.ag, %bb.af, %bb.ai, %bb.ad
  %.4 = phi ptr [ %.2, %bb.ad ], [ %.2, %bb.ai ], [ %.2, %bb.af ], [ %.2, %bb.ag ], [ %.sink272, %.critedge.sink.split ] ; 2 uses
  %i.oj = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 1, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.174, ptr %.sroa.0.0.copyload.i.i130)
  br i1 %i.oj, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %.critedge
  %i.ok = getelementptr inbounds nuw i8, ptr %.4, i64 20 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !487
  %.not.i = icmp eq i32 %i.ol, 0
  %spec.select.i150 = select i1 %.not.i, i32 1, i32 2
  store i32 %spec.select.i150, ptr %i.ok, align 4, !tbaa !487
  %i.om = ptrtoint ptr %.4 to i64
  br label %bb.as

bb.al:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.on = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext false), !inline_history !496 ; 2 uses
  %i.oo = extractvalue { i64, i8 } %i.on, 0
  %i.op = extractvalue { i64, i8 } %i.on, 1
  %spec.select3.i277 = and i8 %i.op, 1            ; 2 uses
  %.not280 = icmp eq i8 %spec.select3.i277, 0
  %spec.select214 = select i1 %.not280, i64 undef, i64 %i.oo
  br label %bb.as

bb.am:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.oq = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseClassExpressionEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.or = extractvalue { i64, i8 } %i.oq, 0
  %i.os = extractvalue { i64, i8 } %i.oq, 1       ; 2 uses
  %i.ot = trunc nuw i8 %i.os to i1
  %spec.select216 = select i1 %i.ot, i64 %i.or, i64 undef
  %spec.select217 = and i8 %i.os, 1
  br label %bb.as

bb.an:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.ou = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTemplateLiteralENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.ov = extractvalue { i64, i8 } %i.ou, 0
  %i.ow = extractvalue { i64, i8 } %i.ou, 1       ; 2 uses
  %i.ox = trunc nuw i8 %i.ow to i1
  %spec.select218 = select i1 %i.ox, i64 %i.ov, i64 undef
  %spec.select219 = and i8 %i.ow, 1
  br label %bb.as

bb.ao:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.oy = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 183
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !503, !range !81, !noundef !75
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.pc = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl8parseJSXEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.pd = extractvalue { i64, i8 } %i.pc, 0
  %i.pe = extractvalue { i64, i8 } %i.pc, 1       ; 2 uses
  %i.pf = trunc nuw i8 %i.pe to i1
  %spec.select220 = select i1 %i.pf, i64 %i.pd, i64 undef
  %spec.select221 = and i8 %i.pe, 1
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.pg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i151 = load ptr, ptr %i.pg, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.pi, align 1, !tbaa !277
  store ptr @.str.175, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.ph, align 8, !tbaa !274
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.pk, i32 noundef 0, ptr %.sroa.0.0.copyload.i151, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.as

bb.ar:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit
  %i.pl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i152 = load ptr, ptr %i.pl, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.pn, align 1, !tbaa !277
  store ptr @.str.176, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.pm, align 8, !tbaa !274
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.pp, i32 noundef 0, ptr %.sroa.0.0.copyload.i152, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.am, %bb.al, %bb.y, %bb.x, %bb.g, %bb.ak, %bb.ab, %bb.ac, %bb.aj, %.critedge, %bb.aa, %bb.ar, %bb.aq, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275, %bb.j, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.b
  %.sroa.0202.8 = phi i64 [ undef, %bb.b ], [ undef, %bb.ar ], [ %i.al, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.aq ], [ %i.cb, %bb.j ], [ %i.dn, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275 ], [ %i.er, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66 ], [ %i.fz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77 ], [ %i.hh, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ %i.ip, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99 ], [ %i.jx, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110 ], [ %i.lg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121 ], [ undef, %bb.ac ], [ undef, %bb.ab ], [ %i.mb, %bb.aa ], [ %spec.select212, %bb.y ], [ undef, %.critedge ], [ %spec.select214, %bb.al ], [ %spec.select216, %bb.am ], [ %spec.select218, %bb.an ], [ %spec.select220, %bb.ap ], [ %spec.select, %bb.g ], [ %spec.select210, %bb.x ], [ %i.om, %bb.ak ], [ undef, %bb.aj ]
  %.sroa.19.12 = phi i8 [ 0, %bb.b ], [ 0, %bb.ar ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.aq ], [ %i.cc, %bb.j ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit275 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit66 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit77 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit88 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit99 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit110 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit121 ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %bb.aa ], [ %spec.select213, %bb.y ], [ 0, %.critedge ], [ %spec.select3.i277, %bb.al ], [ %spec.select217, %bb.am ], [ %spec.select219, %bb.an ], [ %spec.select221, %bb.ap ], [ %spec.select3.i, %bb.g ], [ %spec.select211, %bb.x ], [ 1, %bb.ak ], [ 0, %bb.aj ]
  %i.pq = load i32, ptr %i.a, align 8, !tbaa !348
  %i.pr = add i32 %i.pq, -1
  store i32 %i.pr, ptr %i.a, align 8, !tbaa !348
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0202.8, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.19.12, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseFunctionExpressionEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext %1) ; 2 uses
  %i.b = extractvalue { i64, i8 } %i.a, 0
  %i.c = extractvalue { i64, i8 } %i.a, 1         ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select = select i1 %i.d, i64 %i.b, i64 undef
  %spec.select3 = and i8 %i.c, 1
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %spec.select, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %spec.select3, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl35parseMatchCallOrMatchExpressionFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseArrayLiteralEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !229 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 4 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  store ptr %1, ptr %1, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !234
  %i.h = load i32, ptr %i.f, align 8, !tbaa !235  ; 2 uses
  %i.i = icmp eq i32 %i.h, 56
  br i1 %i.i, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %i.j = phi i32 [ %i.ba, %bb.g ], [ %i.h, %bb.a ]
  %i.k = phi ptr [ %i.az, %bb.g ], [ %i.f, %bb.a ] ; 2 uses
  switch i32 %i.j, label %bb.e [
    i32 61, label %bb.b
    i32 59, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader
  %i.l = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !241
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !250  ; 2 uses
  %i.w = add i64 %i.t, 7
  %i.x = add i64 %i.w, %i.v
  %i.y = and i64 %i.x, 7
  %.neg22 = add i64 %i.v, 7
  %i.z = sub i64 %.neg22, %i.y                    ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !250
  %i.aa = add i64 %i.z, 48                        ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 262144
  br i1 %i.ab, label %.critedge.i.i.i, label %bb.c, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.ac = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.l, i64 noundef 48, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = add i64 %i.z, %i.t
  %i.ae = inttoptr i64 %i.ad to ptr
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.ac, %.critedge.i.i.i ], [ %i.ae, %bb.c ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 0, i64 48, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ag, align 8, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ah, align 8, !tbaa !229
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ai, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.aj, align 8, !tbaa !229
  br label %bb.f

bb.d:                                             ; preds = %.preheader
  %i.ak = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseSpreadElementEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.al = extractvalue { i64, i8 } %i.ak, 1
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.d
  %i.an = extractvalue { i64, i8 } %i.ak, 0
  %i.ao = inttoptr i64 %i.an to ptr
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ap = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 1
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread19, label %.loopexit

.thread19:                                        ; preds = %bb.e
  %i.as = extractvalue { i64, i8 } %i.ap, 0
  %i.at = inttoptr i64 %i.as to ptr
  br label %bb.f

bb.f:                                             ; preds = %.thread19, %.thread, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sink51 = phi ptr [ %i.at, %.thread19 ], [ %i.ao, %.thread ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ] ; 4 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sink51, i64 8
  store ptr %1, ptr %i.av, align 8, !tbaa !234
  store ptr %i.au, ptr %.sink51, align 8, !tbaa !231
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %.sink51, ptr %i.aw, align 8, !tbaa !234
  store ptr %.sink51, ptr %1, align 8, !tbaa !231
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !235
  switch i32 %i.ay, label %bb.h [
    i32 61, label %bb.g
    i32 56, label %.sink.split
  ]

bb.g:                                             ; preds = %bb.f
  %i.az = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 4 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !85
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !235 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 56
  br i1 %i.bb, label %.sink.split, label %.preheader, !llvm.loop !504

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 56, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.111, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.a
  %.pn = phi ptr [ %i.f, %bb.a ], [ %i.az, %bb.g ], [ %i.ax, %bb.f ]
  %.036 = phi i8 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.f ]
  %.sroa.0.0.copyload.i37.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.sroa.0.0.copyload.i37 = load ptr, ptr %.sroa.0.0.copyload.i37.in, align 8, !tbaa !229
  %i.bc = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 1) #17
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !85
  %i.bd = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !240 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !241
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !247
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !248
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !250 ; 2 uses
  %i.bo = add i64 %i.bl, 7
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, 7
  %.neg25 = add i64 %i.bn, 7
  %i.br = sub i64 %.neg25, %i.bq                  ; 3 uses
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !250
  %i.bs = add i64 %i.br, 72                       ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 262144
  br i1 %i.bt, label %.critedge.i.i.i12, label %bb.i, !prof !251

.critedge.i.i.i12:                                ; preds = %.sink.split
  %i.bu = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bd, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit13

bb.i:                                             ; preds = %.sink.split
  %i.bv = add i64 %i.br, %i.bl
  %i.bw = inttoptr i64 %i.bv to ptr
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit13

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit13:  ; preds = %.critedge.i.i.i12, %bb.i
  %.0.i.i.i11 = phi ptr [ %i.bu, %.critedge.i.i.i12 ], [ %i.bw, %bb.i ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i11, i8 0, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i11, i64 16
  store i32 44, ptr %i.bx, align 8, !tbaa !252
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i11, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.by, i8 0, i64 28, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i11, i64 48 ; 7 uses
  store ptr %i.bz, ptr %i.bz, align 8, !tbaa !231
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i11, i64 56 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !234
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !234 ; 4 uses
  %i.cc = icmp eq ptr %i.bz, %1
  %i.cd = icmp eq ptr %i.cb, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.cc, %i.cd
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree19ArrayExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit13
  %i.ce = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !231
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %1, ptr %i.cg, align 8, !tbaa !234
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.bz, ptr %i.ch, align 8, !tbaa !234
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !231
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !234
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree19ArrayExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEb.exit

end_hunk_8
begin_hunk_9_@_ZN6hermes6parser6detail12JSParserImpl18parseObjectLiteralEv:bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !240 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !241
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !247
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !248
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !250 ; 2 uses
  %i.an = add i64 %i.ak, 7
  %i.ao = add i64 %i.an, %i.am
  %i.ap = and i64 %i.ao, 7
  %.neg16 = add i64 %i.am, 7
  %i.aq = sub i64 %.neg16, %i.ap                  ; 3 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !250
  %i.ar = add i64 %i.aq, 64                       ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 262144
  br i1 %i.as, label %.critedge.i.i.i, label %bb.f, !prof !251

.critedge.i.i.i:                                  ; preds = %.sink.split
  %i.at = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ac, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.f:                                             ; preds = %.sink.split
  %i.au = add i64 %i.aq, %i.ak
  %i.av = inttoptr i64 %i.au to ptr
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.f
  %.0.i.i.i = phi ptr [ %i.at, %.critedge.i.i.i ], [ %i.av, %bb.f ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 43, ptr %i.aw, align 8, !tbaa !252
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !231
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !234
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !234 ; 4 uses
  %i.bb = icmp eq ptr %i.ay, %1
  %i.bc = icmp eq ptr %i.ba, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.bf, align 8, !tbaa !234
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !234
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !231
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !234
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bh, align 8, !tbaa !229
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i24, ptr %i.bi, align 8, !tbaa !229
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bj, align 8, !tbaa !229
  %i.bk = ptrtoint ptr %.0.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.e, %_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %.sroa.011.0 = phi i64 [ %i.bk, %_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %bb.e ], [ undef, %bb.b ], [ undef, %bb.c ]
  %.sroa.2.4 = phi i8 [ 1, %_ZN6hermes6ESTree20ObjectExpressionNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.4, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824), i64, i8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseClassExpressionEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !230, !range !81, !noundef !75
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132  ; 6 uses
  store i8 1, ptr %i.b, align 8, !tbaa !230
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !229 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17 ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !85
  %i.k = load i32, ptr %i.j, align 8, !tbaa !235  ; 3 uses
  switch i32 %i.k, label %bb.b [
    i32 49, label %bb.g
    i32 38, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  %i.n = load i32, ptr %i.m, align 4, !tbaa !284
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.k, label %bb.d [
    i32 74, label %bb.g
    i32 41, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.p = load i8, ptr %i.o, align 8, !tbaa !285, !range !81, !noundef !75
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = icmp eq i32 %i.k, 74
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.v = extractvalue { i64, i8 } %i.s, 0
  %i.w = inttoptr i64 %i.v to ptr
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.219, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.a, %bb.a, %.thread
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.w, %.thread ], [ null, %bb.a ], [ null, %bb.c ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 188
  %i.z = load i32, ptr %i.y, align 4, !tbaa !284
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !235
  %i.ac = icmp eq i32 %i.ab, 74
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseTypeParamsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.ae = extractvalue { i64, i8 } %i.ad, 1
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.thread32, label %bb.n

.thread32:                                        ; preds = %bb.i
  %i.ag = extractvalue { i64, i8 } %i.ad, 0
  %i.ah = inttoptr i64 %i.ag to ptr
  %.pre = load ptr, ptr %0, align 8, !tbaa !239
  br label %bb.j

bb.j:                                             ; preds = %.thread32, %bb.h, %bb.g
  %i.ai = phi ptr [ %.pre, %.thread32 ], [ %i.x, %bb.h ], [ %i.x, %bb.g ]
  %.113 = phi ptr [ %i.ah, %.thread32 ], [ null, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !285, !range !81, !noundef !75
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.an = load i32, ptr %i.am, align 8, !tbaa !235
  %i.ao = icmp eq i32 %i.an, 74
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTSTypeParametersEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 1
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread34, label %bb.n

.thread34:                                        ; preds = %bb.l
  %i.as = extractvalue { i64, i8 } %i.ap, 0
  %i.at = inttoptr i64 %i.as to ptr
  br label %bb.m

bb.m:                                             ; preds = %.thread34, %bb.k, %bb.j
  %.3 = phi ptr [ %i.at, %.thread34 ], [ %.113, %bb.k ], [ %.113, %bb.j ]
  %i.au = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseClassTailEN4llvh5SMLocEPNS_6ESTree4NodeES7_NS2_14ClassParseKindE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i, ptr noundef %.1, ptr noundef %.3, i32 noundef 1) ; 2 uses
  %i.av = extractvalue { i64, i8 } %i.au, 0
  %i.aw = extractvalue { i64, i8 } %i.au, 1       ; 2 uses
  %i.ax = trunc nuw i8 %i.aw to i1
  %spec.select = select i1 %i.ax, i64 %i.av, i64 undef
  %spec.select36 = and i8 %i.aw, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.f
  %.sroa.030.1 = phi i64 [ undef, %bb.l ], [ undef, %bb.i ], [ undef, %bb.f ], [ %spec.select, %bb.m ]
  %.sroa.2.6 = phi i8 [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ], [ %spec.select36, %bb.m ]
  store i8 %i.c, ptr %i.b, align 8, !tbaa !230
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.az = zext i32 %i.e to i64                    ; 2 uses
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !132 ; 3 uses
  %i.bb = icmp ult i32 %i.e, %i.ba
  br i1 %i.bb, label %.sink.split.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp ugt i32 %i.e, %i.ba
  br i1 %i.bc, label %bb.p, label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1220
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !133
  %i.bf = icmp ugt i32 %i.e, %i.be
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull %i.bg, i64 noundef %i.az, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi.i.in.i = phi i32 [ %.pre.i.i, %bb.q ], [ %i.ba, %bb.p ] ; 2 uses
  %.not13.i.i = icmp eq i32 %i.e, %.pre-phi.i.in.i
  br i1 %.not13.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %.pre-phi.i.i = zext i32 %.pre-phi.i.in.i to i64 ; 2 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !131
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.pre-phi.i.i
  %i.bj = sub nsw i64 %i.az, %.pre-phi.i.i
  %i.bk = shl nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bk, i1 false), !tbaa !214
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %bb.r, %bb.n
  store i32 %i.e, ptr %i.d, align 8, !tbaa !132
  br label %_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit

_ZN6hermes6parser6detail12JSParserImpl31SaveStrictModeAndSeenDirectivesD2Ev.exit: ; preds = %bb.o, %.sink.split.i.i
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.030.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTemplateLiteralENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.hermes::parser::detail::Param", align 4 ; 2 uses
  %3 = alloca %"class.llvh::simple_ilist", align 8 ; 12 uses
  %4 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %5 = alloca %class.anon.247, align 8            ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  store i32 %1, ptr %2, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !229 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %3, ptr %3, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %4, ptr %4, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %4, ptr %i.f, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %3, ptr %5, align 8, !tbaa !508
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !510
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.h, align 8, !tbaa !512
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.j = phi ptr [ %.pre, %.critedge ], [ %i.c, %bb.a ] ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !235  ; 2 uses
  switch i32 %i.k, label %bb.c [
    i32 119, label %bb.i
    i32 116, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.k, -117
  %i.m = icmp ult i32 %i.l, 2
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i10 = load ptr, ptr %i.n, align 8, !tbaa !229
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !277
  store ptr @.str.193, ptr %6, align 8, !tbaa !278
  store i8 3, ptr %i.o, align 8, !tbaa !274
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.r, i32 noundef 0, ptr %.sroa.0.0.copyload.i10, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = call fastcc noundef zeroext i1 @"_ZZN6hermes6parser6detail12JSParserImpl20parseTemplateLiteralENS1_5ParamEENK3$_0clEb"(ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false)
  br i1 %i.s, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.u, align 8, !tbaa !229
  %i.v = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.v, ptr %i.b, align 8, !tbaa !85
  %i.w = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 1
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %.loopexit, !llvm.loop !514

bb.g:                                             ; preds = %bb.f
  %i.z = extractvalue { i64, i8 } %i.w, 0
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !231   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %4, ptr %i.ac, align 8, !tbaa !234
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !231
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !234
  store ptr %i.aa, ptr %4, align 8, !tbaa !231
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !235
  %i.ag = icmp eq i32 %i.af, 51
  br i1 %i.ag, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 51, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.195, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit, !llvm.loop !514

.critedge:                                        ; preds = %bb.g
  %i.ah = call noundef ptr @_ZN6hermes6parser7JSLexer29rescanRBraceInTemplateLiteralEv(ptr noundef nonnull align 8 dereferenceable(1160) %i.i) #17 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %bb.b

bb.i:                                             ; preds = %bb.b, %bb.b
  %i.ai = call fastcc noundef zeroext i1 @"_ZZN6hermes6parser6detail12JSParserImpl20parseTemplateLiteralENS1_5ParamEENK3$_0clEb"(ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
  br i1 %i.ai, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !85
  %.sroa.2.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.2.0.copyload.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i12, align 8, !tbaa !229
  %i.ak = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !85
  %i.al = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !241
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !247
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !248
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !250 ; 2 uses
  %i.aw = add i64 %i.at, 7
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = and i64 %i.ax, 7
  %.neg18 = add i64 %i.av, 7
  %i.az = sub i64 %.neg18, %i.ay                  ; 3 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !250
  %i.ba = add i64 %i.az, 80                       ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 262144
  br i1 %i.bb, label %.critedge.i.i.i, label %bb.k, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.j
  %i.bc = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.al, i64 noundef 80, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bd = add i64 %i.az, %i.at
  %i.be = inttoptr i64 %i.bd to ptr
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.k
  %.0.i.i.i = phi ptr [ %i.bc, %.critedge.i.i.i ], [ %i.be, %bb.k ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 73, ptr %i.bf, align 8, !tbaa !252
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.bh, ptr %i.bh, align 8, !tbaa !231
end_hunk_9
begin_hunk_10_@_ZN6hermes6parser6detail12JSParserImpl14parseDirectiveEv:bb.a
  %.sroa.03.0 = phi ptr [ %.sroa.2.0.copyload.i.i11, %bb.h ], [ %.sroa.0.0.copyload.i, %_ZN6hermes6parser6detail12JSParserImpl16processDirectiveEPNS_12UniqueStringE.exit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !240 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !241
  %i.bo = zext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !247
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !248
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !250 ; 2 uses
  %i.bv = add i64 %i.bs, 7
  %i.bw = add i64 %i.bv, %i.bu
  %i.bx = and i64 %i.bw, 7
  %.neg23 = add i64 %i.bu, 7
  %i.by = sub i64 %.neg23, %i.bx                  ; 3 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !250
  %i.bz = add i64 %i.by, 64                       ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 262144
  br i1 %i.ca, label %.critedge.i.i.i15, label %bb.j, !prof !251

.critedge.i.i.i15:                                ; preds = %bb.i
  %i.cb = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bk, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

bb.j:                                             ; preds = %bb.i
  %i.cc = add i64 %i.by, %i.bs
  %i.cd = inttoptr i64 %i.cc to ptr
  store i64 %i.bz, ptr %i.bt, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16:  ; preds = %.critedge.i.i.i15, %bb.j
  %.0.i.i.i14 = phi ptr [ %i.cb, %.critedge.i.i.i15 ], [ %i.cd, %bb.j ] ; 9 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !334
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i14, i8 0, i64 16, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 16
  store i32 30, ptr %i.cf, align 8, !tbaa !252
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cg, i8 0, i64 28, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 48
  store ptr %.0.i.i.i, ptr %i.ch, align 8, !tbaa !336
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 56
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !339
  %.sroa.0.0.copyload.i.i.i17 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i17, ptr %i.cj, align 8, !tbaa !229
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 32
  store ptr %.sroa.03.0, ptr %i.ck, align 8, !tbaa !229
  %.sroa.0.0.copyload.i.i10.i18 = load ptr, ptr %i.af, align 8, !tbaa !229
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i14, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i18, ptr %i.cl, align 8, !tbaa !229
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16
  %.0 = phi ptr [ %.0.i.i.i14, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit16 ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser6detail12JSParserImpl14preParseBufferERNS_7ContextEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.304") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2848) ptr @_Znwm(i64 noundef 2848) #19, !noalias !776 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !781, !noalias !783
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !784, !noalias !783
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes6parser6detail12_GLOBAL__N_19PreParserESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !82, !noalias !783
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !785, !noalias !783
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !783 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240, !noalias !783 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !241, !noalias !783
  store i32 %i.h, ptr %i.e, align 8, !tbaa !241, !noalias !783
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !250, !noalias !783
  store i64 %i.k, ptr %i.i, align 8, !tbaa !250, !noalias !783
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !131, !noalias !783
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !132, !noalias !783
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !133, !noalias !783
  store ptr %i.g, ptr %i.m, align 8, !tbaa !298, !noalias !783
  store ptr %i.e, ptr %i.f, align 8, !tbaa !240, !noalias !783
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  tail call void @_ZN6hermes6parser6detail12JSParserImplC2ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(2824) %i.p, ptr noundef nonnull align 8 dereferenceable(656) %1, i32 noundef %2, i32 noundef 0), !noalias !783
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.r = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.q, i32 noundef 0) #17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  %i.t = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl12parseProgramEv(ptr noundef nonnull align 8 dereferenceable(2824) %i.p)
  %i.u = extractvalue { i64, i8 } %i.t, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !228, !nonnull !75, !align !76
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread

_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread: ; preds = %bb.a, %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.b:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit
  store ptr %i.p, ptr %0, align 8, !tbaa !786
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.z, align 8, !tbaa !788
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !3
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit

_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl5parseEv.exit.thread, %bb.c, %bb.d
  %i.ae = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  store i32 0, ptr %i.b, align 8, !tbaa !781
  store i32 0, ptr %i.c, align 4, !tbaa !784
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !789
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17, !inline_history !789
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN6hermes6parser6detail12JSParserImplEEC2INS2_12_GLOBAL__N_19PreParserEEERKS_IT_EPS3_.exit
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !278
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.ag, -1
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ap = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.g ], [ %i.ap, %bb.h ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.i, label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !251

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #17
  br label %_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes6parser6detail12_GLOBAL__N_19PreParserELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseLazyFunctionENS_6ESTree8NodeKindEbbN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) initializes((160, 168)) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %4, ptr %i.d, align 8, !tbaa !324
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.c, i32 noundef 0) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %i.e, ptr %i.f, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1205
  store i8 %i.a, ptr %i.g, align 1, !tbaa !687
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1206
  store i8 %i.b, ptr %i.h, align 2, !tbaa !372
  switch i32 %1, label %bb.f [
    i32 4, label %bb.b
    i32 6, label %bb.c
    i32 76, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !496 ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 0
  %i.k = extractvalue { i64, i8 } %i.i, 1
  %spec.select3.i = and i8 %i.k, 1                ; 2 uses
  %.not27 = icmp eq i8 %spec.select3.i, 0
  %spec.select.i10 = select i1 %.not27, i64 undef, i64 %i.j
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseFunctionHelperENS1_5ParamEbb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 2, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !425 ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %spec.select3.i15 = and i8 %i.n, 1              ; 2 uses
  %.not26 = icmp eq i8 %spec.select3.i15, 0
  %spec.select.i18 = select i1 %.not26, i64 undef, i64 %i.m
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parsePropertyAssignmentEb(ptr noundef nonnull align 8 dereferenceable(2824) %0, i1 noundef zeroext true)
  %i.p = extractvalue { i64, i8 } %i.o, 0         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !252
  %i.t = icmp ne i32 %i.s, 76
  %.not25 = icmp eq i64 %i.p, 0
  %.not = or i1 %i.t, %.not25
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !388
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.023.1 = phi i64 [ %spec.select.i10, %bb.b ], [ %spec.select.i18, %bb.c ], [ %i.w, %bb.e ], [ undef, %bb.d ]
  %.sroa.424.1 = phi i8 [ %spec.select3.i, %bb.b ], [ %spec.select3.i15, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.023.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.424.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit
  %.05 = phi ptr [ %i.a, %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds i8, ptr %.05, i64 -8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !790  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre1.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !793 ; 3 uses
  br i1 %i.e, label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = zext i32 %i.d to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.f, 80
  %i.g = getelementptr inbounds nuw i8, ptr %.pre1.i.i.i.i, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.w, %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i ], [ %.pre1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.h = load ptr, ptr %.010.i.i.i.i.i, align 8, !tbaa !322
  %i.i = icmp ult ptr %i.h, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.n, 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i.i, i64 -24
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.q) #17
  br label %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i

_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.p
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !340

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj24EED2Ev.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !131
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i

_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 40
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.t) #17
  br label %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i

_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZN4llvh23SmallVectorTemplateBaseINS_11SmallStringILj24EEELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !794

_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i: ; preds = %_ZN6hermes6parser21PreParsedFunctionInfoD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !793
  br label %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i, %bb.b
  %i.x = phi ptr [ %.pre.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_5SMLocEN6hermes6parser21PreParsedFunctionInfoENS4_9SMLocInfoENS_6detail12DenseMapPairIS2_S5_EEEES2_S5_S6_S9_E10destroyAllEv.exit.loopexit.i.i.i.i ], [ %.pre1.i.i.i.i, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.x) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #20
  br label %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN6hermes6parser19PreParsedBufferInfoEEclEPS2_.exit.i
  %.not = icmp eq ptr %0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !795

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.278, i1 noundef zeroext true) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = shl nuw nsw i64 %i.r, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.279, i1 noundef zeroext true) #17
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !131    ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !132  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = shl nuw nsw i64 %i.z, 3                 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 %.idx   ; 3 uses
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE18uninitialized_moveIPS7_SA_EEvT_SB_T0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN4llvh11safe_mallocEm.exit
  %i.ab = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.u, i64 %.idx
  %bound0 = icmp ult ptr %i.u, %i.aa
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.w, i64 %i.ah ; 4 uses
  %i.ai = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !223, !alias.scope !796
  %wide.load15 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !223, !alias.scope !796
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !223, !alias.scope !799, !noalias !796
  store <2 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !223, !alias.scope !799, !noalias !796
  %i.ak = getelementptr i8, ptr %next.gep14, i64 16
end_hunk_10
