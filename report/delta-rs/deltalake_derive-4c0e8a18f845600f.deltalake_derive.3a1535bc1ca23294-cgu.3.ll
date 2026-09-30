Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-4c0e8a18f845600f.deltalake_derive.3a1535bc1ca23294-cgu.3?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !20
  %i.e = load ptr, ptr %i.a, align 8, !noalias !20
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !20 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !20
  %i.i = load ptr, ptr %i.a, align 8, !noalias !20
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !20
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !19
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !19
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !26
  %i.e = load ptr, ptr %i.a, align 8, !noalias !26
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !26 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !26
  %i.i = load ptr, ptr %i.a, align 8, !noalias !26
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !26
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !25
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !25
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %1, %3
  br i1 %i.q, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a, %bb.aw, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.g, %bb.av
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.x, %bb.g ], [ %i.fw, %bb.av ], [ %i.cr, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit ], [ %i.fx, %bb.aw ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %1, %3
  br i1 %i.s, label %bb.aw, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %1, 33
  br i1 %i.t, label %bb.af, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = load i8, ptr %0, align 1
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8 %i.u, ptr %2, i64 %3) #15
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = icmp eq i64 %i.w, 1
  br label %bb.c

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.f
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.n, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.n, align 8, !noalias !31
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  br i1 %i.z, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load i64, ptr %i.am, align 8, !noalias !31
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !31 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !31 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !noalias !31 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !noalias !31 ; 2 uses
  br i1 %i.ao, label %bb.ad, label %bb.ae

bb.j:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !31
  %i.ax = load i64, ptr %i.n, align 8, !noalias !33
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.ai, align 8, !noalias !33
  %i.ba = load i64, ptr %i.ae, align 8, !noalias !33 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.sink.split.i.i, label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.ab, align 2, !noalias !33
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i8, ptr %i.ac, align 8, !noalias !33 ; 2 uses
  %4 = trunc nuw i8 %i.be to i1                   ; 2 uses
  %i.bf = and i8 %i.be, 1
  %i.bg = xor i8 %i.bf, 1
  store i8 %i.bg, ptr %i.ac, align 8, !noalias !33
  %i.bh = load i64, ptr %i.aa, align 8, !noalias !33 ; 5 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !noalias !33 ; 2 uses
  %i.bj = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.bk = call { ptr, i64 } @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs4ZaLwAtrTbk_16deltalake_derive(i64 %i.bh, ptr %i.bi, i64 %i.bj) #15, !noalias !33 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store ptr %i.bl, ptr %i.l, align 8, !noalias !33
  store ptr %i.bn, ptr %i.af, align 8, !noalias !33
  %i.bo = call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.l) #15, !noalias !33 ; 2 uses
  %5 = extractvalue { i32, i32 } %i.bo, 0
  %i.bp = extractvalue { i32, i32 } %i.bo, 1      ; 3 uses
  %6 = trunc i32 %5 to i1
  br i1 %6, label %7, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr %i.bi, i64 %i.bj, i64 %i.bh, i64 %i.bj, ptr nonnull align 8 @5) #16, !noalias !33
  unreachable

7:                                                ; preds = %bb.n
  br i1 %4, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  br i1 %4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.ab, align 2, !noalias !33
  br label %.sink.split.i.i

bb.r:                                             ; preds = %bb.p, %7
  store i64 %i.bh, ptr %i.ag, align 8, !alias.scope !32, !noalias !31
  store i64 %i.bh, ptr %i.ah, align 8, !alias.scope !32, !noalias !31
  br label %.sink.split.i.i

bb.s:                                             ; preds = %7
  %i.bq = icmp ult i32 %i.bp, 128
  br i1 %i.bq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = icmp ult i32 %i.bp, 2048
  br i1 %i.br, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp ult i32 %i.bp, 65536
  %..i.i = select i1 %i.bs, i64 3, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.t ], [ %..i.i, %bb.u ], [ 1, %bb.s ]
  %i.bt = load i64, ptr %i.aa, align 8, !noalias !33
  %i.bu = add i64 %i.bt, %.sroa.01.0.i.i          ; 2 uses
  store i64 %i.bu, ptr %i.aa, align 8, !noalias !33
  store i64 %i.bh, ptr %i.ag, align 8, !alias.scope !32, !noalias !31
  store i64 %i.bu, ptr %i.ah, align 8, !alias.scope !32, !noalias !31
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.split._crit_edge.i.i, %bb.v, %bb.r, %bb.q, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.q ], [ 0, %bb.r ], [ 1, %bb.v ], [ 1, %.split._crit_edge.i.i ], [ 2, %bb.k ], [ 2, %bb.l ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.m, align 8, !alias.scope !32, !noalias !31
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.w:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.aj, align 8, !noalias !33
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.by = load ptr, ptr %i.ak, align 8, !noalias !33
  %i.bz = load i64, ptr %i.al, align 8, !noalias !33
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.aa, ptr %i.bx, i64 %i.ba, ptr %i.by, i64 %i.bz, i1 zeroext %i.bw) #15, !noalias !31
  %i.ca = load i64, ptr %i.m, align 8, !noalias !31 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.x, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cc = load i64, ptr %i.ag, align 8, !alias.scope !32, !noalias !31
  %i.cd = load i64, ptr %i.ah, align 8, !alias.scope !32, !noalias !31 ; 2 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !noalias !33
  %i.cf = load i64, ptr %i.ae, align 8, !noalias !33 ; 3 uses
  %i.cg = icmp eq i64 %i.cd, 0
  br i1 %i.cg, label %.split._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.z
  %.sroa.02.015.i.i = phi i64 [ %i.cn, %bb.z ], [ %i.cd, %bb.x ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.cf
  br i1 %.not14.i.i, label %bb.y, label %.split.i.i

.split._crit_edge.i.i:                            ; preds = %bb.z, %bb.y, %.split.i.i, %bb.x
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.x ], [ %i.cf, %.split.i.i ], [ 0, %bb.z ], [ %.sroa.02.015.i.i, %bb.y ] ; 2 uses
  %i.ch = load i64, ptr %i.ai, align 8, !noalias !33
  %i.ci = call i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64 %.sroa.02.0.lcssa.i.i, i64 %i.ch) #15, !noalias !31
  store i64 %i.ci, ptr %i.ai, align 8, !noalias !33
  store i64 %i.cc, ptr %i.ag, align 8, !alias.scope !32, !noalias !31
  store i64 %.sroa.02.0.lcssa.i.i, ptr %i.ah, align 8, !alias.scope !32, !noalias !31
  br label %.sink.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.cj = icmp eq i64 %.sroa.02.015.i.i, %i.cf
  br i1 %i.cj, label %.split._crit_edge.i.i, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.02.015.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !31
  %i.cm = icmp sgt i8 %i.cl, -65
  br i1 %i.cm, label %.split._crit_edge.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %.split.i.i
  %i.cn = add i64 %.sroa.02.015.i.i, 1            ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.split._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.w, %.sink.split.i.i
  %i.cp = phi i64 [ %.sink.i.i, %.sink.split.i.i ], [ %i.ca, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !31
  switch i64 %i.cp, label %bb.aa [
    i64 0, label %bb.ab
    i64 1, label %bb.j
    i64 2, label %bb.ac
  ]

bb.aa:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  unreachable

bb.ab:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 1, ptr %i.o, align 8, !alias.scope !31
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ac:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 0, ptr %i.o, align 8, !alias.scope !31
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ad:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext true) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ae:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext false) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.cq = load i64, ptr %i.o, align 8
  %i.cr = icmp eq i64 %i.cq, 1
  br label %bb.c

bb.af:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %1, ptr %i.cs, align 8
  %i.ct = load i8, ptr %0, align 1
  store i8 %i.ct, ptr %i.j, align 1
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = icmp eq i64 %1, 2
  br i1 %i.cv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.cw, ptr %i.h, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.cx, align 8
  store ptr %0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.cy = call { i64, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.ai, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %storemerge.i = phi i64 [ %i.dd, %bb.ai ], [ 1, %bb.af ] ; 4 uses
  store i64 %storemerge.i, ptr %i.i, align 8
  %i.db = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.dc = icmp ult i64 %3, %i.db
  br i1 %i.dc, label %bb.au, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dd = extractvalue { i64, i64 } %i.cy, 1
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  %i.de = load i8, ptr %i.j, align 1
  %i.df = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dg, ptr %i.f, align 16
  %i.dh = icmp ult i64 %storemerge.i, %1
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge.i
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dl, ptr %i.e, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %2, ptr %i.d, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dm, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.cu, ptr %i.dp, align 8
  store ptr %2, ptr %i.c, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.dt, align 8
  %i.du = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.du, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i4

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 %storemerge.i, i64 range(i64 2, 33) %1, ptr nonnull align 8 @3) #16
  unreachable

.preheader.i4:                                    ; preds = %bb.ap, %bb.ak
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.ak ], [ %i.ev, %bb.ap ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.ak ], [ %.sroa.014.2.3.i, %bb.ap ] ; 2 uses
  %i.dv = add i64 %.sroa.06.0.lcssa.i, %i.db
  %i.dw = icmp uge i64 %i.dv, %3
  %i.dx = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
end_hunk_0
