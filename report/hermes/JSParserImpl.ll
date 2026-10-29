Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSParserImpl?download=true
inline.NumInlined: 6237
inline.NumDeleted: 1653
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJRS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbERKS4_DpOT_:bb.a
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !457, !llvm.loop !7

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !459 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !217

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !460
  %.neg.i.i = xor i32 %i.ad, -1
  %.neg12.i.i = add i32 %i.d, %.neg.i.i
  %i.ak = sub i32 %.neg12.i.i, %i.aj
  %i.al = lshr i32 %i.d, 3
  %.not10.i.i = icmp ugt i32 %i.ak, %i.al
  br i1 %.not10.i.i, label %bb.g, label %.sink.split.i.i, !prof !217

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ah, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIPN6hermes12UniqueStringEPNS1_6ESTree14IdentifierNodeENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S6_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.am = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.ac, align 8, !tbaa !459
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !458
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.an = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ao = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.ad, %bb.f ]
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !459
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !179
  %i.ar = icmp eq ptr %i.aq, inttoptr (i64 -8 to ptr)
  br i1 %i.ar, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !460
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !460
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = load ptr, ptr %2, align 8, !tbaa !179
  store ptr %i.av, ptr %i.an, align 8, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %3, align 8, !tbaa !448
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !448
  %i.ay = load ptr, ptr %1, align 8, !tbaa !454
  %i.az = load i32, ptr %i.c, align 8, !tbaa !455
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.ay, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit ], [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEPNS2_6ESTree14IdentifierNodeENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16InsertIntoBucketIRKS4_JRS7_EEEPSC_SJ_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.ba = zext i32 %.sink34 to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sink32, i64 %i.ba
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bc, align 8, !tbaa !452
  ret void
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl30parseExportTypeDeclarationFlowEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824), ptr) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl23checkAsyncComponentFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseComponentDeclarationFlowEN4llvh5SMLocEbb(ptr noundef nonnull align 8 dereferenceable(2824), ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl29checkComponentDeclarationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl18checkAsyncHookFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseHookDeclarationFlowEN4llvh5SMLocEb(ptr noundef nonnull align 8 dereferenceable(2824), ptr, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl24checkHookDeclarationFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseEnumDeclarationFlowEN4llvh5SMLocEb(ptr noundef nonnull align 8 dereferenceable(2824), ptr, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl17parseExportClauseERN4llvh12simple_ilistINS_6ESTree4NodeEJEEERNS3_15SmallVectorImplINS3_7SMRangeEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !183 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !138
  %i.g = load i32, ptr %i.f, align 8, !tbaa !189
  %i.h = icmp eq i32 %i.g, 51
  br i1 %i.h, label %.thread9.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.i = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseExportSpecifierEN4llvh5SMLocERNS3_15SmallVectorImplINS3_7SMRangeEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.l = extractvalue { i64, i8 } %i.i, 0
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !187    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !188
  store ptr %i.n, ptr %i.m, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !188
  store ptr %i.m, ptr %1, align 8, !tbaa !187
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.r = load i32, ptr %i.q, align 8, !tbaa !189
  switch i32 %i.r, label %_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE.exit.i [
    i32 61, label %bb.c
    i32 51, label %.thread9.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !138
  %i.t = load i32, ptr %i.s, align 8, !tbaa !189
  %i.u = icmp eq i32 %i.t, 51
  br i1 %i.u, label %.thread9.thread, label %.lr.ph

_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 51, ptr %i.a, align 4, !tbaa !208
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.275, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit

.thread9.thread:                                  ; preds = %bb.c, %bb.b, %bb.a
  %i.v = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 1) #17
  store ptr %i.v, ptr %i.b, align 8, !tbaa !138
  br label %_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit

_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE.exit: ; preds = %.lr.ph, %.thread9.thread, %_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE.exit.i
  %.2 = phi i1 [ true, %.thread9.thread ], [ false, %_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE.exit.i ], [ false, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseExportSpecifierEN4llvh5SMLocERNS3_15SmallVectorImplINS3_7SMRangeEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4
  %spec.select.i = icmp ult i32 %i.g, 44
  br i1 %spec.select.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !208
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.276, ptr %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215  ; 5 uses
  %i.l = icmp eq ptr %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.k, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.t = load <4 x ptr>, ptr %i.s, align 8
  %i.u = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.v = shufflevector <4 x ptr> %i.u, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.w = icmp eq <4 x ptr> %i.v, %i.t
  %i.x = freeze <4 x i1> %i.w
  %i.y = bitcast <4 x i1> %i.x to i4
  %i.z = icmp ne i4 %i.y, 0
  %op.rdx = select i1 %i.z, i1 true, i1 %i.l
  %3 = freeze i1 %i.o
  %4 = or i1 %op.rdx, %3
  %op.rdx75 = select i1 %4, i1 true, i1 %i.r
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.k, %i.ab
  %or.cond78 = select i1 %op.rdx75, i1 true, i1 %i.ac
  br i1 %or.cond78, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !141 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !142
  %.not.i = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMRangeELb1EE9push_backERKS1_.exit, label %bb.d, !prof !217

bb.d:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.aj, i64 noundef 0, i64 noundef 16) #17
  %.pre.i = load i32, ptr %i.af, align 8, !tbaa !141
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMRangeELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_7SMRangeELb1EE9push_backERKS1_.exit: ; preds = %.thread, %bb.d
  %i.ak = phi i32 [ %.pre.i, %bb.d ], [ %i.ag, %.thread ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !140
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am
  store <2 x ptr> %i.ae, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.af, align 8, !tbaa !141
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !141
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !138
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMRangeELb1EE9push_backERKS1_.exit
  %i.aq = phi ptr [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMRangeELb1EE9push_backERKS1_.exit ], [ %i.d, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ] ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !190, !nonnull !87, !align !88 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !191 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !197
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !198
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !200
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !201 ; 2 uses
  %i.bc = add i64 %i.az, 7
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 7
  %.neg41 = add i64 %i.bb, 7
  %i.bf = sub i64 %.neg41, %i.be                  ; 3 uses
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !201
  %i.bg = add i64 %i.bf, 72                       ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, 262144
  br i1 %i.bh, label %.critedge.i.i.i, label %bb.f, !prof !202

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.bi = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ar, i64 noundef 72, i64 noundef 8) #17
  %.pre48 = load ptr, ptr %i.c, align 8, !tbaa !138
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = add i64 %i.bf, %i.az
  %i.bk = inttoptr i64 %i.bj to ptr
  store i64 %i.bg, ptr %i.ba, align 8, !tbaa !201
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.f
  %i.bl = phi ptr [ %.pre48, %.critedge.i.i.i ], [ %i.aq, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.bi, %.critedge.i.i.i ], [ %i.bk, %bb.f ] ; 12 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.bo, align 8, !tbaa !207
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bp, i8 0, i64 28, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !227
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.br, align 8, !tbaa !228
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.bs, align 8, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !183
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.bu, align 8, !tbaa !183
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.bv, align 8, !tbaa !183
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.bw, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.bt, align 8, !tbaa !183
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.bx, align 8, !tbaa !183
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bz = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.by, i32 noundef 0) #17 ; 3 uses
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !138
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !189
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE.exit.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !155
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !215
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.g, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE.exit.thread

bb.g:                                             ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i
  %i.ch = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.by, i32 noundef 0) #17 ; 5 uses
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !138
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !189 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1
  %i.ck = add i32 %i.ci, -4
  %spec.select.i20 = icmp ult i32 %i.ck, 44
  %or.cond = or i1 %i.cj, %spec.select.i20
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !208
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.276, ptr %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cl = load ptr, ptr %0, align 8, !tbaa !190, !nonnull !87, !align !88 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !191 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !197
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !198
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cp
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !200
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !201 ; 2 uses
  %i.cw = add i64 %i.ct, 7
  %i.cx = add i64 %i.cw, %i.cv
  %i.cy = and i64 %i.cx, 7
  %.neg44 = add i64 %i.cv, 7
  %i.cz = sub i64 %.neg44, %i.cy                  ; 3 uses
  store i64 %i.cz, ptr %i.cu, align 8, !tbaa !201
  %i.da = add i64 %i.cz, 72                       ; 2 uses
  %i.db = icmp ugt i64 %i.da, 262144
  br i1 %i.db, label %.critedge.i.i.i22, label %bb.j, !prof !202

.critedge.i.i.i22:                                ; preds = %bb.i
  %i.dc = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cl, i64 noundef 72, i64 noundef 8) #17
  %.pre49 = load ptr, ptr %i.c, align 8, !tbaa !138
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit23

bb.j:                                             ; preds = %bb.i
  %i.dd = add i64 %i.cz, %i.ct
  %i.de = inttoptr i64 %i.dd to ptr
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !201
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit23

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit23:  ; preds = %.critedge.i.i.i22, %bb.j
  %i.df = phi ptr [ %.pre49, %.critedge.i.i.i22 ], [ %i.ch, %bb.j ]
  %.0.i.i.i21 = phi ptr [ %i.dc, %.critedge.i.i.i22 ], [ %i.de, %bb.j ] ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i21, i8 0, i64 16, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 16
  store i32 66, ptr %i.di, align 8, !tbaa !207
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dj, i8 0, i64 28, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 48
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !227
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 56
  store ptr null, ptr %i.dl, align 8, !tbaa !228
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 64
  store i8 0, ptr %i.dm, align 8, !tbaa !229
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i24 = load ptr, ptr %i.dn, align 8, !tbaa !183
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i24, ptr %i.do, align 8, !tbaa !183
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.0.0.copyload.i.i9.i25 = load ptr, ptr %i.dp, align 8, !tbaa !183
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i25, ptr %i.dq, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i10.i26 = load ptr, ptr %i.dn, align 8, !tbaa !183
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i26, ptr %i.dr, align 8, !tbaa !183
  %i.ds = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.by, i32 noundef 0) #17
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !138
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE.exit.thread

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatEPNS_12UniqueStringENS0_7JSLexer14GrammarContextE.exit.thread: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit23
  %.0 = phi ptr [ %.0.i.i.i21, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit23 ], [ %.0.i.i.i, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit.i ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ] ; 2 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !190, !nonnull !87, !align !88 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !191 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !197
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !198
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
end_hunk_0
