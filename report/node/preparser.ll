inline.NumInlined: 5487
inline.NumDeleted: 881
begin_hunk_0_@_ZN2v88internal10ParserBaseINS0_9PreParserEE21ParseClassLiteralBodyERNS3_9ClassInfoENS0_19PreParserIdentifierEiNS0_5Token5ValueE:bb.a
  br i1 %.not3855, label %._crit_edge, label %.lr.ph

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
  %i.aq = trunc nuw i8 %i.ap to i1
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
  %i.aw = trunc nuw i8 %i.av to i1
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
  %i.bc = trunc nuw i8 %i.bb to i1
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
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.jt1 = select i1 %.not.jt1, i1 %i.bi, i1 false
  %i.bj = load i8, ptr %i.o, align 1, !range !6
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond5.jt1 = select i1 %or.cond.jt1, i1 %i.bk, i1 false
  br i1 %or.cond5.jt1, label %bb.k, label %bb.o

_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3: ; preds = %bb.f
  %i.bl = load i8, ptr %i.p, align 1              ; 3 uses
  %i.bm = trunc i8 %i.bl to i1
  %.not.jt3 = xor i1 %i.bm, true
  %i.bn = load i8, ptr %i.q, align 1, !range !6   ; 3 uses
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.jt3 = select i1 %.not.jt3, i1 %i.bo, i1 false
  %i.bp = load i8, ptr %i.o, align 1, !range !6
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %or.cond5.jt3 = select i1 %or.cond.jt3, i1 %i.bq, i1 false
  br i1 %or.cond5.jt3, label %.thread68, label %bb.p

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
  %i.bv = phi i8 [ %i.an, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt4 ], [ %i.br, %bb.h ]
  %i.bw = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.m:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0, %bb.i
  %i.by = phi i8 [ %i.at, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt0 ], [ %i.bs, %bb.i ]
  %i.bz = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.n:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2, %bb.j
  %i.cb = phi i8 [ %i.az, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt2 ], [ %i.bt, %bb.j ]
  %i.cc = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1, %bb.k
  %i.ce = phi i8 [ %i.bf, %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt1 ], [ %i.bu, %bb.k ]
  %i.cf = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !prof !5

bb.p:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3
  %i.ch = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %bb.r, !prof !5

.thread68:                                        ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE20ClassPropertyKindForENS0_17ParsePropertyKindE.exit.jt3
  %i.cj = or disjoint i8 %i.bl, 1                 ; 2 uses
  store i8 %i.cj, ptr %i.p, align 1
  %i.ck = load i8, ptr %i.r, align 2, !range !6, !noundef !7
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, label %.thread67, !prof !5

_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit: ; preds = %bb.p, %.thread68, %bb.o, %bb.n, %bb.m, %bb.l
  %.sink80 = phi i8 [ %i.bh, %bb.o ], [ %i.ap, %bb.l ], [ %i.bb, %bb.n ], [ %i.av, %bb.m ], [ %i.bn, %.thread68 ], [ %i.bn, %bb.p ] ; 2 uses
  %.sink = phi i1 [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.m ], [ true, %.thread68 ], [ true, %bb.p ]
  %.sink74 = phi i8 [ %i.ce, %bb.o ], [ %i.bv, %bb.l ], [ %i.cb, %bb.n ], [ %i.by, %bb.m ], [ %i.cj, %.thread68 ], [ %i.bl, %bb.p ]
  %.0.i40 = phi i8 [ 11, %bb.o ], [ 12, %bb.l ], [ 10, %bb.n ], [ 9, %bb.m ], [ 1, %.thread68 ], [ 1, %bb.p ]
  %7 = xor i8 %.sink80, -1
  %i.cm = shl nsw i8 %7, 3
  %8 = and i8 %i.cm, 8
  %9 = shl nuw nsw i8 %.sink80, 1
  %10 = or disjoint i8 %8, %9
  %i.cn = select i1 %.sink, i8 0, i8 %10
  %i.co = or i8 %i.cn, %.sink74
  store i8 %i.co, ptr %i.p, align 1
  %i.cp = load ptr, ptr %0, align 8
  %i.cq = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.cp) #17
  %i.cr = load i8, ptr %i.q, align 1, !range !6, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.cs = load ptr, ptr %i.k, align 8
  %i.ct = call noundef ptr @_ZN2v88internal10ClassScope18DeclarePrivateNameEPKNS0_12AstRawStringENS0_12VariableModeENS0_12IsStaticFlagEPb(ptr noundef nonnull align 8 dereferenceable(145) %i.cq, ptr noundef %i.cs, i8 noundef zeroext %.0.i40, i8 noundef zeroext %i.cr, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.cu = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJPKNS0_12AstRawStringEEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(328) %0, i64 4294967295, i32 noundef 218, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
  br label %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE15GetVariableModeENS0_20ClassLiteralProperty4KindE.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit, !llvm.loop !19

bb.r:                                             ; preds = %bb.p
  br i1 %i.bq, label %.thread67, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

.thread67:                                        ; preds = %.thread68, %bb.r
  %i.cw = load i32, ptr %i.s, align 4
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.s, align 4
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = call noundef ptr @_ZN2v88internal5Scope12AsClassScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %i.cy) #17
  %.pre = load i8, ptr %i.o, align 1, !range !6
  %i.da = trunc nuw i8 %.pre to i1
  br i1 %i.da, label %bb.s, label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

bb.s:                                             ; preds = %.thread67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.db = load ptr, ptr %i.t, align 8
  %i.dc = load i32, ptr %i.s, align 4
  %i.dd = call noundef ptr @_ZN2v88internal10ParserBaseINS0_9PreParserEE22ClassFieldVariableNameEPNS0_15AstValueFactoryEi(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %i.db, i32 noundef %i.dc)
  %i.de = call noundef ptr @_ZN2v88internal9PreParser19DeclareVariableNameEPKNS0_12AstRawStringENS0_12VariableModeEPNS0_5ScopeEPbiNS0_12VariableKindE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %i.dd, i8 noundef zeroext 1, ptr noundef %i.cz, ptr noundef nonnull %i.a, i32 noundef -1, i8 noundef zeroext 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit

_ZN2v88internal9PreParser23DeclarePublicClassFieldEPNS0_10ClassScopeERKNS0_19PreParserExpressionEbbPNS0_10ParserBaseIS1_E9ClassInfoE.exit: ; preds = %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.s, %.thread67, %_ZN2v88internal9PreParser25DeclarePrivateClassMemberEPNS0_10ClassScopeERKNS0_19PreParserIdentifierERKNS0_19PreParserExpressionENS0_20ClassLiteralProperty4KindEbPNS0_10ParserBaseIS1_E9ClassInfoE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.aa, %.backedge ]
  %i.df = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %.lcssa) #17 ; 2 uses
  %.not.i = icmp eq i8 %i.df, %5
  br i1 %.not.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %._crit_edge
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, i8 noundef zeroext %i.df)
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit: ; preds = %._crit_edge, %bb.t
  %i.dg = load ptr, ptr %0, align 8
  %i.dh = load ptr, ptr %i.e, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 108
  store i32 %i.dl, ptr %i.dm, align 4
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
end_hunk_0
