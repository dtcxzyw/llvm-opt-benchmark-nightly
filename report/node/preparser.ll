inline.NumInlined: 5487
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN2v88internal9PreParser19DeclareVariableNameEPKNS0_12AstRawStringENS0_12VariableModeEPNS0_5ScopeEPbiNS0_12VariableKindE:bb.a
  br i1 %i.l, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.p, ptr %i.q, align 8
  store i8 1, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %.not10.i = icmp eq i8 %i.s, 118
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 115, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %.not10.i.1 = icmp eq i8 %i.u, 118
  br i1 %.not10.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 115, ptr %i.t, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 296 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %.not10.i.2 = icmp eq i8 %i.w, 118
  br i1 %.not10.i.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 115, ptr %i.v, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %.not10.i.3 = icmp eq i8 %i.y, 118
  br i1 %.not10.i.3, label %_ZN2v88internal7Scanner16set_parser_errorEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 115, ptr %i.x, align 8
  br label %_ZN2v88internal7Scanner16set_parser_errorEv.exit

_ZN2v88internal7Scanner16set_parser_errorEv.exit: ; preds = %bb.i, %bb.j, %bb.b
  %i.z = icmp ult i8 %2, 4
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal7Scanner16set_parser_errorEv.exit
  %i.aa = tail call noundef ptr @_ZN2v88internal5Scope19GetDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124) %3) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal7Scanner16set_parser_errorEv.exit
  %.0 = phi ptr [ %3, %_ZN2v88internal7Scanner16set_parser_errorEv.exit ], [ %i.aa, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ac = tail call noundef ptr @_ZN2v88internal11VariableMap6LookupEPKNS0_12AstRawStringE(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef %1) #17
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.ad, %3
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = icmp ult i64 %i.ak, 32
  br i1 %i.al, label %bb.o, label %_ZN2v88internal14AstNodeFactory28NewNestedVariableDeclarationEPNS0_5ScopeEi.exit, !prof !5

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 noundef 32) #17
  %.pre.i.i.i = load i64, ptr %i.ai, align 8
  br label %_ZN2v88internal14AstNodeFactory28NewNestedVariableDeclarationEPNS0_5ScopeEi.exit

_ZN2v88internal14AstNodeFactory28NewNestedVariableDeclarationEPNS0_5ScopeEi.exit: ; preds = %bb.n, %bb.o
  %i.am = phi i64 [ %.pre.i.i.i, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 6 uses
  %i.ao = add i64 %i.am, 32
  store i64 %i.ao, ptr %i.ai, align 8
  store i32 %5, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store ptr null, ptr %i.aq, align 8
  store i32 64, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.a, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  store ptr %i.an, ptr %i.av, align 8
  store ptr %i.aq, ptr %i.au, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_ZN2v88internal14AstNodeFactory28NewNestedVariableDeclarationEPNS0_5ScopeEi.exit, %bb.l
  %.019 = phi ptr [ %i.ac, %bb.l ], [ %i.a, %_ZN2v88internal14AstNodeFactory28NewNestedVariableDeclarationEPNS0_5ScopeEi.exit ], [ %i.a, %bb.m ]
  ret ptr %.019
}

declare void @_ZN2v88internal16DeclarationScope26DeclareSloppyBlockFunctionEPNS0_28SloppyBlockFunctionStatementE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Scope19DeclareVariableNameEPKNS0_12AstRawStringENS0_12VariableModeEPbNS0_12VariableKindE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal5Scope19GetDeclarationScopeEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE17ParseClassLiteralEPNS0_5ScopeENS0_19PreParserIdentifierENS0_7Scanner8LocationEbi(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef %1, ptr %2, i8 %3, i64 %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::ParserBase<v8::internal::PreParser>::FunctionState", align 8 ; 3 uses
  %8 = alloca %"struct.v8::internal::ParserBase<v8::internal::PreParser>::ClassInfo", align 8 ; 15 uses
  %9 = alloca %"class.v8::internal::ExpressionParsingScope", align 8 ; 19 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.c, 2147483648
  br i1 %i.d, label %_ZNK2v88internal12AstRawString7IsEmptyEv.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #18
  unreachable

_ZNK2v88internal12AstRawString7IsEmptyEv.exit:    ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0                      ; 3 uses
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal12AstRawString7IsEmptyEv.exit
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %0, i64 %4, i32 noundef 407)
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.f = and i8 %3, -2
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %0, i64 %4, i32 noundef 384)
  br label %bb.al

bb.g:                                             ; preds = %bb.e, %_ZNK2v88internal12AstRawString7IsEmptyEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ult i64 %i.n, 152
  br i1 %i.o, label %bb.h, label %_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 noundef 152) #17
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  br label %_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit

_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit: ; preds = %bb.g, %bb.h
  %i.p = phi i64 [ %.pre.i.i.i, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 12 uses
  %i.r = add i64 %i.p, 152
  store i64 %i.r, ptr %i.l, align 8
  tail call void @_ZN2v88internal10ClassScopeC1EPNS0_4ZoneEPNS0_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(145) %i.q, ptr noundef nonnull %i.i, ptr noundef %1, i1 noundef zeroext %i.e) #17
  %i.s = load ptr, ptr %0, align 8
  store ptr %i.q, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 121 ; 4 uses
  %i.u = load i16, ptr %i.t, align 1
  %i.v = or i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  store ptr null, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store i32 0, ptr %8, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.z, i8 0, i64 36, i1 false)
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i8 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 65 ; 4 uses
  %10 = load i8, ptr %i.ae, align 1
  %11 = and i8 %10, -32
  %i.af = select i1 %i.e, i8 16, i8 0
  %12 = or disjoint i8 %11, %i.af
  store i8 %12, ptr %i.ae, align 1
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 %6, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = icmp eq i8 %i.an, 112
  br i1 %i.ao, label %bb.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit

bb.i:                                             ; preds = %_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit
  %i.ap = tail call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.aj) #17 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = or i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %0, ptr %9, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 6 uses
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 17
  %.not.i.i = icmp eq ptr %i.av, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  %i.az = load i8, ptr %i.ay, align 1, !range !6, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  %i.bb = load i8, ptr %i.ba, align 2, !range !6, !noundef !7
  br label %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i

_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i: ; preds = %bb.i, %bb.j
  %.sink = phi i8 [ %i.az, %bb.j ], [ 0, %bb.i ]
  %i.bc = phi i8 [ %i.bb, %bb.j ], [ 0, %bb.i ]
  store i8 %.sink, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 18
  store i8 %i.bc, ptr %i.bd, align 2
  store ptr %9, ptr %i.au, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.bf, align 8
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4                 ; 2 uses
  store i64 %i.bn, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bn, ptr %i.bo, align 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  br i1 %.not.i.i, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = icmp ult i8 %i.bq, 3
  br i1 %i.br, label %bb.l, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.bt = load i8, ptr %i.bs, align 8, !range !6, !noundef !7
  br label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit

_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit: ; preds = %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i, %bb.k, %bb.l
  %i.bu = phi i8 [ %i.bt, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN2v88internal15ExpressionScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS5_9ScopeTypeE.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i8 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store i32 0, ptr %i.bw, align 8
  store i64 4294967295, ptr %scevgep.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 0, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 4294967295, ptr %i.by, align 8
  %i.bz = call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE22ParsePrimaryExpressionEv(ptr noundef nonnull align 8 dereferenceable(270) %0) ; 2 uses
  %i.ca = load ptr, ptr %i.ai, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load i8, ptr %i.cd, align 8             ; 2 uses
  %i.cf = icmp ult i8 %i.ce, 4
  br i1 %i.cf, label %bb.m, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit

bb.m:                                             ; preds = %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit
  %i.cg = call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE35DoParseMemberExpressionContinuationENS0_19PreParserExpressionE(ptr noundef nonnull align 8 dereferenceable(270) %0, i32 %i.bz)
  %.pre = load ptr, ptr %i.ai, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert65 = getelementptr inbounds nuw i8, ptr %.pre64, i64 56
  %.pre66 = load i8, ptr %.phi.trans.insert65, align 8
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit: ; preds = %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit, %bb.m
  %i.ch = phi i8 [ %.pre66, %bb.m ], [ %i.ce, %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit ]
  %.sroa.02.0.i42 = phi i32 [ %i.cg, %bb.m ], [ %i.bz, %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEEC2EPS3_NS0_15ExpressionScopeIS4_E9ScopeTypeE.exit ] ; 2 uses
  %i.ci = icmp ult i8 %i.ch, 6
  br i1 %i.ci, label %bb.n, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE27ParseLeftHandSideExpressionEv.exit

bb.n:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit
  %i.cj = call i32 @_ZN2v88internal10ParserBaseINS0_9PreParserEE29ParseLeftHandSideContinuationENS0_19PreParserExpressionE(ptr noundef nonnull align 8 dereferenceable(270) %0, i32 %.sroa.02.0.i42)
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE27ParseLeftHandSideExpressionEv.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE27ParseLeftHandSideExpressionEv.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit, %bb.n
  %.sroa.02.0.i = phi i32 [ %i.cj, %bb.n ], [ %.sroa.02.0.i42, %_ZN2v88internal10ParserBaseINS0_9PreParserEE33ParseMemberExpressionContinuationENS0_19PreParserExpressionE.exit ]
  store i32 %.sroa.02.0.i, ptr %8, align 8
  %i.ck = load i32, ptr %scevgep.i, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 60
  %i.cm = load i32, ptr %i.cl, align 4
  %.not.i.i.i = icmp ugt i32 %i.ck, %i.cm
  br i1 %.not.i.i.i, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE27ParseLeftHandSideExpressionEv.exit
  %i.cn = load i32, ptr %i.bw, align 8
  %i.co = load ptr, ptr %9, align 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %scevgep.i, align 8
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE15ReportMessageAtIJEEEvNS0_7Scanner8LocationENS0_15MessageTemplateEDpRKT_(ptr noundef nonnull align 8 dereferenceable(270) %i.co, i64 %.sroa.0.0.copyload.i.i.i.i, i32 noundef %i.cn)
  br label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv.exit

_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE27ParseLeftHandSideExpressionEv.exit, %bb.o
  %i.cp = load ptr, ptr %i.be, align 8, !nonnull !7, !align !9 ; 3 uses
  %i.cq = load i64, ptr %i.bg, align 8            ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 4                 ; 3 uses
  %i.cy = icmp ugt i64 %i.cq, %i.cx
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv.exit
  %i.cz = sub nuw i64 %i.cq, %i.cx
  call void @_ZNSt6vectorISt4pairIPN2v88internal13VariableProxyEiESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 noundef %i.cz)
  br label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit

bb.q:                                             ; preds = %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEE18ValidateExpressionEv.exit
  %i.da = icmp ult i64 %i.cq, %i.cx
  br i1 %i.da, label %bb.r, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cq ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, %i.db
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.db, ptr %i.cr, align 8
  br label %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit

_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.dc = load ptr, ptr %i.at, align 8
  %i.dd = load ptr, ptr %9, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  store ptr %i.dc, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.df = load i64, ptr %i.aq, align 8
  %i.dg = and i64 %i.df, -2
  store i64 %i.dg, ptr %i.aq, align 8
  %.pre67 = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit: ; preds = %_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit, %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit
  %i.dh = phi ptr [ %i.aj, %_ZNK2v88internal10ParserBaseINS0_9PreParserEE13NewClassScopeEPNS0_5ScopeEb.exit ], [ %.pre67, %_ZN2v88internal22ExpressionParsingScopeINS0_11ParserTypesINS0_9PreParserEEEED2Ev.exit ]
  %i.di = call noundef zeroext i8 @_ZN2v88internal7Scanner4NextEv(ptr noundef nonnull align 8 dereferenceable(560) %i.dh) #17 ; 2 uses
  %.not.i43 = icmp eq i8 %i.di, 8
  br i1 %.not.i43, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit, label %bb.t, !prof !8

bb.t:                                             ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ReportUnexpectedTokenENS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, i8 noundef zeroext %i.di)
  br label %_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit

_ZN2v88internal10ParserBaseINS0_9PreParserEE6ExpectENS0_5Token5ValueE.exit: ; preds = %_ZN2v88internal10ParserBaseINS0_9PreParserEE5CheckENS0_5Token5ValueE.exit, %bb.t
  call void @_ZN2v88internal10ParserBaseINS0_9PreParserEE21ParseClassLiteralBodyERNS3_9ClassInfoENS0_19PreParserIdentifierEiNS0_5Token5ValueE(ptr noundef nonnull align 8 dereferenceable(270) %0, ptr noundef nonnull align 8 dereferenceable(66) %8, ptr nonnull %2, i8 %3, i32 noundef %6, i8 noundef zeroext 13)
  %i.dj = load ptr, ptr %0, align 8               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 108
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 536
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dp, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 2 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 2 uses
  %.not10.i = icmp ugt i32 %.sroa.0.0.extract.trunc.i, %.sroa.6.0.extract.trunc.i
  %.not.i44 = icmp sgt i32 %i.dl, %.sroa.0.0.extract.trunc.i
  %or.cond.i = or i1 %.not.i44, %.not10.i
  %.not4.i = icmp slt i32 %i.dn, %.sroa.6.0.extract.trunc.i
  %or.cond7.i = or i1 %.not4.i, %or.cond.i
  br i1 %or.cond7.i, label %_ZN2v88internal10ParserBaseINS0_9PreParserEE23CheckStrictOctalLiteralEii.exit, label %bb.u

end_hunk_0
