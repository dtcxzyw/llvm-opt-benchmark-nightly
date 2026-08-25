Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shuf-96b04ff6b68f93b7.uu_shuf.5e03469bff93765e-cgu.0?download=true
inline.NumInlined: 1089
inline.NumDeleted: 516
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs4_Cs84qwSrTN5pO_7uu_shufNtB5_10WrappedRng17choose_from_range:bb.a

bb.o:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i
  %i.be = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %i.be, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 268
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !930, !noalias !933, !noundef !9
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.bj = load i64, ptr %i.bi, align 4, !alias.scope !936, !noalias !939
  %i.bk = icmp ugt i64 %i.bj, 1023
  br i1 %i.bk, label %bb.q, label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i, !prof !10

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs_NtNtCs7g3JyErIm42_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bh) #28, !noalias !939
  br label %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i

_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i: ; preds = %bb.q, %bb.p
  tail call fastcc void @_RNvXs_NtCsjXcachvKq5y_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskqYlSTCc3RA_9rand_core5block9Generator8generateCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.h) #26, !noalias !933
  %i.bl = load i32, ptr %i.h, align 4, !alias.scope !930, !noalias !933, !noundef !9 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i, label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !930, !noalias !933, !noundef !9
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.bo = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !alias.scope !930, !noalias !933, !noundef !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !930, !noalias !933, !noundef !9
  %i.bt = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i, 2
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i: ; preds = %bb.s, %bb.r, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i = phi i32 [ %i.bt, %bb.s ], [ 1, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ 2, %bb.r ]
  %.sroa.02.017.i.i.i.i18.i.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.bg, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.bl, %bb.r ]
  %.sroa.03.016.i.i.i.i19.i.i.i = phi i32 [ %i.bs, %bb.s ], [ %i.bl, %_RNvXNtNtCs7g3JyErIm42_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskqYlSTCc3RA_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.bn, %bb.r ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i, ptr %i.h, align 4, !alias.scope !930, !noalias !933
  %i.bu = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i to i64
  %i.bv = shl nuw i64 %i.bu, 32
  %i.bw = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i to i64
  %i.bx = or disjoint i64 %i.bv, %i.bw
  %i.by = zext i64 %i.bx to i128
  %i.bz = mul nuw i128 %i.by, %i.ax
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = xor i64 %i.bb, -1
  %.not6.i.i.i = icmp ult i64 %i.cc, %i.cb
  %i.cd = zext i1 %.not6.i.i.i to i64
  %i.ce = add nuw i64 %i.cd, %i.ba
  br label %bb.t

bb.t:                                             ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.ce, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit20.i.i.i ], [ %i.ba, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit14.i.i.i ]
  %i.cf = add i64 %.sroa.01.0.i.i.i, %.0.val
  br label %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #29, !noalias !941
  unreachable

_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i, %bb.t
  %.sroa.61.0.i = phi i64 [ %i.cf, %bb.t ], [ %i.ac, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs84qwSrTN5pO_7uu_shuf.exit.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.61.0.i, ptr %i.cg, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %.val1 = load ptr, ptr %1, align 8
  %i.ch = sub i64 %.8.val, %.0.val
  %i.ci = tail call fastcc noundef i64 @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng16generate_at_most(ptr %.val1, i64 noundef %i.ch) #26
  %i.cj = add i64 %i.ci, %.0.val
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !945
  %i.cl = sub i64 %.8.val, %.0.val
  call fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.cl) #26, !noalias !942
  %i.cm = load ptr, ptr %i.a, align 8, !noalias !945, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.cm, null
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !945, !nonnull !9, !align !181, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !945
  br label %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit

bb.y:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.cn, align 8, !noalias !945, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !945
  %i.cq = add i64 %i.cp, %.0.val
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit

_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit: ; preds = %bb.x, %bb.y
  %.sink1.i = phi ptr [ %i.cr, %bb.y ], [ %i.co, %bb.x ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1.i, ptr %i.cs, align 8, !alias.scope !942, !noalias !947
  br label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit, %bb.v, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit
  %.sink = phi ptr [ %i.cm, %_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE17choose_from_rangeB6_.exit ], [ null, %bb.v ], [ null, %_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyEECs84qwSrTN5pO_7uu_shuf.exit ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs84qwSrTN5pO_7uu_shuf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !13
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #26
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #26
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 2 uses
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !948, !noalias !953
  %.pre.i.i.fr = freeze ptr %.pre.i.i             ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = icmp eq ptr %.pre.i.i.fr, null
  %.promoted = load i8, ptr %i.o, align 8         ; 2 uses
  br i1 %i.p, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !948, !noalias !953
  %.pre35 = load i64, ptr %i.h, align 8, !alias.scope !948, !noalias !953
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !948, !noalias !953, !noundef !9 ; 2 uses
  %i.r = load i64, ptr %i.h, align 8, !alias.scope !948, !noalias !953, !noundef !9 ; 2 uses
  %.not.i.i.us = icmp ult i64 %i.q, %i.r
  br i1 %.not.i.i.us, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !959
  store ptr null, ptr %i.a, align 8, !noalias !959
  store i64 %i.k, ptr %i.l, align 8, !noalias !959
  store i64 0, ptr %i.m, align 8, !noalias !959
  store i8 %.promoted, ptr %i.n, align 8, !noalias !959
  %i.s = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #26, !noalias !960 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !948, !noalias !953
  %i.t = load i64, ptr %i.m, align 8, !noalias !959, !noundef !9 ; 2 uses
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !948, !noalias !953
  %i.u = load i8, ptr %i.n, align 8, !range !322, !noalias !959, !noundef !9
  store i8 %i.u, ptr %i.o, align 8, !alias.scope !948, !noalias !953
  %.not3.i.i.us = icmp eq ptr %i.s, null
  br i1 %.not3.i.i.us, label %bb.c, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !959
  br label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us: ; preds = %bb.c, %.lr.ph.split.us
  %i.v = phi i64 [ %i.r, %.lr.ph.split.us ], [ %i.t, %bb.c ]
  %i.w = phi i64 [ %i.q, %.lr.ph.split.us ], [ 0, %bb.c ]
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = inttoptr i64 %i.x to ptr
  br label %bb.e

._crit_edge:                                      ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48, %bb.a
  %.lcssa22 = phi i64 [ %i.d, %bb.a ], [ %i.bm, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ] ; 4 uses
  %i.z = icmp eq i64 %2, -1
  br i1 %i.z, label %bb.g, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48
  %i.aa = phi i64 [ %i.bd, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ], [ %.pre35, %.lr.ph.split.preheader ] ; 2 uses
  %i.ab = phi i64 [ %..i.i, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ], [ %.pre, %.lr.ph.split.preheader ] ; 2 uses
  %3 = phi i8 [ %4, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48 ], [ %.promoted, %.lr.ph.split.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %.not.i.i = icmp ult i64 %i.ab, %i.aa
  br i1 %.not.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !959
  store ptr %.pre.i.i.fr, ptr %i.a, align 8, !noalias !959
  store i64 %i.k, ptr %i.l, align 8, !noalias !959
  store i64 0, ptr %i.m, align 8, !noalias !959
  store i8 %3, ptr %i.n, align 8, !noalias !959
  %i.ac = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #26, !noalias !960 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !948, !noalias !953
  %i.ad = load i64, ptr %i.m, align 8, !noalias !959, !noundef !9 ; 3 uses
  store i64 %i.ad, ptr %i.h, align 8, !alias.scope !948, !noalias !953
  %i.ae = load i8, ptr %i.n, align 8, !range !322, !noalias !959, !noundef !9 ; 2 uses
  store i8 %i.ae, ptr %i.o, align 8, !alias.scope !948, !noalias !953
  %.not3.i.i = icmp eq ptr %i.ac, null
  br i1 %.not3.i.i, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread: ; preds = %bb.d, %bb.b
  %.us-phi = phi ptr [ %i.s, %bb.b ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !959
  br label %bb.e

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !959
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.m, label %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48

bb.e:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread
  %.sroa.511.016 = phi ptr [ %.us-phi, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread ], [ %i.y, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !noalias !961
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 28) #26, !noalias !961
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !965
  %i.ag = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !965 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %bb.l, !prof !84

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !965
  unreachable

bb.g:                                             ; preds = %._crit_edge
  %i.ai = load i64, ptr %1, align 8, !noundef !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i64 %i.ai, ptr %i.aj, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ak = add nuw i64 %2, 1                       ; 5 uses
  %i.al = zext i64 %i.ak to i128
  %i.am = zext i64 %.lcssa22 to i128
  %i.an = add nuw nsw i128 %i.am, 1
  %i.ao = urem i128 %i.an, %i.al
  %i.ap = trunc nuw i128 %i.ao to i64
  %i.aq = sub i64 %.lcssa22, %i.ap
  %i.ar = load i64, ptr %1, align 8, !noundef !9  ; 3 uses
  %.not = icmp ugt i64 %i.ar, %i.aq
  %i.as = urem i64 %i.ar, %i.ak                   ; 2 uses
  %i.at = udiv i64 %i.ar, %i.ak
  br i1 %.not, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.l, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.j, %bb.k, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h
  store i64 %i.as, ptr %1, align 8
  %i.au = urem i64 %.lcssa22, %i.ak
  store i64 %i.au, ptr %i.c, align 8
  call fastcc void @_RNvMs_NtCs84qwSrTN5pO_7uu_shuf20compat_random_sourceINtB4_19RandomSourceAdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE16generate_at_mostB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, i64 noundef %2) #26
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  store i64 %i.at, ptr %1, align 8
  %i.av = sub i64 %.lcssa22, %2
  %i.aw = udiv i64 %i.av, %i.ak
  store i64 %i.aw, ptr %i.c, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.ax, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !961
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %.sroa.511.016, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i), !noalias !961
  store ptr %i.ag, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @35, ptr %i.ay, align 8
  br label %bb.i

bb.m:                                             ; preds = %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 30) #26
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !968
  %i.az = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !968 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.n, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !84

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !968
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.az, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @70, ptr %i.bb, align 8
  br label %bb.i

_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit.thread48: ; preds = %.lr.ph.split, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit
  %i.bc = phi i64 [ 0, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit ], [ %i.ab, %.lr.ph.split ] ; 2 uses
  %4 = phi i8 [ %i.ae, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit ], [ %3, %.lr.ph.split ]
  %i.bd = phi i64 [ %i.ad, %_RNvXs5_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs84qwSrTN5pO_7uu_shuf.exit ], [ %i.aa, %.lr.ph.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.i.fr, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !noundef !9
  %i.bg = add nuw i64 %i.bc, 1
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bg) ; 2 uses
  store i64 %..i.i, ptr %i.g, align 8, !alias.scope !971
  %i.bh = zext i8 %i.bf to i64
  %i.bi = load <2 x i64>, ptr %1, align 8
  %i.bj = shl <2 x i64> %i.bi, splat (i64 8)
  %i.bk = insertelement <2 x i64> <i64 poison, i64 255>, i64 %i.bh, i64 0
  %i.bl = or disjoint <2 x i64> %i.bj, %i.bk      ; 2 uses
  store <2 x i64> %i.bl, ptr %1, align 8
  %i.bm = extractelement <2 x i64> %i.bl, i64 1   ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %2
  br i1 %i.bn, label %.lr.ph.split, label %._crit_edge
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs84qwSrTN5pO_7uu_shuf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs84qwSrTN5pO_7uu_shuf.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs84qwSrTN5pO_7uu_shuf.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs84qwSrTN5pO_7uu_shuf.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 17) %0, i64 noundef range(i64 0, 305) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.c = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #26 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !84

bb.b:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #27
  unreachable

bb.c:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXCs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRShENtB2_8Shufable15partial_shuffle(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !9 ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load i8, ptr %i.k, align 8, !range !898, !alias.scope !974, !noalias !979, !noundef !9 ; 2 uses
  %i.m = add nsw i8 %i.l, -2
  %.inv.i = icmp samesign ult i8 %i.l, 2
  %narrow.i = select i1 %.inv.i, i8 2, i8 %i.m
  switch i8 %narrow.i, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.i
    i8 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 576460752303423488) %i.j, i64 %3) ; 7 uses
  %i.o = icmp samesign ult i64 %i.j, 4294967295
  br i1 %i.o, label %bb.d, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c
  %i.p = icmp samesign ult i64 %i.n, %i.j
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %.val.pre.i.i = load ptr, ptr %2, align 8, !alias.scope !986, !noalias !987
  br label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !989
  %i.q = trunc nuw i64 %i.n to i32
  %.not.i.i = icmp ule i64 %i.j, %3
  %..i.i = zext i1 %.not.i.i to i8
  store ptr %2, ptr %i.f, align 8, !noalias !989
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.q, ptr %i.r, align 8, !noalias !989
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.s, align 4, !noalias !989
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %..i.i, ptr %i.t, align 8, !noalias !989
  %i.u = icmp samesign ult i64 %i.n, %i.j
  br i1 %i.u, label %.lr.ph14.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.sroa.06.012.i.i = phi i64 [ %i.v, %bb.e ], [ %i.n, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.06.012.i.i, 1     ; 3 uses
  %i.w = tail call fastcc noundef i64 @_RINvYNtNtNtCs7g3JyErIm42_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCs6JMX4GRUq9U_4core3ops5range7RangeTojEECs84qwSrTN5pO_7uu_shuf(ptr %.val.pre.i.i, i64 noundef %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #26, !noalias !989 ; 3 uses
  %i.x = icmp samesign ult i64 %i.w, %i.j
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.06.012.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !noalias !990
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !991, !noalias !990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.j
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef range(i64 0, 576460752303423488) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #29, !noalias !989
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !989
  br label %_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i

.lr.ph14.i.i:                                     ; preds = %bb.d, %bb.g
  %.sroa.04.013.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.n, %bb.d ] ; 2 uses
  %i.aa = call fastcc noundef i64 @_RNvMNtNtCs7g3JyErIm42_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtNtB6_4rngs6thread9ThreadRngE10next_indexCs84qwSrTN5pO_7uu_shuf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #30, !noalias !987 ; 3 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.j
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph14.i.i
  %i.ac = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.04.013.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.aa ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !990
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !991, !noalias !990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond18.not.i.i = icmp eq i64 %i.ac, %i.j
  br i1 %exitcond18.not.i.i, label %._crit_edge.i.i, label %.lr.ph14.i.i

bb.h:                                             ; preds = %.lr.ph14.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef range(i64 0, 576460752303423488) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29, !noalias !987
  unreachable

_RINvXs0_NtNtCs7g3JyErIm42_4rand3seq5sliceSRShNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs84qwSrTN5pO_7uu_shuf.exit.i: ; preds = %bb.e, %._crit_edge.i.i, %.preheader.i.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.n
  %i.ag = sub nuw nsw i64 %i.j, %i.n
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !974, !noalias !979
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.j, i64 %3) ; 3 uses
  %.not.i1.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i1.i, label %.loopexit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.i, %bb.j
  %.sroa.01.01.i.i = phi i64 [ %i.am, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.ah = xor i64 %.sroa.01.01.i.i, -1
  %i.ai = add nsw i64 %i.j, %i.ah
  %i.aj = tail call fastcc noundef i64 @_RNvMNtCs84qwSrTN5pO_7uu_shuf11random_seedNtB2_9SeededRng16generate_at_most(ptr %.val.i, i64 noundef %i.ai) #26, !noalias !995
  %i.ak = add i64 %i.aj, %.sroa.01.01.i.i         ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.j
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i2.i
  %i.am = add nuw nsw i64 %.sroa.01.01.i.i, 1     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.01.01.i.i ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ak ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !996
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !997, !noalias !996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !996
end_hunk_0
