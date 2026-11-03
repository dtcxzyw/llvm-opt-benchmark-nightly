Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-cd958cf35e628889.build_script_build.e18b1112bc681192-cgu.2?download=true
inline.NumInlined: 34
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsjmyNHyKimsw_18build_script_build:bb.a
  %i.o = load i8, ptr %i.h, align 8               ; 2 uses
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = icmp ult i64 %i.m, 16
  br i1 %i.t, label %.preheader.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

.preheader.i:                                     ; preds = %bb.c
  %.not.i = icmp eq i64 %i.i, %i.j
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.sroa.01.05.i = phi i64 [ %i.x, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.05.i
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, %i.s
  br i1 %i.w, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit: ; preds = %bb.c
  %i.y = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 %i.s, ptr %i.n, i64 %i.m) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread.loopexit20_crit_edge

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread.loopexit20_crit_edge: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit
  %.pre45.pre = load i64, ptr %i.c, align 8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit
  %i.ab = extractvalue { i64, i64 } %i.y, 1
  %.pre = load i64, ptr %i.b, align 8
  %.pre44 = load i8, ptr %i.h, align 8            ; 2 uses
  %.pre47 = zext i8 %.pre44 to i64
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16: ; preds = %.lr.ph.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge
  %.pre-phi = phi i64 [ %.pre47, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %i.ac = phi i8 [ %.pre44, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge ], [ %i.o, %.lr.ph.i ]
  %i.ad = phi i64 [ %.pre, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge ], [ %i.j, %.lr.ph.i ]
  %.sroa.4.0.i19 = phi i64 [ %i.ab, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16_crit_edge ], [ %.sroa.01.05.i, %.lr.ph.i ]
  %i.ae = add i64 %.sroa.4.0.i19, 1
  %i.af = add i64 %i.ae, %i.ad                    ; 7 uses
  store i64 %i.af, ptr %i.b, align 8
  %.not12 = icmp ult i64 %i.af, %.pre-phi
  br i1 %.not12, label %bb.f, label %bb.e

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread: ; preds = %.preheader.i, %bb.d, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread.loopexit20_crit_edge
  %i.ag = phi i64 [ %i.i, %bb.d ], [ %.pre45.pre, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit._RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread.loopexit20_crit_edge ], [ %i.i, %.preheader.i ]
  store i64 %i.ag, ptr %i.b, align 8
  br label %._crit_edge

bb.e:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16
  %i.ah = sub nuw i64 %i.af, %.pre-phi            ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8
  %.not13 = icmp ugt i64 %i.af, %i.ai
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread16
  %i.aj = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.af
  br i1 %i.ak, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.al = icmp ult i8 %i.ac, 5
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %.pre-phi, i64 4, ptr nonnull align 8 @38) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah
  %bcmp = tail call i32 @bcmp(ptr %i.an, ptr nonnull %i.g, i64 %.pre-phi)
  %i.ao = icmp eq i32 %bcmp, 0
  br i1 %i.ao, label %bb.j, label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.aq, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.f, %bb.a, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread, %bb.j
  %.sink = phi i64 [ 0, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit.thread ], [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher8haystackCsjmyNHyKimsw_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher10next_matchB1b_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher4nextB19_.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !27
  %i.e = load ptr, ptr %i.a, align 8, !noalias !27
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsjmyNHyKimsw_18build_script_build(ptr nonnull align 8 %i.a), !noalias !27 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher10next_matchB13_.exit, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher4nextB19_.exit.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher4nextB19_.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !27
  %i.i = load ptr, ptr %i.a, align 8, !noalias !27
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCs4NRVxsYgnAr_4core3str7patternNCNvCsjmyNHyKimsw_18build_script_build4main0NtB5_11MultiCharEq7matchesBI_(ptr nonnull %i.c, i32 %i.g), !noalias !27
  br i1 %i.j, label %bb.c, label %bb.b

bb.c:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher4nextB19_.exit.i
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
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !26
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher10next_matchB13_.exit

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern19MultiCharEqSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher10next_matchB13_.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !26
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXso_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_21CharPredicateSearcherNCNvCsjmyNHyKimsw_18build_script_build4main0ENtB5_8Searcher8haystackB1b_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern12is_prefix_ofCsjmyNHyKimsw_18build_script_build(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdB6qrhj7hiN_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern12is_suffix_ofCsjmyNHyKimsw_18build_script_build(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsdB6qrhj7hiN_9addr2line(ptr %2, i64 %3, ptr %0, i64 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_inCsjmyNHyKimsw_18build_script_build(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 16 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [104 x i8], align 8               ; 20 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %3
  br i1 %i.o, label %bb.c, label %bb.d

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit: ; preds = %.lr.ph272.a, %bb.at, %.preheader, %.lr.ph.i, %bb.bb, %.loopexit.i, %.loopexit11.i, %.preheader.preheader.split, %bb.aq, %bb.g, %bb.d, %bb.a, %bb.bs, %bb.br
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ %i.ks, %bb.br ], [ true, %.preheader ], [ %i.kt, %bb.bs ], [ %i.w, %bb.g ], [ true, %.loopexit11.i ], [ false, %.loopexit.i ], [ %i.fw, %bb.bb ], [ false, %bb.aq ], [ %i.z, %.lr.ph.i ], [ true, %.preheader.preheader.split ], [ true, %.lr.ph272.a ], [ false, %bb.at ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %1, %3
  br i1 %i.q, label %bb.bs, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %1, 33
  br i1 %i.r, label %bb.bc, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = load i8, ptr %0, align 1                 ; 2 uses
  %i.t = icmp ult i64 %3, 16
  br i1 %i.t, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 %i.s, ptr %2, i64 %3)
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = icmp eq i64 %i.v, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.aa, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, %i.s                    ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %3
  %or.cond = select i1 %i.z, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit, label %.lr.ph.i

bb.h:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containsCsjmyNHyKimsw_18build_script_build.exit, %bb.e
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.l, ptr %2, i64 %3, ptr %0, i64 %1)
  %i.ab = load i64, ptr %i.l, align 8, !noalias !36
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 2 uses
  br i1 %i.ac, label %bb.i, label %.preheader.i4

.preheader.i4:                                    ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !36
  %i.aq = icmp eq i64 %i.ap, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !36 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !36 ; 8 uses
  %i.av = load ptr, ptr %i.ae, align 8, !noalias !36 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !36 ; 7 uses
  br i1 %i.aq, label %bb.aq, label %bb.bb

bb.j:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsjmyNHyKimsw_18build_script_build.exit.i, %.preheader.i4
  %i.ay = phi i64 [ 0, %.preheader.i4 ], [ %.pre.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsjmyNHyKimsw_18build_script_build.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.ak, align 8, !noalias !37 ; 6 uses
  %i.bb = load i64, ptr %i.ai, align 8, !noalias !37 ; 10 uses
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %.loopexit.i, label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bd = load i8, ptr %i.af, align 2, !noalias !37
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i8, ptr %i.ag, align 8, !noalias !37 ; 2 uses
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  %i.bh = and i8 %i.bf, 1
  %i.bi = xor i8 %i.bh, 1
  store i8 %i.bi, ptr %i.ag, align 8, !noalias !37
  %i.bj = load i64, ptr %i.ad, align 8, !noalias !37 ; 2 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !noalias !37 ; 2 uses
  %i.bl = load i64, ptr %i.ai, align 8, !noalias !37 ; 3 uses
  %i.bm = call { ptr, i64 } @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCsjmyNHyKimsw_18build_script_build(i64 %i.bj, ptr %i.bk, i64 %i.bl), !noalias !37 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  store ptr %i.bn, ptr %i.k, align 8, !noalias !37
  store ptr %i.bp, ptr %i.aj, align 8, !noalias !37
  %i.bq = call { i32, i32 } @_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjmyNHyKimsw_18build_script_build(ptr nonnull align 8 %i.k), !noalias !37 ; 2 uses
  %i.br = extractvalue { i32, i32 } %i.bq, 0
  %i.bs = extractvalue { i32, i32 } %i.bq, 1      ; 3 uses
  %i.bt = trunc i32 %i.br to i1
  br i1 %i.bt, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr %i.bk, i64 %i.bl, i64 %i.bj, i64 %i.bl, ptr nonnull align 8 @39) #19, !noalias !37
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.bg, label %.loopexit11.i, label %bb.r

bb.q:                                             ; preds = %bb.n
  br i1 %i.bg, label %.loopexit11.i, label %.loopexit.i

bb.r:                                             ; preds = %bb.p
  %i.bu = icmp ult i32 %i.bs, 128
  br i1 %i.bu, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = icmp ult i32 %i.bs, 2048
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = icmp ult i32 %i.bs, 65536
  %..i.i = select i1 %i.bw, i64 3, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.s ], [ %..i.i, %bb.t ], [ 1, %bb.r ]
  %i.bx = load i64, ptr %i.ad, align 8, !noalias !37
  %i.by = add i64 %i.bx, %.sroa.01.0.i.i
  store i64 %i.by, ptr %i.ad, align 8, !noalias !37
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsjmyNHyKimsw_18build_script_build.exit.i

bb.v:                                             ; preds = %bb.k
  %i.bz = load i64, ptr %i.al, align 8, !noalias !37
  %i.ca = icmp eq i64 %i.bz, -1                   ; 5 uses
  %i.cb = load ptr, ptr %i.ah, align 8, !noalias !37 ; 3 uses
  %i.cc = load ptr, ptr %i.ae, align 8, !noalias !37 ; 2 uses
  %i.cd = load i64, ptr %i.am, align 8, !noalias !37 ; 7 uses
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  %i.cf = add i64 %i.ce, %i.ba                    ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bb
  br i1 %i.cg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.ch = add i64 %i.cd, %i.ba                    ; 3 uses
  br label %bb.w

._crit_edge.i.i.i:                                ; preds = %bb.aa, %bb.v
  store i64 %i.bb, ptr %i.ak, align 8, !noalias !38
  br label %.loopexit.i.i

bb.w:                                             ; preds = %bb.aa, %.lr.ph.i.i.i
  %i.ci = phi i64 [ %i.cf, %.lr.ph.i.i.i ], [ %i.cu, %bb.aa ]
  %i.cj = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.ct, %bb.aa ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ba, %i.cj
  br i1 %.not.i.i.i, label %bb.x, label %.loopexit.i.i

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ci
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !38
  %i.cm = load i64, ptr %i.an, align 8, !noalias !38
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cp, %i.cm
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i64 %i.ch, ptr %i.ak, align 8, !noalias !38
  br i1 %i.ca, label %bb.aa, label %.sink.split.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cs = load i64, ptr %i.ad, align 8, !noalias !38 ; 2 uses
  br i1 %i.ca, label %bb.ac, label %bb.ab

.sink.split.i.i.i:                                ; preds = %bb.an, %bb.ak, %bb.y
  %.sink92.i.i.i = phi i64 [ 0, %bb.an ], [ %i.dp, %bb.ak ], [ 0, %bb.y ]
  %.ph.i.i.i = phi i64 [ %i.dy, %bb.an ], [ %i.do, %bb.ak ], [ %i.ch, %bb.y ]
  store i64 %.sink92.i.i.i, ptr %i.al, align 8, !noalias !38
  br label %bb.aa

bb.aa:                                            ; preds = %bb.an, %bb.aj, %.sink.split.i.i.i, %bb.y
  %i.ct = phi i64 [ %i.dy, %bb.an ], [ %i.do, %bb.aj ], [ %i.ch, %bb.y ], [ %.ph.i.i.i, %.sink.split.i.i.i ] ; 2 uses
  %i.cu = add i64 %i.ct, %i.ce                    ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.bb
  br i1 %i.cv, label %bb.w, label %._crit_edge.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cw = load i64, ptr %i.al, align 8, !noalias !38
  %i.cx = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsjmyNHyKimsw_18build_script_build(i64 %i.cs, i64 %i.cw), !noalias !38
  %.pre = load i64, ptr %i.ak, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %i.cy = phi i64 [ %.pre, %bb.ab ], [ %i.ba, %bb.z ] ; 5 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.cx, %bb.ab ], [ %i.cs, %bb.z ] ; 4 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i.i, i64 %i.cd)
  %exitcond.not.i.i.i264.not = icmp ult i64 %.sroa.01.0.i.i.i, %i.cd
  br i1 %exitcond.not.i.i.i264.not, label %.lr.ph, label %._crit_edge

bb.ad:                                            ; preds = %bb.al
  %exitcond.not.i.i.i = icmp eq i64 %i.dq, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  %i.cz = load i64, ptr %i.al, align 8
  %spec.select = select i1 %i.ca, i64 0, i64 %i.cz ; 2 uses
  %i.da = load i64, ptr %i.ad, align 8, !noalias !38 ; 2 uses
  %i.db = icmp ult i64 %spec.select, %i.da
  br i1 %i.db, label %.lr.ph268, label %.loopexit11.i

.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %.sroa.02.0.i.i.i265 = phi i64 [ %i.dq, %bb.ad ], [ %.sroa.01.0.i.i.i, %bb.ac ] ; 3 uses
  %i.dc = add i64 %i.cy, %.sroa.02.0.i.i.i265     ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.bb
  br i1 %i.dd, label %bb.al, label %bb.am

bb.ae:                                            ; preds = %bb.ah
  %i.de = icmp ult i64 %spec.select, %i.df
  br i1 %i.de, label %.lr.ph268, label %.loopexit11.i

.lr.ph268:                                        ; preds = %._crit_edge, %bb.ae
  %.sroa.2.0.i.i.i266 = phi i64 [ %i.df, %bb.ae ], [ %i.da, %._crit_edge ]
  %i.df = add i64 %.sroa.2.0.i.i.i266, -1         ; 6 uses
  %i.dg = icmp ult i64 %i.df, %i.cd
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph268
  %i.dh = add i64 %i.cy, %i.df                    ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.bb
  br i1 %i.di, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph268
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.df, i64 %i.cd, ptr nonnull align 8 @3) #19, !noalias !38
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.df
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dh
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !38
  %.not21.i.i.i = icmp eq i8 %i.dk, %i.dm
  br i1 %.not21.i.i.i, label %bb.ae, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.dh, i64 %i.bb, ptr nonnull align 8 @4) #19, !noalias !38
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dn = load i64, ptr %i.ag, align 8, !noalias !38 ; 2 uses
  %i.do = add i64 %i.dn, %i.cy                    ; 3 uses
  store i64 %i.do, ptr %i.ak, align 8, !noalias !38
  br i1 %i.ca, label %bb.aa, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = sub i64 %i.cd, %i.dn
  br label %.sink.split.i.i.i

bb.al:                                            ; preds = %.lr.ph
  %i.dq = add nuw i64 %.sroa.02.0.i.i.i265, 1     ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.02.0.i.i.i265
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dc
  %i.du = load i8, ptr %i.dt, align 1, !noalias !38
  %.not22.i.i.i = icmp eq i8 %i.ds, %i.du
  br i1 %.not22.i.i.i, label %bb.ad, label %bb.an

bb.am:                                            ; preds = %.lr.ph
  %i.dv = add i64 %.sroa.01.0.i.i.i, %i.cy
  %umax = call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.dv)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %umax, i64 %i.bb, ptr nonnull align 8 @5) #19, !noalias !38
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dw = load i64, ptr %i.ad, align 8, !noalias !38
  %i.dx = add i64 %i.cy, %i.dq
  %i.dy = sub i64 %i.dx, %i.dw                    ; 3 uses
  store i64 %i.dy, ptr %i.ak, align 8, !noalias !38
  br i1 %i.ca, label %bb.aa, label %.sink.split.i.i.i

.loopexit.i.i:                                    ; preds = %bb.w, %._crit_edge.i.i.i
  %i.dz = phi i64 [ %i.bb, %._crit_edge.i.i.i ], [ %i.cj, %bb.w ] ; 3 uses
  %i.ea = load ptr, ptr %i.ah, align 8, !noalias !37
  %i.eb = load i64, ptr %i.ai, align 8, !noalias !37 ; 3 uses
  %i.ec = icmp eq i64 %i.dz, 0
  br i1 %i.ec, label %.split._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i.i, %bb.ap
  %.sroa.02.037.i.i = phi i64 [ %i.ei, %bb.ap ], [ %i.dz, %.loopexit.i.i ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.037.i.i, %i.eb
  br i1 %.not14.i.i, label %bb.ao, label %.split.i.i

.split._crit_edge.i.i:                            ; preds = %bb.ap, %bb.ao, %.split.i.i, %.loopexit.i.i
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %.loopexit.i.i ], [ %i.eb, %.split.i.i ], [ 0, %bb.ap ], [ %.sroa.02.037.i.i, %bb.ao ]
  %i.ed = call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCsjmyNHyKimsw_18build_script_build(i64 %.sroa.02.0.lcssa.i.i, i64 %i.dz), !noalias !37
  store i64 %i.ed, ptr %i.ak, align 8, !noalias !37
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsjmyNHyKimsw_18build_script_build.exit.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.ee = icmp eq i64 %.sroa.02.037.i.i, %i.eb
  br i1 %i.ee, label %.split._crit_edge.i.i, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.sroa.02.037.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !37
  %i.eh = icmp sgt i8 %i.eg, -65
  br i1 %i.eh, label %.split._crit_edge.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.split.i.i
  %i.ei = add i64 %.sroa.02.037.i.i, 1            ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.split._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCsjmyNHyKimsw_18build_script_build.exit.i: ; preds = %.split._crit_edge.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36
  %.pre.i = load i64, ptr %i.l, align 8, !noalias !37
  br label %bb.j

.loopexit11.i:                                    ; preds = %bb.p, %._crit_edge, %bb.ae, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

.loopexit.i:                                      ; preds = %bb.l, %bb.k, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

bb.aq:                                            ; preds = %bb.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.el = add i64 %i.ax, -1                       ; 2 uses
  %i.em = load i64, ptr %i.ek, align 8, !noalias !39 ; 2 uses
  %i.en = add i64 %i.em, %i.el                    ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.au
  br i1 %i.eo, label %.lr.ph.i10, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

.lr.ph.i10:                                       ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.er = load i64, ptr %i.ep, align 8, !noalias !39
  %i.es = load i64, ptr %i.ad, align 8            ; 8 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.es, i64 %i.ax)
  %i.et = load i64, ptr %i.eq, align 8
  %i.eu = add i64 %i.es, -1                       ; 2 uses
  %.first_iter = icmp ult i64 %i.eu, %i.ax
  %.first_iter.fr = freeze i1 %.first_iter
  %exitcond.not.i11270.not = icmp ult i64 %i.es, %i.ax
  %.not273 = icmp eq i64 %i.es, 0                 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph.i10
  %i.ev = phi i64 [ %i.em, %.lr.ph.i10 ], [ %.sink, %bb.at ] ; 6 uses
  %i.ew = phi i64 [ %i.en, %.lr.ph.i10 ], [ %i.ff, %bb.at ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !39
  %i.ez = and i8 %i.ey, 63
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.fb, %i.er
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.as, label %.preheader72.preheader

.preheader72.preheader:                           ; preds = %bb.ar
  br i1 %exitcond.not.i11270.not, label %.lr.ph269, label %.preheader.preheader

bb.as:                                            ; preds = %bb.ar
  %i.fe = add i64 %i.ev, %i.ax
  br label %bb.at

bb.at:                                            ; preds = %bb.ba, %bb.ax, %bb.as
  %.sink = phi i64 [ %i.fv, %bb.ba ], [ %i.fn, %bb.ax ], [ %i.fe, %bb.as ] ; 3 uses
  store i64 %.sink, ptr %i.ek, align 8, !noalias !39
  %i.ff = add i64 %.sink, %i.el                   ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.au
  br i1 %i.fg, label %bb.ar, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

.preheader72:                                     ; preds = %bb.ay
  %exitcond.not.i11 = icmp eq i64 %i.fo, %umax.i
  br i1 %exitcond.not.i11, label %.preheader.preheader, label %.lr.ph269

.preheader.preheader:                             ; preds = %.preheader72, %.preheader72.preheader
  br i1 %.first_iter.fr, label %.lr.ph272.a, label %.preheader.preheader.split

.lr.ph272.a:                                      ; preds = %.preheader.preheader
  br i1 %.not273, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit, label %bb.au

.preheader:                                       ; preds = %bb.av
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit, label %bb.au

bb.au:                                            ; preds = %.lr.ph272.a, %.preheader
  %.sroa.2.0.i.us271 = phi i64 [ %4, %.preheader ], [ %i.es, %.lr.ph272.a ]
  %4 = add i64 %.sroa.2.0.i.us271, -1             ; 4 uses
  %i.fh = add i64 %i.ev, %4                       ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.au
  br i1 %i.fi, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw i8, ptr %i.av, i64 %4
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !39
  %i.fl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fh
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !39
  %.not.i12 = icmp eq i8 %i.fk, %i.fm
  br i1 %.not.i12, label %.preheader, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.fh, i64 %i.au, ptr nonnull align 8 @4) #19, !noalias !39
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fn = add i64 %i.et, %i.ev
  br label %bb.at

.preheader.preheader.split:                       ; preds = %.preheader.preheader
  br i1 %.not273, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit, label %7

.lr.ph269:                                        ; preds = %.preheader72.preheader, %.preheader72
  %.sroa.02.0.i268 = phi i64 [ %i.fo, %.preheader72 ], [ %i.es, %.preheader72.preheader ] ; 3 uses
  %5 = add i64 %i.ev, %.sroa.02.0.i268            ; 2 uses
  %6 = icmp ult i64 %5, %i.au
  br i1 %6, label %bb.ay, label %bb.az

7:                                                ; preds = %.preheader.preheader.split
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.eu, i64 %i.ax, ptr nonnull align 8 @3) #19, !noalias !39
  unreachable

bb.ay:                                            ; preds = %.lr.ph269
  %i.fo = add nuw i64 %.sroa.02.0.i268, 1         ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.02.0.i268
  %i.fq = load i8, ptr %i.fp, align 1, !noalias !39
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 %5
  %i.fs = load i8, ptr %i.fr, align 1, !noalias !39
  %.not21.i = icmp eq i8 %i.fq, %i.fs
  br i1 %.not21.i, label %.preheader72, label %bb.ba

bb.az:                                            ; preds = %.lr.ph269
  %i.ft = add i64 %i.es, %i.ev
  %umax120 = call i64 @llvm.umax.i64(i64 %i.au, i64 %i.ft)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %umax120, i64 %i.au, ptr nonnull align 8 @5) #19, !noalias !39
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.fu = sub i64 %i.fo, %i.es
  %i.fv = add i64 %i.fu, %i.ev
  br label %bb.at

bb.bb:                                            ; preds = %bb.i
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjmyNHyKimsw_18build_script_build(ptr noalias nonnull align 8 %i.m, ptr align 8 %i.ad, ptr %i.as, i64 %i.au, ptr %i.av, i64 %i.ax, i1 zeroext false)
  %.pre121 = load i64, ptr %i.m, align 8
  %i.fw = icmp eq i64 %.pre121, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchrCsjmyNHyKimsw_18build_script_build.exit

bb.bc:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %0, ptr %i.j, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %1, ptr %i.fx, align 8
  %i.fy = load i8, ptr %0, align 1                ; 2 uses
  store i8 %i.fy, ptr %i.i, align 1
  %i.fz = add nsw i64 %1, -1                      ; 2 uses
  %i.ga = icmp eq i64 %1, 2
  br i1 %i.ga, label %.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gb = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.gb, ptr %i.h, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.gc, align 8
  store ptr %0, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.gd = call { i64, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsjmyNHyKimsw_18build_script_build(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.e) ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 0
  %i.gf = trunc nuw i64 %i.ge to i1
  br i1 %i.gf, label %bb.be, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containsCsjmyNHyKimsw_18build_script_build.exit

bb.be:                                            ; preds = %bb.bd
  %i.gg = extractvalue { i64, i64 } %i.gd, 1      ; 3 uses
  %i.gh = add nuw nsw i64 %1, 15
  %i.gi = icmp ult i64 %3, %i.gh
  br i1 %i.gi, label %bb.bq, label %bb.bf

.thread.i:                                        ; preds = %bb.bc
  %i.gj = icmp ult i64 %3, 17
  br i1 %i.gj, label %bb.bq, label %.thread76.i

.thread76.i:                                      ; preds = %.thread.i
  %i.gk = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %i.gl = shufflevector <16 x i8> %i.gk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gm = load i8, ptr %i.i, align 1
  %i.gn = insertelement <16 x i8> poison, i8 %i.gm, i64 0
  %i.go = shufflevector <16 x i8> %i.gn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gp = icmp ult i64 %i.gg, %1
  br i1 %i.gp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.thread76.i
  %i.gq = phi <16 x i8> [ %i.gl, %.thread76.i ], [ %i.go, %bb.bf ] ; 6 uses
  %storemerge7578.i = phi i64 [ 1, %.thread76.i ], [ %i.gg, %bb.bf ] ; 7 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge7578.i
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = insertelement <16 x i8> poison, i8 %i.gs, i64 0
  %i.gu = shufflevector <16 x i8> %i.gt, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %2, ptr %i.f, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %3, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.gv, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.fz, ptr %i.gy, align 8
  %i.gz = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i6 = icmp ult i64 %i.gz, %3
  br i1 %.not.i6, label %.lr.ph.i8, label %.preheader.i7

bb.bh:                                            ; preds = %bb.bf
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %i.gg, i64 range(i64 2, 33) %1, ptr nonnull align 8 @34) #19
  unreachable

.preheader.i7:                                    ; preds = %bb.bl, %bb.bg
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.bg ], [ %i.jd, %bb.bl ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.bg ], [ %.sroa.014.2.3.i, %bb.bl ] ; 2 uses
  %i.ha = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hb = add i64 %.sroa.06.0.lcssa.i, %i.ha
  %i.hc = icmp uge i64 %i.hb, %3
  %i.hd = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond385.i = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %or.cond385.i, label %._crit_edge.i, label %.lr.ph87.i

.lr.ph.i8:                                        ; preds = %bb.bg, %bb.bl
  %.sroa.06.083.i = phi i64 [ %i.jd, %bb.bl ], [ 0, %bb.bg ] ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.083.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.hf, align 1
  %i.hg = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.gq
  %i.hh = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.gu
  %i.hi = and <16 x i1> %i.hg, %i.hh
  %i.hj = sext <16 x i1> %i.hi to <16 x i8>
  store <16 x i8> %i.hj, ptr %i.c, align 16
  %i.hk = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsjmyNHyKimsw_18build_script_build(ptr nonnull align 16 %i.c)
  %i.hl = trunc i64 %i.hk to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.hm, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hn, align 1
  %i.ho = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.gq
  %i.hp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.gu
  %i.hq = and <16 x i1> %i.ho, %i.hp
  %i.hr = sext <16 x i1> %i.hq to <16 x i8>
  store <16 x i8> %i.hr, ptr %i.c, align 16
  %i.hs = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsjmyNHyKimsw_18build_script_build(ptr nonnull align 16 %i.c)
  %i.ht = trunc i64 %i.hs to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.hv, align 1
  %i.hw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.gq
  %i.hx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.gu
  %i.hy = and <16 x i1> %i.hw, %i.hx
  %i.hz = sext <16 x i1> %i.hy to <16 x i8>
  store <16 x i8> %i.hz, ptr %i.c, align 16
  %i.ia = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsjmyNHyKimsw_18build_script_build(ptr nonnull align 16 %i.c)
  %i.ib = trunc i64 %i.ia to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.he, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ic, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %storemerge7578.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.id, align 1
  %i.ie = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.gq
  %i.if = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.gu
  %i.ig = and <16 x i1> %i.ie, %i.if
  %i.ih = sext <16 x i1> %i.ig to <16 x i8>
  store <16 x i8> %i.ih, ptr %i.c, align 16
  %i.ii = call i64 @_RNvMs0_NtNtCs4NRVxsYgnAr_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsjmyNHyKimsw_18build_script_build(ptr nonnull align 16 %i.c)
  %i.ij = trunc i64 %i.ii to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ik = icmp eq i16 %i.hl, 0
  br i1 %i.ik, label %.preheader79.1.i, label %bb.bm

.preheader79.1.i:                                 ; preds = %bb.bm, %.lr.ph.i8
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i8 ], [ %i.ji, %bb.bm ] ; 3 uses
  %i.il = icmp eq i16 %i.ht, 0
  br i1 %i.il, label %.preheader79.2.i, label %bb.bi

bb.bi:                                            ; preds = %.preheader79.1.i
  %i.im = or disjoint i64 %.sroa.06.083.i, 16
  %i.in = trunc nuw i8 %.sroa.014.2.i to i1
  %i.io = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsjmyNHyKimsw_18build_script_build(ptr align 8 %i.f, i64 %i.im, i16 %i.ht, i1 zeroext %i.in)
  %i.ip = zext i1 %i.io to i8
  %i.iq = or i8 %.sroa.014.2.i, %i.ip
  br label %.preheader79.2.i

.preheader79.2.i:                                 ; preds = %bb.bi, %.preheader79.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader79.1.i ], [ %i.iq, %bb.bi ] ; 3 uses
  %i.ir = icmp eq i16 %i.ib, 0
  br i1 %i.ir, label %.preheader79.3.i, label %bb.bj

bb.bj:                                            ; preds = %.preheader79.2.i
  %i.is = or disjoint i64 %.sroa.06.083.i, 32
  %i.it = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.iu = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsjmyNHyKimsw_18build_script_build(ptr align 8 %i.f, i64 %i.is, i16 %i.ib, i1 zeroext %i.it)
  %i.iv = zext i1 %i.iu to i8
  %i.iw = or i8 %.sroa.014.2.1.i, %i.iv
  br label %.preheader79.3.i

.preheader79.3.i:                                 ; preds = %bb.bj, %.preheader79.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader79.2.i ], [ %i.iw, %bb.bj ] ; 3 uses
  %i.ix = icmp eq i16 %i.ij, 0
  br i1 %i.ix, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.preheader79.3.i
  %i.iy = or disjoint i64 %.sroa.06.083.i, 48
  %i.iz = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ja = call fastcc zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsjmyNHyKimsw_18build_script_build(ptr align 8 %i.f, i64 %i.iy, i16 %i.ij, i1 zeroext %i.iz)
  %i.jb = zext i1 %i.ja to i8
  %i.jc = or i8 %.sroa.014.2.2.i, %i.jb
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.preheader79.3.i
end_hunk_0
