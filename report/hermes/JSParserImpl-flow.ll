inline.NumInlined: 4026
inline.NumDeleted: 715
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #10 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0 = phi i8 [ 1, %bb.n ], [ 0, %bb.m ]         ; 2 uses
  %i.cc = load ptr, ptr %1, align 8, !tbaa !151   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %1, ptr %i.cd, align 8, !tbaa !154
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bu, ptr %i.ce, align 8, !tbaa !154
  store ptr %i.bu, ptr %1, align 8, !tbaa !151
  %3 = trunc nuw i8 %.0 to i1
  %i.cf = load i8, ptr %i.be, align 4, !range !123
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond = select i1 %3, i1 true, i1 %i.cg
  br i1 %or.cond, label %.thread101, label %.thread118

.thread101:                                       ; preds = %bb.j, %.thread95, %bb.o
  %.2109 = phi i8 [ %.0, %bb.o ], [ 1, %.thread95 ], [ 1, %bb.j ]
  %.134108 = phi ptr [ null, %bb.o ], [ %i.bm, %.thread95 ], [ null, %bb.j ] ; 4 uses
  %.191107 = phi ptr [ %i.bw, %bb.o ], [ null, %.thread95 ], [ null, %bb.j ] ; 6 uses
  %i.ch = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #10
  br i1 %i.ch, label %.preheader, label %.thread118

end_hunk_2
begin_hunk_3_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  %i.dh = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #10
  br i1 %i.dh, label %.preheader.split, label %.thread118

.thread118:                                       ; preds = %.preheader.split, %.thread111, %.thread111.us, %.preheader.split.us, %.split.us, %bb.o, %.thread101
  %.191106 = phi ptr [ %i.bw, %bb.o ], [ %.191107, %.split.us ], [ %.191107, %.thread101 ], [ %.191107, %.thread111.us ], [ %.191107, %.preheader.split.us ], [ %.191107, %.thread111 ], [ %.191107, %.preheader.split ] ; 2 uses
  %.437 = phi ptr [ null, %bb.o ], [ %i.cq, %.split.us ], [ %.134108, %.thread101 ], [ null, %.thread111.us ], [ null, %.preheader.split.us ], [ %.134108, %.thread111 ], [ %.134108, %.preheader.split ]
  %.3 = phi i8 [ 0, %bb.o ], [ 1, %.split.us ], [ %.2109, %.thread101 ], [ 1, %.thread111.us ], [ 1, %.preheader.split.us ], [ 1, %.thread111 ], [ 1, %.preheader.split ]
  %i.di = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 3, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr %.sroa.0.0.copyload.i.i) #10
  br i1 %i.di, label %bb.r, label %.thread113

bb.r:                                             ; preds = %.thread118
  %4 = trunc nuw i8 %.3 to i1
  br i1 %4, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dj = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 109, i32 noundef 3, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.110, ptr %.sroa.0.0.copyload.i.i) #10
  br i1 %i.dj, label %.thread122, label %.thread113

bb.t:                                             ; preds = %bb.r
  %i.dk = load i8, ptr %i.be, align 4, !tbaa !435, !range !123, !noundef !60
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.u, label %.thread124
end_hunk_3
begin_hunk_4_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  br i1 %i.dm, label %.thread122, label %.thread124

.thread124:                                       ; preds = %bb.t, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.191106, i64 20 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !478
  %.not.i = icmp eq i32 %i.do, 0
  %spec.select.i = select i1 %.not.i, i32 1, i32 2
  store i32 %spec.select.i, ptr %i.dn, align 4, !tbaa !478
  %i.dp = ptrtoint ptr %.191106 to i64
  br label %.thread113

.thread122:                                       ; preds = %bb.s, %bb.u
  %i.dq = load i8, ptr %i.be, align 4, !tbaa !435, !range !123, !noundef !60
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl29parseReturnTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 undef, i8 0, i32 noundef %i.dr) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i62, i64 72
  store ptr %i.er, ptr %i.fe, align 8, !tbaa !402
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i62, i64 80
  store ptr %.437, ptr %i.ff, align 8, !tbaa !403
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i62, i64 88
  store ptr null, ptr %i.fg, align 8, !tbaa !404
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i62, i64 24
end_hunk_5
begin_hunk_6_@_ZN6hermes6parser6detail12JSParserImpl38parseFunctionOrGroupTypeAnnotationFlowEv:bb.a
  %i.fk = ptrtoint ptr %.0.i.i.i62 to i64
  br label %.thread113

.thread113:                                       ; preds = %.thread110, %bb.p, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %_ZN6hermes6ESTree26FunctionTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_S7_.exit, %.thread122, %bb.s, %.thread118, %bb.k, %bb.i, %.thread124
  %.sroa.089.1 = phi i64 [ undef, %bb.s ], [ %i.dp, %.thread124 ], [ undef, %.thread118 ], [ undef, %bb.k ], [ undef, %.thread122 ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %bb.i ], [ %i.fk, %_ZN6hermes6ESTree26FunctionTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_S7_.exit ], [ undef, %bb.p ], [ undef, %.thread110 ]
  %.sroa.3.9 = phi i8 [ 0, %bb.s ], [ 1, %.thread124 ], [ 0, %.thread118 ], [ 0, %bb.k ], [ 0, %.thread122 ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %bb.i ], [ 1, %_ZN6hermes6ESTree26FunctionTypeAnnotationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_S7_S7_S7_.exit ], [ 0, %bb.p ], [ 0, %.thread110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.089.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.9, 1
end_hunk_6
begin_hunk_7_@_ZN6hermes6parser6detail12JSParserImpl31parsePropertyTypeAnnotationFlowENS2_18AllowProtoPropertyENS2_19AllowStaticPropertyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEESA_SA_SA_:bb.a

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.sink.split: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221, %bb.a, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit
  %.ph364 = phi i1 [ true, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ false, %bb.a ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221 ]
  %.0177.ph.a = phi i1 [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit ], [ true, %bb.a ], [ true, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.o, i32 noundef 3) #10 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN6hermes6parser6detail12JSParserImpl31parsePropertyTypeAnnotationFlowENS2_18AllowProtoPropertyENS2_19AllowStaticPropertyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEESA_SA_SA_:bb.a
  %i.q = phi i32 [ %.pre385, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.sink.split ], [ %i.g, %bb.a ] ; 2 uses
  %i.r = phi ptr [ %i.p, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.sink.split ], [ %i.d, %bb.a ] ; 2 uses
  %i.s = phi i1 [ %.ph364, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.sink.split ], [ false, %bb.a ] ; 2 uses
  %.0177.a = phi i1 [ %.0177.ph.a, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.sink.split ], [ false, %bb.a ] ; 2 uses
  %i.t = add i32 %i.q, -69
  %i.u = icmp ult i32 %i.t, 2
end_hunk_8
begin_hunk_9_@_ZN6hermes6parser6detail12JSParserImpl31parsePropertyTypeAnnotationFlowENS2_18AllowProtoPropertyENS2_19AllowStaticPropertyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEESA_SA_SA_:bb.a
  br label %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.thread

_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread.thread: ; preds = %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.0177391 = phi i1 [ %.0177.a, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %.0177.a, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221 ] ; 15 uses
  %i.bc = phi i1 [ %i.s, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %i.s, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread ], [ false, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221 ] ; 9 uses
  %.0176 = phi ptr [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221.thread ], [ null, %_ZNK6hermes6parser6detail12JSParserImpl5checkEPNS_12UniqueStringE.exit221 ] ; 22 uses
  %i.bd = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 55, i32 noundef 3) #10
end_hunk_9
begin_hunk_10_@_ZN6hermes6parser6detail12JSParserImpl31parsePropertyTypeAnnotationFlowENS2_18AllowProtoPropertyENS2_19AllowStaticPropertyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEESA_SA_SA_:bb.a
  %.sroa.0.0.copyload.i.i250 = load ptr, ptr %i.ec, align 8, !tbaa !58
  %i.ed = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !60, !align !61
  %i.ee = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 72, ptr noundef nonnull align 8 dereferenceable(656) %i.ed, i64 noundef 8) ; 15 uses
  %24 = zext i1 %.0177391 to i8
  %i.ef = zext i1 %spec.select.i249 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(67) %i.ee, i8 0, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
end_hunk_10
begin_hunk_11_@_ZN6hermes6parser6detail12JSParserImpl31parsePropertyTypeAnnotationFlowENS2_18AllowProtoPropertyENS2_19AllowStaticPropertyERN4llvh12simple_ilistINS_6ESTree4NodeEJEEESA_SA_SA_:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store i8 %.0192, ptr %i.ek, align 8, !tbaa !507
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 65
  store i8 %24, ptr %i.el, align 1, !tbaa !508
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 66
  store i8 %i.ef, ptr %i.em, align 2, !tbaa !509
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
end_hunk_11
