inline.NumInlined: 5487
inline.NumDeleted: 881
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_9PreParserEE17ParseClassLiteralEPNS0_5ScopeENS0_19PreParserIdentifierENS0_7Scanner8LocationEbi:bb.a
  %i.gy = load ptr, ptr %i.go, align 8            ; 4 uses
  store ptr %7, ptr %i.go, align 8
  %.not.i49 = icmp eq ptr %i.gy, null
  br i1 %.not.i49, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK2v88internal10ParserBaseINS0_9PreParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 65 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !range !6, !noundef !7
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 66
  store i8 %i.ha, ptr %i.hb, align 2
  store i8 0, ptr %i.gz, align 1
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit: ; preds = %_ZNK2v88internal10ParserBaseINS0_9PreParserEE16NewFunctionScopeENS0_12FunctionKindEPNS0_4ZoneE.exit, %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 8
  store ptr %i.gy, ptr %i.go, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN2v88internal9PreParser19RewriteClassLiteralEPNS0_10ClassScopeERKNS0_19PreParserIdentifierEPNS0_10ParserBaseIS1_E9ClassInfoEi.exit

_ZN2v88internal9PreParser19RewriteClassLiteralEPNS0_10ClassScopeERKNS0_19PreParserIdentifierEPNS0_10ParserBaseIS1_E9ClassInfoEi.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit, %bb.ah, %bb.x
  %.sroa.038.0 = phi i32 [ 1, %bb.x ], [ 2, %bb.ah ], [ 2, %_ZN2v88internal10ParserBaseINS0_9PreParserEE13FunctionStateC2EPPS4_PPNS0_5ScopeEPNS0_16DeclarationScopeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store ptr %i.x, ptr %i.w, align 8
  store ptr %i.s, ptr %0, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal9PreParser19RewriteClassLiteralEPNS0_10ClassScopeERKNS0_19PreParserIdentifierEPNS0_10ParserBaseIS1_E9ClassInfoEi.exit, %bb.f, %bb.d
  %.sroa.038.1 = phi i32 [ %.sroa.038.0, %_ZN2v88internal9PreParser19RewriteClassLiteralEPNS0_10ClassScopeERKNS0_19PreParserIdentifierEPNS0_10ParserBaseIS1_E9ClassInfoEi.exit ], [ 1, %bb.d ], [ 1, %bb.f ]
  ret i32 %.sroa.038.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4
  %.not.i.i = icmp ugt i32 %i.b, %i.d
  br i1 %.not.i.i, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE8ValidateEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %i.g, i64 %.sroa.0.0.copyload.i.i.i, i32 noundef %i.f)
  br label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE8ValidateEi.exit

_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE8ValidateEi.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(73) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !align !9 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.m)
  br label %_ZN2v88internal10ScopedListISt4pairIPNS0_13VariableProxyEiES5_ED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ult i64 %i.d, %i.k
  br i1 %i.n, label %bb.d, label %_ZN2v88internal10ScopedListISt4pairIPNS0_13VariableProxyEiES5_ED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i.i.i, label %_ZN2v88internal10ScopedListISt4pairIPNS0_13VariableProxyEiES5_ED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.e, align 8
  br label %_ZN2v88internal10ScopedListISt4pairIPNS0_13VariableProxyEiES5_ED2Ev.exit

_ZN2v88internal10ScopedListISt4pairIPNS0_13VariableProxyEiES5_ED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store ptr %i.q, ptr %i.s, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ParseClassLiteralBodyERNS3_9ClassInfoENS0_19PreParserIdentifierEiNS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef nonnull align 8 dereferenceable(66) %1, ptr %2, i8 %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.v8::internal::ParserBase<v8::internal::PreParser>::ParsePropertyInfo", align 8 ; 12 uses
  %.sroa.016.0.copyload = load i32, ptr %1, align 8
  %i.c = and i32 %.sroa.016.0.copyload, 7
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %.not3854 = icmp eq i8 %i.j, %5
  br i1 %.not3854, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 33 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 35 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 34 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.u = phi i8 [ %i.j, %.lr.ph ], [ %i.ae, %.backedge ]
  %i.v = phi ptr [ %i.f, %.lr.ph ], [ %i.aa, %.backedge ] ; 2 uses
  switch i8 %i.u, label %bb.e [
    i8 12, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit
    i8 105, label %bb.c
  ]

_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit: ; preds = %bb.b
  %i.w = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.v) #17 ; 0 uses
  br label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef zeroext i8 @_ZN2v88internal7Scanner9PeekAheadEv(ptr noundef nonnull align 8 dereferenceable(560) %i.v) #17
  %i.y = icmp eq i8 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = call { i32, ptr } @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ParseClassStaticBlockEPNS3_9ClassInfoE(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef nonnull %1) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit
  %i.aa = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load i8, ptr %i.ad, align 8             ; 2 uses
  %.not38 = icmp eq i8 %i.ae, %5
  br i1 %.not38, label %._crit_edge, label %bb.b, !llvm.loop !19

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %6, i8 0, i64 17, i1 false)
  store i32 0, ptr %i.m, align 4
  store i8 10, ptr %i.n, align 8
  store i32 0, ptr %i.o, align 1
  store i32 1, ptr %i.l, align 8
  %i.af = call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE28ParseClassPropertyDefinitionEPNS3_9ClassInfoEPNS3_17ParsePropertyInfoEb(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef nonnull %1, ptr noundef nonnull %6, i1 noundef zeroext %i.d) ; 0 uses
  %i.ag = load ptr, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !range !6, !noundef !7
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit.thread, label %bb.f

_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.n, align 8
  switch i8 %i.am, label %bb.g [
    i8 0, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4
    i8 1, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1
    i8 2, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2
    i8 6, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0
    i8 7, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3
  ]

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.10) #18
  unreachable

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4: ; preds = %bb.f
  %i.an = load i8, ptr %i.p, align 1              ; 3 uses
  %i.ao = trunc i8 %i.an to i1
  %.not.jt4 = xor i1 %i.ao, true
  %i.ap = load i8, ptr %i.q, align 1, !range !6   ; 2 uses
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %or.cond.jt4 = select i1 %.not.jt4, i1 %i.aq, i1 false
  %i.ar = load i8, ptr %i.o, align 1, !range !6
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond5.jt4 = select i1 %or.cond.jt4, i1 %i.as, i1 false
  br i1 %or.cond5.jt4, label %bb.h, label %bb.l

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0: ; preds = %bb.f
  %i.at = load i8, ptr %i.p, align 1              ; 3 uses
  %i.au = trunc i8 %i.at to i1
  %.not.jt0 = xor i1 %i.au, true
  %i.av = load i8, ptr %i.q, align 1, !range !6   ; 2 uses
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  %or.cond.jt0 = select i1 %.not.jt0, i1 %i.aw, i1 false
  %i.ax = load i8, ptr %i.o, align 1, !range !6
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond5.jt0 = select i1 %or.cond.jt0, i1 %i.ay, i1 false
  br i1 %or.cond5.jt0, label %bb.i, label %bb.m

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2: ; preds = %bb.f
  %i.az = load i8, ptr %i.p, align 1              ; 3 uses
  %i.ba = trunc i8 %i.az to i1
  %.not.jt2 = xor i1 %i.ba, true
  %i.bb = load i8, ptr %i.q, align 1, !range !6   ; 2 uses
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %or.cond.jt2 = select i1 %.not.jt2, i1 %i.bc, i1 false
  %i.bd = load i8, ptr %i.o, align 1, !range !6
  %i.be = trunc nuw i8 %i.bd to i1
  %or.cond5.jt2 = select i1 %or.cond.jt2, i1 %i.be, i1 false
  br i1 %or.cond5.jt2, label %bb.j, label %bb.n

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1: ; preds = %bb.f
  %i.bf = load i8, ptr %i.p, align 1              ; 3 uses
  %i.bg = trunc i8 %i.bf to i1
  %.not.jt1 = xor i1 %i.bg, true
  %i.bh = load i8, ptr %i.q, align 1, !range !6   ; 2 uses
  %i.bi = trunc nuw i8 %i.bh to i1                ; 2 uses
  %or.cond.jt1 = select i1 %.not.jt1, i1 %i.bi, i1 false
  %i.bj = load i8, ptr %i.o, align 1, !range !6
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond5.jt1 = select i1 %or.cond.jt1, i1 %i.bk, i1 false
  br i1 %or.cond5.jt1, label %bb.k, label %bb.o

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3: ; preds = %bb.f
  %i.bl = load i8, ptr %i.p, align 1              ; 3 uses
  %i.bm = trunc i8 %i.bl to i1
  %.not.jt3 = xor i1 %i.bm, true
  %i.bn = load i8, ptr %i.q, align 1, !range !6
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.jt3 = select i1 %.not.jt3, i1 %i.bo, i1 false
  %i.bp = load i8, ptr %i.o, align 1, !range !6
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %or.cond5.jt3 = select i1 %or.cond.jt3, i1 %i.bq, i1 false
  br i1 %or.cond5.jt3, label %.thread65, label %bb.p

bb.h:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4
  %i.br = or disjoint i8 %i.an, 1                 ; 2 uses
  store i8 %i.br, ptr %i.p, align 1
  br label %bb.l

bb.i:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0
  %i.bs = or disjoint i8 %i.at, 1                 ; 2 uses
  store i8 %i.bs, ptr %i.p, align 1
  br label %bb.m

bb.j:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2
  %i.bt = or disjoint i8 %i.az, 1                 ; 2 uses
  store i8 %i.bt, ptr %i.p, align 1
  br label %bb.n

bb.k:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1
  %i.bu = or disjoint i8 %i.bf, 1                 ; 2 uses
  store i8 %i.bu, ptr %i.p, align 1
  br label %bb.o

bb.l:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4, %bb.h
  %i.bv = phi i8 [ %i.an, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4 ], [ %i.br, %bb.h ] ; 2 uses
  %i.bw = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %7, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0, %bb.i
  %i.by = phi i8 [ %i.at, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0 ], [ %i.bs, %bb.i ] ; 2 uses
  %i.bz = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %11, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.n:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2, %bb.j
  %i.cb = phi i8 [ %i.az, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2 ], [ %i.bt, %bb.j ] ; 2 uses
  %i.cc = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %15, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1, %bb.k
  %i.ce = phi i8 [ %i.bf, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1 ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cf = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %19, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.p:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3
  %i.ch = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %23, label %bb.r, !prof !5

.thread65:                                        ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3
  %i.cj = or disjoint i8 %i.bl, 1                 ; 2 uses
  store i8 %i.cj, ptr %i.p, align 1
  %i.ck = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %23, label %.thread64, !prof !5

7:                                                ; preds = %bb.l
  %8 = shl nuw nsw i8 %i.ap, 3
  %9 = xor i8 %8, 8
  %.mask.jt4 = and i8 %i.bv, 2
  %10 = select i1 %i.aq, i8 2, i8 %.mask.jt4
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit

11:                                               ; preds = %bb.m
  %12 = shl nuw nsw i8 %i.av, 3
  %13 = xor i8 %12, 8
  %.mask.jt0 = and i8 %i.by, 2
  %14 = select i1 %i.aw, i8 2, i8 %.mask.jt0
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit

15:                                               ; preds = %bb.n
  %16 = shl nuw nsw i8 %i.bb, 3
  %17 = xor i8 %16, 8
  %.mask.jt2 = and i8 %i.cb, 2
  %18 = select i1 %i.bc, i8 2, i8 %.mask.jt2
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit

19:                                               ; preds = %bb.o
  %20 = shl nuw nsw i8 %i.bh, 3
  %21 = xor i8 %20, 8
  %.mask.jt1 = and i8 %i.ce, 2
  %22 = select i1 %i.bi, i8 2, i8 %.mask.jt1
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit

23:                                               ; preds = %.thread65, %bb.p
  %24 = phi i8 [ %i.cj, %.thread65 ], [ %i.bl, %bb.p ] ; 2 uses
  %.mask.jt3 = and i8 %24, 2
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit: ; preds = %23, %11, %19, %15, %7
  %.sink71 = phi i8 [ %24, %23 ], [ %i.by, %11 ], [ %i.ce, %19 ], [ %i.cb, %15 ], [ %i.bv, %7 ]
  %.sink = phi i8 [ 0, %23 ], [ %13, %11 ], [ %21, %19 ], [ %17, %15 ], [ %9, %7 ]
  %.mask.jt3.sink = phi i8 [ %.mask.jt3, %23 ], [ %14, %11 ], [ %22, %19 ], [ %18, %15 ], [ %10, %7 ]
  %.0.i39 = phi i8 [ 1, %23 ], [ 9, %11 ], [ 11, %19 ], [ 10, %15 ], [ 12, %7 ]
  %.masked.jt3 = and i8 %.sink71, -3
  %i.cm = or i8 %.masked.jt3, %.sink
  %i.cn = or disjoint i8 %i.cm, %.mask.jt3.sink
  store i8 %i.cn, ptr %i.p, align 1
  %i.co = load ptr, ptr %0, align 8
  %i.cp = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.co) #17
  %i.cq = load i8, ptr %i.q, align 1, !range !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cr = load ptr, ptr %i.k, align 8
  %i.cs = call noundef ptr @_ZN2v88internal10ClassScope18DeclarePrivateNameEPKNS0_12AstRawStringENS0_12VariableModeENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(145) %i.cp, ptr noundef %i.cr, i8 noundef zeroext %.0.i39, i8 noundef zeroext %i.cq, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.ct = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJPKNS0_12AstRawStringEEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 4294967295, i32 noundef 218, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
  br label %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !llvm.loop !19

bb.r:                                             ; preds = %bb.p
  br i1 %i.bq, label %.thread64, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

.thread64:                                        ; preds = %.thread65, %bb.r
  %i.cv = load i32, ptr %i.s, align 4
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.s, align 4
  %i.cx = load ptr, ptr %0, align 8
  %i.cy = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.cx) #17
  %.pre = load i8, ptr %i.o, align 1, !range !6
  %i.cz = trunc nuw i8 %.pre to i1
  br i1 %i.cz, label %bb.s, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

bb.s:                                             ; preds = %.thread64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.da = load ptr, ptr %i.t, align 8
  %i.db = load i32, ptr %i.s, align 4
  %i.dc = call noundef ptr @_ZN2v88internal10ParserBaseINS0_9PreParserEE22ClassFieldVariableNameEPNS0_15AstValueFactoryEi(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %i.da, i32 noundef %i.db)
  %i.dd = call noundef ptr @_ZN2v88internal9PreParser19DeclareVariableNameEPKNS0_12AstRawStringENS0_12VariableModeEPNS0_5ScopeEPbiNS0_12VariableKindE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %i.dc, i8 noundef zeroext 1, ptr noundef %i.cy, ptr noundef nonnull %i.a, i32 noundef -1, i8 noundef zeroext 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit: ; preds = %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.s, %.thread64, %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.aa, %.backedge ]
  %i.de = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %.lcssa) #17 ; 2 uses
  %.not.i = icmp eq i8 %i.de, %5
  br i1 %.not.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, i8 noundef zeroext %i.de)
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit: ; preds = %._crit_edge, %bb.t
  %i.df = load ptr, ptr %0, align 8
  %i.dg = load ptr, ptr %i.e, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 108
  store i32 %i.dk, ptr %i.dl, align 4
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit.thread, %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit
  ret void
}

declare noundef ptr @_ZN2v88internal10ClassScope28ResolvePrivateNamesPartiallyEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJPKNS0_12AstRawStringEEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %3, align 8
  tail call void @_ZN2v88internal30PendingCompilationErrorHandler15ReportMessageAtEiiNS0_15MessageTemplateEPKNS0_12AstRawStringE(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.2.0.extract.trunc, i32 noundef %2, ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.o, align 8
  store i8 1, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %.not10.i = icmp eq i8 %i.q, 118
  br i1 %.not10.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 115, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %.not10.i.1 = icmp eq i8 %i.s, 118
  br i1 %.not10.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 115, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %.not10.i.2 = icmp eq i8 %i.u, 118
  br i1 %.not10.i.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 115, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %.not10.i.3 = icmp eq i8 %i.w, 118
  br i1 %.not10.i.3, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 115, ptr %i.v, align 8
  br label %_ZN2v88internal7Scanner16set_parser_errorEv.exit

_ZN2v88internal7Scanner16set_parser_errorEv.exit: ; preds = %bb.h, %bb.i, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal10ClassScope20DeclareBrandVariableEPNS0_15AstValueFactoryENS0_12IsStaticFlagEi(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Scope25DeclareHomeObjectVariableEPNS0_15AstValueFactoryE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Scope31DeclareStaticHomeObjectVariableEPNS0_15AstValueFactoryE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal10ClassScopeC1EPNS0_4ZoneEPNS0_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE29ParseLeftHandSideContinuationENS0_19PreParserExpressionE(ptr noundef nonnull align 8 dereferenceable(270) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::ArrowHeadParsingScope", align 8 ; 24 uses
  %3 = alloca %"class.v8::internal::Scope::Snapshot", align 8 ; 8 uses
  %4 = alloca %"class.v8::internal::PreParserExpressionList", align 4 ; 5 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.v8::internal::PreParserExpressionList", align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = icmp eq i8 %i.h, 5
  %i.j = and i32 %1, 7
  %i.k = icmp eq i32 %i.j, 3
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8
  %i.p = icmp eq i8 %i.o, 101
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load i8, ptr %i.q, align 8, !range !6, !noundef !7
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4
  %i.t = sub nsw i32 %.sroa.4.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.v = load i8, ptr %i.u, align 4, !range !6, !noundef !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.x = load i32, ptr %i.w, align 8
  %i.y = xor i8 %i.v, 1
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = ashr i32 %i.x, %i.z
  %.not102 = icmp eq i32 %i.aa, %i.t
  br i1 %.not102, label %bb.e, label %.critedge, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add nsw i32 %i.ac, 1
  store ptr %0, ptr %2, align 8
end_hunk_0
