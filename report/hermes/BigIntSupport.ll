inline.NumInlined: 1517
inline.NumDeleted: 727
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.30.0 = phi ptr [ %i.e, %bb.a ], [ %spec.select, %bb.b ] ; 7 uses
  %.promoted16.i33 = ptrtoint ptr %.sroa.30.0 to i64 ; 2 uses
  %i.i = icmp ult ptr %1, %.sroa.30.0
  br i1 %i.i, label %.lr.ph.preheader.i, label %.critedge.i

end_hunk_0
begin_hunk_1_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.c
  %.lcssa.i34.pre-phi = phi i64 [ %.pre36, %.critedge.i.loopexit ], [ %i.a, %bb.c ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.ph, %.critedge.i.loopexit ], [ %1, %bb.c ] ; 10 uses
  %i.m = icmp ult ptr %.sroa.0.0, %.sroa.30.0
  br i1 %i.m, label %.lr.ph17.i.preheader, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit
end_hunk_1
begin_hunk_2_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a
  %.sroa.30.1 = phi ptr [ %i.o, %bb.e ], [ %.sroa.30.0, %.lr.ph17.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.30.1, i64 -1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !7
  switch i8 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit [
    i8 9, label %bb.e
    i8 11, label %bb.e
    i8 12, label %bb.e
end_hunk_2
begin_hunk_3_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a

bb.e:                                             ; preds = %.lr.ph17.i, %.lr.ph17.i, %.lr.ph17.i, %.lr.ph17.i
  %i.q = icmp ult ptr %.sroa.0.0, %i.o
  br i1 %i.q, label %.lr.ph17.i, label %_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit, !llvm.loop !44

_ZN6hermes6bigint12_GLOBAL__N_126StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEC2ES5_RhRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_10ParsedSignEPSD_.exit: ; preds = %.lr.ph17.i, %bb.e, %.critedge.i
  %.sroa.30.2 = phi ptr [ %.sroa.30.0, %.critedge.i ], [ %scevgep35, %bb.e ], [ %.sroa.30.1, %.lr.ph17.i ] ; 16 uses
  %i.r = icmp ult ptr %.sroa.0.0, %.sroa.30.2
  br i1 %i.r, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.thread.i

end_hunk_3
begin_hunk_4_@_ZN6hermes6bigint12_GLOBAL__N_113getDigitsWithINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEES6_EESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_RhRNS0_10ParsedSignEPSE_:bb.a
  ]

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1
  %i.db = icmp eq i8 %i.s, 43
  %i.dc = select i1 %i.db, i32 1, i32 -1
  store i32 %i.dc, ptr %4, align 4, !tbaa !41
  br label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i

_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.0, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE11nextIsAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i.i ], [ %i.da, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.i ] ; 5 uses
  %i.dd = icmp ult ptr %.sroa.0.3, %.sroa.30.2
  br i1 %i.dd, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a, label %.critedge.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i
  %7 = load i8, ptr %.sroa.0.3, align 1, !tbaa !7
  %8 = icmp eq i8 %7, 48
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 1 ; 2 uses
  %9 = icmp ult ptr %i.de, %.sroa.30.2
  %or.cond = select i1 %8, i1 %9, i1 false
  br i1 %or.cond, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, label %.critedge.i.i

_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i: ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i
  %i.df = phi ptr [ %10, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i ], [ %i.de, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a ] ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !7
  %i.dh = icmp eq i8 %i.dg, 48
  %10 = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %11 = icmp ult ptr %10, %.sroa.30.2
  %or.cond60 = select i1 %i.dh, i1 %11, i1 false
  br i1 %or.cond60, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i14.i.a ], [ %.sroa.0.3, %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE22lookaheadAndEatIfAnyOfIJLc43ELc45EEEENS_8OptValueIcEEv.exit.thread.i ], [ %i.df, %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit9.i.i ] ; 4 uses
  %i.di = icmp ult ptr %.sroa.0.4, %.sroa.30.2
  br i1 %i.di, label %_ZNK6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE4peekEl.exit.i11.i.i, label %_ZN6hermes6bigint12_GLOBAL__N_127BigIntLiteralParsingToolBoxINS1_26StringIntegerLiteralParserIN4llvh8ArrayRefIcEEEEE13decimalDigitsEv.exit.thread.i

end_hunk_4
