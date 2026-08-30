Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ac = load i8, ptr %i.ab, align 8, !range !417, !noalias !6282, !noundef !17
  %.not.i.i.i.i = icmp samesign ult i8 %i.ac, %.
  br i1 %.not.i.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_.exit.thread.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0EE4peek0EB3O_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = icmp eq ptr %i.x, %i.u
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0EE4peek0EB3O_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0INtB7_5FnMutTRRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE8call_mutBU_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6293
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !6293, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6293
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.af, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6293
  %i.ag = load i64, ptr %i.f, align 8, !range !100, !noalias !6293, !noundef !17
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !352, !noalias !6293, !noundef !17 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ah, label %bb.b, label %bb.f, !prof !196

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0EE4peek0EB3O_.exit
  %i.al = load i64, ptr %i.ak, align 8, !noalias !6293
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aj, i64 %i.al) #55, !noalias !6293
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixTableEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bm, !noalias !6293

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.body78.i, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %.pn.i, %.body78.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c, !noalias !6293

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.d, !noalias !6293

bb.d:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !6293
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map12SourceMarkerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics10source_map9SourceMapECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bm, !noalias !6293

bb.e:                                             ; preds = %bb.n, %bb.l, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.f:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0EE4peek0EB3O_.exit
  %i.ap = load ptr, ptr %i.ak, align 8, !noalias !6293, !nonnull !17, !noundef !17
  %i.aq = icmp ule i64 %i.af, %i.aj
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6293
  store i64 %i.aj, ptr %i.q, align 8, !noalias !6293
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.ap, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !6293
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6293
  store ptr null, ptr %i.p, align 8, !noalias !6293
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @52, i64 32, i1 false), !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @52, i64 32, i1 false), !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6293
  store i64 0, ptr %i.m, align 8, !noalias !6293
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !6293
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6293
  store i64 1, ptr %i.k, align 8, !noalias !6297
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !6297
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !6297
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.u, ptr %.sroa.63.0..sroa_idx, align 8, !noalias !6297
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6297
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapIB4_INtNtB8_8peekable8PeekableINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCsEhZmuQNqkz_11ruff_linter3fix8fix_file0EENCINvB3e_11apply_fixesB19_E0ENCB3Y_s_0ENtCs6Wt4yPw39th_9itertools9Itertools9sorted_byNCB3Y_s0_0EB3g_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.g unwind label %bb.e, !noalias !6293

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !6293
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !6298, !noalias !6301, !nonnull !17, !noundef !17
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !6298, !noalias !6301, !nonnull !17, !noundef !17 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i: ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i
  %i.bb = phi ptr [ %i.au, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i ], [ %i.dx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i ]
  %.sroa.014.0.ph238.i = phi i32 [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i ], [ %.sroa.014.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i ] ; 4 uses
  %.sroa.517.0.ph236.i = phi i32 [ undef, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.lr.ph.i ], [ %.sroa.517.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i ] ; 4 uses
  %i.bc = trunc nuw i32 %.sroa.014.0.ph238.i to i1
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i

.body78.i:                                        ; preds = %bb.ao, %bb.ae, %.loopexit.split-lp133.loopexit.split-lp.i, %.loopexit.split-lp133.loopexit.loopexit.split-lp.i, %.loopexit.split-lp133.loopexit.loopexit.i, %.loopexit132.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body75.i, %bb.ae ], [ %i.du, %bb.ao ], [ %lpad.loopexit134.i, %.loopexit132.i ], [ %lpad.loopexit.split-lp137.i, %.loopexit.split-lp133.loopexit.split-lp.i ], [ %lpad.loopexit142.i, %.loopexit.split-lp133.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp143.i, %.loopexit.split-lp133.loopexit.loopexit.split-lp.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bm, !noalias !6293

.loopexit132.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit134.i = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

.loopexit.split-lp133.loopexit.loopexit.i:        ; preds = %bb.s
  %lpad.loopexit142.i = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

.loopexit.split-lp133.loopexit.loopexit.split-lp.i: ; preds = %bb.ap, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i
  %lpad.loopexit.split-lp143.i = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

.loopexit.split-lp133.loopexit.split-lp.i:        ; preds = %bb.y
  %lpad.loopexit.split-lp137.i = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.u, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.i
  %i.bd = phi ptr [ %i.bb, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.lr.ph.i ], [ %i.cp, %bb.u ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6303)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.be, ptr %i.as, align 8, !alias.scope !6303, !noalias !6301
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bd, align 8, !noalias !6305 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6305 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !6305
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !6305 ; 5 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i) ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !6293, !nonnull !17, !noundef !17 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !6293, !noundef !17 ; 4 uses
  %.idx.i = mul nuw nsw i64 %i.bi, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i ; 4 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %i.bl = phi ptr [ %i.bm, %bb.i ], [ %i.bg, %bb.h ] ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6306
  store ptr %i.bl, ptr %i.d, align 8, !noalias !6306
  %i.bn = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB8_7set_val9SetValZSTE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc.i unwind label %.loopexit132.i, !noalias !6293

.noexc.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6306
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  %i.bo = icmp eq ptr %i.bm, %i.bj
  br i1 %i.bo, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i, label %.lr.ph.i.i.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i, %bb.u, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.g
  %.sroa.517.0.ph.lcssa.i = phi i32 [ %.sroa.517.0.ph236.i, %bb.u ], [ undef, %bb.g ], [ %.sroa.517.0.ph236.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.517.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i ]
  %.sroa.014.0.ph.lcssa.i = phi i32 [ %.sroa.014.0.ph238.i, %bb.u ], [ 0, %bb.g ], [ %.sroa.014.0.ph238.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.014.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit80.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit60.i unwind label %bb.e, !noalias !6293

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit60.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6293
  %i.bp = trunc nuw i32 %.sroa.014.0.ph.lcssa.i to i1
  %narrow.i = select i1 %i.bp, i32 %.sroa.517.0.ph.lcssa.i, i32 0 ; 2 uses
  %.sroa.040.0.i = zext i32 %narrow.i to i64      ; 7 uses
  %i.bq = load ptr, ptr %3, align 8, !noalias !6293, !nonnull !17, !noundef !17 ; 3 uses
  %i.br = load i64, ptr %i.ae, align 8, !noalias !6293, !noundef !17 ; 6 uses
  %i.bs = icmp eq i32 %narrow.i, 0
  br i1 %i.bs, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit60.i
  %.not.i.i = icmp ugt i64 %i.br, %.sroa.040.0.i
  br i1 %.not.i.i, label %bb.k, label %.split.i.i

.split.i.i:                                       ; preds = %bb.j
  %i.bt = icmp eq i64 %i.br, %.sroa.040.0.i
  br i1 %i.bt, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.040.0.i
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !6317, !noalias !6293, !noundef !17
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k, %.split.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEEECsEhZmuQNqkz_11ruff_linter.exit60.i
  %i.bx = sub nuw i64 %i.br, %.sroa.040.0.i       ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.040.0.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.bx)
          to label %.noexc62.i unwind label %bb.e, !noalias !6293

.noexc62.i:                                       ; preds = %bb.l
  %i.bz = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !6320, !noalias !6293, !noundef !17 ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, -1
  call void @llvm.assume(i1 %i.ca)
  %.not.i61.i = icmp eq i64 %i.br, %.sroa.040.0.i
  br i1 %.not.i61.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.noexc62.i
  %i.cb = load ptr, ptr %.sroa.425.0..sroa_idx.i, align 8, !alias.scope !6320, !noalias !6293, !nonnull !17, !noundef !17
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %i.by, i64 %i.bx, i1 false), !noalias !6293
  %.pre.i.i = load i64, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !6320, !noalias !6293
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %.split.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.br, i64 noundef %.sroa.040.0.i, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #55
          to label %bb.o unwind label %bb.e, !noalias !6293

bb.o:                                             ; preds = %bb.ar, %bb.y, %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m, %.noexc62.i
  %i.cd = phi i64 [ %.pre.i.i, %bb.m ], [ %i.bz, %.noexc62.i ]
  %i.ce = add i64 %i.cd, %i.bx
  store i64 %i.ce, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !6320, !noalias !6293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !6323
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !6323
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !6323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6293
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekable8PeekableINtNtBQ_6filter6FilterINtNtNtBU_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2_8fix_file0EEEB4_.exit unwind label %bb.q, !noalias !6293

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixTableEBF_.exit.i
  %.sroa.022.0.i = phi i1 [ false, %bb.q ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixTableEBF_.exit.i ]
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ch, %bb.q ], [ %.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixTableEBF_.exit.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bm, !noalias !6293

bb.q:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetmNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %.sroa.022.0.i, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i

bb.r:                                             ; preds = %.noexc.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.i, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !range !5354, !noalias !6293, !noundef !17
  %i.ck = trunc nuw i32 %i.cj to i1
  br i1 %i.ck, label %bb.v, label %bb.s

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i: ; preds = %bb.w, %bb.v, %bb.h, %bb.i
  %.sroa.0.0.i.i.i.i124.i = phi ptr [ null, %bb.i ], [ %i.bl, %bb.v ], [ null, %bb.h ], [ %i.bl, %bb.w ]
  %.sroa.10.0123.i = phi ptr [ %i.bj, %bb.i ], [ %i.bm, %bb.v ], [ %i.bg, %bb.h ], [ %i.bm, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6293
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.x unwind label %.loopexit.split-lp133.loopexit.loopexit.split-lp.i, !noalias !6293

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload.i, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !noalias !6293
  %i.cn = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapmuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef %i.cm)
          to label %bb.t unwind label %.loopexit.split-lp133.loopexit.loopexit.i, !noalias !6293

bb.t:                                             ; preds = %bb.s
  br i1 %i.cn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.co = load ptr, ptr %i.ar, align 8, !alias.scope !6324, !noalias !6301, !nonnull !17, !noundef !17
  %i.cp = load ptr, ptr %i.as, align 8, !alias.scope !6324, !noalias !6301, !nonnull !17, !noundef !17 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.co
  br i1 %i.cq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeReRNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i

bb.v:                                             ; preds = %bb.t, %bb.r
  br i1 %i.bc, label %bb.w, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !noalias !6293, !noundef !17
  %.not47.i = icmp ult i32 %.sroa.517.0.ph236.i, %i.cs
  br i1 %.not47.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i, label %bb.u

bb.x:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableINtNtB23_6filter6FilterINtNtNtB5_5slice4iter4IterBN_ENCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesIB2y_IB2O_IB3b_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB3J_8fix_file0EEEs1_0EE4peek0EB3L_.exit.thread.i
  %i.ct = load i64, ptr %i.e, align 8, !range !100, !noalias !6293, !noundef !17
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = load i64, ptr %i.aw, align 8, !range !352, !noalias !6293, !noundef !17 ; 3 uses
  br i1 %i.cu, label %bb.y, label %bb.z, !prof !196

bb.y:                                             ; preds = %bb.x
  %i.cw = load i64, ptr %i.ax, align 8, !noalias !6293
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cw) #55
          to label %bb.o unwind label %.loopexit.split-lp133.loopexit.split-lp.i, !noalias !6293

bb.z:                                             ; preds = %bb.x
  %i.cx = load ptr, ptr %i.ax, align 8, !noalias !6293, !nonnull !17, !noundef !17
  %i.cy = icmp ule i64 %i.bi, %i.cv
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6293
  store i64 %i.cv, ptr %i.i, align 8, !noalias !6293
  store ptr %i.cx, ptr %i.ay, align 8, !noalias !6293
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.z
  %storemerge.i = phi i64 [ 0, %bb.z ], [ %i.fp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ]
  %.sroa.0105.0.i = phi i1 [ true, %bb.z ], [ false, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ]
  %.sroa.7107.0.i = phi ptr [ %.sroa.10.0123.i, %bb.z ], [ %.sroa.7107.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  %.sroa.517.1.i = phi i32 [ %.sroa.517.0.ph236.i, %bb.z ], [ %i.fj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  %.sroa.014.1.i = phi i32 [ %.sroa.014.0.ph238.i, %bb.z ], [ 1, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 3 uses
  store i64 %storemerge.i, ptr %i.az, align 8, !noalias !6293
  br i1 %.sroa.0105.0.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = icmp eq ptr %.sroa.7107.0.i, %i.bj
  br i1 %i.cz, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %bb.ac
  %i.da = phi ptr [ %i.db, %bb.ac ], [ %.sroa.7107.0.i, %bb.ab ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6326
  store ptr %i.da, ptr %i.c, align 8, !noalias !6326
  %i.dc = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtB8_7set_val9SetValZSTE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc69.i unwind label %.loopexit.i, !noalias !6293

.noexc69.i:                                       ; preds = %.lr.ph.i.i
  %.not.i.i.i.i1 = icmp eq ptr %i.dc, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6326
  br i1 %.not.i.i.i.i1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc69.i
  %i.dd = icmp eq ptr %i.db, %i.bj
  br i1 %i.dd, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.thread.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bl, %bb.bj, %bb.bf, %bb.bc, %bb.ay
  %lpad.loopexit129.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.am, %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callBJ_NCINvXsl_NtNtNtBa_11collections5btree3setINtB37_8BTreeSetBJ_EINtNtB1z_7collect6ExtendBJ_E6extendB3_E0E0ECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ak, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.thread.i
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke.i, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, %bb.ar
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body74.i

.body74.i:                                        ; preds = %bb.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %eh.lpad-body75.i = phi { ptr, i32 } [ %i.dm, %bb.ai ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit129.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit139.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ae unwind label %bb.ad, !noalias !6293

bb.ad:                                            ; preds = %.body74.i
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.af, !noalias !6293

bb.ae:                                            ; preds = %.body74.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body78.i unwind label %bb.bm, !noalias !6293

bb.af:                                            ; preds = %bb.ad
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !6293
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.i: ; preds = %.noexc69.i, %bb.aa
  %.sroa.7107.1.i = phi ptr [ %.sroa.7107.0.i, %bb.aa ], [ %i.db, %.noexc69.i ]
  %.sroa.07.0.i = phi ptr [ %.sroa.0.0.i.i.i.i124.i, %bb.aa ], [ %i.da, %.noexc69.i ] ; 8 uses
  %.not48.i = icmp eq ptr %.sroa.07.0.i, null
  br i1 %.not48.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvNtCsEhZmuQNqkz_11ruff_linter3fix11apply_fixesINtNtNtB1H_8adapters8peekable8PeekableINtNtB3f_6filter6FilterIBG_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvB2r_8fix_file0EEEs1_0EB2t_.exit.i
  %i.dg = trunc nuw i32 %.sroa.014.1.i to i1
end_hunk_0
