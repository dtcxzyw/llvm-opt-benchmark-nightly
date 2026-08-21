Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.15?download=true
inline.NumInlined: 5570
inline.NumDeleted: 2226
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules32unary_prefix_increment_decrement32unary_prefix_increment_decrement:bb.a
  %i.j = load i32, ptr %1, align 8, !range !62, !noundef !6 ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = zext nneg i32 %i.j to i64
  %switch.gep7 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.l
  %switch.load8 = load i8, ptr %switch.gep7, align 1
  %switch.ext9 = zext i8 %switch.load8 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext9
  %.sroa.0.0.i = load i32, ptr %i.m, align 4, !noundef !6
  %.sroa.34.0.i = load i32, ptr %i.n, align 4, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !align !331, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules32unary_prefix_increment_decrement29UnaryPrefixIncrementDecrementEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.p, i1 noundef zeroext false, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

switch.lookup10:                                  ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = load i32, ptr %1, align 8, !range !62, !noundef !6 ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %switch.gep11 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.844, i64 %i.r
  %switch.load12 = load i8, ptr %switch.gep11, align 1
  %switch.ext13 = zext i8 %switch.load12 to i64
  %i.s = zext nneg i32 %i.q to i64
  %switch.gep14 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules12builtin_open12builtin_opens0_0s_0INtB7_5FnMutTTjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12ArgOrKeywordEEE8call_mutB12_.845, i64 %i.s
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %switch.ext16 = zext i8 %switch.load15 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext16
  %.sroa.0.0.i3 = load i32, ptr %i.t, align 4, !noundef !6
  %.sroa.34.0.i4 = load i32, ptr %i.u, align 4, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !6, !align !331, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules32unary_prefix_increment_decrement29UnaryPrefixIncrementDecrementEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.w, i1 noundef zeroext true, i32 noundef %.sroa.0.0.i3, i32 noundef %.sroa.34.0.i4)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules33except_with_non_exception_classes33except_with_non_exception_classes(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 15 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 15 uses
  %i.h = alloca [32 x i8], align 8                ; 26 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !align !331, !noundef !6 ; 5 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8638
  %i.m = load i32, ptr %i.l, align 8, !range !62, !noalias !8638, !noundef !6
  %i.n = icmp eq i32 %i.m, 30
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noalias !8638, !noundef !6
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8644
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s), !noalias !8644
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !8644
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !8644, !nonnull !6, !noundef !6
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !8644 ; 3 uses
  %i.t = icmp ult i64 %.sroa.54.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !8641, !noalias !8638
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.54.0.copyload.i.i, ptr %i.v, align 8, !alias.scope !8641, !noalias !8638
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.h, align 8, !alias.scope !8641, !noalias !8638
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.43.0.copyload.i.i, ptr %i.w, align 8, !alias.scope !8641, !noalias !8638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8644
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !8638
  %i.x = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #55, !noalias !8638 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, !prof !1958

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #52, !noalias !8638
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.d
  store ptr %i.l, ptr %i.x, align 8, !noalias !8638
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !8638
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %i.aa, align 8, !noalias !8638
  store i64 1, ptr %i.h, align 8, !noalias !8638
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !8638
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %i.ac = phi i64 [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.54.0.copyload.i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8638
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8638
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.i unwind label %bb.h, !noalias !8638

bb.g:                                             ; preds = %.body69.i, %bb.h
  %.pn28.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %.pn26.i, %.body69.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.h) #53
          to label %common.resume unwind label %bb.aq, !noalias !8638

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.d, align 8, !range !1861, !noalias !8638, !noundef !6
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !1862, !noalias !8638, !noundef !6 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !8638
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #52
          to label %bb.ba unwind label %bb.h, !noalias !8638

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.aj, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 2 uses
  %i.am = icmp samesign ule i64 %i.ac, %i.ai
  call void @llvm.assume(i1 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8638
  store i64 %i.ai, ptr %i.g, align 8, !noalias !8638
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  store ptr %i.al, ptr %i.an, align 8, !noalias !8638
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 10 uses
  store i64 0, ptr %i.ao, align 8, !noalias !8638
  %i.ap = load i64, ptr %i.ad, align 8, !alias.scope !8645, !noalias !8638, !noundef !6 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.43.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.54.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.43.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.m

.body69.i:                                        ; preds = %bb.ay, %bb.aw, %bb.ao, %bb.am, %bb.u, %bb.l
  %.pn26.i = phi { ptr, i32 } [ %i.fs, %bb.aw ], [ %i.ex, %bb.ao ], [ %i.az, %bb.l ], [ %i.eu, %bb.am ], [ %i.cd, %bb.u ], [ %i.fv, %bb.ay ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.g) #53
          to label %bb.g unwind label %bb.aq, !noalias !8638

bb.l:                                             ; preds = %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i67.i, %bb.au, %bb.as, %bb.q
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

bb.m:                                             ; preds = %bb.v, %.lr.ph.i
  %i.ba = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.ce, %bb.v ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8648)
  %i.bb = load i64, ptr %i.ar, align 8, !alias.scope !8648, !noalias !8638, !noundef !6 ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  %i.bd = load i64, ptr %i.h, align 8, !range !36, !alias.scope !8648, !noalias !8638, !noundef !6 ; 9 uses
  %.not.i.i = icmp ult i64 %i.bc, %i.bd
  %i.be = select i1 %.not.i.i, i64 0, i64 %i.bd
  %.sroa.01.0.i.i = sub nuw i64 %i.bc, %i.be      ; 4 uses
  store i64 %.sroa.01.0.i.i, ptr %i.ar, align 8, !alias.scope !8648, !noalias !8638
  %i.bf = add i64 %i.ba, -1                       ; 5 uses
  store i64 %i.bf, ptr %i.ad, align 8, !alias.scope !8648, !noalias !8638
  %i.bg = icmp ult i64 %i.bf, %i.bd
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load ptr, ptr %i.as, align 8, !alias.scope !8648, !noalias !8638, !nonnull !6, !noundef !6 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bb
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !8650, !nonnull !6, !align !331, !noundef !6 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !range !62, !noalias !8638, !noundef !6
  switch i32 %i.bk, label %bb.p [
    i32 2, label %bb.r
    i32 27, label %bb.s
  ]

._crit_edge.i.loopexit:                           ; preds = %bb.v
  %.sroa.0.0.copyload.pre = load i64, ptr %i.g, align 8
  %.sroa.4.0.copyload.pre = load ptr, ptr %i.an, align 8
  %.sroa.5.0.copyload.pre = load i64, ptr %i.ao, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.k
  %.sroa.5.0.copyload = phi i64 [ %.sroa.5.0.copyload.pre, %._crit_edge.i.loopexit ], [ 0, %bb.k ] ; 3 uses
  %.sroa.4.0.copyload = phi ptr [ %.sroa.4.0.copyload.pre, %._crit_edge.i.loopexit ], [ %i.al, %bb.k ] ; 5 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %._crit_edge.i.loopexit ], [ %i.ai, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8638
  %i.bl = invoke { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsEhZmuQNqkz_11ruff_linter(i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules33except_with_non_exception_classes17flatten_iterables.exit unwind label %bb.n, !noalias !8651 ; 0 uses

bb.n:                                             ; preds = %._crit_edge.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.o, !noalias !8638

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8638
  unreachable

common.resume:                                    ; preds = %bb.bc, %bb.g, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn28.i, %bb.g ], [ %i.bm, %bb.n ], [ %i.gc, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.r, %bb.m
  %i.bo = load i64, ptr %i.ao, align 8, !alias.scope !8654, !noalias !8638, !noundef !6 ; 3 uses
  %i.bp = load i64, ptr %i.g, align 8, !range !36, !alias.scope !8654, !noalias !8638, !noundef !6
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.l, !noalias !8638

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.q, %bb.p
  %i.br = load ptr, ptr %i.an, align 8, !alias.scope !8654, !noalias !8638, !nonnull !6, !noundef !6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bo
  store ptr %i.bj, ptr %i.bs, align 8, !noalias !8638
  %i.bt = add i64 %i.bo, 1
  store i64 %i.bt, ptr %i.ao, align 8, !alias.scope !8654, !noalias !8638
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bv = load i8, ptr %i.bu, align 4, !range !2392, !noalias !8638, !noundef !6
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.t, label %bb.p

bb.s:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 6 uses
  %i.bz = load i32, ptr %i.by, align 8, !range !62, !noalias !8638, !noundef !6
  switch i32 %i.bz, label %bb.ar [
    i32 2, label %bb.at
    i32 29, label %bb.au
    i32 30, label %bb.au
  ]

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 8, !range !62, !noalias !8638, !noundef !6
  switch i32 %i.cc, label %bb.w [
    i32 2, label %bb.y
    i32 27, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.i
    i32 30, label %bb.z
  ]

bb.u:                                             ; preds = %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.ak, %bb.ai, %bb.af, %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.1.i, %bb.ab, %bb.z, %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body69.i

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit71.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit58.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit52.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.1.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.1.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ce = load i64, ptr %i.ad, align 8, !alias.scope !8657, !noalias !8638, !noundef !6 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %._crit_edge.i.loopexit, label %bb.m

bb.w:                                             ; preds = %bb.y, %bb.t
  %i.cg = load i64, ptr %i.ao, align 8, !alias.scope !8659, !noalias !8638, !noundef !6 ; 3 uses
  %i.ch = load i64, ptr %i.g, align 8, !range !36, !alias.scope !8659, !noalias !8638, !noundef !6
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.x, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.i unwind label %bb.u, !noalias !8638

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.i: ; preds = %bb.x, %bb.w
  %i.cj = load ptr, ptr %i.an, align 8, !alias.scope !8659, !noalias !8638, !nonnull !6, !noundef !6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cg
  store ptr %i.cb, ptr %i.ck, align 8, !noalias !8638
  %i.cl = add i64 %i.cg, 1
  store i64 %i.cl, ptr %i.ao, align 8, !alias.scope !8659, !noalias !8638
  br label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cn = load i8, ptr %i.cm, align 4, !range !2392, !noalias !8638, !noundef !6
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.i, label %bb.w

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !8638, !nonnull !6, !noundef !6
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !8662, !noalias !8638
  %i.cr = add i64 %.sroa.01.0.i.i, %i.bf          ; 2 uses
  %.not.i34.i = icmp ult i64 %i.cr, %i.bd
  %i.cs = select i1 %.not.i34.i, i64 0, i64 %i.bd
  %.sroa.03.0.i.i = sub nuw i64 %i.cr, %i.cs
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.03.0.i.i
  store ptr %i.cq, ptr %i.ct, align 8, !noalias !8638
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8638
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !8638, !noundef !6
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cv, i64 %i.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !8665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8668
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cy)
          to label %bb.al unwind label %bb.u, !noalias !8638

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.i: ; preds = %bb.y
  store i64 %i.ba, ptr %i.ad, align 8, !alias.scope !8669, !noalias !8638
  %i.cz = add i64 %.sroa.01.0.i.i, %i.bf          ; 2 uses
  %.not.i42.i = icmp ult i64 %i.cz, %i.bd
  %i.da = select i1 %.not.i42.i, i64 0, i64 %i.bd
  %.sroa.03.0.i43.i = sub nuw i64 %i.cz, %i.da
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.03.0.i43.i
  store ptr %i.cb, ptr %i.db, align 8, !noalias !8638
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.i
  %i.dc = load ptr, ptr %i.ca, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 8, !range !62, !noalias !8638, !noundef !6
  switch i32 %i.dd, label %bb.aj [
    i32 2, label %bb.ag
    i32 27, label %bb.ae
    i32 30, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8638
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !noalias !8638, !nonnull !6, !noundef !6 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !8638, !noundef !6
  %i.di = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %i.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !8672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8674
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.df, ptr noundef nonnull %i.di)
          to label %bb.ac unwind label %bb.u, !noalias !8638

bb.ac:                                            ; preds = %bb.ab
  %.sroa.02.0.copyload.i36.1.i = load i64, ptr %i.b, align 8, !noalias !8674
  %.sroa.43.0.copyload.i38.1.i = load ptr, ptr %.sroa.43.0..sroa_idx.i37.i, align 8, !noalias !8674, !nonnull !6, !noundef !6
  %.sroa.54.0.copyload.i40.1.i = load i64, ptr %.sroa.54.0..sroa_idx.i39.i, align 8, !noalias !8674 ; 2 uses
  %i.dj = icmp ult i64 %.sroa.54.0.copyload.i40.1.i, 1152921504606846976
  call void @llvm.assume(i1 %i.dj)
  store i64 0, ptr %i.aw, align 8, !alias.scope !8672, !noalias !8638
  store i64 %.sroa.54.0.copyload.i40.1.i, ptr %i.ax, align 8, !alias.scope !8672, !noalias !8638
  store i64 %.sroa.02.0.copyload.i36.1.i, ptr %i.e, align 8, !alias.scope !8672, !noalias !8638
  store ptr %.sroa.43.0.copyload.i38.1.i, ptr %i.ay, align 8, !alias.scope !8672, !noalias !8638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8674
  invoke fastcc void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE6appendCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef align 8 dereferenceable(32) %i.e)
          to label %bb.ad unwind label %bb.am, !noalias !8638

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !8675)
  %i.dk = load i64, ptr %i.ax, align 8, !alias.scope !8678, !noalias !8638, !noundef !6
  %i.dl = invoke { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsEhZmuQNqkz_11ruff_linter(i64 noundef %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.1.i unwind label %bb.ao, !noalias !8681 ; 0 uses

_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.1.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.1.i unwind label %bb.u, !noalias !8638

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.1.i: ; preds = %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8638
  br label %bb.v

bb.ae:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !8638, !nonnull !6, !noundef !6
  %i.do = load i64, ptr %i.ad, align 8, !alias.scope !8662, !noalias !8638, !noundef !6 ; 2 uses
  %i.dp = load i64, ptr %i.h, align 8, !range !36, !alias.scope !8662, !noalias !8638, !noundef !6 ; 2 uses
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.af, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.1.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc35.1.i unwind label %bb.u, !noalias !8638

.noexc35.1.i:                                     ; preds = %bb.af
  %.pre.i.1.i = load i64, ptr %i.ad, align 8, !alias.scope !8662, !noalias !8638
  %.pre6.i.1.i = load i64, ptr %i.h, align 8, !range !36, !alias.scope !8662, !noalias !8638
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.1.i

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit.1.i: ; preds = %.noexc35.1.i, %bb.ae
  %i.dr = phi i64 [ %.pre6.i.1.i, %.noexc35.1.i ], [ %i.dp, %bb.ae ] ; 2 uses
  %i.ds = phi i64 [ %.pre.i.1.i, %.noexc35.1.i ], [ %i.do, %bb.ae ] ; 2 uses
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.ad, align 8, !alias.scope !8662, !noalias !8638
  %i.du = load i64, ptr %i.ar, align 8, !alias.scope !8662, !noalias !8638, !noundef !6
  %i.dv = add i64 %i.du, %i.ds                    ; 2 uses
  %.not.i34.1.i = icmp ult i64 %i.dv, %i.dr
  %i.dw = select i1 %.not.i34.1.i, i64 0, i64 %i.dr
  %.sroa.03.0.i.1.i = sub nuw i64 %i.dv, %i.dw
  %i.dx = load ptr, ptr %i.as, align 8, !alias.scope !8662, !noalias !8638, !nonnull !6, !noundef !6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.sroa.03.0.i.1.i
  store ptr %i.dn, ptr %i.dy, align 8, !noalias !8638
  br label %bb.v

bb.ag:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  %i.ea = load i8, ptr %i.dz, align 4, !range !2392, !noalias !8638, !noundef !6
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load i64, ptr %i.ad, align 8, !alias.scope !8669, !noalias !8638, !noundef !6 ; 2 uses
  %i.ed = load i64, ptr %i.h, align 8, !range !36, !alias.scope !8669, !noalias !8638, !noundef !6 ; 2 uses
  %i.ee = icmp eq i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ai, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.1.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc46.1.i unwind label %bb.u, !noalias !8638

.noexc46.1.i:                                     ; preds = %bb.ai
  %.pre.i44.1.i = load i64, ptr %i.ad, align 8, !alias.scope !8669, !noalias !8638
  %.pre6.i45.1.i = load i64, ptr %i.h, align 8, !range !36, !alias.scope !8669, !noalias !8638
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.1.i

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13push_back_mutCsEhZmuQNqkz_11ruff_linter.exit47.1.i: ; preds = %.noexc46.1.i, %bb.ah
  %i.ef = phi i64 [ %.pre6.i45.1.i, %.noexc46.1.i ], [ %i.ed, %bb.ah ] ; 2 uses
  %i.eg = phi i64 [ %.pre.i44.1.i, %.noexc46.1.i ], [ %i.ec, %bb.ah ] ; 2 uses
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ad, align 8, !alias.scope !8669, !noalias !8638
  %i.ei = load i64, ptr %i.ar, align 8, !alias.scope !8669, !noalias !8638, !noundef !6
  %i.ej = add i64 %i.ei, %i.eg                    ; 2 uses
  %.not.i42.1.i = icmp ult i64 %i.ej, %i.ef
  %i.ek = select i1 %.not.i42.1.i, i64 0, i64 %i.ef
  %.sroa.03.0.i43.1.i = sub nuw i64 %i.ej, %i.ek
  %i.el = load ptr, ptr %i.as, align 8, !alias.scope !8669, !noalias !8638, !nonnull !6, !noundef !6
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.sroa.03.0.i43.1.i
  store ptr %i.dc, ptr %i.em, align 8, !noalias !8638
  br label %bb.v

bb.aj:                                            ; preds = %bb.ag, %bb.aa
  %i.en = load i64, ptr %i.ao, align 8, !alias.scope !8659, !noalias !8638, !noundef !6 ; 3 uses
  %i.eo = load i64, ptr %i.g, align 8, !range !36, !alias.scope !8659, !noalias !8638, !noundef !6
  %i.ep = icmp eq i64 %i.en, %i.eo
  br i1 %i.ep, label %bb.ak, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.1.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.1.i unwind label %bb.u, !noalias !8638

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit33.1.i: ; preds = %bb.ak, %bb.aj
  %i.eq = load ptr, ptr %i.an, align 8, !alias.scope !8659, !noalias !8638, !nonnull !6, !noundef !6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.en
  store ptr %i.dc, ptr %i.er, align 8, !noalias !8638
  %i.es = add i64 %i.en, 1
  store i64 %i.es, ptr %i.ao, align 8, !alias.scope !8659, !noalias !8638
  br label %bb.v

bb.al:                                            ; preds = %bb.z
  %.sroa.02.0.copyload.i36.i = load i64, ptr %i.b, align 8, !noalias !8668
  %.sroa.43.0.copyload.i38.i = load ptr, ptr %.sroa.43.0..sroa_idx.i37.i, align 8, !noalias !8668, !nonnull !6, !noundef !6
  %.sroa.54.0.copyload.i40.i = load i64, ptr %.sroa.54.0..sroa_idx.i39.i, align 8, !noalias !8668 ; 2 uses
  %i.et = icmp ult i64 %.sroa.54.0.copyload.i40.i, 1152921504606846976
  call void @llvm.assume(i1 %i.et)
  store i64 0, ptr %i.aw, align 8, !alias.scope !8665, !noalias !8638
  store i64 %.sroa.54.0.copyload.i40.i, ptr %i.ax, align 8, !alias.scope !8665, !noalias !8638
  store i64 %.sroa.02.0.copyload.i36.i, ptr %i.e, align 8, !alias.scope !8665, !noalias !8638
  store ptr %.sroa.43.0.copyload.i38.i, ptr %i.ay, align 8, !alias.scope !8665, !noalias !8638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8668
  invoke fastcc void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE6appendCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.h, ptr noalias noundef align 8 dereferenceable(32) %i.e)
          to label %bb.an unwind label %bb.am, !noalias !8638

bb.am:                                            ; preds = %bb.al, %bb.ac
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.e) #53
          to label %.body69.i unwind label %bb.aq, !noalias !8638

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !8682)
  %i.ev = load i64, ptr %i.ax, align 8, !alias.scope !8684, !noalias !8638, !noundef !6
  %i.ew = invoke { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsEhZmuQNqkz_11ruff_linter(i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.ao, !noalias !8685 ; 0 uses

bb.ao:                                            ; preds = %bb.an, %bb.ad
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body69.i unwind label %bb.ap, !noalias !8638

_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.i unwind label %bb.u, !noalias !8638

bb.ap:                                            ; preds = %bb.ao
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8638
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit50.i: ; preds = %_RNvXs_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB4_8VecDequeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8638
  br label %bb.aa

bb.aq:                                            ; preds = %bb.aw, %bb.am, %.body69.i, %bb.g
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #54, !noalias !8638
  unreachable

bb.ar:                                            ; preds = %bb.at, %bb.s
  %i.fa = load i64, ptr %i.ao, align 8, !alias.scope !8686, !noalias !8638, !noundef !6 ; 3 uses
  %i.fb = load i64, ptr %i.g, align 8, !range !36, !alias.scope !8686, !noalias !8638, !noundef !6
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit52.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit52.i unwind label %bb.l, !noalias !8638

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE8push_mutCsEhZmuQNqkz_11ruff_linter.exit52.i: ; preds = %bb.as, %bb.ar
  %i.fd = load ptr, ptr %i.an, align 8, !alias.scope !8686, !noalias !8638, !nonnull !6, !noundef !6
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fa
  store ptr %i.by, ptr %i.fe, align 8, !noalias !8638
  %i.ff = add i64 %i.fa, 1
end_hunk_0
