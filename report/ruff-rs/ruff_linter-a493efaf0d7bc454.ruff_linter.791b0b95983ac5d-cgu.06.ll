Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq
define internal fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !range !13, !alias.scope !7826, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7826, !noundef !5
  %i.e = and i64 %i.d, 72057594037927935
  %i.f = icmp ult i8 %i.b, -48
  %i.g = zext i8 %i.b to i64
  %i.h = add nsw i64 %i.g, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %.sroa.0.0.i = select i1 %i.f, i64 %spec.store.select.i, i64 %i.e
  %i.i = icmp eq i64 %.sroa.0.0.i, %.8.val
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i8 %i.b, -49
  %i.k = load ptr, ptr %0, align 8, !alias.scope !7826
  %.sroa.01.0.i = select i1 %i.j, ptr %i.k, ptr %0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %bcmp = tail call i32 @bcmp(ptr %.sroa.01.0.i, ptr nonnull %.0.val, i64 %.8.val)
  %i.l = icmp eq i32 %bcmp, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB5_5Debug3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs2AWtUsOyxgP_3std4path7PathBufINtNtNtBa_5slice4iter4IterB14_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i8, ptr %i.a, align 4, !range !29, !noundef !5 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 1
  %i.d = zext nneg i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.v
    i64 2, label %bb.v
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.v
    i64 14, label %bb.n
    i64 15, label %bb.o
    i64 16, label %bb.p
    i64 17, label %bb.q
    i64 18, label %bb.r
    i64 19, label %bb.s
    i64 20, label %bb.t
    i64 21, label %bb.v
    i64 22, label %bb.v
    i64 23, label %bb.v
    i64 24, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ 20, %bb.u ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 12, %bb.t ], [ 28, %bb.s ], [ 28, %bb.r ], [ 60, %bb.q ], [ 28, %bb.p ], [ 12, %bb.o ], [ 52, %bb.n ], [ 4, %bb.a ], [ 36, %bb.m ], [ 36, %bb.l ], [ 44, %bb.k ], [ 28, %bb.j ], [ 36, %bb.i ], [ 20, %bb.h ], [ 20, %bb.g ], [ 36, %bb.f ], [ 20, %bb.e ], [ 28, %bb.d ], [ 4, %bb.a ], [ 60, %bb.c ], [ 4, %bb.a ]
  %.sroa.0.0.in = phi ptr [ %i.y, %bb.u ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %i.x, %bb.t ], [ %i.w, %bb.s ], [ %i.v, %bb.r ], [ %i.u, %bb.q ], [ %i.t, %bb.p ], [ %i.s, %bb.o ], [ %i.r, %bb.n ], [ %0, %bb.a ], [ %i.q, %bb.m ], [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.n, %bb.j ], [ %i.m, %bb.i ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %0, %bb.a ], [ %i.g, %bb.c ], [ %0, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 8, !noundef !5
  %.sroa.26.0 = load i32, ptr %i.z, align 4, !noundef !5
  %i.aa = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ab = insertvalue { i32, i32 } %i.aa, i32 %.sroa.26.0, 1
  ret { i32, i32 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 11) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.o, %bb.b, %bb.be, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.jq, %bb.be ], [ %.sroa.0.025, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.o ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.be, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7868)
  %i.f = load i8, ptr %0, align 1, !alias.scope !7867, !noalias !7868, !noundef !5 ; 2 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 11) %1, i64 4) ; 2 uses
  %i.i = icmp samesign ult i64 %i.h, %1
  br i1 %i.i, label %.lr.ph.a, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.j = icmp ult i64 %i.h, %5
  br i1 %i.j, label %.lr.ph.a, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.a:                                         ; preds = %bb.c, %bb.d
  %4 = phi i64 [ %5, %bb.d ], [ %1, %bb.c ]
  %5 = add nsw i64 %4, -1                         ; 11 uses
  %6 = icmp ult i64 %5, %1
  br i1 %6, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef range(i64 3, 11) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #35, !noalias !7869
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %.lr.ph.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !7867, !noalias !7870, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.l, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.m = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.n = icmp ult i64 %3, %i.m
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %bb.g

.lr.ph.split.us.i.i:                              ; preds = %bb.f
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 11) %1), !alias.scope !7871, !noalias !7872
  %i.o = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.o, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.p = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i275 = icmp ugt i64 %1, %i.p
  br i1 %.not28.i.i275, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i
  %i.q = phi i64 [ %i.t, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %i.p, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %.pn.i276 = phi ptr [ %i.r, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.pn.i276, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 11) %1), !alias.scope !7871, !noalias !7872
  %i.s = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.s, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.t = add nsw i64 %i.q, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.t
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7871
  store ptr %2, ptr %i.a, align 8, !noalias !7871
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.z, align 8, !noalias !7871
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !7871
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ab, align 8, !noalias !7871
  %i.ac = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.g
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.g ], [ %.sroa.014.2.3.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.bx, %bb.k ] ; 2 uses
  %i.ad = add i64 %.sroa.06.0.lcssa.i, %i.m
  %i.ae = icmp uge i64 %i.ad, %3
  %i.af = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.sroa.06.098.i = phi i64 [ %i.bx, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !7868, !noalias !7873
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %5
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !7868, !noalias !7873
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.v
  %i.aj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.x
  %i.ak = and <16 x i1> %i.ai, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.am, align 1, !alias.scope !7868, !noalias !7873
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %5
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !7868, !noalias !7873
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.v
  %i.ap = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.x
  %i.aq = and <16 x i1> %i.ao, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.as, align 1, !alias.scope !7868, !noalias !7873
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %5
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !7868, !noalias !7873
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.v
  %i.av = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.x
  %i.aw = and <16 x i1> %i.au, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !7868, !noalias !7873
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %5
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !7868, !noalias !7873
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.v
  %i.bb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.x
  %i.bc = and <16 x i1> %i.ba, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = icmp eq i16 %i.al, 0
  br i1 %i.be, label %.preheader91.1.i, label %bb.l

.preheader91.1.i:                                 ; preds = %bb.l, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cc, %bb.l ] ; 3 uses
  %i.bf = icmp eq i16 %i.ar, 0
  br i1 %i.bf, label %.preheader91.2.i, label %bb.h

bb.h:                                             ; preds = %.preheader91.1.i
  %i.bg = or disjoint i64 %.sroa.06.098.i, 16
  %i.bh = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bi = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bg, i16 noundef %i.ar, i1 noundef zeroext %i.bh)
  %i.bj = zext i1 %i.bi to i8
  %i.bk = or i8 %.sroa.014.2.i, %i.bj
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.h, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bk, %bb.h ] ; 3 uses
  %i.bl = icmp eq i16 %i.ax, 0
  br i1 %i.bl, label %.preheader91.3.i, label %bb.i

bb.i:                                             ; preds = %.preheader91.2.i
  %i.bm = or disjoint i64 %.sroa.06.098.i, 32
  %i.bn = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bo = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bm, i16 noundef %i.ax, i1 noundef zeroext %i.bn)
  %i.bp = zext i1 %i.bo to i8
  %i.bq = or i8 %.sroa.014.2.1.i, %i.bp
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.i, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.bq, %bb.i ] ; 3 uses
  %i.br = icmp eq i16 %i.bd, 0
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader91.3.i
  %i.bs = or disjoint i64 %.sroa.06.098.i, 48
  %i.bt = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bu = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bs, i16 noundef %i.bd, i1 noundef zeroext %i.bt)
  %i.bv = zext i1 %i.bu to i8
  %i.bw = or i8 %.sroa.014.2.2.i, %i.bv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.bw, %bb.j ] ; 2 uses
  %i.bx = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.by = add i64 %i.bx, %i.ac
  %i.bz = icmp uge i64 %i.by, %3
  %i.ca = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.al, i1 noundef zeroext false)
  %i.cc = zext i1 %i.cb to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.m ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.af, %.preheader.i ], [ %i.cw, %bb.m ]
  %i.cd = sub nuw i64 %3, %i.g
  %i.ce = add i64 %i.cd, -16                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !7868, !noalias !7874
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %5
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !7868, !noalias !7874
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.v
  %i.ci = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.x
  %i.cj = and <16 x i1> %i.ch, %i.ci
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.p

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.m
  %.sroa.06.1101.i = phi i64 [ %i.ct, %bb.m ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !7868, !noalias !7875
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %5
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !7868, !noalias !7875
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.v
  %i.cp = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.x
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.cy, %bb.n ] ; 2 uses
  %i.ct = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.cu = add i64 %i.ct, %i.m
  %i.cv = icmp uge i64 %i.cu, %3
  %i.cw = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cv, %i.cw
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.n:                                             ; preds = %.lr.ph102.i
  %i.cx = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.cr, i1 noundef zeroext false)
  %i.cy = zext i1 %i.cx to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7871
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.p:                                             ; preds = %._crit_edge.i
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.ck, i1 noundef zeroext %.lcssa.i)
  %i.da = zext i1 %i.cz to i8
  %i.db = or i8 %.sroa.014.3.lcssa.i, %i.da
  br label %bb.o

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7876)
  %i.dc = load i64, ptr %i.b, align 8, !range !7, !alias.scope !7876, !noalias !7877, !noundef !5
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dd, label %bb.z, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dg = load i8, ptr %i.df, align 2, !range !15, !alias.scope !7878, !noalias !7879, !noundef !5
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.de, align 8, !alias.scope !7876, !noalias !7877 ; 12 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !7878, !noalias !7879, !nonnull !5, !noundef !5 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !7878, !noalias !7879, !noundef !5 ; 14 uses
  %.promoted26.i = load i8, ptr %i.di, align 8, !alias.scope !7878, !noalias !7879 ; 2 uses
  %i.dn = trunc nuw i8 %.promoted26.i to i1
  %i.do = icmp eq i64 %.promoted.i, 0
  br i1 %i.do, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dm
  br i1 %.not.i.i.i.peel, label %bb.r, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.q
  %i.dp = icmp eq i64 %.promoted.i, %i.dm
  br i1 %i.dp, label %bb.s, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.promoted.i
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !7880, !noalias !7881, !noundef !5
  %i.ds = icmp sgt i8 %i.dr, -65
  br i1 %i.ds, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %.split.i.i.i.peel, %.lr.ph.i5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.promoted.i ; 4 uses
  %i.du = icmp samesign eq i64 %.promoted.i, %i.dm
  br i1 %i.du, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !7882, !noundef !5 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.u, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel: ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dy = and i8 %i.dv, 31
  %i.dz = zext nneg i8 %i.dy to i32               ; 3 uses
  %i.ea = add nuw nsw i64 %.promoted.i, 1
  %i.eb = icmp samesign ne i64 %i.ea, %i.dm
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dx, align 1, !noalias !7882, !noundef !5
  %i.ed = shl nuw nsw i32 %i.dz, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32               ; 2 uses
  %i.eg = or disjoint i32 %i.ed, %i.ef
  %i.eh = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.eh, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.ej = add nuw nsw i64 %.promoted.i, 2
  %i.ek = icmp samesign ne i64 %i.ej, %i.dm
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = load i8, ptr %i.ei, align 1, !noalias !7882, !noundef !5
  %i.em = shl nuw nsw i32 %i.ef, 6
  %i.en = and i8 %i.el, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo            ; 2 uses
  %i.eq = shl nuw nsw i32 %i.dz, 12
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.es, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.eu = add nuw nsw i64 %.promoted.i, 3
  %i.ev = icmp samesign ne i64 %i.eu, %i.dm
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = load i8, ptr %i.et, align 1, !noalias !7882, !noundef !5
  %i.ex = shl nuw nsw i32 %i.dz, 18
  %i.ey = and i32 %i.ex, 1835008
  %i.ez = shl nuw nsw i32 %i.ep, 6
  %i.fa = and i8 %i.ew, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = or disjoint i32 %i.fc, %i.ey
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fe = zext nneg i8 %i.dv to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.er, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.peel ], [ %i.fd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.peel ], [ %i.eg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel ], [ %i.fe, %bb.u ] ; 4 uses
  %i.ff = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ff)
  br i1 %i.dn, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.fg, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fh, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fi, i64 3, i64 4
  br label %bb.aa

bb.z:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !7876, !noalias !7877, !noundef !5 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !7876, !noalias !7877, !nonnull !5, !noundef !5 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !7876, !noalias !7877, !noundef !5 ; 14 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !7876, !noalias !7877, !nonnull !5, !noundef !5 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !7876, !noalias !7877, !noundef !5 ; 12 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fv = add nsw i64 %i.ft, -1                   ; 4 uses
  br i1 %i.fl, label %bb.af, label %bb.ar

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.x ], [ %..i.i.peel, %bb.y ], [ 1, %bb.w ]
  %i.fw = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7883)
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp ult i64 %i.fw, %i.dm
  br i1 %.not.i.i.i, label %bb.ac, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab
  %i.fy = icmp eq i64 %i.fw, %i.dm
  br i1 %i.fy, label %bb.ad, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fw
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !7880, !noalias !7884, !noundef !5
  %i.gb = icmp sgt i8 %i.ga, -65
  br i1 %i.gb, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %.split.i.i.i, %bb.aa
  %i.gc = icmp samesign eq i64 %i.fw, %i.dm
  br i1 %i.gc, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fw
  %i.ge = load i8, ptr %i.gd, align 1, !noalias !7885, !noundef !5 ; 3 uses
  %i.gf = icmp sgt i8 %i.ge, -1
  br i1 %i.gf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i: ; preds = %bb.ae
  %i.gg = add nuw nsw i64 %i.fw, 1
  %i.gh = icmp samesign ne i64 %i.gg, %i.dm
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i8 %i.ge, -33
  br i1 %i.gi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i
  %i.gj = add nuw nsw i64 %i.fw, 2
  %i.gk = icmp samesign ne i64 %i.gj, %i.dm
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i8 %i.ge, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i
  %i.gm = add nuw nsw i64 %i.fw, 3
  %i.gn = icmp samesign ne i64 %i.gm, %i.dm
  tail call void @llvm.assume(i1 %i.gn)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ac, %.split.i.i.i, %bb.r, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.r ], [ %i.fw, %.split.i.i.i ], [ %i.fw, %bb.ac ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dm, i64 noundef %.lcssa144, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1308) #35, !noalias !7884
  unreachable

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7888)
  %.promoted.i11 = load i64, ptr %i.fu, align 8, !alias.scope !7886, !noalias !7889 ; 2 uses
  %i.go = add i64 %.promoted.i11, %i.fv           ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.fp
  br i1 %i.gp, label %.lr.ph.i14, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.af
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!7669 = !{!7543}
!7670 = !{!7548, !7547, !7545}
!7671 = !{!7550}
!7672 = !{!"branch_weights", !"expected", i32 1339293, i32 2146144355}
!7673 = !{!7552}
!7674 = !{!7554}
!7675 = !{!7558, !7556}
!7676 = !{!7560}
!7677 = !{!7563, !7562}
!7678 = !{!7563}
!7679 = !{!7565}
!7680 = !{!7568, !7567}
!7681 = !{!7568}
!7682 = !{!7570}
!7683 = !{!7572}
!7684 = !{!7574}
!7685 = !{!7576}
!7686 = !{!7581, !7580, !7578}
!7687 = !{!7585, !7583}
!7688 = !{!7583}
!7689 = !{!7589, !7587}
!7690 = !{!7591}
!7691 = !{!7593}
!7692 = !{!7595}
!7693 = !{!7597}
!7694 = !{!7599}
!7695 = !{!7601}
!7696 = !{!7603}
!7697 = !{!7605}
!7698 = !{!7607}
!7699 = !{!7609}
!7700 = !{!7611}
!7701 = !{!7613}
!7702 = !{!7615}
!7703 = !{!7617}
!7704 = !{!7619}
!7705 = !{!7621}
!7706 = !{!7623}
!7707 = !{!7624}
!7708 = !{!7626}
!7709 = !{!7628}
!7710 = !{!7630}
!7711 = !{!7632}
!7712 = !{!7634}
!7713 = !{!7636}
!7714 = !{!7638, !7636}
!7715 = !{!7639}
!7716 = !{!7641}
!7717 = !{!7643}
!7718 = !{!7645}
!7719 = !{!7647, !7645}
!7720 = !{!7649}
!7721 = !{!7651}
!7722 = !{!7653, !7651}
!7723 = !{!7655}
!7724 = !{!7658}
!7725 = !{!7660}
!7726 = distinct !{!7726, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7727 = distinct !{!7727, !7726, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7728 = !{i64 0, i64 -9223372036854775800}
!7729 = !{!7727}
!7730 = distinct !{!7730, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7731 = distinct !{!7731, !7730, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7732 = !{!7731}
!7733 = distinct !{!7733, !"_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21visit_type_definition"}
!7734 = distinct !{!7734, !7733, !"_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker21visit_type_definition: argument 0"}
!7735 = !{!7734}
!7736 = distinct !{!7736, !"_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker18visit_boolean_test"}
!7737 = distinct !{!7737, !7736, !"_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker18visit_boolean_test: argument 0"}
!7738 = !{!7737}
!7739 = distinct !{!7739, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7740 = distinct !{!7740, !7739, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7741 = distinct !{!7741, !"_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameter"}
!7742 = distinct !{!7742, !7741, !"_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor15visit_parameter: argument 0"}
!7743 = !{!7740}
!7744 = !{!7742}
!7745 = distinct !{!7745, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7746 = distinct !{!7746, !7745, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7747 = distinct !{!7747, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!7748 = distinct !{!7748, !7747, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7749 = distinct !{!7749, !7747, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 1"}
!7750 = distinct !{!7750, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!7751 = distinct !{!7751, !7750, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7752 = distinct !{!7752, !7750, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 1"}
!7753 = distinct !{!7753, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!7754 = distinct !{!7754, !7753, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7755 = distinct !{!7755, !7753, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 1"}
!7756 = distinct !{!7756, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!7757 = distinct !{!7757, !7756, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7758 = distinct !{!7758, !7756, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model8SnapshotEE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 1"}
!7759 = !{!7746}
!7760 = !{!7748}
!7761 = !{!7749}
!7762 = !{!7751}
!7763 = !{!7752}
!7764 = !{!7754}
!7765 = !{!7755}
!7766 = !{!7757}
!7767 = !{!7758}
!7768 = distinct !{!7768, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7769 = distinct !{!7769, !7768, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7770 = distinct !{!7770, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7771 = distinct !{!7771, !7770, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7772 = distinct !{!7772, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7773 = distinct !{!7773, !7772, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7774 = !{!7769}
!7775 = !{!7771}
!7776 = !{!7773}
!7777 = !{i8 97, i8 1}
!7778 = distinct !{!7778, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!7779 = distinct !{!7779, !7778, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!7780 = !{!7779}
!7781 = distinct !{!7781, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!7782 = distinct !{!7782, !7781, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!7783 = distinct !{!7783, !7781, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!7784 = distinct !{!7784, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!7785 = distinct !{!7785, !7784, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7786 = !{!7782}
!7787 = !{!7785, !7783}
!7788 = distinct !{!7788, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EECsEhZmuQNqkz_11ruff_linter"}
!7789 = distinct !{!7789, !7788, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7790 = distinct !{!7790, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB3U_8MapWhileB3_NCNvMs_NtB1a_5modelNtB4K_13SemanticModel19current_expressions0EB2y_8try_foldB3f_NCNvXs_NvB2y_10advance_byB4k_NtB62_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3f_EE0INtNtNtBc_3ops12control_flow11ControlFlowB71_B3f_EECsEhZmuQNqkz_11ruff_linter"}
!7791 = distinct !{!7791, !7790, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB3U_8MapWhileB3_NCNvMs_NtB1a_5modelNtB4K_13SemanticModel19current_expressions0EB2y_8try_foldB3f_NCNvXs_NvB2y_10advance_byB4k_NtB62_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3f_EE0INtNtNtBc_3ops12control_flow11ControlFlowB71_B3f_EECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7792 = distinct !{!7792, !7790, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvXs0_NtNtBa_8adapters9map_whileINtB3U_8MapWhileB3_NCNvMs_NtB1a_5modelNtB4K_13SemanticModel19current_expressions0EB2y_8try_foldB3f_NCNvXs_NvB2y_10advance_byB4k_NtB62_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3f_EE0INtNtNtBc_3ops12control_flow11ControlFlowB71_B3f_EECsEhZmuQNqkz_11ruff_linter: argument 1"}
!7793 = distinct !{!7793, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter"}
!7794 = distinct !{!7794, !7793, !"_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1a_NtB1a_5Nodes12ancestor_ids0ENtNtNtB6_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7795 = !{!7789}
!7796 = !{!7791}
!7797 = !{!7792}
!7798 = !{!7794, !7791, !7789}
!7799 = !{!7791, !7789}
!7800 = !{!7792, !7789}
!7801 = !{!7794}
!7802 = !{!7794, !7791, !7792, !7789}
!7803 = !{!7791, !7792, !7789}
!7804 = distinct !{!7804, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter"}
!7805 = distinct !{!7805, !7804, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE8push_mutCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7806 = distinct !{!7806, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!7807 = distinct !{!7807, !7806, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7808 = distinct !{!7808, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!7809 = distinct !{!7809, !7808, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7810 = distinct !{!7810, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!7811 = distinct !{!7811, !7810, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7812 = distinct !{!7812, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter"}
!7813 = distinct !{!7813, !7812, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7814 = distinct !{!7814, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter"}
!7815 = distinct !{!7815, !7814, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7816 = distinct !{!7816, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!7817 = distinct !{!7817, !7816, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!7818 = !{!7805}
!7819 = !{!7811, !7809, !7807, !7805}
!7820 = !{!7813}
!7821 = !{!7815}
!7822 = !{!7817}
!7823 = !{!7817, !7815, !7813}
!7824 = distinct !{!7824, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes"}
!7825 = distinct !{!7825, !7824, !"_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr8as_bytes: argument 0"}
!7826 = !{!7825}
!7827 = distinct !{!7827, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains"}
!7828 = distinct !{!7828, !7827, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains: argument 0"}
!7829 = distinct !{!7829, !7827, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains: argument 1"}
!7830 = distinct !{!7830, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsEhZmuQNqkz_11ruff_linter"}
!7831 = distinct !{!7831, !7830, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsEhZmuQNqkz_11ruff_linter: argument 1"}
!7832 = distinct !{!7832, !7830, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7833 = distinct !{!7833, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter"}
!7834 = distinct !{!7834, !7833, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7835 = distinct !{!7835, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains0CsEhZmuQNqkz_11ruff_linter"}
!7836 = distinct !{!7836, !7835, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7837 = distinct !{!7837, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter"}
!7838 = distinct !{!7838, !7837, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter: argument 1"}
!7839 = distinct !{!7839, !7837, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7840 = distinct !{!7840, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter"}
!7841 = distinct !{!7841, !7840, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7842 = distinct !{!7842, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter"}
!7843 = distinct !{!7843, !7842, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7844 = distinct !{!7844, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter"}
!7845 = distinct !{!7845, !7844, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7846 = distinct !{!7846, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!7847 = distinct !{!7847, !7846, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!7848 = distinct !{!7848, !7846, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!7849 = distinct !{!7849, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!7850 = distinct !{!7850, !7849, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!7851 = distinct !{!7851, !7849, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!7852 = distinct !{!7852, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!7853 = distinct !{!7853, !7852, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!7854 = distinct !{!7854, !7849, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!7855 = distinct !{!7855, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter"}
!7856 = distinct !{!7856, !7855, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7857 = distinct !{!7857, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter"}
!7858 = distinct !{!7858, !7857, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 1"}
!7859 = distinct !{!7859, !7857, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 2"}
!7860 = distinct !{!7860, !7857, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 3"}
!7861 = distinct !{!7861, !7857, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7862 = distinct !{!7862, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter"}
!7863 = distinct !{!7863, !7862, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 1"}
!7864 = distinct !{!7864, !7862, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 2"}
!7865 = distinct !{!7865, !7862, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 3"}
!7866 = distinct !{!7866, !7862, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7867 = !{!7828}
!7868 = !{!7829}
!7869 = !{!7836, !7834, !7832, !7831, !7828, !7829}
!7870 = !{!7836, !7834, !7832, !7831, !7829}
!7871 = !{!7828, !7829}
!7872 = !{!7839, !7838}
!7873 = !{!7841, !7828}
!7874 = !{!7843, !7828}
!7875 = !{!7845, !7828}
!7876 = !{!7847}
!7877 = !{!7848}
!7878 = !{!7850, !7847}
!7879 = !{!7851, !7848}
!7880 = !{!7853}
!7881 = !{!7851, !7854, !7848, !7847}
!7882 = !{!7856, !7851, !7854, !7848, !7847}
!7883 = !{!7850}
!7884 = !{!7851, !7850, !7848, !7847}
!7885 = !{!7856, !7851, !7850, !7848, !7847}
!7886 = !{!7858}
!7887 = !{!7859}
!7888 = !{!7860}
!7889 = !{!7861, !7859, !7860}
!7890 = !{!7861, !7858, !7860}
!7891 = !{!7861, !7858, !7859, !7860}
!7892 = !{!7861, !7858, !7859}
!7893 = !{!7863}
!7894 = !{!7864}
!7895 = !{!7865}
!7896 = !{!7866, !7864, !7865}
!7897 = !{!7866, !7863, !7865}
!7898 = !{!7866, !7863, !7864, !7865}
!7899 = !{!7866, !7863, !7864}
!7900 = distinct !{!7900, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key"}
!7901 = distinct !{!7901, !7900, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 0"}
!7902 = distinct !{!7902, !7900, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 1"}
!7903 = !{!7901}
!7904 = !{!7902}
!7905 = !{i64 0, i64 13}
!7906 = distinct !{!7906, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsEhZmuQNqkz_11ruff_linter"}
!7907 = distinct !{!7907, !7906, !"_RNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsEhZmuQNqkz_11ruff_linter: argument 0"}
!7908 = distinct !{!7908, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsEhZmuQNqkz_11ruff_linter"}
!7909 = distinct !{!7909, !7908, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7910 = !{!7909, !7907}
!7911 = distinct !{!7911, !"_RNvXsp_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB5_8CacheKey9cache_key"}
!7912 = distinct !{!7912, !7911, !"_RNvXsp_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtNtCs2AWtUsOyxgP_3std4path7PathBufNtB5_8CacheKey9cache_key: argument 0"}
!7913 = distinct !{!7913, !"_RNvXso_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtNtCs2AWtUsOyxgP_3std4path4PathNtB5_8CacheKey9cache_key"}
!7914 = distinct !{!7914, !7913, !"_RNvXso_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtNtCs2AWtUsOyxgP_3std4path4PathNtB5_8CacheKey9cache_key: argument 1"}
!7915 = distinct !{!7915, !7913, !"_RNvXso_NtCskRasR9DNdfH_10ruff_cache9cache_keyNtNtCs2AWtUsOyxgP_3std4path4PathNtB5_8CacheKey9cache_key: argument 0"}
!7916 = distinct !{!7916, !"_RINvXs1C_NtCs2AWtUsOyxgP_3std4pathNtB7_6PrefixNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7917 = distinct !{!7917, !7916, !"_RINvXs1C_NtCs2AWtUsOyxgP_3std4pathNtB7_6PrefixNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7918 = distinct !{!7918, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7919 = distinct !{!7919, !7918, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7920 = distinct !{!7920, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7921 = distinct !{!7921, !7920, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7922 = distinct !{!7922, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7923 = distinct !{!7923, !7922, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7924 = distinct !{!7924, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7925 = distinct !{!7925, !7924, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7926 = distinct !{!7926, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7927 = distinct !{!7927, !7926, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7928 = distinct !{!7928, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter"}
!7929 = distinct !{!7929, !7928, !"_RINvXsN_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB6_5OsStrNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCskRasR9DNdfH_10ruff_cache9cache_key14CacheKeyHasherECsEhZmuQNqkz_11ruff_linter: argument 0"}
!7930 = !{!7915, !7914, !7912}
!7931 = !{!7914, !7912}
!7932 = !{!7917}
!7933 = !{!7919, !7917}
!7934 = !{!7921, !7917}
!7935 = !{!7923, !7917}
!7936 = !{!7925, !7917}
!7937 = !{!7927, !7917}
!7938 = !{!7929, !7917}
!7939 = distinct !{!7939, !"_RNvXst_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key"}
!7940 = distinct !{!7940, !7939, !"_RNvXst_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 0"}
!7941 = distinct !{!7941, !7939, !"_RNvXst_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_13ImportSectionNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 1"}
!7942 = distinct !{!7942, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key"}
!7943 = distinct !{!7943, !7942, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 0"}
!7944 = distinct !{!7944, !7942, !"_RNvXsc_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorizeNtB5_10ImportTypeNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key: argument 1"}
!7945 = !{!7940}
!7946 = !{!7941}
!7947 = !{!7943}
!7948 = !{!7943, !7940}
!7949 = !{!7944, !7941}
end_hunk_1
