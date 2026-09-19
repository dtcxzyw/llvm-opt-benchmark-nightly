Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !13
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !13
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i8, ptr %i.n, align 4, !range !77, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i8, ptr %i.p, align 4, !range !77, !noundef !13
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !13
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b, %bb.g
  %.sroa.0.0 = phi i1 [ %i.z, %bb.g ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !nonnull !13, !noundef !13
  %i.y = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.x, i64 %i.t)
  %i.z = icmp eq i32 %bcmp, 0
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !13 ; 2 uses
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
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 8, !noundef !13
  %.sroa.26.0 = load i32, ptr %i.z, align 4, !noundef !13
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

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.s, %bb.b, %bb.u, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.ea, %bb.u ], [ %i.dy, %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.s ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.u, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8569)
  %i.g = load i8, ptr %0, align 1, !alias.scope !8568, !noalias !8569, !noundef !13 ; 6 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp eq i64 %1, 2
  br i1 %i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 7) %1, i64 4) ; 4 uses
  %i.k = icmp samesign ult i64 %i.j, %1
  br i1 %i.k, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

bb.e:                                             ; preds = %.lr.ph
  %i.l = icmp ult i64 %i.j, %i.y
  br i1 %i.l, label %.lr.ph.1, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.e
  %i.m = add nsw i64 %1, -2                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !8568, !noalias !8570, !noundef !13 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.o, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.1
  %i.p = icmp ult i64 %i.j, %i.m
  br i1 %i.p, label %.lr.ph.2, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.f
  %i.q = add nsw i64 %1, -3                       ; 4 uses
  %i.r = icmp samesign ugt i64 %1, 2
  br i1 %i.r, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2, label %bb.h

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2: ; preds = %.lr.ph.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !8568, !noalias !8570, !noundef !13 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.t, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2
  %i.u = icmp ult i64 %i.j, %i.q
  br i1 %i.u, label %.lr.ph.3, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.g
  %i.v = add nsw i64 %1, -4                       ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %bb.h, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5: ; preds = %.lr.ph.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !8568, !noalias !8570, !noundef !13 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %i.x, %i.g
  br i1 %.not.i.not.i.i.5, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit, label %bb.i

.lr.ph:                                           ; preds = %bb.d
  %i.y = add nsw i64 %1, -1                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !8568, !noalias !8570, !noundef !13 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.aa, %i.g
  br i1 %.not.i.not.i.i, label %bb.e, label %bb.i

bb.h:                                             ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa39 = phi i64 [ %i.v, %.lr.ph.3 ], [ %i.q, %.lr.ph.2 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef range(i64 2, 7) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #40, !noalias !8571
  unreachable

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2, %.lr.ph.1, %.lr.ph
  %.lcssa42 = phi i8 [ %i.aa, %.lr.ph ], [ %i.o, %.lr.ph.1 ], [ %i.t, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2 ], [ %i.x, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5 ]
  %.lcssa40 = phi i64 [ %i.y, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5 ]
  %i.ab = add nuw nsw i64 %1, 15
  %i.ac = icmp ult i64 %3, %i.ab
  br i1 %i.ac, label %.lr.ph.split.us.i.i, label %bb.j

.thread.i:                                        ; preds = %bb.c
  %i.ad = icmp ult i64 %3, 17
  br i1 %i.ad, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.ae = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !8568, !noalias !8569
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

.lr.ph.split.us.i.i:                              ; preds = %bb.i, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 7) %1), !alias.scope !8572, !noalias !8573
  %i.ai = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ai, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.aj = add i64 %3, -1                          ; 2 uses
  %.not28.i.i35 = icmp ugt i64 %1, %i.aj
  br i1 %.not28.i.i35, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i
  %i.ak = phi i64 [ %i.an, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %i.aj, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %.pn.i36 = phi ptr [ %i.al, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.al, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 7) %1), !alias.scope !8572, !noalias !8573
  %i.am = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.am, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsEhZmuQNqkz_11ruff_linter.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.an = add i64 %i.ak, -1                       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.an
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.k:                                             ; preds = %bb.j, %.thread93.i
  %i.ao = phi i8 [ %.pre.i, %.thread93.i ], [ %.lcssa42, %bb.j ]
  %i.ap = phi <16 x i8> [ %i.af, %.thread93.i ], [ %i.ah, %bb.j ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %.lcssa40, %bb.j ] ; 6 uses
  %i.aq = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8572
  store ptr %2, ptr %i.a, align 8, !noalias !8572
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.at, align 8, !noalias !8572
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.as, ptr %i.au, align 8, !noalias !8572
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.av, align 8, !noalias !8572
  %i.aw = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aw, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.k
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.k ], [ %.sroa.014.2.3.i, %bb.o ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.cs, %bb.o ] ; 2 uses
  %i.ax = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.ay = add i64 %.sroa.06.0.lcssa.i, %i.ax
  %i.az = icmp uge i64 %i.ay, %3
  %i.ba = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond3105.i, label %._crit_edge.i, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.o
  %.sroa.06.0103.i = phi i64 [ %i.cs, %bb.o ], [ 0, %bb.k ] ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !8569, !noalias !8574
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.bc, align 1, !alias.scope !8569, !noalias !8574
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ap
  %i.be = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ar
  %i.bf = and <16 x i1> %i.bd, %i.be
  %i.bg = bitcast <16 x i1> %i.bf to i16          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !8569, !noalias !8574
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bi, align 1, !alias.scope !8569, !noalias !8574
  %i.bj = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ap
  %i.bk = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ar
  %i.bl = and <16 x i1> %i.bj, %i.bk
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !8569, !noalias !8574
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bo, align 1, !alias.scope !8569, !noalias !8574
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ap
  %i.bq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ar
  %i.br = and <16 x i1> %i.bp, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !8569, !noalias !8574
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !8569, !noalias !8574
  %i.bv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ap
  %i.bw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ar
  %i.bx = and <16 x i1> %i.bv, %i.bw
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = icmp eq i16 %i.bg, 0
  br i1 %i.bz, label %.preheader96.1.i, label %bb.p

.preheader96.1.i:                                 ; preds = %bb.p, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cx, %bb.p ] ; 3 uses
  %i.ca = icmp eq i16 %i.bm, 0
  br i1 %i.ca, label %.preheader96.2.i, label %bb.l

bb.l:                                             ; preds = %.preheader96.1.i
  %i.cb = or disjoint i64 %.sroa.06.0103.i, 16
  %i.cc = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cd = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cb, i16 noundef %i.bm, i1 noundef zeroext %i.cc)
  %i.ce = zext i1 %i.cd to i8
  %i.cf = or i8 %.sroa.014.2.i, %i.ce
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.l, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.cf, %bb.l ] ; 3 uses
  %i.cg = icmp eq i16 %i.bs, 0
  br i1 %i.cg, label %.preheader96.3.i, label %bb.m

bb.m:                                             ; preds = %.preheader96.2.i
  %i.ch = or disjoint i64 %.sroa.06.0103.i, 32
  %i.ci = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cj = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ch, i16 noundef %i.bs, i1 noundef zeroext %i.ci)
  %i.ck = zext i1 %i.cj to i8
  %i.cl = or i8 %.sroa.014.2.1.i, %i.ck
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.m, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.cl, %bb.m ] ; 3 uses
  %i.cm = icmp eq i16 %i.by, 0
  br i1 %i.cm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader96.3.i
  %i.cn = or disjoint i64 %.sroa.06.0103.i, 48
  %i.co = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cn, i16 noundef %i.by, i1 noundef zeroext %i.co)
  %i.cq = zext i1 %i.cp to i8
  %i.cr = or i8 %.sroa.014.2.2.i, %i.cq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.cr, %bb.n ] ; 2 uses
  %i.cs = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.ct = add i64 %i.cs, %i.aw
  %i.cu = icmp uge i64 %i.ct, %3
  %i.cv = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.cw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.bg, i1 noundef zeroext false)
  %i.cx = zext i1 %i.cw to i8
  br label %.preheader96.1.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.q ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ba, %.preheader.i ], [ %i.dr, %bb.q ]
  %i.cy = sub nuw i64 %3, %i.h
  %i.cz = add i64 %i.cy, -16                      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !8569, !noalias !8575
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.db, align 1, !alias.scope !8569, !noalias !8575
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ap
  %i.dd = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ar
  %i.de = and <16 x i1> %i.dc, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.s, label %bb.t

.lr.ph107.i:                                      ; preds = %.preheader.i, %bb.q
  %.sroa.06.1106.i = phi i64 [ %i.do, %bb.q ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.dh, align 1, !alias.scope !8569, !noalias !8576
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.di, align 1, !alias.scope !8569, !noalias !8576
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ap
  %i.dk = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ar
  %i.dl = and <16 x i1> %i.dj, %i.dk
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dt, %bb.r ] ; 2 uses
  %i.do = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dp = add i64 %i.do, %i.ax
  %i.dq = icmp uge i64 %i.dp, %3
  %i.dr = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dq, %i.dr
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph107.i

bb.r:                                             ; preds = %.lr.ph107.i
  %i.ds = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.dm, i1 noundef zeroext false)
  %i.dt = zext i1 %i.ds to i8
  br label %bb.q

bb.s:                                             ; preds = %bb.t, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8572
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.t:                                             ; preds = %._crit_edge.i
  %i.du = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cz, i16 noundef %i.df, i1 noundef zeroext %.lcssa.i)
  %i.dv = zext i1 %i.du to i8
  %i.dw = or i8 %.sroa.014.3.lcssa.i, %i.dv
  br label %bb.s

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %bb.e, %bb.f, %bb.g, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsEhZmuQNqkz_11ruff_linter.exit.i.i.5, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dx = load i64, ptr %i.c, align 8, !range !16, !noundef !13
  %i.dy = trunc nuw nsw i64 %i.dx to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.u:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dz = icmp eq i32 %bcmp, 0
  %i.ea = zext i1 %i.dz to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !13
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !23, !alias.scope !8585, !noalias !8586, !noundef !13
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !8585, !noalias !8586, !nonnull !13, !noundef !13 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !8585, !noalias !8586, !noundef !13 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !8585, !noalias !8586 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8587)
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !8588, !noalias !8589, !noundef !13
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !8590, !noundef !13 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !8590, !noundef !13
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
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !8590, !noundef !13
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
  %i.au = load i8, ptr %i.ar, align 1, !noalias !8590, !noundef !13
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
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !8587, !noalias !8586
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !13
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !13 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !13 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !8588, !noalias !8591, !noundef !13
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !8592, !noundef !13 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !8592, !noundef !13
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
end_hunk_0
