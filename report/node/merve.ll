begin_hunk_0

.preheader:                                       ; preds = %.critedge, %.preheader
  %.031.pn = phi ptr [ %.1, %.preheader ], [ %.031, %.critedge ]
  %.1 = getelementptr inbounds i8, ptr %.031.pn, i64 -1 ; 7 uses
  %i.i = load i8, ptr %.1, align 1
  %i.j = icmp eq i8 %i.i, 32
  %i.k = icmp ugt ptr %.1, %i.b                   ; 2 uses
end_hunk_0
begin_hunk_1
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5lexerL20kIdentifierCharTableE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge2, label %.thread

.lr.ph:                                           ; preds = %.critedge2
  %i.r = load i8, ptr %i.x, align 1
end_hunk_1
begin_hunk_2
  %i.y = icmp ugt ptr %i.x, %i.b
  br i1 %i.y, label %.lr.ph, label %.thread.a

.thread.a:                                        ; preds = %.critedge2, %.lr.ph
  %.2.lcssa.a = phi ptr [ %i.x, %.lr.ph ], [ %scevgep, %.critedge2 ]
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5lexerL21kIdentifierStartTableE, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  br label %.thread

.thread:                                          ; preds = %.thread.a, %.lr.ph.preheader
  %.032.lcssa = phi i1 [ false, %.lr.ph.preheader ], [ %i.ab, %.thread.a ]
  %.2.lcssa = phi ptr [ %.1, %.lr.ph.preheader ], [ %.2.lcssa.a, %.thread.a ] ; 4 uses
  br i1 %.032.lcssa, label %bb.c, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

bb.c:                                             ; preds = %.thread
  %i.ac = load i8, ptr %.2.lcssa, align 1
  %i.ad = icmp eq i8 %i.ac, 32
  br i1 %i.ad, label %bb.d, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

end_hunk_2
begin_hunk_3
  br i1 %i.ai, label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 1
  %i.ak = ptrtoint ptr %.1 to i64
  %i.al = ptrtoint ptr %.2.lcssa to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.am, ptr %i.an, align 8
end_hunk_3
begin_hunk_4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.5 = phi ptr [ %.2.lcssa, %bb.e ], [ %i.as, %bb.f ] ; 9 uses
  %i.ap = load i8, ptr %.5, align 1               ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 32
  %i.ar = icmp ugt ptr %.5, %i.ao
end_hunk_4
begin_hunk_5
  store ptr %i.cp, ptr %i.ae, align 8
  br label %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %.critedge2.preheader, %.lr.ph.i.i.preheader, %.lr.ph.i.i.1, %bb.h, %bb.g, %bb.d, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit48.thread, %.critedge4, %_ZNK5lexer8CJSLexer20readPrecedingKeywordEPKcSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread59, %bb.c, %.thread, %.critedge
  ret void
}

end_hunk_5
