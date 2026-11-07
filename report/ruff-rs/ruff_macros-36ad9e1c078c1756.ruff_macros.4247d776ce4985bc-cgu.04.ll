Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_macros-36ad9e1c078c1756.ruff_macros.4247d776ce4985bc-cgu.04?download=true
inline.NumInlined: 43
inline.NumDeleted: 38
begin_hunk_0_@_RNvXsI_NtNtCs4NRVxsYgnAr_4core4iter5rangelNtB5_4Step17forward_uncheckedCs5GOeAjNCyUy_11ruff_macros:bb.a
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i32, i1 } %i.b, 0
  ret i32 %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @88) #14
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 !guid !108 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = load i64, ptr %i.c, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.i = phi i64 [ %i.e, %.lr.ph ], [ %i.af, %bb.g ] ; 2 uses
  %i.j = phi i64 [ %i.d, %.lr.ph ], [ %i.z, %bb.g ] ; 2 uses
  %i.k = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.i, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8
  %i.m = sub nuw i64 %i.i, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.o = load i8, ptr %i.h, align 8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCs5GOeAjNCyUy_11ruff_macros(i8 %i.s, ptr %i.n, i64 %i.m) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = add i64 %i.w, 1
  %i.y = load i64, ptr %i.b, align 8
  %i.z = add i64 %i.x, %i.y                       ; 7 uses
  store i64 %i.z, ptr %i.b, align 8
  %i.aa = load i8, ptr %i.h, align 8              ; 2 uses
  %i.ab = zext i8 %i.aa to i64                    ; 4 uses
  %.not12 = icmp ult i64 %i.z, %i.ab
  br i1 %.not12, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.b, align 8
  br label %._crit_edge

bb.f:                                             ; preds = %bb.d
  %i.ad = sub nuw i64 %i.z, %i.ab                 ; 2 uses
  %i.ae = load i64, ptr %i.a, align 8
  %.not13 = icmp ugt i64 %i.z, %i.ae
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.j, %bb.d
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.z
  br i1 %i.ag, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %i.aa, 5
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.ab, i64 4, ptr nonnull align 8 @89) #11
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad
  %bcmp = tail call i32 @bcmp(ptr %i.aj, ptr nonnull %i.g, i64 %i.ab)
  %i.ak = icmp eq i32 %bcmp, 0
  br i1 %i.ak, label %bb.k, label %bb.g

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.am, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.a, %bb.e, %bb.k
  %.sink = phi i64 [ 0, %bb.e ], [ 1, %bb.k ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 !guid !113 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i, %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !noalias !115
  %i.f = load ptr, ptr %i.a, align 8, !noalias !115
  %i.g = tail call { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdrxF8xh5sUs_16ruff_source_file(ptr nonnull align 8 %i.a), !noalias !115 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros.exit

_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i32 } %i.g, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, -1
  br i1 %.not.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros.exit, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i: ; preds = %_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %i.k = load i64, ptr %i.c, align 8, !noalias !115
  %i.l = load ptr, ptr %i.b, align 8, !noalias !115
  %i.m = load ptr, ptr %i.a, align 8, !noalias !115
  %i.n = tail call zeroext i1 @_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsi37Mj7JUARJ_18ruff_python_trivia(ptr nonnull %i.d, i32 %i.j), !noalias !115
  br i1 %i.n, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.s = add i64 %i.k, %i.r                       ; 2 uses
  %i.t = sub i64 %i.s, %i.q
  %i.u = add i64 %i.p, %i.r
  %i.v = sub i64 %i.o, %i.u
  %i.w = add i64 %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.x, align 8, !alias.scope !114
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.y, align 8, !alias.scope !114
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros.exit

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros.exit: ; preds = %bb.b, %_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i.i, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %_RNvXs4_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5GOeAjNCyUy_11ruff_macros.exit.i.i ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !114
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern13into_searcherCs5GOeAjNCyUy_11ruff_macros(ptr sret([104 x i8]) align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 !guid !116 {
bb.a:
  tail call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr sret([104 x i8]) align 8 %0, ptr %3, i64 %4, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs5GOeAjNCyUy_11ruff_macros(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 !guid !119 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  br i1 %i.s, label %bb.y, label %bb.z

thread-pre-split:                                 ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit
  %.pr = load i64, ptr %1, align 8, !noalias !120
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %thread-pre-split
  %2 = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = trunc nuw i64 %2 to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.m, align 8, !noalias !120
  %i.ad = load i64, ptr %i.i, align 8, !noalias !120 ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %.sink.split.i, label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr %i.f, align 2, !noalias !120
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.g, align 8, !noalias !120 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %i.aj = and i8 %i.ah, 1
  %i.ak = xor i8 %i.aj, 1
  store i8 %i.ak, ptr %i.g, align 8, !noalias !120
  %i.al = load i64, ptr %i.e, align 8, !noalias !120 ; 5 uses
  %i.am = load ptr, ptr %i.h, align 8, !noalias !120 ; 2 uses
  %i.an = load i64, ptr %i.i, align 8, !noalias !120 ; 3 uses
  %i.ao = call { ptr, i64 } @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs5GOeAjNCyUy_11ruff_macros(i64 %i.al, ptr %i.am, i64 %i.an), !noalias !120 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0      ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store ptr %i.ap, ptr %i.a, align 8, !noalias !120
  store ptr %i.ar, ptr %i.j, align 8, !noalias !120
  %i.as = call { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.a), !noalias !120 ; 2 uses
  %i.at = extractvalue { i32, i32 } %i.as, 0
  %i.au = extractvalue { i32, i32 } %i.as, 1      ; 3 uses
  %i.av = trunc i32 %i.at to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.am, i64 %i.an, i64 %i.al, i64 %i.an, ptr nonnull align 8 @90) #11, !noalias !120
  unreachable

bb.i:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.f, align 2, !noalias !120
  br label %.sink.split.i

bb.l:                                             ; preds = %bb.j, %bb.i
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !120
  store i64 %i.al, ptr %i.l, align 8, !alias.scope !120
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.aw = icmp ult i32 %i.au, 128
  br i1 %i.aw, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp ult i32 %i.au, 2048
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = icmp ult i32 %i.au, 65536
  %..i = select i1 %i.ay, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.i = phi i64 [ 2, %bb.n ], [ %..i, %bb.o ], [ 1, %bb.m ]
  %i.az = load i64, ptr %i.e, align 8, !noalias !120
  %i.ba = add i64 %i.az, %.sroa.01.0.i            ; 2 uses
  store i64 %i.ba, ptr %i.e, align 8, !noalias !120
  store i64 %i.al, ptr %i.k, align 8, !alias.scope !120
  store i64 %i.ba, ptr %i.l, align 8, !alias.scope !120
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.split._crit_edge.i, %bb.p, %bb.l, %bb.k, %bb.e, %bb.d
  %.sink.i = phi i64 [ 1, %.split._crit_edge.i ], [ 2, %bb.k ], [ 0, %bb.l ], [ 1, %bb.p ], [ 2, %bb.d ], [ 2, %bb.e ] ; 2 uses
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !120
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit

bb.q:                                             ; preds = %bb.d
  %i.bb = load i64, ptr %i.n, align 8, !noalias !120
  %i.bc = icmp eq i64 %i.bb, -1
  %i.bd = load ptr, ptr %i.h, align 8, !noalias !120
  %i.be = load ptr, ptr %i.o, align 8, !noalias !120
  %i.bf = load i64, ptr %i.p, align 8, !noalias !120
  call void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsfcggljOhZkm_12regex_syntax(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.e, ptr %i.bd, i64 %i.ad, ptr %i.be, i64 %i.bf, i1 zeroext %i.bc)
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.r, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit

bb.r:                                             ; preds = %bb.q
  %i.bi = load i64, ptr %i.k, align 8, !alias.scope !120
  %i.bj = load i64, ptr %i.l, align 8, !alias.scope !120 ; 2 uses
  %i.bk = load ptr, ptr %i.h, align 8, !noalias !120
  %i.bl = load i64, ptr %i.i, align 8, !noalias !120 ; 3 uses
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %.split._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.sroa.02.015.i = phi i64 [ %i.bt, %bb.t ], [ %i.bj, %bb.r ] ; 5 uses
  %.not14.i = icmp ult i64 %.sroa.02.015.i, %i.bl
  br i1 %.not14.i, label %bb.s, label %.split.i

.split._crit_edge.i:                              ; preds = %bb.t, %bb.s, %.split.i, %bb.r
  %.sroa.02.0.lcssa.i = phi i64 [ 0, %bb.r ], [ %.sroa.02.015.i, %bb.s ], [ 0, %bb.t ], [ %i.bl, %.split.i ] ; 2 uses
  %i.bn = load i64, ptr %i.m, align 8, !noalias !120
  %i.bo = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCs4h2pZbAM0ZT_4heck(i64 %.sroa.02.0.lcssa.i, i64 %i.bn)
  store i64 %i.bo, ptr %i.m, align 8, !noalias !120
  store i64 %i.bi, ptr %i.k, align 8, !alias.scope !120
  store i64 %.sroa.02.0.lcssa.i, ptr %i.l, align 8, !alias.scope !120
  br label %.sink.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.bp = icmp eq i64 %.sroa.02.015.i, %i.bl
  br i1 %i.bp, label %.split._crit_edge.i, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.02.015.i
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %.split._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %i.bt = add i64 %.sroa.02.015.i, 1              ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.split._crit_edge.i, label %.lr.ph.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit: ; preds = %.sink.split.i, %bb.q
  %i.bv = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.bg, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bv, label %bb.u [
    i64 0, label %bb.v
    i64 1, label %thread-pre-split
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit
  unreachable

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.bx, ptr %i.bw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs5GOeAjNCyUy_11ruff_macros.exit
  store i64 0, ptr %0, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.z, %bb.v, %bb.w
  ret void

bb.y:                                             ; preds = %bb.b
  tail call void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfcggljOhZkm_12regex_syntax(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr %i.u, i64 %i.w, ptr %i.y, i64 %i.aa, i1 zeroext true)
  br label %bb.x

bb.z:                                             ; preds = %bb.b
  tail call void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsfcggljOhZkm_12regex_syntax(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr %i.u, i64 %i.w, ptr %i.y, i64 %i.aa, i1 zeroext false)
  br label %bb.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #1 !guid !123 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.pre = load i64, ptr %i.b, align 8, !noalias !124
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit, %bb.a
  %i.f = phi i64 [ %i.v, %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit ], [ %.pre, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %1, align 8, !noalias !124 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !noalias !124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store ptr %i.i, ptr %i.a, align 8, !noalias !124
  store ptr %i.j, ptr %i.d, align 8, !noalias !124
  %i.k = call { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdrxF8xh5sUs_16ruff_source_file(ptr nonnull align 8 %i.a), !noalias !124 ; 2 uses
  %i.l = extractvalue { i32, i32 } %i.k, 0
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit, label %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.thread

_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit: ; preds = %bb.b
  %i.n = extractvalue { i32, i32 } %i.k, 1
  %i.o = load ptr, ptr %i.d, align 8, !noalias !124
  %i.p = load ptr, ptr %i.a, align 8, !noalias !124
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = load i64, ptr %i.b, align 8, !noalias !124
  %i.t = add i64 %i.h, %i.q
  %i.u = add i64 %i.f, %i.r
  %.neg.i = sub i64 %i.t, %i.u
  %i.v = add i64 %.neg.i, %i.s                    ; 3 uses
  store i64 %i.v, ptr %i.b, align 8, !noalias !124
  %i.w = load i32, ptr %i.e, align 4, !noalias !124
  %.not = icmp eq i32 %i.n, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.y, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.thread, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 0, %_RNvXs0_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_backCs5GOeAjNCyUy_11ruff_macros.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens17into_token_streamCs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !127 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !128
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %_RNvYRNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens15to_token_streamCs5GOeAjNCyUy_11ruff_macros.exit unwind label %bb.b, !noalias !128

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #12
          to label %bb.d unwind label %bb.c, !noalias !128

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13, !noalias !128
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvYRNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens15to_token_streamCs5GOeAjNCyUy_11ruff_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE5firstB4_(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4path11PathSegmentNtNtB4_5token7PathSepE4lastB4_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCsfq6Q4Do6HaX_3syn4attr7parsing16DisplayAttrStyleECs5GOeAjNCyUy_11ruff_macros(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtNtCsfq6Q4Do6HaX_3syn4attr7parsing11DisplayPathEB14_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj3a_Kj2_ECs5GOeAjNCyUy_11ruff_macros(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCs5GOeAjNCyUy_11ruff_macros(ptr sret([24 x i8]) align 8, ptr, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCsfq6Q4Do6HaX_3syn5error4new2NtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr sret([24 x i8]) align 8, i32, i32, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 4 ptr @_RNvXseX_NtCsfq6Q4Do6HaX_3syn5tokenNtB6_2EqNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj23_Kj2_ECsfkBndxG8xzO_14regex_automata(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEB5_(ptr sret([24 x i8]) align 8, i32, ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsfq6Q4Do6HaX_3syn4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros18violation_metadata15get_rule_status0EBE_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfq6Q4Do6HaX_3syn4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros6config22parse_field_attributes0EBE_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCsfq6Q4Do6HaX_3syn4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros6config26parse_deprecated_attribute0EBE_(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 4 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn3macNtB2_14MacroDelimiter4span(ptr align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan5close(ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsK_CsghEUimwObfx_11proc_macro2NtB5_11TokenStreamNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfq6Q4Do6HaX_3syn5parse12parse_scopedNCINvNtB4_4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros18violation_metadata15get_rule_status0E0EB18_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfq6Q4Do6HaX_3syn5parse12parse_scopedNCINvNtB4_4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros6config22parse_field_attributes0E0EB18_(ptr sret([24 x i8]) align 8, ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfq6Q4Do6HaX_3syn5parse12parse_scopedNCINvNtB4_4meta6parserNCNvNtCs5GOeAjNCyUy_11ruff_macros6config26parse_deprecated_attribute0E0EB18_(ptr sret([24 x i8]) align 8, ptr align 8, ptr align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfq6Q4Do6HaX_3syn5parse12parse_scopedNvYNtNtCs5GOeAjNCyUy_11ruff_macros9cache_key23CacheKeyFieldAttributesNtB2_5Parse5parseEBN_(ptr sret([24 x i8]) align 8, i32, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNCNvMs2_NtNtNtCsfkBndxG8xzO_14regex_automata4util4pool5innerINtB7_4PoolNtNtNtBd_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB18_NtNtB2e_6marker4SendNtNtNtB2e_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE3get0Cs5GOeAjNCyUy_11ruff_macros(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNCNvMs2_NtNtNtCsfkBndxG8xzO_14regex_automata4util4pool5innerINtB7_4PoolNtNtNtBd_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB18_NtNtB2e_6marker4SendNtNtNtB2e_5panic11unwind_safe13RefUnwindSafeNtB3n_10UnwindSafeNtB33_4SyncEL_EE9put_value0Cs5GOeAjNCyUy_11ruff_macros(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8Cs5GOeAjNCyUy_11ruff_macros(ptr align 8, i8) unnamed_addr #1
end_hunk_0
