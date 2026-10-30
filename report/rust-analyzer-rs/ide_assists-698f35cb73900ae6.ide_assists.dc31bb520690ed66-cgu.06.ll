Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.06?download=true
inline.NumInlined: 3755
inline.NumDeleted: 1362
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB5_4iter8adapters6cloned6ClonedINtNtNtB5_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2L_3api10SyntaxNodeNtNtBQ_11syntax_node12RustLanguageEINtB3A_11SyntaxTokenB3W_EEEEE0ECsiU5vK8fN4ZC_11ide_assists:bb.a

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i
  %i.r = icmp ne ptr %i.j, %i.a
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 3 ; 3 uses
  %i.t = load i8, ptr %i.j, align 1, !noalias !67, !noundef !4
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w               ; 2 uses
  %i.y = shl nuw nsw i32 %i.h, 12
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = icmp samesign ugt i8 %i.e, -17
  br i1 %i.aa, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i
  %i.ab = icmp ne ptr %i.s, %i.a
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !67, !noundef !4
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i
  %.sroa.4.1 = phi ptr [ %i.d, %bb.d ], [ %i.ac, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i ], [ %i.s, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i ], [ %i.j, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ %i.ak, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i ], [ %i.o, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i ] ; 2 uses
  %i.al = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.al)
  %i.am = ptrtoint ptr %.sroa.4.1 to i64
  %i.an = sub i64 %i.am, %i.b
  %i.ao = add i64 %i.an, %.sroa.18.0              ; 3 uses
  %.not.i.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 10
  br i1 %.not.i.i.i, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.b

_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %.sroa.4.219 = phi ptr [ %.sroa.4.1, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %i.a, %bb.b ] ; 5 uses
  %.sroa.18.117 = phi i64 [ %i.ao, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %.sroa.18.0, %bb.b ]
  %.sroa.02.0 = phi i64 [ %i.ao, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ 0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.18.0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit
  %i.ap = phi ptr [ %i.ca, %_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %i.a, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit ] ; 6 uses
  %i.aq = icmp eq ptr %.sroa.4.219, %i.ap
  br i1 %i.aq, label %_RNvXsp_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_15ReverseSearcher16next_reject_backCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.g, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i: ; preds = %bb.f
  %i.au = icmp ne ptr %.sroa.4.219, %i.ar
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -2 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.ax = and i8 %i.aw, 31
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = icmp slt i8 %i.aw, -64
  br i1 %i.az, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = zext nneg i8 %i.as to i32
  br label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i
  %i.bb = icmp ne ptr %.sroa.4.219, %i.av
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds i8, ptr %i.ap, i64 -3 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !68, !noundef !4 ; 3 uses
  %i.be = and i8 %i.bd, 15
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = icmp slt i8 %i.bd, -64
  br i1 %i.bg, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i
  %i.bh = phi ptr [ %i.bv, %bb.i ], [ %i.av, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.bz, %bb.i ], [ %i.ay, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i ]
  %i.bi = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.bj = and i8 %i.as, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  br label %_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i
  %i.bm = icmp ne ptr %.sroa.4.219, %i.bc
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !68, !noundef !4
  %i.bp = and i8 %i.bo, 7
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 6
  %i.bs = and i8 %i.bd, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i
  %i.bv = phi ptr [ %i.bn, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i ], [ %i.bc, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.bu, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i ], [ %i.bf, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i ]
  %i.bw = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.bx = and i8 %i.aw, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by
  br label %bb.h

_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ca = phi ptr [ %i.ar, %bb.g ], [ %i.bh, %bb.h ]
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.bl, %bb.h ] ; 2 uses
  %i.cb = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cb)
  %.not.i.i.i4 = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 10
  br i1 %.not.i.i.i4, label %bb.j, label %bb.e

bb.j:                                             ; preds = %_RNvXs9_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB39_3api10SyntaxNodeNtNtB1e_11syntax_node12RustLanguageEINtB3Y_11SyntaxTokenB4k_EEEEE0ENtB5_15ReverseSearcher9next_backCsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.cc = ptrtoint ptr %i.ap to i64
  %i.cd = ptrtoint ptr %.sroa.4.219 to i64
  %i.ce = sub i64 %.sroa.18.117, %i.cd
  %i.cf = add i64 %i.ce, %i.cc
  br label %_RNvXsp_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_15ReverseSearcher16next_reject_backCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXsp_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNCINvNtNtCsjJXvCMGntp8_6syntax3ast4make16hacky_block_exprINtNtNtNtB9_4iter8adapters6cloned6ClonedINtNtNtB9_5slice4iter4IterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB1g_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEEEE0ENtB5_15ReverseSearcher16next_reject_backCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.e, %bb.j
  %.sroa.02.1 = phi i64 [ %i.cf, %bb.j ], [ %.sroa.02.0, %bb.e ]
  %i.cg = sub nuw i64 %.sroa.02.1, %.sroa.0.0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0
  %i.ci = insertvalue { ptr, i64 } poison, ptr %i.ch, 0
  %i.cj = insertvalue { ptr, i64 } %i.ci, i64 %i.cg, 1
  ret { ptr, i64 } %i.cj
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !95, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !95, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !95, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !95, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
    i32 13, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
    i32 12, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
    i32 11, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
    i32 10, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
    i32 9, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !96, !noundef !4
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !96, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.e, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.121 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.019 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bi = icmp eq ptr %.sroa.4.121, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !97, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.121, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !97, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.121, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !97, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.121, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !97, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiU5vK8fN4ZC_11ide_assists.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !98, !noundef !4
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !98, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.121, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.121 to i64
  %i.do = sub i64 %.sroa.18.019, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.t, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit, %bb.u
  %.sroa.0.042 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsu_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCsiU5vK8fN4ZC_11ide_assists:bb.a
bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [28 x i8], align 4                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call { i64, ptr } @_RINvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB3_13AssistContext20find_token_at_offsetNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringEB5_(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 2 uses
  %.not = icmp eq i64 %i.h, -1
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = invoke noundef zeroext i1 @_RNvYNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringNtB4_8IsString6is_rawCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, %bb.r, %bb.o, %bb.m, %bb.ag, %.noexc21, %bb.ae, %bb.ac, %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit, %bb.s, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val26 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val26, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val26) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.ai

bb.d:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.e, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit:     ; preds = %.noexc, %.noexc21, %bb.d, %bb.v
  %.val24 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val24, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !4
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30

bb.e:                                             ; preds = %bb.d
  %.val27 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.u = load i64, ptr %.val27, align 8, !range !9, !noundef !4 ; 2 uses
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.val27, i64 8
  %.sroa.5.0.i = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 16
  br label %bb.i

_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i7.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i6.i.i.i, %bb.k
  %.promoted.i.i.i.i = phi ptr [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i6.i.i.i ], [ %i.bu, %bb.k ], [ %spec.select.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i7.i.i.i ] ; 2 uses
  %.not.i18.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.bt
  br i1 %.not.i18.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.bl, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ 0, %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i ] ; 2 uses
  %i.aa = phi ptr [ %i.bj, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  %i.ac = load i8, ptr %i.aa, align 1, !noalias !1161, !noundef !4 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.g, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ae = and i8 %i.ac, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = icmp ne ptr %i.ab, %i.bt
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 3 uses
  %i.ai = load i8, ptr %i.ab, align 1, !noalias !1161, !noundef !4
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ao = zext nneg i8 %i.ac to i32
  br label %bb.h

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i
  %i.ap = icmp ne ptr %i.ah, %i.bt
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 3 ; 3 uses
  %i.ar = load i8, ptr %i.ah, align 1, !noalias !1161, !noundef !4
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.af, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i.i, label %bb.h

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i
  %i.az = icmp ne ptr %i.aq, %i.bt
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bb = load i8, ptr %i.aq, align 1, !noalias !1161, !noundef !4
  %i.bc = shl nuw nsw i32 %i.af, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i, %bb.g, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i
  %i.bj = phi ptr [ %i.aq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i ], [ %i.ba, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i.i ], [ %i.ah, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i ], [ %i.ab, %bb.g ] ; 2 uses
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.ax, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i.i.i.i ], [ %i.bi, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit16.i.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i.i.i.i ], [ %i.ao, %bb.g ]
  %i.bk = icmp eq i32 %spec.select.i.ph.i.i.i.i, 35
  br i1 %i.bk, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i: ; preds = %bb.h
  %i.bl = add i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %i.bt
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.y, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.3.0.i
  %i.bn = load i64, ptr %i.f, align 8, !range !5, !noundef !4
  %i.bo = icmp ne i64 %i.bn, 2
  store ptr %.sroa.0.0.i, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.bp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !1165
  %i.bq = zext i1 %i.bo to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.br = call fastcc noundef i64 @_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef range(i64 0, -1) %i.bq) #36, !noalias !1167
  %.not.i.i.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.bs = load ptr, ptr %i.e, align 8, !alias.scope !1170, !nonnull !4, !noundef !4 ; 5 uses
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1170, !nonnull !4, !noundef !4 ; 8 uses
  %.not.i.i5.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i5.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bs, align 1, !noalias !1171, !noundef !4 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i6.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i6.i.i.i: ; preds = %bb.k
  %i.bx = icmp ne ptr %i.bu, %i.bt
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2 ; 2 uses
  %i.bz = icmp samesign ugt i8 %i.bv, -33
  br i1 %i.bz, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i7.i.i.i, label %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit14.i.i.i7.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit12.i.i.i6.i.i.i
  %i.ca = icmp ne ptr %i.by, %i.bt
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i8 %i.bv, -17
  %spec.select.v.i = select i1 %i.cb, i64 4, i64 3
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 %spec.select.v.i
  br label %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i, %bb.h, %bb.j, %bb.i, %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i
  %.sroa.0.1.i.i = phi i64 [ 0, %_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists.exit.thread.i.i.i ], [ 0, %bb.j ], [ 0, %bb.i ], [ %i.bl, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_4skip4SkipNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2Y_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val27, i64 60
  %i.cd = load i8, ptr %i.cc, align 4, !range !24, !noundef !4
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.val27, i64 56
  %i.cg = load i32, ptr %i.cf, align 8, !noundef !4
  br label %.noexc33

bb.m:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipNtNtNtBc_3str4iter5CharsENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10raw_string11remove_hash0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B31_5count0EB20_.exit
  %i.ch = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val27)
          to label %..noexc33_crit_edge unwind label %bb.c

..noexc33_crit_edge:                              ; preds = %bb.m
  %.pre = load i64, ptr %.val27, align 8, !range !9
  br label %.noexc33

.noexc33:                                         ; preds = %..noexc33_crit_edge, %bb.l
  %i.ci = phi i64 [ %i.u, %bb.l ], [ %.pre, %..noexc33_crit_edge ]
  %.sroa.0.0.i31 = phi i32 [ %i.cg, %bb.l ], [ %i.ch, %..noexc33_crit_edge ] ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val27, i64 8
  %i.ck = trunc nuw i64 %i.ci to i1
  %i.cl = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.ck, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.noexc33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !4 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 4294967295
  %i.cp = shl nuw i64 %i.cn, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.co, i64 513, i64 %i.cp ; 2 uses
  %i.cq = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.cq, label %bb.o, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !7

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
          to label %.noexc34 unwind label %bb.c

.noexc34:                                         ; preds = %bb.o
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.n
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.q

bb.p:                                             ; preds = %.noexc33
  %i.cr = load i32, ptr %i.cl, align 8, !noundef !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.cr, %bb.p ]
  %i.cs = add i32 %.sroa.02.0.i, %.sroa.0.0.i31   ; 2 uses
  %.not.i32 = icmp ugt i32 %.sroa.0.0.i31, %i.cs
  br i1 %.not.i32, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #38
          to label %.noexc35 unwind label %bb.c

.noexc35:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvYNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringNtB4_8IsString13quote_offsetsCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.t unwind label %bb.c

bb.t:                                             ; preds = %bb.s
  %i.ct = load i32, ptr %i.b, align 4, !range !34, !noundef !4
  %i.cu = trunc nuw i32 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !4 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = icmp ult i32 %i.cw, %.sroa.0.0.i31
  %i.da = icmp ult i32 %i.cy, %.sroa.0.0.i31
  %or.cond.i = or i1 %i.cz, %i.da
  br i1 %or.cond.i, label %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit, label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit

bb.w:                                             ; preds = %bb.u
  %i.db = sub nuw i32 %i.cw, %.sroa.0.0.i31
  %i.dc = sub nuw i32 %i.cy, %.sroa.0.0.i31
  %i.dd = zext i32 %i.db to i64                   ; 5 uses
  %i.de = zext i32 %i.dc to i64                   ; 5 uses
  %i.df = icmp ugt i32 %i.cw, %i.cy
  %i.dg = icmp ult i64 %.sroa.3.0.i, %i.de
  %or.cond.i.i = or i1 %i.df, %i.dg
  br i1 %or.cond.i.i, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, label %bb.x, !prof !35

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp eq i64 %.sroa.3.0.i, %i.dd
  br i1 %i.dh, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = icmp eq i32 %i.cw, %.sroa.0.0.i31
  br i1 %i.di, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.dj = icmp eq i64 %.sroa.3.0.i, %i.de
  br i1 %i.dj, label %bb.ac, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.dd
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !1172, !noundef !4
  %i.dm = icmp sgt i8 %i.dl, -65
  br i1 %i.dm, label %bb.z, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, !prof !36

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i: ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.de
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !1172, !noundef !4
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %bb.ac, label %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i, !prof !37

_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.aa, %bb.w
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, i64 noundef %i.dd, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #38
          to label %.noexc36 unwind label %bb.c

.noexc36:                                         ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.thread3.i
  unreachable

_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit: ; preds = %bb.u
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #41
          to label %bb.ab unwind label %bb.c

bb.ab:                                            ; preds = %_RNvMs1_NtCsuAhG64lL82_9text_size5rangeNtB5_9TextRange11checked_sub.exit
  unreachable

bb.ac:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str6traits11check_range.exit.i, %bb.z, %bb.x
  %i.dq = sub nuw nsw i64 %i.de, %i.dd
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.dd
  %i.ds = invoke noundef i64 @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils15required_hashes(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.dq)
          to label %bb.ad unwind label %bb.c

bb.ad:                                            ; preds = %bb.ac
  %i.dt = icmp eq i64 %.sroa.0.1.i.i, %i.ds
  br i1 %i.dt, label %.noexc, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @85, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 11, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 5, ptr %i.dw, align 8
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.0.0.i, ptr %i.c, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.3.0.i, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.dz, align 8
  %i.ea = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addReNCNvNtNtB7_8handlers10raw_string11remove_hashs_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 8, i32 noundef %.sroa.0.0.i31, i32 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c)
          to label %bb.ah unwind label %bb.c      ; 2 uses

.noexc:                                           ; preds = %bb.ad
  %i.eb = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.af, !prof !11

bb.af:                                            ; preds = %.noexc
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.ag, label %.noexc21

.noexc21:                                         ; preds = %bb.ag, %bb.af
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 25)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.c

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 25)
          to label %.noexc21 unwind label %bb.c

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val22 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val22, i64 48 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !noundef !4
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast9token_ext9AnyStringECsiU5vK8fN4ZC_11ide_assists.exit30.sink.split: ; preds = %bb.ah, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit
  %.val22.sink = phi ptr [ %.val24, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit ], [ %.val22, %bb.ah ]
end_hunk_1
begin_hunk_2_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports15unmerge_imports:bb.a
  store i32 %i.as, ptr %i.ak, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.val52, ptr %i.i, align 8
  %i.at = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load i32, ptr %i.ak, align 4, !noundef !4
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.ak, align 4
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val52) #40
          to label %.body unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.ay = icmp eq i16 %i.at, 317
  br i1 %i.ay, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.ak, align 4, !noundef !4
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ak, align 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val52) #40
          to label %.thread unwind label %bb.i

bb.p:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit112

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bd = load i32, ptr %i.ak, align 4, !noundef !4 ; 2 uses
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %.invoke, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bf = add nuw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.ak, align 4
  %i.bg = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val52)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit112: ; preds = %bb.e, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %bb.cf, %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !noundef !4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit81

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit112
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ai) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit81 unwind label %.split.thread

.body87:                                          ; preds = %.body104, %bb.au, %bb.am, %bb.al, %bb.an, %bb.w, %bb.x, %bb.y, %bb.u
  %.pn40 = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.co, %bb.am ], [ %i.bo, %bb.u ], [ %i.bq, %bb.y ], [ %i.bq, %bb.x ], [ %i.co, %bb.an ], [ %i.co, %bb.al ], [ %.pn.pn, %bb.au ], [ %.pn.pn, %.body104 ] ; 2 uses
  %.sroa.020.4 = phi i1 [ true, %bb.w ], [ true, %bb.am ], [ %.sroa.020.5, %bb.u ], [ true, %bb.y ], [ true, %bb.x ], [ true, %bb.an ], [ true, %bb.al ], [ %.sroa.020.6, %bb.au ], [ %.sroa.020.6, %.body104 ] ; 2 uses
  %i.bl = load i32, ptr %i.ak, align 4, !noundef !4
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.ak, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %.body

bb.t:                                             ; preds = %.body87
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val52) #40
          to label %.body unwind label %bb.do

bb.u:                                             ; preds = %.invoke, %bb.dj, %bb.ce, %bb.at, %bb.ae, %bb.r, %bb.aj, %.noexc47
  %.sroa.020.5 = phi i1 [ true, %bb.aj ], [ false, %bb.dj ], [ true, %bb.ce ], [ true, %bb.at ], [ true, %.invoke ], [ true, %bb.ae ], [ true, %.noexc47 ], [ true, %bb.r ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body87

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.bg, ptr %i.h, align 8
  br label %bb.v

bb.v:                                             ; preds = %_RNCNvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB7_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5count0CsiU5vK8fN4ZC_11ide_assists.exit.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.sroa.0.0.i84 = phi i64 [ 0, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit ], [ %i.ca, %_RNCNvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB7_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5count0CsiU5vK8fN4ZC_11ide_assists.exit.i ] ; 2 uses
  %i.bp = invoke noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.z unwind label %bb.w       ; 3 uses

bb.w:                                             ; preds = %bb.ab, %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.br = icmp eq ptr %.val.i, null
  br i1 %i.br, label %.body87, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !4
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.y, label %.body87

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i) #40
          to label %.body87 unwind label %bb.af

bb.z:                                             ; preds = %bb.v
  %.not.i85 = icmp eq ptr %i.bp, null
  br i1 %.not.i85, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !4
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ab, label %_RNCNvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB7_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5count0CsiU5vK8fN4ZC_11ide_assists.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bp) #40
          to label %_RNCNvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB7_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5count0CsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.w

_RNCNvYINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB7_9generated5nodes7UseTreeENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator5count0CsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.ab, %bb.aa
  %i.ca = add i64 %.sroa.0.0.i84, 1
  br label %bb.v

bb.ac:                                            ; preds = %bb.z
  %.val6.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.cb = icmp eq ptr %.val6.i, null
  br i1 %i.cb, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %.val6.i, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !4
  %i.ce = add i32 %i.cd, -1                       ; 2 uses
  store i32 %i.ce, ptr %i.cc, align 4
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i) #40
          to label %bb.ag unwind label %bb.u

bb.af:                                            ; preds = %bb.y
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ag:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ch = icmp ult i64 %.sroa.0.0.i84, 2
  br i1 %i.ch, label %.noexc, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ci = load i32, ptr %i.ak, align 4, !noundef !4 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %.invoke, label %bb.ak, !prof !7

.invoke:                                          ; preds = %bb.q, %bb.ah
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
          to label %.cont unwind label %bb.u

.cont:                                            ; preds = %.invoke
  unreachable

.noexc:                                           ; preds = %bb.ag
  %i.ck = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %.noexc
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.aj, label %.noexc47

.noexc47:                                         ; preds = %bb.aj, %bb.ai
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 18)
          to label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit unwind label %bb.u

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 18)
          to label %.noexc47 unwind label %bb.u

bb.ak:                                            ; preds = %bb.ah
  %i.cm = add nuw i32 %i.ci, 1
  store i32 %i.cm, ptr %i.ak, align 4
  store ptr %.val52, ptr %i.r, align 8
  %i.cn = invoke fastcc noundef ptr @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B18_B16_6parentENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtNtBa_8adapters3map12map_try_foldB16_INtNtB1a_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB41_3ast9generated5nodes3UseENvYB3y_INtNtBc_7convert4FromB16_E4fromNCINvNvB29_8find_map5checkB3y_B5u_NvYB5u_NtB5A_7AstNode4castE0E0B4P_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(8) %i.r)
          to label %bb.ao unwind label %bb.al     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val67 = load ptr, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %i.cp = icmp eq ptr %.val67, null
  br i1 %i.cp, label %.body87, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = getelementptr inbounds nuw i8, ptr %.val67, i64 48 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !noundef !4
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.an, label %.body87

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val67) #40
          to label %.body87 unwind label %bb.do

bb.ao:                                            ; preds = %bb.ak
  %.not32 = icmp eq ptr %i.cn, null
  br i1 %.not32, label %.thread147, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.cn, ptr %i.s, align 8
  %.val66 = load ptr, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %i.cu = icmp eq ptr %.val66, null
  br i1 %i.cu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = getelementptr inbounds nuw i8, ptr %.val66, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !noundef !4
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val66) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94 unwind label %bb.av

.thread147:                                       ; preds = %bb.ao
  %.val65 = load ptr, ptr %i.r, align 8, !noundef !4 ; 3 uses
  %i.cz = icmp eq ptr %.val65, null
  br i1 %i.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit96, label %bb.as

bb.as:                                            ; preds = %.thread147
  %i.da = getelementptr inbounds nuw i8, ptr %.val65, i64 48 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !noundef !4
  %i.dc = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit96

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val65) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit96 unwind label %bb.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit96: ; preds = %bb.as, %.thread147, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit109

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit109: ; preds = %bb.cd, %bb.ce, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit

.body104:                                         ; preds = %bb.dp, %bb.dq, %bb.dg, %bb.ba, %bb.bb, %bb.bc, %bb.bj, %bb.bk, %bb.bl, %.body.i, %bb.bo, %bb.av
  %.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.dg ], [ %eh.lpad-body.i, %bb.bo ], [ %i.di, %bb.av ], [ %i.ex, %bb.bj ], [ %i.ex, %bb.bk ], [ %i.eg, %bb.bc ], [ %i.eg, %bb.ba ], [ %i.eg, %bb.bb ], [ %i.ex, %bb.bl ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph, %bb.dq ], [ %.pn.ph, %bb.dp ] ; 2 uses
  %.sroa.020.6 = phi i1 [ false, %bb.dg ], [ true, %bb.bo ], [ true, %bb.av ], [ true, %bb.bj ], [ true, %bb.bk ], [ true, %bb.bc ], [ true, %bb.ba ], [ true, %bb.bb ], [ true, %bb.bl ], [ true, %.body.i ], [ true, %bb.dq ], [ true, %bb.dp ] ; 2 uses
  %.val56 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val56, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !noundef !4
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.au, label %.body87

bb.au:                                            ; preds = %.body104
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val56) #40
          to label %.body87 unwind label %bb.do

bb.av:                                            ; preds = %bb.cb, %bb.bi, %bb.be, %bb.aw, %bb.ar
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body104

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94: ; preds = %bb.aq, %bb.ap, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !noundef !4 ; 2 uses
  %i.dl = icmp eq i32 %i.dk, -1
  br i1 %i.dl, label %bb.aw, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode9ancestors.exit.i, !prof !7

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #41
          to label %.noexc101 unwind label %bb.av

.noexc101:                                        ; preds = %bb.aw
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode9ancestors.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECsiU5vK8fN4ZC_11ide_assists.exit94
  %i.dm = add nuw i32 %i.dk, 1
  store i32 %i.dm, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ai, ptr %i.g, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i8 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1365
  store ptr %i.dp, ptr %i.f, align 8, !noalias !1365
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !noalias !1365
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.do, ptr %i.dr, align 8, !noalias !1365
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.dn, ptr %i.ds, align 8, !noalias !1365
  %i.dt = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs0_NtB8_10take_whileINtB5o_9TakeWhileppEB4v_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtNtB3c_3ast9generated5nodes4PathENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0NCINvNtB8_10filter_map19filter_map_try_foldB2J_NtB74_7UseTreeuB6n_NvYB9I_NtB78_7AstNode4castNCINvNvB4v_8find_map5checkB9I_B72_QNCB7G_s_0E0E0E0IB6o_B6n_EEB7M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
          to label %bb.ax unwind label %bb.bj     ; 2 uses

bb.ax:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode9ancestors.exit.i
  %i.du = extractvalue { i64, ptr } %i.dt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1365
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = extractvalue { i64, ptr } %i.dt, 1      ; 3 uses
  %.not16.i.i = icmp ne ptr %i.dw, null
  %.not.not.i.i = select i1 %i.dv, i1 %.not16.i.i, i1 false
  %i.dx = load ptr, ptr %i.g, align 8, !noundef !4 ; 5 uses
  br i1 %.not.not.i.i, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.dy = load i8, ptr %i.dn, align 8, !range !24, !noundef !4 ; 2 uses
  %i.dz = trunc nuw i8 %i.dy to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.dx, ptr %i.e, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %i.dy, ptr %i.ea, align 8
  br i1 %i.dz, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B29_B27_6parentENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB27_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3G_3ast9generated5nodes4PathNCINvMNtNtBc_3ops9try_traitINtB7H_17NeverShortCircuitB70_E10wrap_mut_2B70_B3d_NCINvNtB8_10filter_map15filter_map_foldB3d_NtB72_7UseTreeB70_NvYB9y_NtB76_7AstNode4castNCIB8U_B9y_B70_B70_NCB51_s_0NCB51_s0_0E0E0E0B82_EB57_.exit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1366
  store ptr %i.eb, ptr %i.d, align 8, !noalias !1366
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.ec, align 8, !noalias !1366
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ea, ptr %i.ed, align 8, !noalias !1366
  %i.ee = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1F_B1D_6parentENvYINtNtB1H_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB1D_E4fromENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3c_3ast9generated5nodes4PathNCINvNvXs0_NtB8_10take_whileINtB5Y_9TakeWhileppEB4v_8try_fold5checkB2J_B5c_INtNtNtBc_3ops9try_trait17NeverShortCircuitB5c_ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0NCINvMB73_B70_10wrap_mut_2B5c_B2J_NCINvNtB8_10filter_map15filter_map_foldB2J_NtB5e_7UseTreeB5c_NvYBak_NtB5i_7AstNode4castNCIB9G_Bak_B5c_B5c_NCB7O_s_0NCB7O_s0_0E0E0E0E0INtNtB75_12control_flow11ControlFlowB70_B5c_EEB7U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.dw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %.noexc.i.i.i.i.i unwind label %bb.ba

.noexc.i.i.i.i.i:                                 ; preds = %bb.az
  %i.ef = extractvalue { i64, ptr } %i.ee, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1366
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  %.val.pr.i.i.i.i.i = load ptr, ptr %i.e, align 8
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B29_B27_6parentENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB27_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3G_3ast9generated5nodes4PathNCINvMNtNtBc_3ops9try_traitINtB7H_17NeverShortCircuitB70_E10wrap_mut_2B70_B3d_NCINvNtB8_10filter_map15filter_map_foldB3d_NtB72_7UseTreeB70_NvYB9y_NtB76_7AstNode4castNCIB8U_B9y_B70_B70_NCB51_s_0NCB51_s0_0E0E0E0B82_EB57_.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val1.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.eh = icmp eq ptr %.val1.i.i.i.i.i, null
  br i1 %i.eh, label %.body104, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 48 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !noundef !4
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 4
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bc, label %.body104

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i.i.i) #40
          to label %.body104 unwind label %bb.bf

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B29_B27_6parentENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB27_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3G_3ast9generated5nodes4PathNCINvMNtNtBc_3ops9try_traitINtB7H_17NeverShortCircuitB70_E10wrap_mut_2B70_B3d_NCINvNtB8_10filter_map15filter_map_foldB3d_NtB72_7UseTreeB70_NvYB9y_NtB76_7AstNode4castNCIB8U_B9y_B70_B70_NCB51_s_0NCB51_s0_0E0E0E0B82_EB57_.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.ay
  %.val.i.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i.i, %.noexc.i.i.i.i.i ], [ %i.dx, %bb.ay ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.ef, %.noexc.i.i.i.i.i ], [ %i.dw, %bb.ay ] ; 8 uses
  %i.em = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.em, label %.noexc102, label %bb.bd

bb.bd:                                            ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B29_B27_6parentENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB27_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3G_3ast9generated5nodes4PathNCINvMNtNtBc_3ops9try_traitINtB7H_17NeverShortCircuitB70_E10wrap_mut_2B70_B3d_NCINvNtB8_10filter_map15filter_map_foldB3d_NtB72_7UseTreeB70_NvYB9y_NtB76_7AstNode4castNCIB8U_B9y_B70_B70_NCB51_s_0NCB51_s0_0E0E0E0B82_EB57_.exit.i.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 48 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !noundef !4
  %i.ep = add i32 %i.eo, -1                       ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.be, label %.noexc102

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i.i) #40
          to label %.noexc102 unwind label %bb.av

bb.bf:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bg:                                            ; preds = %bb.ax
  %i.es = icmp eq ptr %i.dx, null
  br i1 %i.es, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread151, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.et = getelementptr inbounds nuw i8, ptr %i.dx, i64 48 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !noundef !4
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.et, align 4
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bi, label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread151

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dx) #40
          to label %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread151 unwind label %bb.av

bb.bj:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode9ancestors.exit.i
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val.i.i = load ptr, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.ey = icmp eq ptr %.val.i.i, null
  br i1 %i.ey, label %.body104, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !noundef !4
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bl, label %.body104

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i) #40
          to label %.body104 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

.noexc102:                                        ; preds = %bb.be, %bb.bd, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3map3MapINtNtNtBa_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B29_B27_6parentENvYINtNtB2b_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtBc_7convert4FromB27_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path0ENtNtNtBa_6traits8iterator8Iterator8try_foldNtNtNtNtB3G_3ast9generated5nodes4PathNCINvMNtNtBc_3ops9try_traitINtB7H_17NeverShortCircuitB70_E10wrap_mut_2B70_B3d_NCINvNtB8_10filter_map15filter_map_foldB3d_NtB72_7UseTreeB70_NvYB9y_NtB76_7AstNode4castNCIB8U_B9y_B70_B70_NCB51_s_0NCB51_s0_0E0E0E0B82_EB57_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fe = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.sroa.0.1.i.i.i.i.i.i)
          to label %bb.bp unwind label %bb.bn     ; 6 uses

_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread151: ; preds = %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cd

bb.bn:                                            ; preds = %bb.bz, %bb.bw, %.noexc102
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bs, %bb.br, %bb.bn
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ff, %bb.bn ], [ %i.fl, %bb.bs ], [ %i.fl, %bb.br ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !noundef !4
  %i.fi = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fi, ptr %i.fg, align 4
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.bo, label %.body104

bb.bo:                                            ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.1.i.i.i.i.i.i) #40
          to label %.body104 unwind label %bb.cc

bb.bp:                                            ; preds = %.noexc102
end_hunk_2
begin_hunk_3_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports15unmerge_imports:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit112 unwind label %bb.i

bb.cg:                                            ; preds = %bb.df, %bb.cm, %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread, %bb.cs, %bb.co
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ch:                                            ; preds = %_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers15unmerge_imports17resolve_full_path.exit.thread
  %.not36 = icmp eq ptr %i.gf, null
  br i1 %.not36, label %bb.co, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.gf, ptr %i.b, align 8
  %i.go = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path13first_segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.cl unwind label %bb.cj     ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !noundef !4
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  store i32 %i.gs, ptr %i.gq, align 4
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ck, label %bb.dp

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gf) #40
          to label %bb.dp unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ci
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !noundef !4
  %i.gw = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 4
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.gf) #40
          to label %bb.cp unwind label %bb.cg

bb.cn:                                            ; preds = %bb.ck
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.co:                                            ; preds = %bb.ch, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cr unwind label %bb.cg

bb.cp:                                            ; preds = %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not37 = icmp eq ptr %i.go, null
  br i1 %.not37, label %bb.co, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.go, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsu1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_11PathSegmentNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @116, ptr noundef nonnull %i.n)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.dd

bb.cr:                                            ; preds = %bb.co
  %i.gz = load i64, ptr %i.j, align 8, !range !9, !noundef !4
  %i.ha = trunc nuw i64 %i.gz to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !10, !noundef !4 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.ha, label %bb.cs, label %bb.ct, !prof !7

bb.cs:                                            ; preds = %bb.cr
  %i.he = load i64, ptr %i.hd, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.hc, i64 %i.he) #41
          to label %bb.dc unwind label %bb.cg

bb.ct:                                            ; preds = %bb.cr
  %i.hf = load ptr, ptr %i.hd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.hc, 10
  call void @llvm.assume(i1 %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.hf, ptr noundef nonnull align 1 dereferenceable(11) @115, i64 11, i1 false)
  store i64 %i.hc, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.hf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 11, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit126, %bb.ct
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.hi = load i8, ptr %i.hh, align 4, !range !24, !noundef !4
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.cw, label %bb.cv, !prof !7

bb.cv:                                            ; preds = %bb.cu
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.hl = load i32, ptr %i.hk, align 8, !noundef !4
  br label %.noexc119

bb.cw:                                            ; preds = %bb.cu
  %i.hm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.ai)
          to label %.noexc119 unwind label %bb.dn

.noexc119:                                        ; preds = %bb.cw, %bb.cv
  %.sroa.0.0.i117 = phi i32 [ %i.hl, %bb.cv ], [ %i.hm, %bb.cw ] ; 3 uses
  %i.hn = load i64, ptr %i.ai, align 8, !range !9, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.hp = trunc nuw i64 %i.hn to i1
  %i.hq = load ptr, ptr %i.ho, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.hp, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.noexc119
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !4 ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, 4294967295
  %i.hu = shl nuw i64 %i.hs, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ht, i64 513, i64 %i.hu ; 2 uses
  %i.hv = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.hv, label %bb.cy, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !7

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #38
          to label %.noexc120 unwind label %bb.dn

.noexc120:                                        ; preds = %bb.cy
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.cx
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.da

bb.cz:                                            ; preds = %.noexc119
  %i.hw = load i32, ptr %i.hq, align 8, !noundef !4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.hw, %bb.cz ]
  %i.hx = add i32 %.sroa.02.0.i, %.sroa.0.0.i117  ; 2 uses
  %.not.i118 = icmp ugt i32 %.sroa.0.0.i117, %i.hx
  br i1 %.not.i118, label %bb.db, label %bb.dh, !prof !7

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #38
          to label %.noexc121 unwind label %bb.dn

.noexc121:                                        ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %bb.cs
  unreachable

bb.dd:                                            ; preds = %bb.cq
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val59 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val59, i64 48 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !noundef !4
  %i.ib = add i32 %i.ia, -1                       ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 4
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.de, label %bb.dp

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val59) #40
          to label %bb.dp unwind label %bb.do

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.val58 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val58, i64 48 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !noundef !4
  %i.if = add i32 %i.ie, -1                       ; 2 uses
  store i32 %i.if, ptr %i.id, align 4
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit126

bb.df:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val58) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit126 unwind label %bb.cg

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit126: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiU5vK8fN4ZC_11ide_assists.exit, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cu

bb.dg:                                            ; preds = %bb.dh
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.dh:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @117, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 15, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i8 5, ptr %i.ij, align 8
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store ptr %i.s, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store ptr %.sroa.0.0.i99150, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr %i.t, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store ptr %1, ptr %i.in, align 8
  %i.io = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtNtB7_8handlers15unmerge_imports15unmerge_importss_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i32 noundef %.sroa.0.0.i117, i32 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %i.k)
          to label %bb.di unwind label %bb.dg

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.val54 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val54, i64 48 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !noundef !4
  %i.ir = add i32 %i.iq, -1                       ; 2 uses
  store i32 %i.ir, ptr %i.ip, align 4
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.dj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit129

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val54) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit129 unwind label %bb.u

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit129: ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.it = load i32, ptr %i.ak, align 4, !noundef !4
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  store i32 %i.iu, ptr %i.ak, align 4
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.dk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit132

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit129
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val52) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit132 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit132: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3UseECsiU5vK8fN4ZC_11ide_assists.exit129, %bb.dk
  %.val62 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val62, i64 48 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !noundef !4
  %i.iy = add i32 %i.ix, -1                       ; 2 uses
  store i32 %i.iy, ptr %i.iw, align 4
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit135

bb.dl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit132
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val62) #40
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit135: ; preds = %bb.dl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11UseTreeListECsiU5vK8fN4ZC_11ide_assists.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit135, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit81
  %.sroa.0.4 = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit81 ], [ %i.io, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret i1 %.sroa.0.4

bb.dn:                                            ; preds = %bb.db, %bb.cw, %bb.cy
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #37
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dq, %bb.de, %bb.au, %bb.an, %bb.t, %bb.h, %bb.ds, %bb.dn
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.dp:                                            ; preds = %bb.dn, %bb.cg, %bb.ck, %bb.cj, %bb.de, %bb.dd
  %.pn.ph = phi { ptr, i32 } [ %i.gp, %bb.cj ], [ %lpad.thr_comm, %bb.dn ], [ %i.gn, %bb.cg ], [ %i.gp, %bb.ck ], [ %i.hy, %bb.de ], [ %i.hy, %bb.dd ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i99150) ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i99150, i64 48 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !noundef !4
  %i.jd = add i32 %i.jc, -1                       ; 2 uses
  store i32 %i.jd, ptr %i.jb, align 4
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.dq, label %.body104

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i99150) #40
          to label %.body104 unwind label %bb.do

bb.dr:                                            ; preds = %bb.ds, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit
  %.pn44184 = phi { ptr, i32 } [ %.pn42, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.pn44185, %bb.ds ]
  resume { ptr, i32 } %.pn44184

bb.ds:                                            ; preds = %.split.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit
  %.pn44185 = phi { ptr, i32 } [ %lpad.thr_comm186, %.split.thread ], [ %.pn42, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7UseTreeECsiU5vK8fN4ZC_11ide_assists.exit ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(144) %i.v) #37
          to label %bb.dr unwind label %bb.do
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16move_from_mod_rs16move_from_mod_rs(ptr noalias nofree noundef align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.q = load i32, ptr %i.p, align 8, !noundef !4
  %i.r = tail call noundef ptr @_RINvNtCsjJXvCMGntp8_6syntax4algo19find_node_at_offsetNtNtNtNtB4_3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, i32 noundef %i.q) ; 15 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists.exit48, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.r, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.t = invoke noundef i32 @_RNvMNtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB2_13AssistContext11vfs_file_id(ptr noundef nonnull align 8 %1)
          to label %bb.e unwind label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.al, %.thread, %bb.am, %bb.ah, %bb.d
  %.pn30 = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.cp, %bb.ah ], [ %.pn.pn, %bb.am ], [ %.pn.pn, %.thread ], [ %.pn.pn, %bb.al ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !4
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.r) #40
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.at

bb.d:                                             ; preds = %.noexc37.invoke, %.invoke90, %.invoke, %bb.ar, %bb.y, %bb.j, %bb.s, %bb.v, %bb.ad, %bb.p, %bb.o, %bb.g, %bb.e, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsiU5vK8fN4ZC_11ide_assists.exit

bb.e:                                             ; preds = %bb.b
  %i.z = invoke { i32, i32 } @_RINvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB6_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE18file_to_module_defNtCs4sl5YdnrCxp_3vfs6FileIdECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.s, i32 noundef %i.t)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.aa = extractvalue { i32, i32 } %i.z, 0       ; 3 uses
  %i.ab = extractvalue { i32, i32 } %i.z, 1       ; 2 uses
  %.not26 = icmp eq i32 %i.aa, 0
  br i1 %.not26, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit38, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.af = load i32, ptr %i.ae, align 4, !noundef !4
  %i.ag = invoke { i32, i32 } @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils18trimmed_text_range(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, i32 noundef %i.ad, i32 noundef %i.af)
          to label %bb.h unwind label %bb.d       ; 2 uses

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit38:   ; preds = %.noexc37.invoke, %.noexc, %.noexc35, %bb.f, %bb.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !4
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists.exit48.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECsiU5vK8fN4ZC_11ide_assists.exit48

bb.h:                                             ; preds = %bb.g
  %i.al = extractvalue { i32, i32 } %i.ag, 0
  %i.am = extractvalue { i32, i32 } %i.ag, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4, !range !24, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !noundef !4
  br label %.noexc50
end_hunk_3
