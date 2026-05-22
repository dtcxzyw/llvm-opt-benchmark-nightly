inline.NumInlined: 838
inline.NumDeleted: 342
begin_hunk_0_@_ZN5lexer8CJSLexer22throwIfImportStatementEv:bb.a

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.be = add i32 %.02534.i.i, 1
  br label %bb.r, !llvm.loop !15

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bf = add i32 %.02534.i.i, 1                  ; 2 uses
  %i.bg = icmp ult ptr %i.bc, %.1.i.i
  br i1 %i.bg, label %bb.p, label %bb.r, !llvm.loop !15

bb.p:                                             ; preds = %bb.o
  %i.bh = load i8, ptr %i.bc, align 1
  %i.bi = icmp eq i8 %i.bh, 10
  %i.bj = getelementptr inbounds nuw i8, ptr %.02136.i.i, i64 2
  %spec.select33.i.i = select i1 %i.bi, ptr %i.bj, ptr %i.bc
  br label %bb.r, !llvm.loop !15

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bk = add i32 %.02335.i.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.126.i.i = phi i32 [ %i.be, %bb.n ], [ %.02534.i.i, %bb.q ], [ %i.bf, %bb.o ], [ %i.bf, %bb.p ] ; 2 uses
  %.124.i.i = phi i32 [ 1, %bb.n ], [ %i.bk, %bb.q ], [ 1, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %.2.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.bc, %bb.q ], [ %i.bc, %bb.o ], [ %spec.select33.i.i, %bb.p ] ; 2 uses
  %i.bl = icmp ult ptr %.2.i.i, %.1.i.i
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.r
  %i.bm = zext i32 %.124.i.i to i64
  %i.bn = shl nuw i64 %i.bm, 32
  %i.bo = zext i32 %.126.i.i to i64
  %i.bp = or disjoint i64 %i.bn, %i.bo
  br label %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i

_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i:   ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %.sroa.0.0.insert.insert.i.i = phi i64 [ 4294967297, %bb.m ], [ %i.bp, %._crit_edge.loopexit.i.i ]
  %i.bq = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer19last_error_locationE) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 4, !range !13, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZNSt8optionalIN5lexer14error_locationEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i
  store i8 1, ptr %i.br, align 4
  br label %_ZNSt8optionalIN5lexer14error_locationEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i

_ZNSt8optionalIN5lexer14error_locationEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i: ; preds = %bb.s, %_ZN5lexerL17makeErrorLocationEPKcS1_S1_.exit.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bq, align 4
  br label %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit

_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit: ; preds = %._crit_edge.i, %_ZNSt8optionalIN5lexer14error_locationEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i
  %i.bu = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ay, %_ZNSt8optionalIN5lexer14error_locationEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.a, align 8
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e, %_ZN5lexer8CJSLexer11syntaxErrorENS_11lexer_errorEPKc.exit, %bb.i, %bb.c, %bb.d, %bb.h, %bb.g, %bb.k, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5lexer8CJSLexer15tryParseRequireENS_11RequireTypeE(ptr noundef nonnull align 8 dereferenceable(32848) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 6
  br i1 %i.i, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.j = load i8, ptr %i.c, align 1
  %.not.i = icmp eq i8 %i.j, 101
  br i1 %.not.i, label %.lr.ph.i.1, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %.not.i.1 = icmp eq i8 %i.l, 113
  br i1 %.not.i.1, label %.lr.ph.i.2, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %.not.i.2 = icmp eq i8 %i.n, 117
  br i1 %.not.i.2, label %.lr.ph.i.3, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %.not.i.3 = icmp eq i8 %i.p, 105
  br i1 %.not.i.3, label %.lr.ph.i.4, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.4 = icmp eq i8 %i.r, 114
  br i1 %.not.i.4, label %.lr.ph.i.5, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.t = load i8, ptr %i.s, align 1
  %.not.i.5 = icmp eq i8 %i.t, 101
  br i1 %.not.i.5, label %bb.b, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %.lr.ph.i.5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store ptr %i.u, ptr %i.a, align 8
  %i.v = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %i.w = icmp eq i8 %i.v, 40
  br i1 %i.w, label %bb.c, label %.critedge22

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.y, ptr %i.a, align 8
  %i.z = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8             ; 4 uses
  switch i8 %i.z, label %.critedge22 [
    i8 39, label %bb.d
    i8 34, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  tail call void @_ZN5lexer8CJSLexer13stringLiteralEc(ptr noundef nonnull align 8 dereferenceable(32848) %0, i8 noundef signext %i.z)
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %.not = icmp eq i8 %i.ad, 41
  br i1 %.not, label %bb.e, label %.critedge22

bb.e:                                             ; preds = %bb.d
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8
  tail call void @_ZN5lexer8CJSLexer11addReexportESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(32848) %0, i64 %i.ag, ptr %i.aa, i32 noundef %i.ai)
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32816
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp ult ptr %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.ac to i64
  %i.ap = ptrtoint ptr %i.aa to i64
  %i.aq = sub i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

.critedge22:                                      ; preds = %bb.c, %bb.d, %bb.b
  store ptr %i.b, ptr %i.a, align 8
  br label %_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN5lexer8CJSLexer9matchesAtEPKcS2_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %bb.f, %bb.h, %bb.g, %bb.a, %.critedge22
  %.4 = phi i1 [ true, %bb.f ], [ false, %.critedge22 ], [ false, %bb.a ], [ true, %bb.g ], [ true, %bb.h ], [ false, %.lr.ph.i.5 ], [ false, %.lr.ph.i.4 ], [ false, %.lr.ph.i.3 ], [ false, %.lr.ph.i.2 ], [ false, %.lr.ph.i.1 ], [ false, %.lr.ph.i.preheader ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5lexer8CJSLexer32tryBacktrackAddStarExportBindingEPKc(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.031 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.b ]  ; 4 uses
  %i.d = load i8, ptr %.031, align 1              ; 2 uses
  %i.e = icmp eq i8 %i.d, 32
  %i.f = icmp ugt ptr %.031, %i.b
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  %i.g = getelementptr inbounds i8, ptr %.031, i64 -1
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %bb.b
  %i.h = icmp eq i8 %i.d, 61
  br i1 %i.h, label %.preheader, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.preheader:                                       ; preds = %.critedge, %.preheader
  %.031.pn = phi ptr [ %.1, %.preheader ], [ %.031, %.critedge ]
  %.1 = getelementptr inbounds i8, ptr %.031.pn, i64 -1 ; 6 uses
  %i.i = load i8, ptr %.1, align 1
  %i.j = icmp eq i8 %i.i, 32
  %i.k = icmp ugt ptr %.1, %i.b                   ; 2 uses
  %or.cond37 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond37, label %.preheader, label %.critedge2.preheader, !llvm.loop !17

.critedge2.preheader:                             ; preds = %.preheader
  br i1 %i.k, label %.lr.ph.preheader, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.preheader:                                 ; preds = %.critedge2.preheader
  %i.l = sub i64 %i.c, %i.a
  %scevgep = getelementptr i8, ptr %1, i64 %i.l
  %i.m = load i8, ptr %.1, align 1
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge2, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph:                                           ; preds = %.critedge2
  %i.r = load i8, ptr %i.x, align 1
  %i.s = zext i8 %i.r to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.critedge2, label %.thread.loopexit

.critedge2:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi i64 [ %i.s, %.lr.ph ], [ %i.n, %.lr.ph.preheader ]
  %.26988 = phi ptr [ %i.x, %.lr.ph ], [ %.1, %.lr.ph.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.26988, i64 -1 ; 4 uses
  %i.y = icmp ugt ptr %i.x, %i.b
  br i1 %i.y, label %.lr.ph, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %.lr.ph, %.critedge2
  %.2.lcssa.ph = phi ptr [ %i.x, %.lr.ph ], [ %scevgep, %.critedge2 ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.c:                                             ; preds = %.thread.loopexit
  %i.ac = load i8, ptr %.2.lcssa.ph, align 1
  %i.ad = icmp eq i8 %i.ac, 32
  br i1 %i.ad, label %bb.d, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32824
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.2.lcssa.ph, i64 1
  %i.ak = ptrtoint ptr %.1 to i64
  %i.al = ptrtoint ptr %.2.lcssa.ph to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.am, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ao = load ptr, ptr %0, align 8               ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.5 = phi ptr [ %.2.lcssa.ph, %bb.e ], [ %i.as, %bb.f ] ; 9 uses
  %i.ap = load i8, ptr %.5, align 1               ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 32
  %i.ar = icmp ugt ptr %.5, %i.ao
  %or.cond39 = select i1 %i.aq, i1 %i.ar, i1 false
  %i.as = getelementptr inbounds i8, ptr %.5, i64 -1 ; 2 uses
  br i1 %or.cond39, label %bb.f, label %.critedge4, !llvm.loop !18

.critedge4:                                       ; preds = %bb.f
  switch i8 %i.ap, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread [
    i8 114, label %bb.g
    i8 116, label %bb.j
  ]

bb.g:                                             ; preds = %.critedge4
  %i.at = getelementptr inbounds i8, ptr %.5, i64 -3
  %i.au = getelementptr inbounds i8, ptr %.5, i64 -2 ; 4 uses
  %i.av = icmp ult ptr %i.au, %i.ao
  br i1 %i.av, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, 2
  br i1 %i.bb, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.bc = load i8, ptr %i.au, align 1
  %.not.i.i = icmp eq i8 %i.bc, 118
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader
  %i.bd = getelementptr inbounds i8, ptr %.5, i64 -1
  %i.be = load i8, ptr %i.bd, align 1
  %.not.i.i.1 = icmp eq i8 %i.be, 97
  br i1 %.not.i.i.1, label %.loopexit.i, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

.loopexit.i:                                      ; preds = %.lr.ph.i.i.1
  %i.bf = icmp eq ptr %i.au, %i.ao
  br i1 %i.bf, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %bb.i

bb.i:                                             ; preds = %.loopexit.i
  %i.bg = load i8, ptr %i.at, align 1             ; 2 uses
  %i.bh = zext i8 %i.bg to i64                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN5lexerL12kBrOrWsTableE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !range !13, !noundef !14
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN5lexerL16kPunctuatorTableE, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !range !13, !noundef !14
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = icmp ne i8 %i.bg, 46
  %i.bp = and i1 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.j:                                             ; preds = %.critedge4
  %i.bq = getelementptr inbounds i8, ptr %.5, i64 -3
  %i.br = getelementptr inbounds i8, ptr %.5, i64 -2 ; 4 uses
  %i.bs = icmp ult ptr %i.br, %i.ao
  br i1 %i.bs, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread, label %.lr.ph.i.i42.preheader

.lr.ph.i.i42.preheader:                           ; preds = %bb.k
  %i.bz = load i8, ptr %i.br, align 1
  %.not.i.i44 = icmp eq i8 %i.bz, 108
  br i1 %.not.i.i44, label %.lr.ph.i.i42.1, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread

.lr.ph.i.i42.1:                                   ; preds = %.lr.ph.i.i42.preheader
  %i.ca = getelementptr inbounds i8, ptr %.5, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1
  %.not.i.i44.1 = icmp eq i8 %i.cb, 101
  br i1 %.not.i.i44.1, label %.loopexit.i47, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread

.loopexit.i47:                                    ; preds = %.lr.ph.i.i42.1
  %i.cc = icmp eq ptr %i.br, %i.ao
  br i1 %i.cc, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %bb.l

bb.l:                                             ; preds = %.loopexit.i47
  %i.cd = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.ce = zext i8 %i.cd to i64                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr @_ZN5lexerL12kBrOrWsTableE, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48: ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZN5lexerL16kPunctuatorTableE, i64 %i.ce
  %i.cj = load i8, ptr %i.ci, align 1, !range !13, !noundef !14
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = icmp ne i8 %i.cd, 46
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread: ; preds = %.lr.ph.i.i42.preheader, %.lr.ph.i.i42.1, %bb.k, %bb.j, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48
  %i.cn = tail call noundef zeroext i1 @_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32848) %0, ptr noundef nonnull %i.as, i64 4, ptr nonnull @.str.19)
  br i1 %i.cn, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59: ; preds = %.loopexit.i47, %bb.l, %.loopexit.i, %bb.i, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.co = load ptr, ptr %i.ae, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.cp, ptr %i.ae, align 8
  br label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %.lr.ph.preheader, %.lr.ph.i.i.preheader, %.lr.ph.i.i.1, %.critedge2.preheader, %bb.h, %bb.g, %bb.d, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread, %.critedge4, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, %bb.c, %.thread.loopexit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5lexer8CJSLexer24tryParseExportsDotAssignEb(ptr noundef nonnull align 8 dereferenceable(32848) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.e = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  switch i8 %i.e, label %.critedge27 [
    i8 46, label %bb.b
    i8 91, label %bb.f
    i8 61, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.a, align 8
  %i.h = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !range !13, !noundef !14
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %.critedge27

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %storemerge.i34 = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 4 uses
  store ptr %storemerge.i34, ptr %i.a, align 8
  %i.p = icmp ult ptr %storemerge.i34, %i.o
  br i1 %i.p, label %.lr.ph, label %_ZN5lexer8CJSLexer10identifierEc.exit

bb.d:                                             ; preds = %.lr.ph
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i35, i64 1 ; 4 uses
  store ptr %storemerge.i, ptr %i.a, align 8
  %i.q = icmp ult ptr %storemerge.i, %i.o
  br i1 %i.q, label %.lr.ph, label %_ZN5lexer8CJSLexer10identifierEc.exit

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %storemerge.i35 = phi ptr [ %storemerge.i, %bb.d ], [ %storemerge.i34, %bb.c ] ; 3 uses
  %i.r = load i8, ptr %storemerge.i35, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZN5lexer8CJSLexer10identifierEc.exit

_ZN5lexer8CJSLexer10identifierEc.exit:            ; preds = %bb.d, %.lr.ph, %bb.c
  %storemerge.i.lcssa = phi ptr [ %storemerge.i34, %bb.c ], [ %storemerge.i, %bb.d ], [ %storemerge.i35, %.lr.ph ]
  %i.w = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %.not25 = icmp eq i8 %i.w, 61
  br i1 %.not25, label %bb.e, label %.critedge27

bb.e:                                             ; preds = %_ZN5lexer8CJSLexer10identifierEc.exit
  %i.x = ptrtoint ptr %storemerge.i.lcssa to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8
  tail call void @_ZN5lexer8CJSLexer9addExportESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(32848) %0, i64 %i.z, ptr %i.i, i32 noundef %i.ab)
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8
  %i.ae = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) ; 2 uses
  switch i8 %i.ae, label %.critedge27 [
    i8 39, label %bb.g
    i8 34, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.af = load ptr, ptr %i.a, align 8             ; 2 uses
  tail call void @_ZN5lexer8CJSLexer13stringLiteralEc(ptr noundef nonnull align 8 dereferenceable(32848) %0, i8 noundef signext %i.ae)
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8
  %i.ai = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %.not = icmp eq i8 %i.ai, 93
  br i1 %.not, label %bb.h, label %.critedge27

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %.not24 = icmp eq i8 %i.al, 61
  br i1 %.not24, label %bb.i, label %.critedge27

bb.i:                                             ; preds = %bb.h
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.af to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8
  tail call void @_ZN5lexer8CJSLexer9addExportESt17basic_string_viewIcSt11char_traitsIcEEj(ptr noundef nonnull align 8 dereferenceable(32848) %0, i64 %i.ao, ptr %i.af, i32 noundef %i.aq)
  br label %.critedge27

bb.j:                                             ; preds = %bb.a
  br i1 %1, label %bb.k, label %.critedge27

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32840
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !14, !align !19 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, %i.at
  br i1 %.not.i.i, label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i ], [ %i.at, %bb.k ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.az = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #23
  br label %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.av
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5lexer12export_entryEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN5lexer12export_entryEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN5lexer12export_entryEEvPT_.exit.i.i.i.i
  store ptr %i.at, ptr %i.au, align 8
  br label %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit: ; preds = %bb.k, %_ZSt8_DestroyIPN5lexer12export_entryEEvT_S3_.exit.i.i
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.a, align 8
  %i.bh = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  switch i8 %i.bh, label %.critedge27 [
    i8 123, label %bb.m
    i8 114, label %bb.n
  ]

bb.m:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit
  tail call void @_ZN5lexer8CJSLexer22tryParseLiteralExportsEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit
  %i.bi = tail call noundef zeroext i1 @_ZN5lexer8CJSLexer15tryParseRequireENS_11RequireTypeE(ptr noundef nonnull align 8 dereferenceable(32848) %0, i32 noundef 1) ; 0 uses
  br label %.critedge27

.critedge27:                                      ; preds = %bb.b, %_ZN5lexer8CJSLexer10identifierEc.exit, %_ZNSt6vectorIN5lexer12export_entryESaIS1_EE5clearEv.exit, %bb.i, %bb.g, %bb.h, %bb.f, %bb.j, %bb.n, %bb.a
  store ptr %i.d, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %.critedge27, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5lexer8CJSLexer22throwIfExportStatementEv(ptr noundef nonnull align 8 dereferenceable(32848) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = tail call noundef signext i8 @_ZN5lexer8CJSLexer17commentWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(32848) %0)
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext i8 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5lexerL16kPunctuatorTableE, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !range !13, !noundef !14
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN5lexer10last_errorE) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
end_hunk_0
