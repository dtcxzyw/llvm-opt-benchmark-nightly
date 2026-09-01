Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !9
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i8, ptr %i.n, align 4, !range !8037, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !8037, !noundef !9
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !9
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %bb.g
  %.sroa.0.0 = phi i1 [ %i.z, %bb.g ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.y = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.x, i64 %i.t)
  %i.z = icmp eq i32 %bcmp, 0
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i8, ptr %i.a, align 4, !range !468, !noundef !9 ; 2 uses
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
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 8, !noundef !9
  %.sroa.26.0 = load i32, ptr %i.z, align 4, !noundef !9
  %i.aa = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ab = insertvalue { i32, i32 } %i.aa, i32 %.sroa.26.0, 1
  ret { i32, i32 } %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 2, 7) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.u, %bb.b, %bb.w, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.ef, %bb.w ], [ %i.ed, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.u ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.w, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8552)
  %i.g = load i8, ptr %0, align 1, !alias.scope !8549, !noalias !8552, !noundef !9 ; 8 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp eq i64 %1, 2
  br i1 %i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 7) %1, i64 4) ; 6 uses
  %4 = icmp samesign ult i64 %i.j, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

bb.e:                                             ; preds = %.lr.ph
  %i.k = icmp ult i64 %i.j, %7
  br i1 %i.k, label %.lr.ph.1, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.e
  %i.l = add nsw i64 %1, -2                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.1
  %i.o = icmp ult i64 %i.j, %i.l
  br i1 %i.o, label %.lr.ph.2, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.f
  %i.p = add nsw i64 %1, -3                       ; 4 uses
  %i.q = icmp samesign ugt i64 %1, 2
  br i1 %i.q, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2, label %bb.j

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2: ; preds = %.lr.ph.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.s, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2
  %i.t = icmp ult i64 %i.j, %i.p
  br i1 %i.t, label %.lr.ph.3, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.g
  %i.u = add nsw i64 %1, -4                       ; 4 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.j, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3: ; preds = %.lr.ph.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.w, %i.g
  br i1 %.not.i.not.i.i.3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3
  %i.x = icmp ult i64 %i.j, %i.u
  br i1 %i.x, label %.lr.ph.4, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.h
  %i.y = add nsw i64 %1, -5                       ; 4 uses
  %i.z = icmp samesign ugt i64 %1, 4
  br i1 %i.z, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4, label %bb.j

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4: ; preds = %.lr.ph.4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.ab, %i.g
  br i1 %.not.i.not.i.i.4, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4
  %i.ac = icmp ult i64 %i.j, %i.y
  br i1 %i.ac, label %.lr.ph.5, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.5:                                         ; preds = %bb.i
  %i.ad = add nsw i64 %1, -6                      ; 3 uses
  %.not44 = icmp eq i64 %1, 5
  br i1 %.not44, label %bb.j, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5: ; preds = %.lr.ph.5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %6 = load i8, ptr %5, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %6, %i.g
  br i1 %.not.i.not.i.i.5, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit, label %bb.k

.lr.ph:                                           ; preds = %bb.d
  %7 = add nsw i64 %1, -1                         ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !8549, !noalias !8554, !noundef !9 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.af, %i.g
  br i1 %.not.i.not.i.i.a, label %bb.e, label %bb.k

bb.j:                                             ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2
  %.lcssa39 = phi i64 [ %i.ad, %.lr.ph.5 ], [ %i.y, %.lr.ph.4 ], [ %i.p, %.lr.ph.2 ], [ %i.u, %.lr.ph.3 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef range(i64 2, 7) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #40, !noalias !8562
  unreachable

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2, %.lr.ph.1, %.lr.ph
  %.lcssa42 = phi i8 [ %i.af, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.s, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2 ], [ %i.w, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3 ], [ %i.ab, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4 ], [ %6, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5 ]
  %.lcssa40 = phi i64 [ %7, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.p, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2 ], [ %i.u, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.3 ], [ %i.y, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.4 ], [ %i.ad, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5 ]
  %i.ag = add nuw nsw i64 %1, 15
  %i.ah = icmp ult i64 %3, %i.ag
  br i1 %i.ah, label %.lr.ph.split.us.i.i, label %bb.l

.thread.i:                                        ; preds = %bb.c
  %i.ai = icmp ult i64 %3, 17
  br i1 %i.ai, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.aj = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !8549, !noalias !8552
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

.lr.ph.split.us.i.i:                              ; preds = %bb.k, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 7) %1), !alias.scope !8563, !noalias !8564
  %i.an = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.an, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ao = add i64 %3, -1                          ; 2 uses
  %.not28.i.i35 = icmp ugt i64 %1, %i.ao
  br i1 %.not28.i.i35, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i
  %i.ap = phi i64 [ %i.as, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %i.ao, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %.pn.i36 = phi ptr [ %i.aq, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aq, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 7) %1), !alias.scope !8563, !noalias !8564
  %i.ar = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ar, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.as = add i64 %i.ap, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.as
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.m:                                             ; preds = %bb.l, %.thread93.i
  %i.at = phi i8 [ %.pre.i, %.thread93.i ], [ %.lcssa42, %bb.l ]
  %i.au = phi <16 x i8> [ %i.ak, %.thread93.i ], [ %i.am, %bb.l ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %.lcssa40, %bb.l ] ; 6 uses
  %i.av = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8563
  store ptr %2, ptr %i.a, align 8, !noalias !8563
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ay, align 8, !noalias !8563
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ax, ptr %i.az, align 8, !noalias !8563
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ba, align 8, !noalias !8563
  %i.bb = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.bb, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q, %bb.m
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.m ], [ %.sroa.014.2.3.i, %bb.q ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.m ], [ %i.cx, %bb.q ] ; 2 uses
  %i.bc = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.bd = add i64 %.sroa.06.0.lcssa.i, %i.bc
  %i.be = icmp uge i64 %i.bd, %3
  %i.bf = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond3105.i, label %._crit_edge.i, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.q
  %.sroa.06.0103.i = phi i64 [ %i.cx, %bb.q ], [ 0, %bb.m ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !8552, !noalias !8568
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !8552, !noalias !8568
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.au
  %i.bj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.aw
  %i.bk = and <16 x i1> %i.bi, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !8552, !noalias !8568
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !8552, !noalias !8568
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.au
  %i.bp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.aw
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !8552, !noalias !8568
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !8552, !noalias !8568
  %i.bu = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.au
  %i.bv = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.aw
  %i.bw = and <16 x i1> %i.bu, %i.bv
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.by, align 1, !alias.scope !8552, !noalias !8568
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !8552, !noalias !8568
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.au
  %i.cb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.aw
  %i.cc = and <16 x i1> %i.ca, %i.cb
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %i.ce = icmp eq i16 %i.bl, 0
  br i1 %i.ce, label %.preheader96.1.i, label %bb.r

.preheader96.1.i:                                 ; preds = %bb.r, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.dc, %bb.r ] ; 3 uses
  %i.cf = icmp eq i16 %i.br, 0
  br i1 %i.cf, label %.preheader96.2.i, label %bb.n

bb.n:                                             ; preds = %.preheader96.1.i
  %i.cg = or disjoint i64 %.sroa.06.0103.i, 16
  %i.ch = trunc nuw i8 %.sroa.014.2.i to i1
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cg, i16 noundef %i.br, i1 noundef zeroext %i.ch)
  %i.cj = zext i1 %i.ci to i8
  %i.ck = or i8 %.sroa.014.2.i, %i.cj
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.n, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.ck, %bb.n ] ; 3 uses
  %i.cl = icmp eq i16 %i.bx, 0
  br i1 %i.cl, label %.preheader96.3.i, label %bb.o

bb.o:                                             ; preds = %.preheader96.2.i
  %i.cm = or disjoint i64 %.sroa.06.0103.i, 32
  %i.cn = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.co = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cm, i16 noundef %i.bx, i1 noundef zeroext %i.cn)
  %i.cp = zext i1 %i.co to i8
  %i.cq = or i8 %.sroa.014.2.1.i, %i.cp
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.o, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cq, %bb.o ] ; 3 uses
  %i.cr = icmp eq i16 %i.cd, 0
  br i1 %i.cr, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader96.3.i
  %i.cs = or disjoint i64 %.sroa.06.0103.i, 48
  %i.ct = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cs, i16 noundef %i.cd, i1 noundef zeroext %i.ct)
  %i.cv = zext i1 %i.cu to i8
  %i.cw = or i8 %.sroa.014.2.2.i, %i.cv
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cw, %bb.p ] ; 2 uses
  %i.cx = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cy = add i64 %i.cx, %i.bb
  %i.cz = icmp uge i64 %i.cy, %3
  %i.da = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.db = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bl, i1 noundef zeroext false)
  %i.dc = zext i1 %i.db to i8
  br label %.preheader96.1.i

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.s ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.bf, %.preheader.i ], [ %i.dw, %bb.s ]
  %i.dd = sub nuw i64 %3, %i.h
  %i.de = add i64 %i.dd, -16                      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !8552, !noalias !8571
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !8552, !noalias !8571
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.au
  %i.di = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.aw
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.u, label %bb.v

.lr.ph107.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.06.1106.i = phi i64 [ %i.dt, %bb.s ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dm, align 1, !alias.scope !8552, !noalias !8574
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.dn, align 1, !alias.scope !8552, !noalias !8574
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.au
  %i.dp = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.aw
  %i.dq = and <16 x i1> %i.do, %i.dp
  %i.dr = bitcast <16 x i1> %i.dq to i16          ; 2 uses
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dy, %bb.t ] ; 2 uses
  %i.dt = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.du = add i64 %i.dt, %i.bc
  %i.dv = icmp uge i64 %i.du, %3
  %i.dw = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dv, %i.dw
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph107.i

bb.t:                                             ; preds = %.lr.ph107.i
  %i.dx = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.dr, i1 noundef zeroext false)
  %i.dy = zext i1 %i.dx to i8
  br label %bb.s

bb.u:                                             ; preds = %bb.v, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.eb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8563
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.v:                                             ; preds = %._crit_edge.i
  %i.dz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.de, i16 noundef %i.dk, i1 noundef zeroext %.lcssa.i)
  %i.ea = zext i1 %i.dz to i8
  %i.eb = or i8 %.sroa.014.3.lcssa.i, %i.ea
  br label %bb.u

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.ec = load i64, ptr %i.c, align 8, !range !394, !noundef !9
  %i.ed = trunc nuw nsw i64 %i.ec to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.w:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ee = icmp eq i32 %bcmp, 0
  %i.ef = zext i1 %i.ee to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !394, !noundef !9
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !527, !alias.scope !8577, !noalias !8580, !noundef !9
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8577, !noalias !8580, !nonnull !9, !noundef !9 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !8577, !noalias !8580, !noundef !9 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !8577, !noalias !8580 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8582)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !8584, !noalias !8587, !noundef !9
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !8588, !noundef !9 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !8588, !noundef !9
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !8588, !noundef !9
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !8588, !noundef !9
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !8582, !noalias !8580
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8577)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !9
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !9 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !8584, !noalias !8591, !noundef !9
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !8592, !noundef !9 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !8592, !noundef !9
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
end_hunk_0
