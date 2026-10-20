Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.p = load i8, ptr %i.o, align 1, !noalias !154, !noundef !6 ; 3 uses
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i32
  %i.s = icmp slt i8 %i.p, -64
  br i1 %i.s, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i
  %i.t = phi ptr [ %i.ah, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.al, %bb.d ], [ %i.k, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i ]
  %i.u = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.v = and i8 %i.e, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w
  br label %bb.e

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i
  %i.y = icmp ne ptr %0, %i.o
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !noalias !154, !noundef !6
  %i.ab = and i8 %i.aa, 7
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 6
  %i.ae = and i8 %i.p, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i
  %i.ah = phi ptr [ %i.z, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.ag, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i ]
  %i.ai = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.aj = and i8 %i.i, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %i.d, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.an = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.f [
    i32 32, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i
    i32 9, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i
    i32 12, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i
  ]

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.e, %bb.e, %bb.e
  %i.ao = icmp eq ptr %0, %i.am
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.e
  %i.ap = ptrtoint ptr %i.c to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.a, %bb.f
  %.sroa.0.0 = phi i64 [ %i.ar, %bb.f ], [ 0, %bb.a ], [ 0, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace20is_python_whitespaceENtB5_15ReverseSearcher9next_backCsEhZmuQNqkz_11ruff_linter.exit.i.i ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.b = load i64, ptr %i.a, align 8, !range !7, !alias.scope !171, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !170 ; 32 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !170, !nonnull !6 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !170 ; 10 uses
  %i.j = icmp eq i64 %i.e, 0
  %.not.i.i.i = icmp ult i64 %i.e, %i.i
  %i.k = icmp eq i64 %i.e, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  %i.n = icmp ne i64 %i.e, 1                      ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -2 ; 2 uses
  %i.p = icmp ne i64 %i.e, 2                      ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 -3 ; 2 uses
  %i.r = icmp ne i64 %i.e, 3                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !170
  %i.v = icmp eq i64 %i.u, -1                     ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !170, !nonnull !6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !170 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !170
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 range(i64 0, -9223372036854775808) %i.z) ; 2 uses
  %.promoted.i = load i64, ptr %i.s, align 8, !alias.scope !170 ; 2 uses
  %.promoted94.i = load i64, ptr %i.ac, align 8, !alias.scope !170 ; 2 uses
  br i1 %i.c, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.a
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %.split.us.i
  %i.af = load i64, ptr %i.ad, align 8, !alias.scope !170 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.split50.us.i.us.i._crit_edge, %.lr.ph148.i
  %.sink105.i.i.us.i77.lcssa8091 = phi i64 [ %.promoted94.i, %.lr.ph148.i ], [ %spec.select, %.split50.us.i.us.i._crit_edge ]
  %.lcssa7184 = phi i64 [ %.promoted.i, %.lr.ph148.i ], [ %i.an, %.split50.us.i.us.i._crit_edge ] ; 8 uses
  %i.ag = phi i64 [ %.promoted94.i, %.lr.ph148.i ], [ %spec.select99, %.split50.us.i.us.i._crit_edge ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.ah = sub i64 %.lcssa7184, %i.z               ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.i
  br i1 %i.ai, label %.lr.ph.i.i.us.i, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.i.i.us.i:                                  ; preds = %bb.b
  %invariant.op.i.i.us.i = sub i64 %.lcssa7184, %i.e
  %i.aj = sub i64 %.lcssa7184, %i.af              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %.lr.ph.i.i.us.i
  %.sink105.i.i.us.i77 = phi i64 [ %.sink105.i.i.us.i77.lcssa8091, %.lr.ph.i.i.us.i ], [ %.sink105.i.i.us.i76, %bb.l ] ; 4 uses
  %i.ak = phi i64 [ %.lcssa7184, %.lr.ph.i.i.us.i ], [ %i.bm, %bb.l ]
  %i.al = phi i64 [ %i.ag, %.lr.ph.i.i.us.i ], [ %i.bk, %bb.l ] ; 4 uses
  %i.am = phi i64 [ %i.ag, %.lr.ph.i.i.us.i ], [ %i.bl, %bb.l ] ; 5 uses
  %i.an = phi i64 [ %i.ah, %.lr.ph.i.i.us.i ], [ %i.bn, %bb.l ] ; 8 uses
  %.not.i16.i.us.i = icmp eq i64 %.lcssa7184, %i.ak
  br i1 %.not.i16.i.us.i, label %bb.d, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !173, !noalias !175, !noundef !6
  %i.aq = and i8 %i.ap, 63
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.as, %i.ab
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.i.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.e)
  %.sroa.01.0.i.i.us.i = select i1 %i.v, i64 %i.e, i64 %.sroa.0.0.i.i.i.us.i
  %.sroa.01.0.i.fr.i.us.i = freeze i64 %.sroa.01.0.i.i.us.i ; 3 uses
  %i.av = add i64 %.sroa.01.0.i.fr.i.us.i, -1     ; 2 uses
  %.first_iter.i.i.us.i = icmp ult i64 %i.av, %i.z
  %.not21.i.us.i.us.i285 = icmp eq i64 %.sroa.01.0.i.fr.i.us.i, 0 ; 2 uses
  br i1 %.first_iter.i.i.us.i, label %.split48.us.i.us.i.preheader, label %.split48.i.us.i

.split48.us.i.us.i.preheader:                     ; preds = %bb.e
  br i1 %.not21.i.us.i.us.i285, label %.split50.us.i.us.i, label %.lr.ph

.split48.i.us.i:                                  ; preds = %bb.e
  br i1 %.not21.i.us.i.us.i285, label %.split50.us.i.us.i, label %.split109.us.i

.split48.us.i.us.i:                               ; preds = %bb.f
  %.not21.i.us.i.us.i = icmp eq i64 %i.aw, 0
  br i1 %.not21.i.us.i.us.i, label %.split50.us.i.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split48.us.i.us.i.preheader, %.split48.us.i.us.i
  %.sroa.2.0.i.us.i.us.i286 = phi i64 [ %i.aw, %.split48.us.i.us.i ], [ %.sroa.01.0.i.fr.i.us.i, %.split48.us.i.us.i.preheader ]
  %i.aw = add i64 %.sroa.2.0.i.us.i.us.i286, -1   ; 5 uses
  %i.ax = add i64 %i.aw, %i.an                    ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.i
  br i1 %i.ay, label %bb.f, label %.split52.us.i.i

bb.f:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !174, !noalias !175, !noundef !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !173, !noalias !175, !noundef !6
  %.not23.i.us.i.us.i = icmp eq i8 %i.ba, %i.bc
  br i1 %.not23.i.us.i.us.i, label %.split48.us.i.us.i, label %.split54.us.i.us.i

.split54.us.i.us.i:                               ; preds = %bb.f
  %.reass.i.i.us.i = add i64 %i.aw, %invariant.op.i.i.us.i ; 2 uses
  br i1 %i.v, label %bb.l, label %.sink.split.i.i.us.i

.split50.us.i.us.i:                               ; preds = %.split48.us.i.us.i, %.split48.us.i.us.i.preheader, %.split48.i.us.i
  %.sroa.06.0.i.i.us.i = select i1 %i.v, i64 %i.z, i64 %i.am ; 2 uses
  %umax73.i.i.us.i = tail call i64 @llvm.umax.i64(i64 %.sroa.06.0.i.i.us.i, i64 %i.e)
  %exitcond.not.i.i.us.i287.not = icmp ult i64 %i.e, %.sroa.06.0.i.i.us.i
  br i1 %exitcond.not.i.i.us.i287.not, label %.lr.ph289, label %.split50.us.i.us.i._crit_edge

bb.g:                                             ; preds = %bb.i
  %exitcond.not.i.i.us.i = icmp eq i64 %i.bd, %umax73.i.i.us.i
  br i1 %exitcond.not.i.i.us.i, label %.split50.us.i.us.i._crit_edge, label %.lr.ph289

.lr.ph289:                                        ; preds = %.split50.us.i.us.i, %bb.g
  %.sroa.07.0.i.i.us.i288 = phi i64 [ %i.bd, %bb.g ], [ %i.e, %.split50.us.i.us.i ] ; 4 uses
  %i.bd = add nuw i64 %.sroa.07.0.i.i.us.i288, 1  ; 2 uses
  %exitcond74.not.i.i.us.i = icmp eq i64 %.sroa.07.0.i.i.us.i288, %umax.i.i.i
  br i1 %exitcond74.not.i.i.us.i, label %.split115.us.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph289
  %i.be = add i64 %.sroa.07.0.i.i.us.i288, %i.an  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.i
  br i1 %i.bf, label %bb.i, label %.split119.us.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.07.0.i.i.us.i288
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !174, !noalias !175, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.be
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !173, !noalias !175, !noundef !6
  %.not22.i.i.us.i = icmp eq i8 %i.bh, %i.bj
  br i1 %.not22.i.i.us.i, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.v, label %bb.l, label %.sink.split.i.i.us.i

bb.k:                                             ; preds = %bb.d
  br i1 %i.v, label %bb.l, label %.sink.split.i.i.us.i

.sink.split.i.i.us.i:                             ; preds = %bb.k, %bb.j, %.split54.us.i.us.i
  %.sink105.i.i.us.i = phi i64 [ %i.af, %bb.j ], [ %i.z, %.split54.us.i.us.i ], [ %i.z, %bb.k ] ; 3 uses
  %.ph104.i.i.us.i = phi i64 [ %i.aj, %bb.j ], [ %.reass.i.i.us.i, %.split54.us.i.us.i ], [ %i.an, %bb.k ]
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i.i.us.i, %bb.k, %bb.j, %.split54.us.i.us.i
  %.sink105.i.i.us.i76 = phi i64 [ %.sink105.i.i.us.i77, %.split54.us.i.us.i ], [ %.sink105.i.i.us.i77, %bb.k ], [ %.sink105.i.i.us.i77, %bb.j ], [ %.sink105.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bk = phi i64 [ %i.al, %.split54.us.i.us.i ], [ %i.al, %bb.k ], [ %i.al, %bb.j ], [ %.sink105.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bl = phi i64 [ %i.am, %.split54.us.i.us.i ], [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %.sink105.i.i.us.i, %.sink.split.i.i.us.i ]
  %i.bm = phi i64 [ %.reass.i.i.us.i, %.split54.us.i.us.i ], [ %i.an, %bb.k ], [ %i.aj, %bb.j ], [ %.ph104.i.i.us.i, %.sink.split.i.i.us.i ] ; 2 uses
  %i.bn = sub i64 %i.bm, %i.z                     ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.i
  br i1 %i.bo, label %bb.c, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.split50.us.i.us.i._crit_edge:                    ; preds = %.split50.us.i.us.i, %bb.g
  %spec.select = select i1 %i.v, i64 %.sink105.i.i.us.i77, i64 %i.z
  %spec.select99 = select i1 %i.v, i64 %i.al, i64 %i.z
  %i.bp = icmp eq i64 %i.an, 0
  br i1 %i.bp, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

.split.i:                                         ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.bs = load i8, ptr %i.br, align 2, !range !8, !alias.scope !170
  %i.bt = trunc nuw i8 %i.bs to i1
  %.promoted125.i = load i8, ptr %i.bq, align 1, !alias.scope !170 ; 9 uses
  br i1 %i.bt, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i
  br i1 %i.j, label %.lr.ph.split.us.split.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.i
  br i1 %.not.i.i.i, label %.lr.ph.split.split.i.preheader.split.us, label %.lr.ph.split.split.i.preheader.split

.lr.ph.split.split.i.preheader.split.us:          ; preds = %.lr.ph.split.split.i.preheader
  %i.bu = load i8, ptr %i.l, align 1, !alias.scope !176, !noalias !175, !noundef !6
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %.lr.ph.split.split.i.preheader.split.us.split.us, label %.split133.us.i

.lr.ph.split.split.i.preheader.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us
  %i.bw = load i8, ptr %i.m, align 1, !noalias !177, !noundef !6
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %.lr.ph.split.split.i.us.us.us.preheader, label %.lr.ph.split.split.i.preheader.split.us.split.us.split

.lr.ph.split.split.i.us.us.us.preheader:          ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us
  %i.by = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.by, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us
  tail call void @llvm.assume(i1 %i.n)
  %i.bz = load i8, ptr %i.o, align 1, !noalias !177, !noundef !6
  %i.ca = icmp slt i8 %i.bz, -64
  br i1 %i.ca, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split
  tail call void @llvm.assume(i1 %i.p)
  %i.cb = load i8, ptr %i.q, align 1, !noalias !177, !noundef !6
  %i.cc = icmp slt i8 %i.cb, -64
  br i1 %i.cc, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.r)
  %i.cd = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.cd, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us
  %i.ce = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.ce, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.us.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.us.split.us.split
  %i.cf = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.cf, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split:             ; preds = %.lr.ph.split.split.i.preheader
  br i1 %i.k, label %.lr.ph.split.split.i.preheader.split.split.us, label %.split133.us.i

.lr.ph.split.split.i.preheader.split.split.us:    ; preds = %.lr.ph.split.split.i.preheader.split
  %i.cg = load i8, ptr %i.m, align 1, !noalias !177, !noundef !6
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %.lr.ph.split.split.i.us48.us.preheader, label %.lr.ph.split.split.i.preheader.split.split.us.split

.lr.ph.split.split.i.us48.us.preheader:           ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  %i.ci = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.ci, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us
  tail call void @llvm.assume(i1 %i.n)
  %i.cj = load i8, ptr %i.o, align 1, !noalias !177, !noundef !6
  %i.ck = icmp slt i8 %i.cj, -64
  br i1 %i.ck, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.split

.lr.ph.split.split.i.preheader.split.split.us.split.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split
  tail call void @llvm.assume(i1 %i.p)
  %i.cl = load i8, ptr %i.q, align 1, !noalias !177, !noundef !6
  %i.cm = icmp slt i8 %i.cl, -64
  br i1 %i.cm, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, label %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us
  tail call void @llvm.assume(i1 %i.r)
  %i.cn = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.cn, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split.split.us
  %i.co = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.co, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.split.i.preheader.split.split.us.split.split: ; preds = %.lr.ph.split.split.i.preheader.split.split.us.split
  %i.cp = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.cp, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i
  %i.cq = trunc nuw i8 %.promoted125.i to i1
  br i1 %i.cq, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

.split133.us.i:                                   ; preds = %.lr.ph.split.split.i.preheader.split, %.lr.ph.split.split.i.preheader.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1750) #55, !noalias !175
  unreachable

.split109.us.i:                                   ; preds = %.split48.i.us.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #55, !noalias !178
  unreachable

.split115.us.i:                                   ; preds = %.lr.ph289
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #55, !noalias !178
  unreachable

.split119.us.i:                                   ; preds = %bb.h
  %i.cr = add i64 %i.an, %i.e
  %umax72.i.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.i, i64 %i.cr)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax72.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #55, !noalias !178
  unreachable

.split52.us.i.i:                                  ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, -9223372036854775808) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #55, !noalias !178
  unreachable

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split: ; preds = %.lr.ph.split.split.i.us.us.us.preheader, %.lr.ph.split.split.i.us48.us.preheader, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split, %.lr.ph.split.us.split.i
  %.sroa.0.0.ph = phi i64 [ 0, %.lr.ph.split.us.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.us48.us.preheader ], [ %i.e, %.lr.ph.split.split.i.us.us.us.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  br label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit

_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.split50.us.i.us.i._crit_edge, %bb.b, %bb.c, %bb.l, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us, %.lr.ph.split.split.i.us48.us.preheader, %.lr.ph.split.split.i.us.us.us.preheader, %.lr.ph.split.us.split.i, %.split.us.i, %.split.i
  %.sroa.0.0 = phi i64 [ %i.e, %.lr.ph.split.split.i.us48.us.preheader ], [ 0, %.lr.ph.split.us.split.i ], [ 0, %.split.us.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split ], [ 0, %.split.i ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.us.us.us.preheader ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split.us.split.us ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split.us.split ], [ %i.e, %.lr.ph.split.split.i.preheader.split.split.us.split.split ], [ %.lcssa7184, %bb.c ], [ %i.e, %.lr.ph.split.split.i.preheader.split.us.split.us.split.split ], [ %.sroa.0.0.ph, %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern11StrSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit.sink.split ], [ %.lcssa7184, %bb.l ], [ %.lcssa7184, %bb.b ], [ 0, %.split50.us.i.us.i._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ct = insertvalue { ptr, i64 } %i.cs, i64 %.sroa.0.0, 1
  ret { ptr, i64 } %i.ct
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchescECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i ; 4 uses
  %i.c = icmp samesign eq i64 %.reass5.i, 0
  br i1 %i.c, label %_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !187, !noundef !6 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass5.i, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !187, !noundef !6 ; 3 uses
  %i.j = and i8 %i.i, 31
  %i.k = zext nneg i8 %i.j to i32
  %i.l = icmp slt i8 %i.i, -64
  br i1 %i.l, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i, label %bb.d

end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #57
          to label %.body.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures9GroupInfoECsEhZmuQNqkz_11ruff_linter.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 1096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(216) %i.k) #57
          to label %bb.h unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 1096
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11PikeVMCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(216) %i.l)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 1312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %i.m) #57
          to label %bb.k unwind label %bb.x

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures8CapturesECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 1312
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %i.o)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.h
  %.pn2.i = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn.i, %bb.h ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 1368
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.p) #57
          to label %.body8.i unwind label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 1368 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !range !11, !alias.scope !604, !noundef !6
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.body8.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.q

.body8.i:                                         ; preds = %bb.q, %bb.o, %bb.k
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.k ], [ %i.w, %bb.q ], [ %i.u, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.0.val) #57
          to label %.body10.i unwind label %bb.x

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa7onepass5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %bb.m
  %i.x = load i64, ptr %.0.val, align 8, !range !18, !alias.scope !605, !noundef !6
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.0.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(352) %i.aa) #57
          to label %.body10.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.val, i64 352
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(352) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.v

.body10.i:                                        ; preds = %bb.v, %bb.s, %.body8.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body8.i ], [ %i.ag, %bb.v ], [ %i.z, %bb.s ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 704 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !18, !alias.scope !606, !noundef !6
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.body10.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ad)
          to label %bb.z unwind label %bb.x

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers12OnePassCacheECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 704 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !18, !alias.scope !607, !noundef !6
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.u, %.body8.i, %bb.k, %bb.h, %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta8wrappers11HybridCacheECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.w
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #56
  ret void

bb.z:                                             ; preds = %bb.y, %bb.u, %.body10.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.y ], [ %.pn6.i, %bb.u ], [ %.pn6.i, %.body10.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #56
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !608

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #57
          to label %bb.c unwind label %bb.e, !inline_history !608

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !inline_history !608
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #56
  resume { ptr, i32 } %i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8) #56
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtCs2AWtUsOyxgP_3std4path4PathEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.g, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.e:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !8, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.g, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.e:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i32, ptr %i.a, align 8, !alias.scope !611, !noundef !6
  switch i32 %.val2.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 2, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 0, label %bb.c
  ], !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @159, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #55, !noalias !611
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !611, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsEhZmuQNqkz_11ruff_linter:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !718, !align !15, !noundef !6 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit9
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721), !noalias !719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722), !noalias !719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723), !noalias !719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724), !noalias !719
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 39
  %i.s = load i8, ptr %i.r, align 1, !range !23, !alias.scope !725, !noalias !719, !noundef !6
  %i.t = and i8 %i.s, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.t, -48
  br i1 %switch.i.i.i.i.i, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !719
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !727, !noalias !719, !nonnull !6, !noundef !6
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.u = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !728
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.x) #57
          to label %.body.i unwind label %bb.l, !noalias !719, !inline_history !686

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.i, %bb.h, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.y)
          to label %.noexc11 unwind label %bb.m, !noalias !719, !inline_history !686

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !719, !inline_history !686
  unreachable

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.w, %bb.k ]
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !719, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 56, i64 noundef 8) #56, !noalias !719, !inline_history !687
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit

.noexc11:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !719, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 56, i64 noundef 8) #56, !noalias !719, !inline_history !687
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit7, %bb.f
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit7 ], [ %.pn, %bb.f ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !729, !nonnull !6, !noundef !6
  %i.ad = icmp eq ptr %i.ac, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14, label %bb.n, !prof !14

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14 unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12: ; preds = %.noexc11, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !730, !nonnull !6, !noundef !6
  %i.ag = icmp eq ptr %i.af, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16, label %bb.o, !prof !14

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16 unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.n, %bb.q
  %.pn4 = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn2, %bb.n ], [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !731, !align !15, !noundef !6
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %common.resume, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %common.resume unwind label %bb.x, !inline_history !669

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !732, !align !15, !noundef !6 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737), !noalias !733
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !733
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 39
  %i.aq = load i8, ptr %i.ap, align 1, !range !23, !alias.scope !739, !noalias !733, !noundef !6
  %i.ar = and i8 %i.aq, -2
  %switch.i.i.i.i.i26 = icmp eq i8 %i.ar, -48
  br i1 %switch.i.i.i.i.i26, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !740), !noalias !733
  %.pn.i.i.i.i.i.i27 = load ptr, ptr %i.ao, align 8, !alias.scope !741, !noalias !733, !nonnull !6, !noundef !6
  %.sroa.0.0.i.i.i.i.i.i28 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i27, i64 -8
  %i.as = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i28, i64 1 release, align 8, !noalias !742
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30, !prof !9

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.av) #57
          to label %.body.i20 unwind label %bb.v, !noalias !733, !inline_history !686

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %bb.s, %bb.r, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24 unwind label %bb.w, !noalias !733, !inline_history !686

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !733, !inline_history !686
  unreachable

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

common.resume:                                    ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14, %.body.i20
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i21, %.body.i20 ], [ %.pn4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14 ], [ %.pn4, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.body.i20:                                        ; preds = %bb.u, %bb.w
  %eh.lpad-body.i21 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.au, %bb.u ]
  %.val1.i22 = load ptr, ptr %i.al, align 8, !alias.scope !733, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i22, i64 noundef 56, i64 noundef 8) #56, !noalias !733, !inline_history !687
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30
  %.val.i23 = load ptr, ptr %i.al, align 8, !alias.scope !733, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23, i64 noundef 56, i64 noundef 8) #56, !noalias !733, !inline_history !687
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24
  ret void

bb.x:                                             ; preds = %bb.p, %bb.n, %bb.f, %bb.d
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !754, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !754, !noundef !6 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !754, !inline_history !745

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body3, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body3, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #57
          to label %bb.c unwind label %bb.e, !noalias !754, !inline_history !745

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !754, !inline_history !745
  unreachable

.body3:                                           ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #56, !noalias !754
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !755, !nonnull !6, !noundef !6
  %i.p = icmp eq ptr %i.o, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.f, !prof !14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.q = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.q, i64 noundef 8) #56, !noalias !754
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %.body3
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.h

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !756, !nonnull !6, !noundef !6
  %i.t = icmp eq ptr %i.s, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1, label %bb.g, !prof !14

bb.g:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1: ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body3, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !762, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.a) #59
          to label %bb.c unwind label %.body, !noalias !762, !inline_history !21

.body:                                            ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #56, !noalias !762, !inline_history !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %.body
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, 0) %.val4, i64 noundef 1) #56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #56, !noalias !762, !inline_history !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.h, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val2, i64 noundef 1) #56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %.body
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.i) #57
          to label %common.resume unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !763, !nonnull !6, !noundef !6 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !763, !noundef !6 ; 6 uses
  %cond = icmp eq i64 %i.m, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.m
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5, %bb.e
  %.sroa.0.0.i.i6 = phi i64 [ %i.p, %bb.e ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.0.0.i.i6
  %i.p = add nuw i64 %.sroa.0.0.i.i6, 1           ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.o) #59
          to label %bb.e unwind label %bb.g, !noalias !763, !inline_history !761

bb.f:                                             ; preds = %.lr.ph8
  %i.q = add nuw i64 %.sroa.0.1.i.i7, 1           ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %.body.i, label %.lr.ph8

bb.g:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.m
  br i1 %i.t, label %.body.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i7 = phi i64 [ %i.q, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.u) #60
          to label %bb.f unwind label %bb.h, !noalias !763, !inline_history !761

bb.h:                                             ; preds = %.lr.ph8
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !763, !inline_history !761
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %.body.i ], [ %i.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.g
  %i.w = mul nuw nsw i64 %i.m, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, 0) %i.w, i64 noundef 8) #56, !noalias !763, !inline_history !764
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  %i.x = mul nuw nsw i64 %i.m, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef range(i64 1, 0) %i.x, i64 noundef 8) #56, !noalias !763, !inline_history !764
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit5, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i
  ret void

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !26, !noundef !6
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !791, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.d) #59
          to label %bb.d unwind label %.body.i, !noalias !791, !inline_history !21

.body.i:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 72, i64 noundef 8) #56, !noalias !791, !inline_history !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.g = load i8, ptr %i.f, align 1, !range !792, !alias.scope !793, !noundef !6
  %cond.i = icmp eq i8 %i.g, -40
  br i1 %cond.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i, !prof !794

bb.c:                                             ; preds = %.body.i
  %i.h = load ptr, ptr %0, align 8, !alias.scope !795, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !795, !noundef !6
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.h, i64 noundef %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.l, !noalias !789

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 72, i64 noundef 8) #56, !noalias !791, !inline_history !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.l = load i8, ptr %i.k, align 1, !range !792, !alias.scope !796, !noundef !6
  %cond5.i = icmp eq i8 %i.l, -40
  br i1 %cond5.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit4.i, !prof !794

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !alias.scope !797, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !797, !noundef !6
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit4.i unwind label %bb.f, !noalias !789

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.f, %bb.c, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.e, %bb.c ], [ %i.e, %.body.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i = load ptr, ptr %i.p, align 8, !alias.scope !789, !align !15, !noundef !6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEECsEhZmuQNqkz_11ruff_linter(ptr %.val2.i) #57
          to label %common.resume.i unwind label %bb.l, !noalias !789

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit4.i: ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !789, !align !15, !noundef !6 ; 6 uses
  %i.s = icmp eq ptr %.val.i, null
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit4.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.h, !noalias !789

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i)
          to label %bb.k unwind label %bb.i, !noalias !789

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !789
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.j, !noalias !789

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

common.resume.i:                                  ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.k ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.t, %bb.h ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #56, !noalias !789
  br label %common.resume.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #56, !noalias !789
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !789
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %i.y = icmp eq i64 %.val1, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementECsEhZmuQNqkz_11ruff_linter.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes19InterpolatedElementECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.n, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsEhZmuQNqkz_11ruff_linter.exit4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !17, !noundef !6
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.m
    i32 4, label %bb.o
    i32 5, label %bb.s
    i32 6, label %bb.x
    i32 7, label %bb.aa
    i32 8, label %bb.ad
    i32 9, label %bb.ah
    i32 10, label %bb.al
    i32 11, label %bb.ar
    i32 12, label %bb.av
    i32 13, label %bb.ax
    i32 14, label %bb.ba
    i32 15, label %bb.bc
    i32 16, label %bb.bl
    i32 17, label %bb.bn
    i32 18, label %bb.bx
    i32 19, label %bb.ce
    i32 20, label %bb.cq
    i32 21, label %bb.cw
    i32 22, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 23, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 24, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 25, label %bb.cz
    i32 26, label %bb.df
end_hunk_2
begin_hunk_3_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !985, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.an, !noalias !985, !inline_history !844

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #56, !noalias !985, !inline_history !844
  br label %.body64

.body64:                                          ; preds = %bb.an, %.body69
  %.pn.i3 = phi { ptr, i32 } [ %i.bs, %.body69 ], [ %i.bw, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo) #57
          to label %common.resume145 unwind label %bb.ao, !inline_history !841

bb.ao:                                            ; preds = %.body64, %.body69
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !inline_history !841
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #56, !noalias !985, !inline_history !844
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit61 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %common.resume145 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit61: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ar:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !986, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body75, !noalias !986, !inline_history !847

.body75:                                          ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #56, !noalias !986, !inline_history !847
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca) #57
          to label %common.resume145 unwind label %bb.as, !inline_history !848

bb.as:                                            ; preds = %.body75
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !inline_history !848
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #56, !noalias !986, !inline_history !847
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit72 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %common.resume145 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.av:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !987, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ci)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80 unwind label %bb.aw, !noalias !987, !inline_history !851

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80: ; preds = %bb.av
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 72, i64 noundef 8) #56, !noalias !987, !inline_history !851
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ax:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !988, !align !15, !noundef !6 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82 unwind label %bb.az, !noalias !989, !inline_history !856

bb.az:                                            ; preds = %bb.ay
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82: ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 72, i64 noundef 8) #56, !noalias !989
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ba:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !990, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87 unwind label %bb.bb, !noalias !990, !inline_history !859

bb.bb:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87: ; preds = %bb.ba
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 72, i64 noundef 8) #56, !noalias !990, !inline_history !859
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bc:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !991, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cs)
          to label %bb.be unwind label %.body91, !noalias !991, !inline_history !992

.body91:                                          ; preds = %bb.bc
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #56, !noalias !991, !inline_history !992
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load i64, ptr %i.cu, align 8, !alias.scope !993, !noundef !6 ; 2 uses
  %i.cv = icmp eq i64 %.val4.i, 0
  br i1 %i.cv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88, label %bb.bd

bb.bd:                                            ; preds = %.body91
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.cw, align 8, !alias.scope !993, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %.val4.i, i64 noundef 1) #56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #56, !noalias !991, !inline_history !992
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.cx, align 8, !alias.scope !993, !noundef !6 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i, 0
  br i1 %i.cy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.cz, align 8, !alias.scope !993, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88: ; preds = %bb.bd, %.body91
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.da) #57
          to label %common.resume145 unwind label %bb.bg, !inline_history !994

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !inline_history !994
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bf, %bb.be
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !995, !nonnull !6, !noundef !6 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !995, !noundef !6 ; 6 uses
  %cond = icmp eq i64 %i.df, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.bh:                                            ; preds = %.lr.ph
  %i.dg = icmp eq i64 %i.di, %i.df
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit, %bb.bh
  %.sroa.0.0.i.i154 = phi i64 [ %i.di, %bb.bh ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.sroa.0.0.i.i154
  %i.di = add nuw i64 %.sroa.0.0.i.i154, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dh)
          to label %bb.bh unwind label %bb.bj, !noalias !995, !inline_history !866

bb.bi:                                            ; preds = %.lr.ph156
  %i.dj = add nuw i64 %.sroa.0.1.i.i155, 1        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.df
  br i1 %i.dk, label %.body.i, label %.lr.ph156

bb.bj:                                            ; preds = %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = icmp eq i64 %i.di, %i.df
  br i1 %i.dm, label %.body.i, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.bj, %bb.bi
  %.sroa.0.1.i.i155 = phi i64 [ %i.dj, %bb.bi ], [ %i.di, %bb.bj ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.sroa.0.1.i.i155
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dn) #57
          to label %bb.bi unwind label %bb.bk, !noalias !995, !inline_history !866

bb.bk:                                            ; preds = %.lr.ph156
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !995, !inline_history !866
  unreachable

.body.i:                                          ; preds = %bb.bi, %bb.bj
  %i.dp = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dp, i64 noundef 8) #56, !noalias !995, !inline_history !996
  br label %common.resume145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bh
  %i.dq = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dq, i64 noundef 8) #56, !noalias !995, !inline_history !996
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bl:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !997, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body96, !noalias !997, !inline_history !998

.body96:                                          ; preds = %bb.bl
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #56, !noalias !997, !inline_history !998
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.du) #57
          to label %common.resume145 unwind label %bb.bm, !inline_history !999

bb.bm:                                            ; preds = %.body96
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !inline_history !999
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bl
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #56, !noalias !997, !inline_history !998
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.dw), !inline_history !999
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bn:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.dy = load i64, ptr %i.dx, align 8, !range !22, !alias.scope !1003, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dy, -2
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !1005, !noundef !6 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !1005, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #56, !noalias !1005
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.br:                                            ; preds = %bb.bo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %common.resume145 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.br
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bu:                                            ; preds = %bb.bn
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %common.resume145 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.bu
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bx:                                            ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !range !11, !alias.scope !1006, !noundef !6
  %.not.i.i.i5 = icmp eq i64 %i.ej, -1
  br i1 %.not.i.i.i5, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %common.resume145 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.by
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.cb:                                            ; preds = %bb.bx
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %common.resume145 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ce:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.eq = load i64, ptr %i.ep, align 8, !range !11, !alias.scope !1010, !noundef !6
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !1010, !noundef !6 ; 2 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !1010, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #56, !noalias !1010
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ch:                                            ; preds = %bb.ce
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ev = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RNCINvMNtCscdodAO9FK5_5alloc5sliceSRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImport7sort_byNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB1M_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0E0B1S_:bb.a
  %i.ap = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select21.i.i.i.i, i64 0)
  br label %_RNvXsP_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_5AliasNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsP_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_5AliasNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ap, %bb.j ], [ %i.x, %bb.f ], [ %..i.i.i.i, %bb.i ] ; 2 uses
  %i.aq = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.aq, label %bb.l, label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

bb.k:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !4566, !nonnull !6, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !4566, !noundef !6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !4567, !nonnull !6, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val1, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !4567, !noundef !6 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.ay)
  %i.az = tail call i32 @memcmp(ptr nonnull %i.as, ptr nonnull %i.aw, i64 %spec.store.select.i.i.i), !noalias !4573 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %i.au, %i.ay
  %spec.select.i.i.i = select i1 %i.bb, i64 %i.bc, i64 %i.ba ; 2 uses
  %i.bd = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  %i.be = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %i.be, label %bb.f, label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

bb.l:                                             ; preds = %_RNvXsP_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_5AliasNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.bg = load i32, ptr %i.bf, align 8, !alias.scope !4566, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val1, i64 72
  %i.bi = load i32, ptr %i.bh, align 8, !alias.scope !4567, !noundef !6
  %i.bj = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bg, i32 %i.bi)
  br label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !4576, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4576, !noundef !6 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !4577, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !4577, !noundef !6 ; 2 uses
  %spec.store.select.i2.i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.br)
  %i.bs = tail call i32 @memcmp(ptr nonnull %i.bl, ptr nonnull %i.bp, i64 %spec.store.select.i2.i.i), !noalias !4578 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = sub i64 %i.bn, %i.br
  %spec.select.i3.i.i = select i1 %i.bu, i64 %i.bv, i64 %i.bt ; 2 uses
  %i.bw = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i3.i.i, i64 0)
  %i.bx = icmp eq i64 %spec.select.i3.i.i, 0
  br i1 %i.bx, label %bb.n, label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !range !11, !alias.scope !4576, !noundef !6
  %.not.i5.i.i = icmp eq i64 %i.bz, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !range !11, !alias.scope !4577, !noundef !6 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not20.i.i.i = icmp eq i64 %i.cb, -1
  br i1 %.not20.i.i.i, label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit, label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not19.i.i.i = icmp ne i64 %i.cb, -1
  %..i.i.i = sext i1 %.not19.i.i.i to i8
  br label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !4576, !nonnull !6, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !4576, !noundef !6 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !4577, !nonnull !6, !noundef !6
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4577, !noundef !6 ; 2 uses
  %spec.store.select1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.cj)
  %i.ck = tail call i32 @memcmp(ptr nonnull %i.cd, ptr nonnull %i.ch, i64 %spec.store.select1.i.i.i), !noalias !4578 ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = icmp eq i32 %i.ck, 0
  %i.cn = sub i64 %i.cf, %i.cj
  %spec.select21.i.i.i = select i1 %i.cm, i64 %i.cn, i64 %i.cl
  %i.co = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select21.i.i.i, i64 0)
  br label %_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit

_RNCNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8settingsNtB7_8SettingsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt0Bd_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h, %_RNvXsP_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_5AliasNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.i = phi i8 [ %i.f, %bb.a ], [ 1, %bb.h ], [ %i.bj, %bb.l ], [ %.sroa.0.0.i.i.i.i, %_RNvXsP_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_5AliasNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.bd, %bb.k ], [ -1, %bb.e ], [ 1, %bb.d ], [ %i.co, %bb.q ], [ %i.bw, %bb.m ], [ %..i.i.i, %bb.p ], [ 1, %bb.o ]
  %i.cp = icmp eq i8 %.sroa.0.0.i.i, -1
  ret i1 %i.cp
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtNtB7_3vec3VecBy_EIB1o_jEE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28repeated_equality_comparison28repeated_equality_comparisons0_0E0B30_(ptr nofree readonly captures(none) %.24.val, ptr nofree readonly captures(none) %.24.val1) unnamed_addr #21 personality ptr @rust_eh_personality {
switch.lookup:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  %i.a = load i32, ptr %.24.val, align 8, !range !17, !noundef !6
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsEhZmuQNqkz_11ruff_linter9doc_linesNtB5_18StringLinesVisitorNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = getelementptr inbounds nuw i8, ptr %.24.val, i64 %switch.ext
  %.sroa.0.0.i.i = load i32, ptr %i.c, align 4, !noundef !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val1) ]
  %i.d = load i32, ptr %.24.val1, align 8, !range !17, !noundef !6
  %i.e = zext nneg i32 %i.d to i64
  %switch.gep5 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsEhZmuQNqkz_11ruff_linter9doc_linesNtB5_18StringLinesVisitorNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmt, i64 %i.e
  %switch.load6 = load i8, ptr %switch.gep5, align 1
  %switch.ext7 = zext i8 %switch.load6 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.24.val1, i64 %switch.ext7
  %.sroa.0.0.i.i6 = load i32, ptr %i.f, align 4, !noundef !6
  %i.g = icmp ult i32 %.sroa.0.0.i.i, %.sroa.0.0.i.i6
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0E0CsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !15, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !8, !noundef !6
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0CsEhZmuQNqkz_11ruff_linter.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #55
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0CsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !4579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #55
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !4585 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !4585 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !4585 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4585 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us, i64 %.sroa.623.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us.preheader, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us
  %i.p = add nuw i64 %.sroa.623.0.i.us19, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !6
  %i.t = load i8, ptr %i.r, align 1, !noundef !6
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !alias.scope !4583
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !alias.scope !4584
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !4583
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !4584
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_logging5rules27invalid_get_logger_argument27invalid_get_logger_argument0Bb_(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(144) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %.sroa.7.0 = select i1 %i.b, i64 %i.f, i64 %i.i
  %.sroa.01.0 = select i1 %i.b, ptr %i.d, ptr %i.c ; 4 uses
  %i.j = icmp eq i64 %.sroa.7.0, 2
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !6
  %i.m = icmp eq i64 %i.l, 7
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.sroa.01.0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = load i32, ptr %i.n, align 1
  %i.p = xor i32 %i.o, 1734831980
  %i.q = getelementptr i8, ptr %i.n, i64 3
  %i.r = load i32, ptr %i.q, align 1
  %i.s = xor i32 %i.r, 1735289191
  %i.t = or i32 %i.p, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !6
  %i.z = icmp eq i64 %i.y, 9
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 7306922648153646439
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = xor i64 %i.ag, 114
  %i.ai = or i64 %i.ad, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.al, %bb.e ], [ false, %bb.d ]
  %i.am = icmp eq i64 %i.a, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.i
  resume { ptr, i32 } %i.an

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules17invalid_rule_code17invalid_noqa_code0Bb_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9 = load i64, ptr %i.t, align 8, !noundef !6 ; 3 uses
  %.idx = mul nuw nsw i64 %.val9, 24
  %i.u = getelementptr inbounds nuw i8, ptr %.val8, i64 %.idx ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4638)
  %i.y = icmp eq i64 %.val9, 0
end_hunk_4
begin_hunk_5_@_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !8778, !noundef !6 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !8778, !noundef !6
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !8778, !noundef !6
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !8778, !noundef !6
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bw, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.by, i64 3, i64 4
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !8774, !noundef !6 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !8774, !nonnull !6, !noundef !6 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !8774, !noundef !6 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !8774, !nonnull !6, !noundef !6 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !8774, !noundef !6 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 4 uses
  br i1 %i.cb, label %bb.x, label %bb.aj

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.p ], [ %..i.i.peel, %bb.q ], [ 1, %bb.o ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8779)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp ult i64 %i.cm, %i.ac
  br i1 %.not.i.i.i, label %bb.u, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.t
  %i.co = icmp eq i64 %i.cm, %i.ac
  br i1 %i.co, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !8776, !noalias !8780, !noundef !6
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !8781, !noundef !6 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i: ; preds = %bb.w
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.u, %.split.i.i.i, %bb.j, %.split.i.i.i.peel
  %.lcssa150 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.j ], [ %i.cm, %.split.i.i.i ], [ %i.cm, %bb.u ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa150, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1749) #55, !noalias !8780
  unreachable

bb.x:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8784)
  %.promoted.i17 = load i64, ptr %i.ck, align 8, !alias.scope !8782 ; 2 uses
  %i.de = add i64 %.promoted.i17, %i.cl           ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i20, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i20:                                       ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !8782, !noundef !6
  %i.di = load i64, ptr %i.u, align 8, !alias.scope !8782 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !8782
  %umax49.i23 = tail call i64 @llvm.umax.i64(i64 %i.di, i64 range(i64 0, -9223372036854775808) %i.cj)
  %i.dl = add i64 %i.di, -1
  %.first_iter = icmp ult i64 %i.dl, %i.cj
  %exitcond.not.i25278.not = icmp ult i64 %i.di, %i.cj
  %invariant.op364 = sub i64 1, %i.di
  %.not281 = icmp eq i64 %i.di, 0
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i20
  %i.dm = phi i64 [ %.promoted.i17, %.lr.ph.i20 ], [ %i.dw, %bb.aa ] ; 6 uses
  %i.dn = phi i64 [ %i.de, %.lr.ph.i20 ], [ %i.dx, %bb.aa ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !8783, !noundef !6
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %i.dh
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.z, label %.preheader96.preheader

.preheader96.preheader:                           ; preds = %bb.y
  br i1 %exitcond.not.i25278.not, label %.lr.ph280, label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %i.dv = add i64 %i.dm, %i.cj
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ai, %bb.af, %bb.z
  %i.dw = phi i64 [ %i.ep, %bb.ai ], [ %i.dv, %bb.z ], [ %i.ej, %bb.af ] ; 2 uses
  %i.dx = add i64 %i.dw, %i.cl                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cf
  br i1 %i.dy, label %bb.y, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader96:                                     ; preds = %bb.ag
  %i.dz = add nuw i64 %.sroa.02.0.i24279, 1       ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.dz, %umax49.i23
  br i1 %exitcond.not.i25, label %.preheader.preheader, label %.lr.ph280

.preheader.preheader:                             ; preds = %.preheader96, %.preheader96.preheader
  br i1 %.not281, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph280:                                        ; preds = %.preheader96.preheader, %.preheader96
  %.sroa.02.0.i24279 = phi i64 [ %i.dz, %.preheader96 ], [ %i.di, %.preheader96.preheader ] ; 4 uses
  %i.ea = add i64 %.sroa.02.0.i24279, %i.dm       ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.cf
  br i1 %i.eb, label %bb.ag, label %bb.ah

.preheader:                                       ; preds = %bb.ad
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph283:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i28282 = phi i64 [ %i.ec, %.preheader ], [ %i.di, %.preheader.preheader ]
  %i.ec = add i64 %.sroa.2.0.i28282, -1           ; 5 uses
  br i1 %.first_iter, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph283
  %i.ed = add i64 %i.ec, %i.dm                    ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.cf
  br i1 %i.ee, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph283
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #55, !noalias !8785
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !8784, !noundef !6
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ed
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !8783, !noundef !6
  %.not.i29 = icmp eq i8 %i.eg, %i.ei
  br i1 %.not.i29, label %.preheader, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #55, !noalias !8785
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ej = add i64 %i.dm, %i.dk
  br label %bb.aa

bb.ag:                                            ; preds = %.lr.ph280
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i24279
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !8784, !noundef !6
  %i.em = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ea
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !8783, !noundef !6
  %.not21.i27 = icmp eq i8 %i.el, %i.en
  br i1 %.not21.i27, label %.preheader96, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph280
  %i.eo = add i64 %i.dm, %i.di
  %umax.i26 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.eo)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i26, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #55, !noalias !8785
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %.reass235.reass = add i64 %i.dm, %invariant.op364
  %i.ep = add i64 %.reass235.reass, %.sroa.02.0.i24279
  br label %bb.aa

bb.aj:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8788)
  %.promoted.i11 = load i64, ptr %i.ck, align 8, !alias.scope !8786 ; 2 uses
  %i.eq = add i64 %.promoted.i11, %i.cl           ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.cf
  br i1 %i.er, label %.lr.ph.i14, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !8786, !noundef !6
  %i.eu = load i64, ptr %i.u, align 8, !alias.scope !8786 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !8786 ; 2 uses
  %i.ex = sub i64 %i.cj, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i, %.lr.ph.i14
  %i.ey = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.ez = phi i64 [ %i.ca, %.lr.ph.i14 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.fa = phi i64 [ %i.eq, %.lr.ph.i14 ], [ %i.fj, %.sink.split.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !8787, !noundef !6
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fi = add i64 %i.ey, %i.cj
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.eu) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.cj)
  %exitcond.not.i15273.not = icmp ult i64 %.sroa.0.0.i.i, %i.cj
  br i1 %exitcond.not.i15273.not, label %.lr.ph275, label %.preheader35.preheader

.sink.split.i:                                    ; preds = %bb.av, %bb.as, %bb.al
  %.sink.i = phi i64 [ %i.ex, %bb.as ], [ 0, %bb.av ], [ 0, %bb.al ]
  %.ph71.i = phi i64 [ %i.fy, %bb.as ], [ %i.ge, %bb.av ], [ %i.fi, %bb.al ] ; 2 uses
  %i.fj = add i64 %.ph71.i, %i.cl                 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.cf
  br i1 %i.fk, label %bb.ak, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.an:                                            ; preds = %bb.at
  %i.fl = add nuw i64 %.sroa.02.0.i274, 1         ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %i.fl, %umax49.i
  br i1 %exitcond.not.i15, label %.preheader35.preheader, label %.lr.ph275

.preheader35.preheader:                           ; preds = %bb.an, %bb.am
  %i.fm = icmp ult i64 %i.ez, %i.eu
  br i1 %i.fm, label %.lr.ph277, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph275:                                        ; preds = %bb.am, %bb.an
  %.sroa.02.0.i274 = phi i64 [ %i.fl, %bb.an ], [ %.sroa.0.0.i.i, %bb.am ] ; 4 uses
  %i.fn = add i64 %.sroa.02.0.i274, %i.ey         ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.cf
  br i1 %i.fo, label %bb.at, label %bb.au

.preheader35:                                     ; preds = %bb.aq
  %i.fp = icmp ult i64 %i.ez, %i.fq
  br i1 %i.fp, label %.lr.ph277, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph277:                                        ; preds = %.preheader35.preheader, %.preheader35
  %.sroa.2.0.i276 = phi i64 [ %i.fq, %.preheader35 ], [ %i.eu, %.preheader35.preheader ]
  %i.fq = add i64 %.sroa.2.0.i276, -1             ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %i.cj
  br i1 %i.fr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph277
  %i.fs = add i64 %i.fq, %i.ey                    ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %i.cf
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph277
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #55, !noalias !8789
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !8788, !noundef !6
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fs
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !8787, !noundef !6
  %.not.i16 = icmp eq i8 %i.fv, %i.fx
  br i1 %.not.i16, label %.preheader35, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #55, !noalias !8789
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fy = add i64 %i.ey, %i.ew
  br label %.sink.split.i

bb.at:                                            ; preds = %.lr.ph275
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i274
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !8788, !noundef !6
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fn
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !8787, !noundef !6
  %.not21.i = icmp eq i8 %i.ga, %i.gc
  br i1 %.not21.i, label %bb.an, label %bb.av

bb.au:                                            ; preds = %.lr.ph275
  %i.gd = add i64 %i.ey, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.gd)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #55, !noalias !8789
  unreachable

bb.av:                                            ; preds = %bb.at
  %.reass.reass = add i64 %i.ey, %invariant.op
  %i.ge = add i64 %.reass.reass, %.sroa.02.0.i274
  br label %.sink.split.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader35.preheader, %.preheader35, %bb.aa, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i, %bb.w, %bb.k, %bb.aj, %bb.x, %bb.n, %bb.v, %.preheader.i4
  %.sroa.0.031 = phi i8 [ 1, %.preheader ], [ 0, %bb.x ], [ 0, %.preheader.i4 ], [ 1, %bb.v ], [ 1, %.preheader.preheader ], [ 1, %bb.n ], [ 1, %.preheader35 ], [ 0, %bb.aj ], [ %.promoted26.i, %bb.k ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i ], [ 1, %bb.w ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i ], [ 0, %bb.aa ], [ 0, %.sink.split.i ], [ 1, %.preheader35.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.aw:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8791)
  %i.gf = load i8, ptr %0, align 1, !alias.scope !8790, !noundef !6 ; 3 uses
  %i.gg = add nsw i64 %1, -1                      ; 2 uses
  %i.gh = icmp eq i64 %1, 2
  br i1 %i.gh, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %i.gi = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  br label %bb.ay

bb.ax:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.gj = icmp ult i64 %i.gi, %i.gl
  br i1 %i.gj, label %bb.ay, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

bb.ay:                                            ; preds = %.lr.ph, %bb.ax
  %i.gk = phi i64 [ %1, %.lr.ph ], [ %i.gl, %bb.ax ]
  %i.gl = add nsw i64 %i.gk, -1                   ; 6 uses
  %i.gm = icmp ult i64 %i.gl, %1
  br i1 %i.gm, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef range(i64 2, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #55, !noalias !8792
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !8790, !noalias !8793, !noundef !6 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.go, %i.gf
  br i1 %.not.i.not.i.i, label %bb.ax, label %bb.ba

bb.ba:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.gp = add nuw nsw i64 %1, 15
  %i.gq = icmp ult i64 %3, %i.gp
  br i1 %i.gq, label %.lr.ph.split.us.i.i, label %bb.bb

.thread.i:                                        ; preds = %bb.aw
  %i.gr = icmp ult i64 %3, 17
  br i1 %i.gr, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.gs = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !8790
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gu = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gv = shufflevector <16 x i8> %i.gu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bc

.lr.ph.split.us.i.i:                              ; preds = %bb.ba, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !8794, !noalias !8795
  %i.gw = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gw, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gx, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !8794, !noalias !8795
  %i.gy = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gy, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.gx, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.gz, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.gz = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gz
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.bc:                                            ; preds = %bb.bb, %.thread93.i
  %i.ha = phi i8 [ %.pre.i, %.thread93.i ], [ %i.go, %bb.bb ]
  %i.hb = phi <16 x i8> [ %i.gt, %.thread93.i ], [ %i.gv, %bb.bb ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.gl, %bb.bb ] ; 6 uses
  %i.hc = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8794
  store ptr %2, ptr %i.a, align 8, !noalias !8794
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hf, align 8, !noalias !8794
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.he, ptr %i.hg, align 8, !noalias !8794
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gg, ptr %i.hh, align 8, !noalias !8794
  %i.hi = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i7 = icmp ult i64 %i.hi, %3
  br i1 %.not.i7, label %.lr.ph.i10, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.bg, %bb.bc
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.bc ], [ %.sroa.014.2.3.i, %bb.bg ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.bc ], [ %i.je, %bb.bg ] ; 2 uses
  %i.hj = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hk = add i64 %.sroa.06.0.lcssa.i, %i.hj
  %i.hl = icmp uge i64 %i.hk, %3
  %i.hm = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond3105.i, label %._crit_edge.i9, label %.lr.ph107.i

.lr.ph.i10:                                       ; preds = %bb.bc, %bb.bg
  %.sroa.06.0103.i = phi i64 [ %i.je, %bb.bg ], [ 0, %bb.bc ] ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.hn, align 1, !alias.scope !8791, !noalias !8796
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ho, align 1, !alias.scope !8791, !noalias !8796
  %i.hp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.hb
  %i.hq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.hd
  %i.hr = and <16 x i1> %i.hp, %i.hq
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ht, align 1, !alias.scope !8791, !noalias !8796
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hu, align 1, !alias.scope !8791, !noalias !8796
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.hb
  %i.hw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.hd
  %i.hx = and <16 x i1> %i.hv, %i.hw
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hz, align 1, !alias.scope !8791, !noalias !8796
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !8791, !noalias !8796
  %i.ib = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.hb
  %i.ic = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.hd
  %i.id = and <16 x i1> %i.ib, %i.ic
  %i.ie = bitcast <16 x i1> %i.id to i16          ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.if, align 1, !alias.scope !8791, !noalias !8796
end_hunk_5
