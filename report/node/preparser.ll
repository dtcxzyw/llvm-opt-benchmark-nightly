Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/preparser?download=true
inline.NumInlined: 5487
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_9PreParserEE22ClassifyArrowParameterEPNS0_17AccumulationScopeINS0_11ParserTypesIS2_EEEEiNS0_19PreParserExpressionE:bb.a
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %i.bc, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  store i32 384, ptr %i.bu, align 8
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.r:                                             ; preds = %bb.e, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = add i8 %i.by, -1
  %i.ca = icmp ult i8 %i.bz, 2
  br i1 %i.ca, label %bb.s, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 92
  store i8 0, ptr %i.cb, align 4
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE20ParseYieldExpressionEv(ptr noundef nonnull align 8 dereferenceable(270) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.s, %bb.f ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.g, align 1, !range !19, !noundef !20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add i8 %i.i, -1
  %i.n = icmp ult i8 %i.m, 3
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 76
  %i.p = load i64, ptr %i.d, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 84
  store i32 428, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit, label %bb.b, !llvm.loop !5

bb.g:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 4
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %i.u, i64 %.sroa.0.0.copyload.i.i, i32 noundef 428)
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit: ; preds = %bb.c, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = tail call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.v) #17 ; 0 uses
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %.sroa.0.0.copyload.i.i9 = load i32, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.aa = sub nsw i32 %.sroa.4.0.copyload.i.i, %.sroa.0.0.copyload.i.i9 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = icmp eq i8 %i.ac, 93
  %i.ae = add nsw i32 %i.aa, -2
  %spec.select.i.i = select i1 %i.ad, i32 %i.ae, i32 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !range !19, !noundef !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = xor i8 %i.ag, 1
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = ashr i32 %i.ai, %i.ak
  %.not = icmp eq i32 %i.al, %spec.select.i.i
  br i1 %.not, label %bb.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, i8 noundef zeroext 116)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE31RecordParameterInitializerErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit
  %i.am = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE18CheckStackOverflowEv.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !range !19, !noundef !20
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE18set_stack_overflowEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i32 -1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.az, ptr %i.ba, align 8
  store i8 1, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 120 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8
  %.not10.i.i.i = icmp eq i8 %i.bc, 118
  br i1 %.not10.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 115, ptr %i.bb, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  %.not10.i.1.i.i = icmp eq i8 %i.be, 118
  br i1 %.not10.i.1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 115, ptr %i.bd, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 296 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %.not10.i.2.i.i = icmp eq i8 %i.bg, 118
  br i1 %.not10.i.2.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 115, ptr %i.bf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 384 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %.not10.i.3.i.i = icmp eq i8 %i.bi, 118
  br i1 %.not10.i.3.i.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE18set_stack_overflowEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 115, ptr %i.bh, align 8
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE18set_stack_overflowEv.exit.i

_ZN2v88internal10ParserBaseINS0_9PreParserEE18set_stack_overflowEv.exit.i: ; preds = %bb.r, %bb.q, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  store i8 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 1, ptr %i.bl, align 1
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE18CheckStackOverflowEv.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE18CheckStackOverflowEv.exit: ; preds = %bb.i, %_ZN2v88internal10ParserBaseINS0_9PreParserEE18set_stack_overflowEv.exit.i
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load i8, ptr %i.bp, align 8, !range !19, !noundef !20
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE18CheckStackOverflowEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bt = load i8, ptr %i.bs, align 8             ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 43                    ; 3 uses
  br i1 %i.bu, label %bb.t, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = tail call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.bm) #17 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre19 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %.pre19, i64 56
  %.pre21 = load i8, ptr %.phi.trans.insert20, align 8
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit: ; preds = %bb.s, %bb.t
  %i.bw = phi i8 [ %i.bt, %bb.s ], [ %.pre21, %bb.t ]
  switch i8 %i.bw, label %bb.v [
    i8 14, label %bb.u
    i8 12, label %bb.u
    i8 13, label %bb.u
    i8 7, label %bb.u
    i8 6, label %bb.u
    i8 9, label %bb.u
    i8 33, label %bb.u
    i8 65, label %bb.u
  ]

bb.u:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit
  br i1 %i.bu, label %.thread18, label %.thread

.thread18:                                        ; preds = %bb.u
  %i.bx = tail call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE37ParseAssignmentExpressionCoverGrammarEv(ptr noundef nonnull align 8 dereferenceable(270) %0) ; 0 uses
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE22PositionAfterSemicolonEv.exit

bb.v:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit
  %i.by = tail call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE37ParseAssignmentExpressionCoverGrammarEv(ptr noundef nonnull align 8 dereferenceable(270) %0) ; 0 uses
  br i1 %i.bu, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE22PositionAfterSemicolonEv.exit, label %.thread

_ZN2v88internal10ParserBaseINS0_9PreParserEE22PositionAfterSemicolonEv.exit: ; preds = %.thread18, %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %i.bz, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef ptr @_ZN2v88internal5Scope18AsDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.cg) #17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 126
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = add i8 %i.cj, -16
  %i.cl = icmp ult i8 %i.ck, 3
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE22PositionAfterSemicolonEv.exit
  %i.cm = load ptr, ptr %i.bz, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4
  %i.cq = load ptr, ptr %i.bz, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4
  br label %.sink.split

.thread:                                          ; preds = %bb.u, %_ZN2v88internal10ParserBaseINS0_9PreParserEE18CheckStackOverflowEv.exit, %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.w
  %.sink26.in = phi ptr [ %i.bz, %bb.w ], [ %i.cu, %.thread ]
  %.sink26 = load ptr, ptr %.sink26.in, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink26, i64 20 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN2v88internal10ParserBaseINS0_9PreParserEE22PositionAfterSemicolonEv.exit
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE49ParseAssignmentExpressionCoverGrammarContinuationEiNS0_19PreParserExpressionE(ptr noundef nonnull align 8 dereferenceable(270) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ExpressionParsingScope", align 8 ; 19 uses
  %4 = alloca %"class.v8::internal::PreParserFormalParameters", align 8 ; 8 uses
  %5 = alloca %"struct.v8::internal::Scanner::Location", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load i8, ptr %i.e, align 8               ; 5 uses
  %i.g = icmp eq i8 %i.f, 15
  %i.h = and i32 %2, 7                            ; 3 uses
  %i.i = icmp eq i32 %i.h, 3                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %2, 8
  %i.k = icmp ne i32 %i.j, 0
  %or.cond78 = or i1 %i.i, %i.k
  br i1 %or.cond78, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i32, ptr %i.m, align 4
  %.sroa.2.0.insert.ext = zext i32 %i.n to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.056.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 4294967295
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %0, i64 %.sroa.056.0.insert.insert, i32 noundef 359)
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE18RecordPatternErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store i32 %1, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.q, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  %i.x = load i32, ptr %i.o, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ule i32 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 124
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = trunc i16 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  store i8 %i.ag, ptr %i.v, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 4, !range !19, !noundef !20
  %i.aj = trunc nuw i8 %i.ai to i1
  store ptr null, ptr %i.p, align 8
  store i32 -1, ptr %i.r, align 8
  store i64 4294967295, ptr %i.o, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.ak, align 8
  store i8 0, ptr %i.ah, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8
  %i.ao = call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE25ParseArrowFunctionLiteralERKNS0_25PreParserFormalParametersEib(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef nonnull align 8 dereferenceable(22) %4, i32 noundef %i.s, i1 noundef zeroext %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE18RecordPatternErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE22IsAssignableIdentifierENS0_19PreParserExpressionE.exit, label %bb.n, !prof !25

_ZN2v88internal10ParserBaseINS0_9PreParserEE22IsAssignableIdentifierENS0_19PreParserExpressionE.exit: ; preds = %bb.e
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 121
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = trunc i16 %i.ar to i1
  %i.at = and i32 %2, 4064
  %i.au = icmp eq i32 %i.at, 32
  %or.cond.i = and i1 %i.au, %i.as
  br i1 %or.cond.i, label %.thread72, label %bb.f, !prof !26

bb.f:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE22IsAssignableIdentifierENS0_19PreParserExpressionE.exit
  %i.av = and i32 %2, 8
  %.not81 = icmp eq i32 %i.av, 0
  br i1 %.not81, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 8             ; 2 uses
  %i.ba = add i8 %i.az, -1
  %i.bb = icmp ult i8 %i.ba, 5
  br i1 %i.bb, label %bb.h, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add nsw i8 %i.az, -3
  %i.bh = icmp ult i8 %i.bg, 3
  %.sroa.4.0.insert.ext = zext i32 %i.bf to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.055.0.insert.ext = zext i32 %1 to i64
  %.sroa.055.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.055.0.insert.ext ; 2 uses
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.ax, align 8
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %i.bi, i64 %.sroa.055.0.insert.insert, i32 noundef 315)
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 76
  store i64 %.sroa.055.0.insert.insert, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 84
  store i32 315, ptr %i.bk, align 4
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit

_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8            ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i8, ptr %i.bn, align 8
  %i.bp = icmp ult i8 %i.bo, 3
  br i1 %i.bp, label %bb.k, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE24MarkIdentifierAsAssignedEv.exit

bb.k:                                             ; preds = %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE22RecordDeclarationErrorERKNS0_7Scanner8LocationENS0_15MessageTemplateE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = sub i64 %i.br, %i.bt                    ; 2 uses
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE24MarkIdentifierAsAssignedEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.by = shl i64 %i.bu, 32
  %sext.i.i = add i64 %i.by, -4294967296
  %i.bz = load ptr, ptr %i.bx, align 8, !nonnull !20, !align !22
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr [16 x i8], ptr %i.ca, i64 %i.bt
  %i.cc = ashr exact i64 %sext.i.i, 28
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = or i32 %i.cg, 128
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = and i32 %i.cg, 256
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE24MarkIdentifierAsAssignedEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void @_ZN2v88internal8Variable16SetMaybeAssignedEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ck)
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEE24MarkIdentifierAsAssignedEv.exit

bb.n:                                             ; preds = %bb.e
  %i.cl = icmp eq i32 %i.h, 2
  %i.cm = lshr i32 %2, 4
  %i.cn = and i32 %i.cm, 15
  %i.co = add nsw i32 %i.cn, -1
  %switch.selectcmp.i = icmp ult i32 %i.co, 4
  %i.cp = select i1 %i.cl, i1 %switch.selectcmp.i, i1 false
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
end_hunk_0
