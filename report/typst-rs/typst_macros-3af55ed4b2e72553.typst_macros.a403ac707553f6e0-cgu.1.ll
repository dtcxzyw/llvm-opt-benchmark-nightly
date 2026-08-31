Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.1?download=true
inline.NumInlined: 39
inline.NumDeleted: 34
begin_hunk_0_@_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros:bb.a
  %i.e = load ptr, ptr %i.b, align 8, !noalias !51
  %i.f = load ptr, ptr %i.a, align 8, !noalias !51
  %i.g = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsjMPGGl8VONr_3syn(ptr nonnull align 8 %i.a) #20, !noalias !51 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0
  %i.i = trunc i32 %i.h to i1
  br i1 %i.i, label %_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros.exit.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros.exit

_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros.exit.i.i: ; preds = %bb.b
  %i.j = extractvalue { i32, i32 } %i.g, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, -1
  br i1 %.not.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros.exit, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.i

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.i: ; preds = %_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros.exit.i.i
  %i.k = load i64, ptr %i.c, align 8, !noalias !51
  %i.l = load ptr, ptr %i.b, align 8, !noalias !51
  %i.m = load ptr, ptr %i.a, align 8, !noalias !51
  %i.n = tail call zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCse52LceO7DeS_12typst_macros(ptr nonnull %i.d, i32 %i.j) #20, !noalias !51
  br i1 %i.n, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCse52LceO7DeS_12typst_macros.exit.i
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
  store i64 %i.t, ptr %i.x, align 8, !alias.scope !48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %i.y, align 8, !alias.scope !48
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros.exit

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCse52LceO7DeS_12typst_macros.exit: ; preds = %bb.b, %_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros.exit.i.i, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCse52LceO7DeS_12typst_macros.exit.i.i ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !48
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern12is_suffix_ofCse52LceO7DeS_12typst_macros(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs1OFHugREOcC_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern13into_searcherCse52LceO7DeS_12typst_macros(ptr sret([104 x i8]) align 8 %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr sret([104 x i8]) align 8 %0, ptr %3, i64 %4, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXst_NtNtCs3oUPovFnLWP_4core3str7patternReNtB5_7Pattern15as_utf8_patternCse52LceO7DeS_12typst_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCse52LceO7DeS_12typst_macros(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8
  switch i64 %i.c, label %.loopexit [
    i64 0, label %.preheader
    i64 1, label %bb.y
    i64 2, label %bb.z
  ]

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

.loopexit:                                        ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit, %bb.a
  unreachable

thread-pre-split:                                 ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit
  %.pr = load i64, ptr %1, align 8, !noalias !54
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.p = phi i64 [ %.pr, %thread-pre-split ], [ 0, %.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.p, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.n, align 2, !noalias !54
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.sink.split.i, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !noalias !54 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !noalias !54 ; 5 uses
  %i.u = load i64, ptr %i.g, align 8, !noalias !54 ; 5 uses
  %.not40.i = icmp ult i64 %i.u, %i.t
  br i1 %.not40.i, label %bb.r, label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.d, align 8, !noalias !54
  %i.w = load i64, ptr %i.f, align 8, !noalias !54 ; 2 uses
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %.sink.split.i, label %bb.v

bb.g:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.m, align 8, !noalias !54 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = and i8 %i.y, 1
  %i.ab = xor i8 %i.aa, 1
  store i8 %i.ab, ptr %i.m, align 8, !noalias !54
  %i.ac = load i64, ptr %i.g, align 8, !noalias !54 ; 5 uses
  %i.ad = load ptr, ptr %i.e, align 8, !noalias !54 ; 2 uses
  %i.ae = load i64, ptr %i.f, align 8, !noalias !54 ; 3 uses
  %i.af = call { ptr, i64 } @_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCse52LceO7DeS_12typst_macros(i64 %i.ac, ptr %i.ad, i64 %i.ae) #20, !noalias !54 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 3 uses
  %.not43.i = icmp eq ptr %i.ag, null
  br i1 %.not43.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store ptr %i.ag, ptr %i.a, align 8, !noalias !54
  store ptr %i.ai, ptr %i.o, align 8, !noalias !54
  %i.aj = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECscIE41xXMWxr_4heck(ptr nonnull align 8 %i.a) #20, !noalias !54 ; 2 uses
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = extractvalue { i32, i32 } %i.aj, 1      ; 3 uses
  %i.am = trunc i32 %i.ak to i1
  br i1 %i.am, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr %i.ad, i64 %i.ae, i64 %i.ac, i64 %i.ae, ptr nonnull align 8 @73) #19, !noalias !54
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.n, align 2, !noalias !54
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k, %bb.j
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !54
  store i64 %i.ac, ptr %i.l, align 8, !alias.scope !54
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.an = icmp ult i32 %i.al, 128
  br i1 %i.an, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp ult i32 %i.al, 2048
  br i1 %i.ao, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp ult i32 %i.al, 65536
  %..i = select i1 %i.ap, i64 3, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01.0.i = phi i64 [ 2, %bb.o ], [ %..i, %bb.p ], [ 1, %bb.n ]
  %i.aq = load i64, ptr %i.g, align 8, !noalias !54
  %i.ar = add i64 %i.aq, %.sroa.01.0.i            ; 2 uses
  store i64 %i.ar, ptr %i.g, align 8, !noalias !54
  store i64 %i.ac, ptr %i.k, align 8, !alias.scope !54
  store i64 %i.ar, ptr %i.l, align 8, !alias.scope !54
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.loopexit45.i, %.preheader.preheader.i, %bb.t, %bb.q, %bb.m, %bb.l, %bb.f, %bb.e, %bb.d
  %.sink.i = phi i64 [ 1, %.loopexit45.i ], [ 0, %bb.t ], [ 1, %.preheader.preheader.i ], [ 2, %bb.l ], [ 0, %bb.m ], [ 1, %bb.q ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.d ] ; 2 uses
  store i64 %.sink.i, ptr %i.b, align 8, !alias.scope !54
  br label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit

bb.r:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.at = load i8, ptr %i.as, align 1, !noalias !54
  %i.au = load i8, ptr %i.m, align 8, !noalias !54
  %i.av = icmp eq i8 %i.at, %i.au
  %i.aw = add nuw i64 %i.u, 1                     ; 4 uses
  br i1 %i.av, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not41.i = icmp ult i64 %i.aw, %i.t
  br i1 %.not41.i, label %.loopexit.i.a, label %.preheader.preheader.i

bb.t:                                             ; preds = %bb.r
  store i64 %i.aw, ptr %i.g, align 8, !noalias !54
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !54
  store i64 %i.aw, ptr %i.l, align 8, !alias.scope !54
  br label %.sink.split.i

.loopexit.i.a:                                    ; preds = %bb.s, %bb.u
  %.sroa.08.0.i = phi i64 [ %i.ax, %bb.u ], [ %i.aw, %bb.s ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.08.0.i
  %3 = load i8, ptr %2, align 1, !noalias !54
  %4 = icmp sgt i8 %3, -65
  br i1 %4, label %.preheader.preheader.i, label %bb.u

.preheader.preheader.i:                           ; preds = %bb.u, %.loopexit.i.a, %bb.s
  %.sroa.02.0.i = phi i64 [ %i.t, %bb.s ], [ %.sroa.08.0.i, %.loopexit.i.a ], [ %i.t, %bb.u ] ; 2 uses
  store i64 %.sroa.02.0.i, ptr %i.g, align 8, !noalias !54
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !54
  store i64 %.sroa.02.0.i, ptr %i.l, align 8, !alias.scope !54
  br label %.sink.split.i

bb.u:                                             ; preds = %.loopexit.i.a
  %i.ax = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.ax, %i.t
  br i1 %exitcond50.not.i, label %.preheader.preheader.i, label %.loopexit.i.a

bb.v:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.h, align 8, !noalias !54
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = load ptr, ptr %i.e, align 8, !noalias !54
  %i.bb = load ptr, ptr %i.i, align 8, !noalias !54
  %i.bc = load i64, ptr %i.j, align 8, !noalias !54
  call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECscVvfRCjUNk2_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.g, ptr %i.ba, i64 %i.w, ptr %i.bb, i64 %i.bc, i1 zeroext %i.az) #20
  %i.bd = load i64, ptr %i.b, align 8             ; 2 uses
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.w, label %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit

bb.w:                                             ; preds = %bb.v
  %i.bf = load i64, ptr %i.k, align 8, !alias.scope !54
  %i.bg = load i64, ptr %i.l, align 8, !alias.scope !54 ; 2 uses
  %i.bh = load ptr, ptr %i.e, align 8, !noalias !54
  %i.bi = load i64, ptr %i.f, align 8, !noalias !54 ; 4 uses
  %.not.i = icmp ult i64 %i.bg, %i.bi
  br i1 %.not.i, label %.preheader44.split.i, label %.loopexit45.i

.preheader44.split.i:                             ; preds = %bb.w, %bb.x
  %.sroa.013.0.i = phi i64 [ %i.bl, %bb.x ], [ %i.bg, %bb.w ] ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.013.0.i
  %6 = load i8, ptr %5, align 1
  %7 = icmp sgt i8 %6, -65
  br i1 %7, label %.loopexit45.i, label %bb.x

.loopexit45.i:                                    ; preds = %bb.x, %.preheader44.split.i, %bb.w
  %.sroa.018.0.i = phi i64 [ %i.bi, %bb.w ], [ %.sroa.013.0.i, %.preheader44.split.i ], [ %i.bi, %bb.x ] ; 2 uses
  %i.bj = load i64, ptr %i.d, align 8, !noalias !54
  %i.bk = call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCscIE41xXMWxr_4heck(i64 %.sroa.018.0.i, i64 %i.bj) #20
  store i64 %i.bk, ptr %i.d, align 8, !noalias !54
  store i64 %i.bf, ptr %i.k, align 8, !alias.scope !54
  store i64 %.sroa.018.0.i, ptr %i.l, align 8, !alias.scope !54
  br label %.sink.split.i

bb.x:                                             ; preds = %.preheader44.split.i
  %i.bl = add i64 %.sroa.013.0.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.bi
  br i1 %exitcond.not.i, label %.loopexit45.i, label %.preheader44.split.i

_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit: ; preds = %.sink.split.i, %bb.v
  %i.bm = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.bd, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %i.bm, label %.loopexit [
    i64 0, label %bb.aa
    i64 1, label %thread-pre-split
    i64 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %.not = icmp ult i64 %i.bq, %i.bo
  br i1 %.not, label %bb.ae, label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  br i1 %i.bu, label %bb.ai, label %bb.ah

bb.aa:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load <2 x i64>, ptr %i.k, align 8
  store <2 x i64> %i.ce, ptr %i.cd, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCse52LceO7DeS_12typst_macros.exit
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %bb.ag, %bb.aa, %bb.ab, %bb.ad
  ret void

bb.ad:                                            ; preds = %bb.y
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ae:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = sub nuw i64 %i.bo, %i.bq
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bq
  %i.cl = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchrCse52LceO7DeS_12typst_macros(i8 %i.ci, ptr %i.ck, i64 %i.cj) #20 ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 0
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.co = extractvalue { i64, i64 } %i.cl, 1
  %i.cp = load i64, ptr %i.bp, align 8
  %i.cq = add i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.bp, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cq, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cr, ptr %i.ct, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.bo, ptr %i.bp, align 8
  store i64 0, ptr %0, align 8
  br label %bb.ac

bb.ah:                                            ; preds = %bb.z
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscVvfRCjUNk2_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.br, ptr %i.bw, i64 %i.by, ptr %i.ca, i64 %i.cc, i1 zeroext false) #20
  br label %bb.ac

bb.ai:                                            ; preds = %bb.z
  tail call void @_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECscVvfRCjUNk2_11proc_macro2(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.br, ptr %i.bw, i64 %i.by, ptr %i.ca, i64 %i.cc, i1 zeroext true) #20
  br label %bb.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_5chain5ChainINtNtBb_6option4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamEINtNtNtBb_5slice4iter4IterB1u_EENCNvB1w_16create_func_data0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1y_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6cloned6ClonedINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB1h_4item5FnArgEENCNvNtCse52LceO7DeS_12typst_macros5scope22rewrite_primitive_base0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB2h_(ptr %0, ptr align 8 %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_13struct_fields0ENCNvB1M_15create_new_func0ENCB3u_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_13struct_fields0ENCNvB2w_15accessor_fields0ENvB1M_24create_with_field_methodENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_IBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1M_NtB1M_4Elem11real_fields0ENCNvB2w_16construct_fields0ENCNvB2w_10set_fields0ENCNvB1M_15create_set_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1O_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENCNvB1I_15create_new_funcs0_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENCNvB1I_21create_construct_impls_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_13struct_fields0ENvB1I_12create_fieldENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIBR_INtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1I_NtB1I_4Elem11real_fields0ENCNvB2s_16construct_fields0ENCNvB1I_21create_construct_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1K_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtCscVvfRCjUNk2_11proc_macro25IdentENCNvNtCse52LceO7DeS_12typst_macros4elem19create_capable_func0ENCB2e_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB2i_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvB1E_23create_native_elem_impl0ENCB2m_s_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvB1E_23create_native_elem_impls0_0ENCB2m_s1_0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENCNvMs_B1E_NtB1E_4Elem11real_fields0ENCNvB1E_20create_inherent_impl0ENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCse52LceO7DeS_12typst_macros4func5ParamENCNvB1E_22create_wrapper_closure0ENvB1E_19create_param_parserENtNtNtCs5KiAP23wTyQ_5quote9___private3ext14RepIteratorExt15quote_into_iterB1G_(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

end_hunk_0
