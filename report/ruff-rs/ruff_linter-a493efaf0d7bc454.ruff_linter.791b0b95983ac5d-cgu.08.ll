Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.08?download=true
inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer10add_import:bb.a
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !3300
  store ptr %i.c, ptr %i.b, align 8, !noalias !3300
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @601, ptr %i.g, align 8, !noalias !3300
  %i.h = invoke noundef zeroext i1 @_RNvXs3_NtCs7bpTdHNYxeX_20ruff_python_semantic7importsNtB5_10NameImportNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !3301

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #38
          to label %common.resume unwind label %bb.e, !noalias !3301

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @602, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @604) #40
          to label %.noexc.i unwind label %bb.b, !noalias !3301

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !3301
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.l, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.i, %bb.b ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3300
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.l, align 8, !noundef !13
  %i.m = call fastcc noundef align 8 ptr @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer16preceding_import(ptr nonnull %.val, i64 %.val3, i32 noundef %3) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i64, ptr %i.q, align 8, !noundef !13
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion16end_of_statement(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, ptr noundef nonnull align 8 %i.t)
          to label %bb.i unwind label %bb.f

bb.h:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !13, !noundef !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !13
  invoke fastcc void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer12add_at_start(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %bb.k unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !13, !noundef !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !13
  invoke void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion9into_edit(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.n:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer12add_at_start(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.e, align 8, !nonnull !13, !align !20, !noundef !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val2 = load i64, ptr %i.f, align 8, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.val2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %.val, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8
  store i64 0, ptr %i.a, align 8
  %i.j = call noundef align 8 ptr @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEE7next_ifNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2A_8Importer23find_last_future_import0EB2C_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 0 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8 ; 7 uses
  %.sroa.53.0.copyload.i = load ptr, ptr %i.h, align 8 ; 4 uses
  %.sroa.64.0.copyload.i = load ptr, ptr %i.i, align 8 ; 3 uses
  %i.k = trunc nuw i64 %.sroa.01.0.copyload.i to i1
  br i1 %i.k, label %bb.b, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.sroa.42.0.copyload.i, null
  br i1 %.not.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread, label %bb.d

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i: ; preds = %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i, %bb.a
  %.sroa.08.0.i.i.i.i = phi ptr [ null, %bb.a ], [ %.sroa.42.0.copyload.i, %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.64.0.copyload.i) ]
  %i.l = icmp eq ptr %.sroa.53.0.copyload.i, %.sroa.64.0.copyload.i
  br i1 %i.l, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.53.0.copyload.i, i64 84
  %i.n = load i8, ptr %i.m, align 4, !range !19, !noalias !3317, !noundef !13
  %i.o = icmp eq i8 %i.n, 18
  br i1 %i.o, label %.lr.ph.preheader, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.53.0.copyload.i, i64 72
  %i.q = load i8, ptr %i.p, align 8, !range !23, !noalias !3317, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit, label %.lr.ph32

_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i.i: ; preds = %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i.i
  %i.s = icmp eq ptr %i.aa, %.sroa.64.0.copyload.i
  br i1 %i.s, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.z, i64 172
  %i.u = load i8, ptr %i.t, align 4, !range !19, !noalias !3317, !noundef !13
  %i.v = icmp eq i8 %i.u, 18
  br i1 %i.v, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.x = load i8, ptr %i.w, align 8, !range !23, !noalias !3317, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.01.0.i.i.i.i5.i1131 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.08.0.i.i.i.i, %.lr.ph.preheader ] ; 3 uses
  %i.z = phi ptr [ %i.aa, %.lr.ph ], [ %.sroa.53.0.copyload.i, %.lr.ph.preheader ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 47
  %i.ac = load i8, ptr %i.ab, align 1, !range !50, !noalias !3317, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !3318, !noalias !3317, !noundef !13
  %i.af = and i64 %i.ae, 72057594037927935
  %i.ag = icmp ult i8 %i.ac, -48
  %i.ah = zext i8 %i.ac to i64
  %i.ai = add nsw i64 %i.ah, -192
  %spec.store.select.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %i.ag, i64 %spec.store.select.i.i.i.i.i.i.i.i.i, i64 %i.af
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.aj, label %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit

_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ak = icmp ugt i8 %i.ac, -49
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !3318, !noalias !3317
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = select i1 %i.ak, ptr %i.am, ptr %i.al ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i) ]
  %i.an = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i, align 1
  %i.ao = xor i64 %i.an, 7310034288222035807
  %i.ap = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i, i64 8
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i64
  %i.as = xor i64 %i.ar, 24415
  %i.at = or i64 %i.ao, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 84
  %i.ay = load i8, ptr %i.ax, align 4, !range !19, !noalias !3319, !noundef !13
  %i.az = icmp eq i8 %i.ay, 18
  br i1 %i.az, label %bb.e, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !23, !noalias !3319, !noundef !13
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 47
  %i.be = load i8, ptr %i.bd, align 1, !range !50, !noalias !3319, !noundef !13 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !3320, !noalias !3319, !noundef !13
  %i.bh = and i64 %i.bg, 72057594037927935
  %i.bi = icmp ult i8 %i.be, -48
  %i.bj = zext i8 %i.be to i64
  %i.bk = add nsw i64 %i.bj, -192
  %spec.store.select.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 16)
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %spec.store.select.i.i.i.i.i.i.i.i, i64 %i.bh
  %i.bl = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i, 10
  br i1 %i.bl, label %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread

_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bm = icmp ugt i8 %i.be, -49
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !3320, !noalias !3319
  %.sroa.01.0.i.i.i.i.i.i.i.i = select i1 %i.bm, ptr %i.bo, ptr %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i.i.i.i) ]
  %i.bp = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i.i, align 1
  %i.bq = xor i64 %i.bp, 7310034288222035807
  %i.br = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i, i64 8
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i64
  %i.bu = xor i64 %i.bt, 24415
  %i.bv = or i64 %i.bq, %i.bu
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread

_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread: ; preds = %bb.g, %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i, %bb.b, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit: ; preds = %.lr.ph, %.lr.ph32, %bb.c, %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i.i, %.lr.ph.preheader, %.lr.ph.i.preheader, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i ], [ %.sroa.08.0.i.i.i.i, %.lr.ph.i.preheader ], [ %.sroa.08.0.i.i.i.i, %.lr.ph.preheader ], [ %.sroa.01.0.i.i.i.i5.i1131, %_RNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4_8Importer23find_last_future_imports_0B6_.exit.i.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i5.i1131, %bb.c ], [ %.sroa.01.0.i.i.i.i5.i1131, %.lr.ph32 ], [ %i.z, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.sroa.0.1.i.i.i, null
  br i1 %.not, label %bb.i, label %bb.h

.sink.split:                                      ; preds = %.lr.ph.i, %_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtBg_6option6OptionB25_EINtNtNtBg_3ops9try_trait17NeverShortCircuitB2U_ENCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB4c_8Importer23find_last_future_imports_0NCINvMB3o_B3l_10wrap_mut_2B2U_B25_INvNvB1i_4last4someB25_EE0E0B4e_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit
  %.sroa.0.1.i.i.i8 = phi ptr [ %.sroa.0.1.i.i.i, %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit ], [ %i.z, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !13, !noundef !13
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !13
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !13, !align !20, !noundef !13
  call void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion16end_of_statement(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull align 8 %.sroa.0.1.i.i.i8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef %i.cc, ptr noundef nonnull align 8 %i.ce)
  call void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion9into_edit(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.i:                                             ; preds = %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit.thread, %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer23find_last_future_import.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !13, !noundef !13
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !13
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !13, !align !20, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  call void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion13start_of_file(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noundef nonnull align 8 %.val, i64 noundef %.val2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cg, i64 noundef %i.ci, ptr noundef nonnull align 8 %i.ck, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs88JQZBvdx66_20ruff_python_importer9insertionNtB2_9Insertion9into_edit(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer12visit_import(ptr noalias noundef align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3323, !noundef !13 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !25, !alias.scope !3323, !noundef !13
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8push_mutCsEhZmuQNqkz_11ruff_linter.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8push_mutCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3323, !nonnull !13, !noundef !13
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  store ptr %1, ptr %i.g, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !3323
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer13import_symbol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i32 noundef %3, ptr noundef align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.01.i.i = alloca [80 x i8], align 8       ; 6 uses
  %.sroa.0.i.i = alloca [80 x i8], align 8        ; 5 uses
  %.sroa.816.i.i = alloca [7 x i8], align 1       ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 10 uses
  %i.c = alloca [2328 x i8], align 8              ; 9 uses
  %.sroa.4.i = alloca [176 x i8], align 8         ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.628.sroa.0.i = alloca [176 x i8], align 8 ; 4 uses
  %.sroa.628.sroa.7.i = alloca [7 x i8], align 1  ; 4 uses
  %i.f = alloca [224 x i8], align 8               ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [448 x i8], align 8               ; 13 uses
  %i.i = alloca [2328 x i8], align 8              ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [80 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 2 uses
  %i.w = alloca [80 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 11 uses
  %i.z = load ptr, ptr %2, align 8, !nonnull !13, !noundef !13 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !13 ; 18 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val127 = load ptr, ptr %i.ac, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val128 = load i64, ptr %i.ad, align 8, !noundef !13 ; 2 uses
  %.idx8.i = shl nuw nsw i64 %.val128, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %.val127, i64 %.idx8.i
  %i.af = icmp eq i64 %.val128, 0
  br i1 %i.af, label %_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer16find_import_from.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2q_8Importer16find_import_froms_0EB2s_.exit.i
  %.sroa.0.06.i = phi ptr [ %.sroa.0.1.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2q_8Importer16find_import_froms_0EB2s_.exit.i ], [ null, %bb.a ] ; 7 uses
  %.sroa.01.05.i = phi ptr [ %i.ag, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2q_8Importer16find_import_froms_0EB2s_.exit.i ], [ %.val127, %bb.a ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %.sroa.01.05.i, align 8, !noalias !3355, !nonnull !13, !align !20, !noundef !13 ; 34 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.aj = load i8, ptr %i.ai, align 4, !range !19, !noalias !3355, !noundef !13 ; 3 uses
  %i.ak = icmp samesign ugt i8 %i.aj, 1
  %i.al = zext nneg i8 %i.aj to i64
  %i.am = add nsw i64 %i.al, -1
  %i.an = select i1 %i.ak, i64 %i.am, i64 0
  switch i64 %i.an, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
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
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 14, label %bb.n
    i64 15, label %bb.o
    i64 16, label %bb.p
    i64 17, label %bb.q
    i64 18, label %bb.r
    i64 19, label %bb.s
    i64 20, label %bb.t
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 24, label %bb.u
  ]

bb.b:                                             ; preds = %.lr.ph.i
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.j:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle5rules6indent6indent:bb.a
  %.sroa.01.05.i.i = phi i64 [ %i.cz, %bb.v ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.05.i.i
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !4170, !noundef !13
  %i.cy = icmp eq i8 %i.cx, 9
  br i1 %i.cy, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cz = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cz, %i.cq
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %.lr.ph.i.i, %bb.v, %bb.u
  %.merged.i.i = phi i8 [ %i.cv, %bb.u ], [ 1, %.lr.ph.i.i ], [ 0, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  %i.da = icmp ult i64 %i.cq, 32
  br i1 %i.da, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %i.db = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.x:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %.merged.i.i804 = phi i8 [ 0, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread ], [ %.merged.i.i, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ]
  %i.dc = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.cq)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.w, %bb.x
  %.merged.i.i803 = phi i8 [ %.merged.i.i804, %bb.x ], [ %.merged.i.i, %bb.w ]
  %.sroa.0.0.i83 = phi i64 [ %i.dc, %bb.x ], [ %i.db, %bb.w ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  store i64 0, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr null, ptr %i.ab, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  br label %.lr.ph

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread490: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit, %bb.a, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  ret void

.peel.next:                                       ; preds = %.peel.next.preheader, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176
  %.sroa.24255.0652 = phi ptr [ %.sroa.24255.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.24255.0652.ph, %.peel.next.preheader ] ; 28 uses
  %.sroa.43.0651 = phi i64 [ %.sroa.43.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.43.0651.ph, %.peel.next.preheader ] ; 22 uses
  %.sroa.61.0650 = phi i32 [ %.sroa.61.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.61.0650.ph, %.peel.next.preheader ] ; 10 uses
  %.sroa.79277.0649 = phi ptr [ %.sroa.79277.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.79277.0649.ph, %.peel.next.preheader ] ; 6 uses
  %.sroa.0290.0647 = phi ptr [ %.sroa.0290.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.0290.0647.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.0.0646 = phi i64 [ %.sroa.13.sroa.0.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.0.0646.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.12.0645 = phi i32 [ %.sroa.13.sroa.12.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.12.0645.ph, %.peel.next.preheader ]
  %.sroa.13.sroa.13.0644 = phi i32 [ %.sroa.13.sroa.13.2, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.13.sroa.13.0644.ph, %.peel.next.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0290.0647, ptr %i.aa, align 8
  store i64 %.sroa.13.sroa.0.0646, ptr %.sroa.13.0..sroa_idx, align 8
  store i32 %.sroa.13.sroa.12.0645, ptr %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.13.sroa.13.0644, ptr %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx, align 4
  %i.dg = load ptr, ptr %i.ab, align 8, !noundef !13
  %.not73 = icmp eq ptr %i.dg, null
  br i1 %.not73, label %bb.cm, label %bb.y

.outer._crit_edge:                                ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176
  %.sroa.517.0.ph.lcssa639 = phi i64 [ %.sroa.517.0.ph674, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.517.0.ph674, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.517.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.015.0.ph.lcssa629 = phi i64 [ %.sroa.015.0.ph675, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.015.0.ph675, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.015.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.013.0.ph.lcssa619 = phi i8 [ %.sroa.013.0.ph676, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176 ], [ %.sroa.013.0.ph676, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel ], [ %.sroa.013.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %i.dh = load ptr, ptr %i.df, align 8, !nonnull !13, !align !20, !noundef !13 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 152
  %i.dj = load i64, ptr %i.di, align 8, !noundef !13 ; 2 uses
  %i.dk = and i64 %i.dj, 2097152
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = trunc nuw i8 %.sroa.013.0.ph.lcssa619 to i1
  %or.cond8 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond8, label %bb.cv, label %bb.cu

bb.y:                                             ; preds = %.peel.next
  %i.dn = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.ah unwind label %.loopexit580.loopexit.loopexit ; 2 uses

bb.z:                                             ; preds = %bb.ai
  %i.do = icmp eq i64 %.sroa.43.0651, 0
  br i1 %i.do, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0652) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4171)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.24255.0652, i64 %.sroa.43.0651
  %i.dq = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4172, !nonnull !13, !noundef !13
  %i.dr = invoke { i64, ptr } %i.dq(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0652, ptr noundef nonnull readonly %i.dp)
          to label %.noexc241 unwind label %.loopexit580.loopexit.loopexit, !inline_history !64 ; 2 uses

.noexc241:                                        ; preds = %bb.aa
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.ab, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88

bb.ab:                                            ; preds = %.noexc241
  %i.du = extractvalue { i64, ptr } %i.dr, 1
  %i.dv = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.du, ptr noundef nonnull readonly %.sroa.24255.0652)
          to label %.noexc242 unwind label %.loopexit580.loopexit.loopexit ; 4 uses

.noexc242:                                        ; preds = %bb.ab
  %.not.i.i.i228 = icmp ult i64 %i.dv, %.sroa.43.0651
  call void @llvm.assume(i1 %.not.i.i.i228)
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.24255.0652, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !4171, !noalias !4173, !noundef !13
  %cond.i229 = icmp eq i8 %i.dx, 13
  br i1 %cond.i229, label %bb.ac, label %.thread.i230

bb.ac:                                            ; preds = %.noexc242
  %i.dy = add nuw i64 %i.dv, 1                    ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.43.0651
  br i1 %i.dz, label %bb.ad, label %.thread.i230

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.24255.0652, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !4171, !noalias !4173, !noundef !13
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %bb.ae, label %.thread.i230

.thread.i230:                                     ; preds = %bb.ad, %bb.ac, %.noexc242
  br label %bb.ae

bb.ae:                                            ; preds = %.thread.i230, %bb.ad
  %i.ed = phi i64 [ 1, %.thread.i230 ], [ 2, %bb.ad ]
  %i.ee = add i64 %i.ed, %i.dv                    ; 11 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i231 = icmp ult i64 %i.ee, %.sroa.43.0651
  br i1 %.not.i.i231, label %bb.ag, label %.split3.i.i232

.split3.i.i232:                                   ; preds = %bb.af
  %i.eg = icmp eq i64 %i.ee, %.sroa.43.0651
  br i1 %i.eg, label %.split.i.i233, label %.loopexit744.invoke

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.24255.0652, i64 %i.ee
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !4174, !noalias !4175, !noundef !13
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %.split.i.i233, label %.loopexit744.invoke

.split.i.i233:                                    ; preds = %bb.ag, %.split3.i.i232
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.24255.0652, i64 %i.ee
  %i.el = sub i64 %.sroa.43.0651, %i.ee
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234: ; preds = %.split.i.i233, %bb.ae
  %.sroa.9.0.i235 = phi i64 [ %.sroa.43.0651, %bb.ae ], [ %i.el, %.split.i.i233 ]
  %.sroa.7.0.i236 = phi ptr [ %.sroa.24255.0652, %bb.ae ], [ %i.ek, %.split.i.i233 ]
  %i.em = icmp ugt i64 %i.ee, 4294967295
  %i.en = shl nuw i64 %i.ee, 32
  %.sroa.09.0.insert.insert.i.i237 = select i1 %i.em, i64 513, i64 %i.en ; 2 uses
  %i.eo = trunc i64 %.sroa.09.0.insert.insert.i.i237 to i1
  br i1 %i.eo, label %.loopexit742, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238, !prof !18

.loopexit742:                                     ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4176
  br label %.loopexit745.invoke

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234
  %.sroa.6.0.extract.shift.i.i.i239 = lshr i64 %.sroa.09.0.insert.insert.i.i237, 32
  %.sroa.6.0.extract.trunc.i.i.i240 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i239 to i32
  %i.ep = add i32 %.sroa.61.0650, %.sroa.6.0.extract.trunc.i.i.i240
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88

.loopexit580:                                     ; preds = %.loopexit.split-lp581, %.body202
  %.pn78 = phi { ptr, i32 } [ %.pn, %.body202 ], [ %lpad.loopexit.split-lp583, %.loopexit.split-lp581 ] ; 2 uses
  %.sroa.027.0 = phi i8 [ %.sroa.027.3, %.body202 ], [ %.sroa.027.1.ph, %.loopexit.split-lp581 ]
  %i.eq = trunc nuw i8 %.sroa.027.0 to i1
  br i1 %i.eq, label %.thread516, label %common.resume

.loopexit580.loopexit.loopexit:                   ; preds = %bb.y, %bb.ah, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88, %bb.aj, %bb.cn, %bb.co, %bb.aa, %bb.ab
  %lpad.loopexit738 = landingpad { ptr, i32 }
          cleanup
  br label %.thread516

.loopexit580.loopexit.loopexit.split-lp:          ; preds = %bb.au, %bb.av, %bb.az, %bb.ba, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel, %bb.bg, %bb.bl, %bb.bm
  %lpad.loopexit.split-lp739 = landingpad { ptr, i32 }
          cleanup
  br label %.thread516

.loopexit580.loopexit.split-lp:                   ; preds = %bb.cj, %bb.ar, %bb.ap, %bb.ao, %bb.cf, %bb.bs, %bb.am, %.loopexit743
  %lpad.loopexit.split-lp586 = landingpad { ptr, i32 }
          cleanup
  br label %.thread516

.loopexit.split-lp581:                            ; preds = %.loopexit744.invoke, %.loopexit745.invoke, %bb.cv, %bb.cw, %bb.ek, %bb.el, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194, %bb.er, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread, %bb.en, %bb.eo
  %.sroa.027.1.ph = phi i8 [ %.sroa.027.3, %bb.ek ], [ %.sroa.027.3, %bb.el ], [ %.sroa.027.3, %bb.eo ], [ %.sroa.027.3, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit194 ], [ %.sroa.027.3, %bb.er ], [ %.sroa.027.3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit205 ], [ 1, %.loopexit745.invoke ], [ 1, %bb.cv ], [ 1, %bb.cw ], [ 1, %.loopexit744.invoke ], [ %.sroa.027.3, %bb.en ], [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread ]
  %lpad.loopexit.split-lp583 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit580

bb.ah:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 92, ptr %i.h, align 4
  %i.er = extractvalue { ptr, i64 } %i.dn, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.es = extractvalue { ptr, i64 } %i.dn, 1
  %i.et = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.es, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit580.loopexit.loopexit

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.et, label %bb.cm, label %bb.z

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88: ; preds = %bb.z, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238, %.noexc241
  %.sroa.24.sroa.9.3 = phi i32 [ %.sroa.91.sroa.14.0.copyload, %bb.z ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ undef, %.noexc241 ] ; 2 uses
  %.sroa.24.sroa.8.3 = phi i32 [ %.sroa.91.sroa.10.0.copyload, %bb.z ], [ %.sroa.61.0650, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.61.0650, %.noexc241 ] ; 2 uses
  %.sroa.24.sroa.0.3 = phi i64 [ %.sroa.91.sroa.0.0.copyload, %bb.z ], [ %i.ee, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.43.0651, %.noexc241 ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.79277.0649, %bb.z ], [ %.sroa.24255.0652, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.24255.0652, %.noexc241 ] ; 3 uses
  %.sroa.79277.9 = phi ptr [ null, %bb.z ], [ %.sroa.79277.0649, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.79277.0649, %.noexc241 ] ; 2 uses
  %.sroa.61.8 = phi i32 [ %.sroa.61.0650, %bb.z ], [ %i.ep, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ %.sroa.61.0650, %.noexc241 ] ; 2 uses
  %.sroa.43.8 = phi i64 [ 0, %bb.z ], [ %.sroa.9.0.i235, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ 0, %.noexc241 ] ; 2 uses
  %.sroa.24255.8 = phi ptr [ %.sroa.24255.0652, %bb.z ], [ %.sroa.7.0.i236, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238 ], [ inttoptr (i64 1 to ptr), %.noexc241 ] ; 2 uses
  %.not74 = icmp ne ptr %.sroa.15.3, null         ; 2 uses
  %i.eu = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.aj unwind label %.loopexit580.loopexit.loopexit ; 2 uses

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0
  %i.ew = extractvalue { ptr, i64 } %i.eu, 1
  %i.ex = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ev, i64 noundef %i.ew)
          to label %bb.ak unwind label %.loopexit580.loopexit.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ey = extractvalue { ptr, i64 } %i.ex, 1
  %i.ez = icmp eq i64 %i.ey, 0                    ; 2 uses
  %or.cond = select i1 %.not74, i1 %i.ez, i1 false
  br i1 %or.cond, label %bb.al, label %.loopexit743

.loopexit743:                                     ; preds = %bb.ak, %bb.bh
  %.lcssa685 = phi i1 [ %i.hl, %bb.bh ], [ %i.ez, %bb.ak ]
  %.sroa.24.sroa.9.3.lcssa = phi i32 [ %.sroa.24.sroa.9.3.peel, %bb.bh ], [ %.sroa.24.sroa.9.3, %bb.ak ] ; 2 uses
  %.sroa.24.sroa.8.3.lcssa = phi i32 [ %.sroa.24.sroa.8.3.peel, %bb.bh ], [ %.sroa.24.sroa.8.3, %bb.ak ] ; 2 uses
  %.sroa.24.sroa.0.3.lcssa = phi i64 [ %.sroa.24.sroa.0.3.peel, %bb.bh ], [ %.sroa.24.sroa.0.3, %bb.ak ] ; 2 uses
  %.sroa.15.3.lcssa = phi ptr [ %.sroa.15.3.peel, %bb.bh ], [ %.sroa.15.3, %bb.ak ] ; 3 uses
  %.sroa.79277.9.lcssa = phi ptr [ %.sroa.79277.9.peel, %bb.bh ], [ %.sroa.79277.9, %bb.ak ]
  %.sroa.61.8.lcssa = phi i32 [ %.sroa.61.8.peel, %bb.bh ], [ %.sroa.61.8, %bb.ak ]
  %.sroa.43.8.lcssa = phi i64 [ %.sroa.43.8.peel, %bb.bh ], [ %.sroa.43.8, %bb.ak ]
  %.sroa.24255.8.lcssa = phi ptr [ %.sroa.24255.8.peel, %bb.bh ], [ %.sroa.24255.8, %bb.ak ]
  %.not74.lcssa = phi i1 [ %.not74.peel, %bb.bh ], [ %.not74, %bb.ak ]
  %i.fa = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.am unwind label %.loopexit580.loopexit.split-lp ; 2 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176: ; preds = %bb.cm, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167, %.noexc170, %bb.al
  %.sroa.13.sroa.13.2 = phi i32 [ %.sroa.24.sroa.9.3, %bb.al ], [ %.sroa.91.sroa.14.0.copyload, %bb.cm ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ undef, %.noexc170 ]
  %.sroa.13.sroa.12.2 = phi i32 [ %.sroa.24.sroa.8.3, %bb.al ], [ %.sroa.91.sroa.10.0.copyload, %bb.cm ], [ %.sroa.61.0650, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.61.0650, %.noexc170 ]
  %.sroa.13.sroa.0.2 = phi i64 [ %.sroa.24.sroa.0.3, %bb.al ], [ %.sroa.91.sroa.0.0.copyload, %bb.cm ], [ %i.jt, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.43.0651, %.noexc170 ]
  %.sroa.0290.2 = phi ptr [ %.sroa.15.3, %bb.al ], [ %.sroa.79277.0649, %bb.cm ], [ %.sroa.24255.0652, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.24255.0652, %.noexc170 ] ; 2 uses
  %.sroa.79277.2 = phi ptr [ %.sroa.79277.9, %bb.al ], [ null, %bb.cm ], [ %.sroa.79277.0649, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.79277.0649, %.noexc170 ]
  %.sroa.61.2 = phi i32 [ %.sroa.61.8, %bb.al ], [ %.sroa.61.0650, %bb.cm ], [ %i.ke, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ %.sroa.61.0650, %.noexc170 ]
  %.sroa.43.2 = phi i64 [ %.sroa.43.8, %bb.al ], [ 0, %bb.cm ], [ %.sroa.9.0.i164, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ 0, %.noexc170 ]
  %.sroa.24255.2 = phi ptr [ %.sroa.24255.8, %bb.al ], [ %.sroa.24255.0652, %bb.cm ], [ %.sroa.7.0.i165, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i167 ], [ inttoptr (i64 1 to ptr), %.noexc170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not60 = icmp eq ptr %.sroa.0290.2, null
  br i1 %.not60, label %.outer._crit_edge, label %.peel.next, !llvm.loop !4108

bb.am:                                            ; preds = %.loopexit743
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = invoke { ptr, i64 } @_RNvNtCskLngH8kgpZI_15ruff_python_ast10docstrings13leading_space(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
          to label %bb.an unwind label %.loopexit580.loopexit.split-lp ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0      ; 5 uses
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1      ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.fg = icmp ult i64 %i.ff, 32
  br i1 %i.fg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 unwind label %.loopexit580.loopexit.split-lp

bb.ap:                                            ; preds = %bb.an
  %i.fi = invoke noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 unwind label %.loopexit580.loopexit.split-lp

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116: ; preds = %bb.ao, %bb.ap
  %.sroa.0.0.i113 = phi i64 [ %i.fh, %bb.ao ], [ %i.fi, %bb.ap ] ; 3 uses
  %i.fj = trunc nuw i8 %.sroa.013.0.ph676 to i1
  br i1 %i.fj, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %bb.aq

bb.aq:                                            ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116
  %i.fk = icmp samesign ult i64 %i.ff, 16
  br i1 %i.fk, label %.preheader.i.i118, label %bb.ar

.preheader.i.i118:                                ; preds = %bb.aq
  %.not.i.i119 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i119, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %.lr.ph.i.i120

bb.ar:                                            ; preds = %bb.aq
  %i.fl = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef range(i8 9, 43) 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.ff)
          to label %.noexc123 unwind label %.loopexit580.loopexit.split-lp

.noexc123:                                        ; preds = %bb.ar
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = icmp eq i64 %i.fm, 1
  %i.fo = zext i1 %i.fn to i8
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124

.lr.ph.i.i120:                                    ; preds = %.preheader.i.i118, %bb.as
  %.sroa.01.05.i.i121 = phi i64 [ %i.fs, %bb.as ], [ 0, %.preheader.i.i118 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.01.05.i.i121
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !4177, !noundef !13
  %i.fr = icmp eq i8 %i.fq, 9
  br i1 %i.fr, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i120
  %i.fs = add nuw nsw i64 %.sroa.01.05.i.i121, 1  ; 2 uses
  %exitcond.not.i.i122 = icmp eq i64 %i.fs, %i.ff
  br i1 %exitcond.not.i.i122, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124, label %.lr.ph.i.i120

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124: ; preds = %.lr.ph.i.i120, %bb.as, %.preheader.i.i118, %.noexc123, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116
  %.sroa.013.1 = phi i8 [ 1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit116 ], [ %i.fo, %.noexc123 ], [ 0, %.preheader.i.i118 ], [ 0, %bb.as ], [ 1, %.lr.ph.i.i120 ] ; 2 uses
  %i.ft = load ptr, ptr %i.df, align 8, !nonnull !13, !align !20, !noundef !13 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 152
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !13
  %i.fw = and i64 %i.fv, 4194304
  %i.fx = icmp ne i64 %i.fw, 0
  %i.fy = icmp ult i64 %.sroa.0.0.i113, %.sroa.0.0.i83
  %or.cond578 = and i1 %i.fy, %i.fx
  br i1 %or.cond578, label %bb.bs, label %bb.at

bb.at:                                            ; preds = %bb.cg, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit124
  %.not80 = xor i1 %.lcssa685, true
  %brmerge81 = select i1 %.not74.lcssa, i1 true, i1 %.not80
  br i1 %brmerge81, label %bb.ch, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ch, %bb.at
  %.sroa.517.1 = phi i64 [ %.sroa.517.0.ph674, %bb.at ], [ undef, %bb.ch ], [ %.sroa.0.0.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  %.sroa.015.1 = phi i64 [ %.sroa.015.0.ph675, %bb.at ], [ 0, %bb.ch ], [ 1, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not60640 = icmp eq ptr %.sroa.15.3.lcssa, null
  br i1 %.not60640, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152
  %.sroa.013.0.ph676 = phi i8 [ %.merged.i.i803, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.013.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 3 uses
  %.sroa.015.0.ph675 = phi i64 [ 1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.015.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 4 uses
  %.sroa.517.0.ph674 = phi i64 [ -1, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.517.1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 4 uses
  %.sroa.0.0.ph673 = phi i1 [ true, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ false, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24255.0.ph672 = phi ptr [ %.sroa.24255.16463478, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24255.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 29 uses
  %.sroa.43.0.ph671 = phi i64 [ %.sroa.43.16461479, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.43.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 24 uses
  %.sroa.61.0.ph670 = phi i32 [ %.sroa.61.16459480, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.61.8.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 11 uses
  %.sroa.79277.0.ph669 = phi ptr [ %.sroa.79277.6489, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.79277.9.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 8 uses
  %.sroa.15.0.ph668 = phi ptr [ %.sroa.0375.0488, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.15.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.0290.0.ph667 = phi ptr [ %.sroa.24255.32.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.15.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.0.0.ph666 = phi i64 [ %.sroa.13.sroa.0.5427453483, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.0.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.12.0.ph665 = phi i32 [ %.sroa.61.32.copyload, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.8.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.13.sroa.13.0.ph664 = phi i32 [ undef, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.9.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ]
  %.sroa.24.sroa.0.0.ph663 = phi i64 [ %.sroa.5.0487, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.0.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24.sroa.8.0.ph662 = phi i32 [ %.sroa.7376.0486, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.8.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  %.sroa.24.sroa.9.0.ph661 = phi i32 [ %.sroa.9377.0485, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit ], [ %.sroa.24.sroa.9.3.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit152 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0290.0.ph667, ptr %i.aa, align 8
  store i64 %.sroa.13.sroa.0.0.ph666, ptr %.sroa.13.0..sroa_idx, align 8
  store i32 %.sroa.13.sroa.12.0.ph665, ptr %.sroa.13.sroa.12.0..sroa.13.0..sroa_idx.sroa_idx, align 8
  store i32 %.sroa.13.sroa.13.0.ph664, ptr %.sroa.13.sroa.13.0..sroa.13.0..sroa_idx.sroa_idx, align 4
  %i.fz = load ptr, ptr %i.ab, align 8, !noundef !13
  %.not73.peel = icmp eq ptr %i.fz, null
  br i1 %.not73.peel, label %bb.bj, label %bb.au

bb.au:                                            ; preds = %.lr.ph
  %i.ga = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.av unwind label %.loopexit580.loopexit.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 92, ptr %i.h, align 4
  %i.gb = extractvalue { ptr, i64 } %i.ga, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb) ]
  %i.gc = extractvalue { ptr, i64 } %i.ga, 1
  %i.gd = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gb, i64 noundef %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
          to label %bb.aw unwind label %.loopexit580.loopexit.loopexit.split-lp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.gd, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.sroa.0.0.ph673, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = icmp eq i64 %.sroa.43.0.ph671, 0
  br i1 %i.ge, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0.ph672) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4178)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %.sroa.43.0.ph671
  %i.gg = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4179, !nonnull !13, !noundef !13
  %i.gh = invoke { i64, ptr } %i.gg(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0.ph672, ptr noundef nonnull readonly %i.gf)
          to label %.noexc241.peel unwind label %.loopexit580.loopexit.loopexit.split-lp, !inline_history !64 ; 2 uses

.noexc241.peel:                                   ; preds = %bb.az
  %i.gi = extractvalue { i64, ptr } %i.gh, 0
  %i.gj = trunc nuw i64 %i.gi to i1
  br i1 %i.gj, label %bb.ba, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel

bb.ba:                                            ; preds = %.noexc241.peel
  %i.gk = extractvalue { i64, ptr } %i.gh, 1
  %i.gl = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.gk, ptr noundef nonnull readonly %.sroa.24255.0.ph672)
          to label %.noexc242.peel unwind label %.loopexit580.loopexit.loopexit.split-lp ; 4 uses

.noexc242.peel:                                   ; preds = %bb.ba
  %.not.i.i.i228.peel = icmp ult i64 %i.gl, %.sroa.43.0.ph671
  call void @llvm.assume(i1 %.not.i.i.i228.peel)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !alias.scope !4178, !noalias !4173, !noundef !13
  %cond.i229.peel = icmp eq i8 %i.gn, 13
  br i1 %cond.i229.peel, label %bb.bb, label %.thread.i230.peel

bb.bb:                                            ; preds = %.noexc242.peel
  %i.go = add nuw i64 %i.gl, 1                    ; 2 uses
  %i.gp = icmp ult i64 %i.go, %.sroa.43.0.ph671
  br i1 %i.gp, label %bb.bc, label %.thread.i230.peel

bb.bc:                                            ; preds = %bb.bb
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !alias.scope !4178, !noalias !4173, !noundef !13
  %i.gs = icmp eq i8 %i.gr, 10
  br i1 %i.gs, label %bb.bd, label %.thread.i230.peel

.thread.i230.peel:                                ; preds = %bb.bc, %bb.bb, %.noexc242.peel
  br label %bb.bd

bb.bd:                                            ; preds = %.thread.i230.peel, %bb.bc
  %i.gt = phi i64 [ 1, %.thread.i230.peel ], [ 2, %bb.bc ]
  %i.gu = add i64 %i.gt, %i.gl                    ; 11 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i.i231.peel = icmp ult i64 %i.gu, %.sroa.43.0.ph671
  br i1 %.not.i.i231.peel, label %bb.bf, label %.split3.i.i232.peel

.split3.i.i232.peel:                              ; preds = %bb.be
  %i.gw = icmp eq i64 %i.gu, %.sroa.43.0.ph671
  br i1 %i.gw, label %.split.i.i233.peel, label %.loopexit744.invoke

bb.bf:                                            ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.gu
  %i.gy = load i8, ptr %i.gx, align 1, !alias.scope !4174, !noalias !4175, !noundef !13
  %i.gz = icmp sgt i8 %i.gy, -65
  br i1 %i.gz, label %.split.i.i233.peel, label %.loopexit744.invoke

.split.i.i233.peel:                               ; preds = %bb.bf, %.split3.i.i232.peel
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.gu
  %i.hb = sub i64 %.sroa.43.0.ph671, %i.gu
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel: ; preds = %.split.i.i233.peel, %bb.bd
  %.sroa.9.0.i235.peel = phi i64 [ %.sroa.43.0.ph671, %bb.bd ], [ %i.hb, %.split.i.i233.peel ]
  %.sroa.7.0.i236.peel = phi ptr [ %.sroa.24255.0.ph672, %bb.bd ], [ %i.ha, %.split.i.i233.peel ]
  %i.hc = icmp ugt i64 %i.gu, 4294967295
  %i.hd = shl nuw i64 %i.gu, 32
  %.sroa.09.0.insert.insert.i.i237.peel = select i1 %i.hc, i64 513, i64 %i.hd ; 2 uses
  %i.he = trunc i64 %.sroa.09.0.insert.insert.i.i237.peel to i1
  br i1 %i.he, label %.loopexit742, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel, !prof !18

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i234.peel
  %.sroa.6.0.extract.shift.i.i.i239.peel = lshr i64 %.sroa.09.0.insert.insert.i.i237.peel, 32
  %.sroa.6.0.extract.trunc.i.i.i240.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i239.peel to i32
  %i.hf = add i32 %.sroa.61.0.ph670, %.sroa.6.0.extract.trunc.i.i.i240.peel
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel, %.noexc241.peel, %bb.ay, %bb.ax
  %.sroa.24.sroa.9.3.peel = phi i32 [ %.sroa.24.sroa.9.0.ph661, %bb.ax ], [ undef, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ undef, %.noexc241.peel ], [ %.sroa.91.sroa.14.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.24.sroa.8.3.peel = phi i32 [ %.sroa.24.sroa.8.0.ph662, %bb.ax ], [ %.sroa.61.0.ph670, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.61.0.ph670, %.noexc241.peel ], [ %.sroa.91.sroa.10.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.24.sroa.0.3.peel = phi i64 [ %.sroa.24.sroa.0.0.ph663, %bb.ax ], [ %i.gu, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.43.0.ph671, %.noexc241.peel ], [ %.sroa.91.sroa.0.0.copyload, %bb.ay ] ; 2 uses
  %.sroa.15.3.peel = phi ptr [ %.sroa.15.0.ph668, %bb.ax ], [ %.sroa.24255.0.ph672, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.24255.0.ph672, %.noexc241.peel ], [ %.sroa.79277.0.ph669, %bb.ay ] ; 3 uses
  %.sroa.79277.9.peel = phi ptr [ %.sroa.79277.0.ph669, %bb.ax ], [ %.sroa.79277.0.ph669, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.79277.0.ph669, %.noexc241.peel ], [ null, %bb.ay ] ; 2 uses
  %.sroa.61.8.peel = phi i32 [ %.sroa.61.0.ph670, %bb.ax ], [ %i.hf, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ %.sroa.61.0.ph670, %.noexc241.peel ], [ %.sroa.61.0.ph670, %bb.ay ] ; 2 uses
  %.sroa.43.8.peel = phi i64 [ %.sroa.43.0.ph671, %bb.ax ], [ %.sroa.9.0.i235.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ 0, %.noexc241.peel ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.24255.8.peel = phi ptr [ %.sroa.24255.0.ph672, %bb.ax ], [ %.sroa.7.0.i236.peel, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i238.peel ], [ inttoptr (i64 1 to ptr), %.noexc241.peel ], [ %.sroa.24255.0.ph672, %bb.ay ] ; 2 uses
  %.not74.peel = icmp ne ptr %.sroa.15.3.peel, null ; 2 uses
  %i.hg = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.bg unwind label %.loopexit580.loopexit.loopexit.split-lp ; 2 uses

bb.bg:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_NtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableNtBO_26NewlineWithTrailingNewlineE4peek0ECsEhZmuQNqkz_11ruff_linter.exit88.peel
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  %i.hj = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hi)
          to label %bb.bh unwind label %.loopexit580.loopexit.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.hk = extractvalue { ptr, i64 } %i.hj, 1
  %i.hl = icmp eq i64 %i.hk, 0                    ; 2 uses
  %or.cond.peel = select i1 %.not74.peel, i1 %i.hl, i1 false
  br i1 %or.cond.peel, label %bb.bi, label %.loopexit743

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread

bb.bj:                                            ; preds = %bb.aw, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br i1 %.sroa.0.0.ph673, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hm = icmp eq i64 %.sroa.43.0.ph671, 0
  br i1 %i.hm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.24255.0.ph672) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4180)
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %.sroa.43.0.ph671
  %i.ho = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !4181, !nonnull !13, !noundef !13
  %i.hp = invoke { i64, ptr } %i.ho(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.24255.0.ph672, ptr noundef nonnull readonly %i.hn)
          to label %.noexc170.peel unwind label %.loopexit580.loopexit.loopexit.split-lp, !inline_history !64 ; 2 uses

.noexc170.peel:                                   ; preds = %bb.bl
  %i.hq = extractvalue { i64, ptr } %i.hp, 0
  %i.hr = trunc nuw i64 %i.hq to i1
  br i1 %i.hr, label %bb.bm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineE7or_elseNCNvXs4_BK_NtBK_26NewlineWithTrailingNewlineNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit176.peel.thread

bb.bm:                                            ; preds = %.noexc170.peel
  %i.hs = extractvalue { i64, ptr } %i.hp, 1
  %i.ht = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.hs, ptr noundef nonnull readonly %.sroa.24255.0.ph672)
          to label %.noexc171.peel unwind label %.loopexit580.loopexit.loopexit.split-lp ; 4 uses

.noexc171.peel:                                   ; preds = %bb.bm
  %.not.i.i.i157.peel = icmp ult i64 %i.ht, %.sroa.43.0.ph671
  call void @llvm.assume(i1 %.not.i.i.i157.peel)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !alias.scope !4180, !noalias !4182, !noundef !13
  %cond.i158.peel = icmp eq i8 %i.hv, 13
  br i1 %cond.i158.peel, label %bb.bn, label %.thread.i159.peel

bb.bn:                                            ; preds = %.noexc171.peel
  %i.hw = add nuw i64 %i.ht, 1                    ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %.sroa.43.0.ph671
  br i1 %i.hx, label %bb.bo, label %.thread.i159.peel

bb.bo:                                            ; preds = %bb.bn
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.hw
  %i.hz = load i8, ptr %i.hy, align 1, !alias.scope !4180, !noalias !4182, !noundef !13
  %i.ia = icmp eq i8 %i.hz, 10
  br i1 %i.ia, label %bb.bp, label %.thread.i159.peel

.thread.i159.peel:                                ; preds = %bb.bo, %bb.bn, %.noexc171.peel
  br label %bb.bp

bb.bp:                                            ; preds = %.thread.i159.peel, %bb.bo
  %i.ib = phi i64 [ 1, %.thread.i159.peel ], [ 2, %bb.bo ]
  %i.ic = add i64 %i.ib, %i.ht                    ; 11 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i160.peel = icmp ult i64 %i.ic, %.sroa.43.0.ph671
  br i1 %.not.i.i160.peel, label %bb.br, label %.split3.i.i161.peel

.split3.i.i161.peel:                              ; preds = %bb.bq
  %i.ie = icmp eq i64 %i.ic, %.sroa.43.0.ph671
  br i1 %i.ie, label %.split.i.i162.peel, label %.loopexit744.invoke

bb.br:                                            ; preds = %bb.bq
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.ic
  %i.ig = load i8, ptr %i.if, align 1, !alias.scope !4183, !noalias !4184, !noundef !13
  %i.ih = icmp sgt i8 %i.ig, -65
  br i1 %i.ih, label %.split.i.i162.peel, label %.loopexit744.invoke

.split.i.i162.peel:                               ; preds = %bb.br, %.split3.i.i161.peel
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.24255.0.ph672, i64 %i.ic
  %i.ij = sub i64 %.sroa.43.0.ph671, %i.ic
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i163.peel: ; preds = %.split.i.i162.peel, %bb.bp
  %.sroa.9.0.i164.peel = phi i64 [ %.sroa.43.0.ph671, %bb.bp ], [ %i.ij, %.split.i.i162.peel ]
  %.sroa.7.0.i165.peel = phi ptr [ %.sroa.24255.0.ph672, %bb.bp ], [ %i.ii, %.split.i.i162.peel ]
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model31unordered_body_content_in_model:bb.a
  br label %bb.c

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model16get_element_type.exit: ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, %bb.r, %.noexc, %bb.k, %bb.l, %bb.m, %.noexc13
  %.sroa.0.0.i = phi i8 [ 0, %.noexc13 ], [ 1, %bb.r ], [ 6, %bb.m ], [ 3, %.noexc ], [ 4, %bb.k ], [ 5, %bb.l ], [ 2, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i ] ; 5 uses
  %i.cr = icmp eq i8 %.sroa.0.0.ph34, %.sroa.0.0.i
  br i1 %i.cr, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model16get_element_type.exit.thread, label %bb.u

bb.u:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model16get_element_type.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 84
  %i.ct = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13 ; 3 uses
  %i.cu = load i64, ptr %i.j, align 8, !noundef !13 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  %i.cw = icmp samesign eq i64 %i.cu, 0
  br i1 %i.cw, label %._crit_edge, label %.lr.ph58

bb.v:                                             ; preds = %.lr.ph58
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cy, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.u, %bb.v
  %i.cz = phi ptr [ %i.cx, %bb.v ], [ %i.ct, %bb.u ] ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !range !28, !noalias !4392, !noundef !13 ; 2 uses
  %i.db = icmp samesign ugt i8 %i.da, %.sroa.0.0.i
  br i1 %i.db, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, label %bb.v

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit: ; preds = %.lr.ph58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dc = load i8, ptr %i.cs, align 4, !range !19, !noundef !13 ; 2 uses
  %i.dd = icmp samesign ugt i8 %i.dc, 1
  %i.de = zext nneg i8 %i.dc to i64
  %i.df = add nsw i64 %i.de, -1
  %i.dg = select i1 %i.dd, i64 %i.df, i64 0
  switch i64 %i.dg, label %bb.w [
    i64 0, label %bb.x
    i64 1, label %bb.ar
    i64 2, label %bb.ar
    i64 3, label %bb.y
    i64 4, label %bb.z
    i64 5, label %bb.aa
    i64 6, label %bb.ab
    i64 7, label %bb.ac
    i64 8, label %bb.ad
    i64 9, label %bb.ae
    i64 10, label %bb.af
    i64 11, label %bb.ag
    i64 12, label %bb.ah
    i64 13, label %bb.ar
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.ak
    i64 17, label %bb.al
    i64 18, label %bb.am
    i64 19, label %bb.an
    i64 20, label %bb.ao
    i64 21, label %bb.ar
    i64 22, label %bb.ar
    i64 23, label %bb.ar
    i64 24, label %bb.ap
  ]

bb.w:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  unreachable

bb.x:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 56
  br label %bb.ar

bb.y:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 24
  br label %bb.ar

bb.z:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 16
  br label %bb.ar

bb.aa:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 32
  br label %bb.ar

bb.ab:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 16
  br label %bb.ar

bb.ac:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 16
  br label %bb.ar

bb.ad:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 32
  br label %bb.ar

bb.ae:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 24
  br label %bb.ar

bb.af:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 40
  br label %bb.ar

bb.ag:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 32
  br label %bb.ar

bb.ah:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 32
  br label %bb.ar

bb.ai:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 48
  br label %bb.ar

bb.aj:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 8
  br label %bb.ar

bb.ak:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 24
  br label %bb.ar

bb.al:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 56
  br label %bb.ar

bb.am:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 24
  br label %bb.ar

bb.an:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 24
  br label %bb.ar

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 8
  br label %bb.ar

bb.ap:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 16
  br label %bb.ar

._crit_edge:                                      ; preds = %bb.v, %bb.u
  %i.ea = load i64, ptr %i.b, align 8, !range !25, !alias.scope !4393, !noundef !13
  %i.eb = icmp eq i64 %i.cu, %i.ea
  br i1 %i.eb, label %bb.aq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit

bb.aq:                                            ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8grow_oneBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit_crit_edge unwind label %.loopexit.loopexit.split-lp

._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit_crit_edge: ; preds = %bb.aq
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !4393
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit: ; preds = %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit_crit_edge, %._crit_edge
  %i.ec = phi ptr [ %.pre, %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit_crit_edge ], [ %i.ct, %._crit_edge ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.cu
  store i8 %.sroa.0.0.i, ptr %i.ed, align 1
  %i.ee = add i64 %i.cu, 1
  store i64 %i.ee, ptr %i.j, align 8, !alias.scope !4393
  br label %.outer

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit
  %.sink.i = phi i64 [ 20, %bb.ap ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ 12, %bb.ao ], [ 28, %bb.an ], [ 28, %bb.am ], [ 60, %bb.al ], [ 28, %bb.ak ], [ 12, %bb.aj ], [ 52, %bb.ai ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ 36, %bb.ah ], [ 36, %bb.ag ], [ 44, %bb.af ], [ 28, %bb.ae ], [ 36, %bb.ad ], [ 20, %bb.ac ], [ 20, %bb.ab ], [ 36, %bb.aa ], [ 20, %bb.z ], [ 28, %bb.y ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ 60, %bb.x ], [ 4, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ]
  %.sroa.0.0.in.i = phi ptr [ %i.dz, %bb.ap ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ %i.dy, %bb.ao ], [ %i.dx, %bb.an ], [ %i.dw, %bb.am ], [ %i.dv, %bb.al ], [ %i.du, %bb.ak ], [ %i.dt, %bb.aj ], [ %i.ds, %bb.ai ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ %i.dr, %bb.ah ], [ %i.dq, %bb.ag ], [ %i.dp, %bb.af ], [ %i.do, %bb.ae ], [ %i.dn, %bb.ad ], [ %i.dm, %bb.ac ], [ %i.dl, %bb.ab ], [ %i.dk, %bb.aa ], [ %i.dj, %bb.z ], [ %i.di, %bb.y ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ], [ %i.dh, %bb.x ], [ %.sroa.02.032, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_31unordered_body_content_in_model0EB10_.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.02.032, i64 %.sink.i
  %.sroa.0.0.i15 = load i32, ptr %.sroa.0.0.in.i, align 8, !noundef !13
  %.sroa.26.0.i = load i32, ptr %i.ef, align 4, !noundef !13
  %i.eg = load ptr, ptr %i.p, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_django5rules31unordered_body_content_in_model33DjangoUnorderedBodyContentInModelEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.eg, i8 noundef %.sroa.0.0.i, i8 noundef %i.da, i32 noundef %.sroa.0.0.i15, i32 noundef %.sroa.26.0.i)
          to label %bb.as unwind label %.loopexit.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.at unwind label %.loopexit.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer

.outer:                                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model11ContentTypeE8push_mutBO_.exit, %bb.at
  %i.eh = icmp eq ptr %i.q, %i.n
  br i1 %i.eh, label %.outer._crit_edge, label %.lr.ph

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model16get_element_type.exit.thread: ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, %bb.h, %bb.p, %bb.r, %bb.o, %bb.f, %bb.q, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_django5rules31unordered_body_content_in_model16get_element_type.exit
  %i.ei = icmp eq ptr %i.q, %i.n
  br i1 %i.ei, label %.outer._crit_edge, label %bb.f

bb.au:                                            ; preds = %.loopexit
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return5rules8function12create_stack(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 20 uses
  %i.b = alloca [144 x i8], align 8               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !13, !noundef !13
  %i.f = load i64, ptr %i.e, align 8, !noundef !13
  switch i64 %i.f, label %bb.e [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.g = getelementptr i8, ptr %i.d, i64 84
  %i.h = load i8, ptr %i.g, align 4, !range !19, !noundef !13
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.j, ptr %i.k, align 8
  store i64 0, ptr %i.a, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.6.sroa.4.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.03.sroa.7.sroa.4.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.6.sroa.5.0..sroa.03.sroa.6.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.7.sroa.4.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %.sroa.03.sroa.7.sroa.5.0..sroa.03.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.03.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @167, i64 32, i1 false)
  %.sroa.03.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @167, i64 32, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = invoke { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.g unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor13ReturnVisitorEBJ_(ptr noalias noundef align 8 dereferenceable(184) %i.a) #38
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %.sroa.01.017 = phi ptr [ %i.w, %bb.j ], [ %i.o, %bb.g ] ; 2 uses
  invoke void @_RNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitorNtB4_13ReturnVisitorNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.a, ptr noundef nonnull align 8 %.sroa.01.017)
          to label %bb.j unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %lpad.phi, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %._crit_edge
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.u = load i8, ptr %i.t, align 8, !range !23, !noundef !13
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.l, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.017, i64 88 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.p
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor5StackEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.b, %bb.k
  ret void

bb.n:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return5rules8function18unnecessary_assign(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 9 uses
  %i.g = alloca [144 x i8], align 8               ; 6 uses
  %i.h = alloca [144 x i8], align 8               ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.j = load i8, ptr %i.i, align 4, !range !19, !noundef !13
  %i.k = icmp samesign ult i8 %i.j, 2
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return5rules8function12create_stack(ptr noalias noundef align 8 captures(none) dereferenceable(144) %i.g, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.g, align 8, !range !22, !noundef !13
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.h, %._crit_edge, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !13, !noundef !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !13
  %i.q = invoke noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7helpers13result_exists(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.p)
          to label %bb.g unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.f:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.ah, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.ah ], [ %i.eb, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor5StackEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.h) #38
          to label %bb.an unwind label %bb.am

.loopexit:                                        ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, %bb.t, %bb.v, %bb.aa, %bb.ab, %bb.ac, %bb.af, %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d, %bb.i, %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.g:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return7visitor5StackEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = invoke noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14function_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.r, ptr noundef nonnull align 8 %1)
          to label %bb.j unwind label %.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %bb.i
  %.not32 = icmp eq ptr %i.s, null
  br i1 %.not32, label %bb.h, label %bb.k
end_hunk_2
