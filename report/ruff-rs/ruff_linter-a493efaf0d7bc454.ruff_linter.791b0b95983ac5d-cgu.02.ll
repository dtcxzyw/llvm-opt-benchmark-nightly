Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30camelcase_imported_as_constant30camelcase_imported_as_constant:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.an, ptr %i.at, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ar, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.av = load i32, ptr %i.au, align 8, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !6, !align !88, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules30camelcase_imported_as_constant27CamelcaseImportedAsConstantEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %i.az, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, i32 noundef %i.av, i32 noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #48
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bc = call fastcc i32 @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %6)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10set_parent(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, i32 noundef %i.bc)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

bb.u:                                             ; preds = %bb.r, %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.v:                                             ; preds = %bb.r, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.bb, %bb.r ]
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.p
  unreachable

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit: ; preds = %bb.a, %bb.b, %bb.h, %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.t
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr nofree noundef readonly align 8 captures(address_is_null) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 5)
  %.not = icmp eq ptr %2, null
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 72
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i
  %i.h = phi ptr [ %i.i, %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !range !102, !noalias !10787, !noundef !6
  %i.k = icmp eq i32 %i.j, 28
  br i1 %i.k, label %bb.c, label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 23
  %i.n = load i8, ptr %i.m, align 1, !range !758, !alias.scope !10790, !noalias !10787, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !10790, !noalias !10787, !noundef !6
  %i.q = and i64 %i.p, 72057594037927935
  %i.r = icmp ult i8 %i.n, -48
  %i.s = zext i8 %i.n to i64
  %i.t = add nsw i64 %i.s, -192
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.r, i64 %spec.store.select.i.i.i, i64 %i.q ; 2 uses
  %i.u = icmp ugt i8 %i.n, -49
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !10790, !noalias !10787
  %.sroa.01.0.i.i.i = select i1 %i.u, ptr %i.v, ptr %i.l ; 3 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i.i, 9
  br i1 %i.w, label %bb.d, label %.split.i

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %.sroa.01.0.i.i.i, align 1
  %i.y = xor i64 %i.x, 8028075836850796613
  %i.z = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = xor i64 %i.ab, 110
  %i.ad = or i64 %i.y, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d, %bb.c
  %i.ah = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 5), !noalias !10787
  br i1 %i.ah, label %bb.e, label %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i

_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.i, %i.g
  br i1 %.not6.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d, %.split.i
  %i.ai = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming8settingsNtB5_11IgnoreNames7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit, label %bb.f

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit: ; preds = %_RNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00Bd_.exit.backedge.i, %bb.b, %bb.e, %bb.a, %bb.k
  ret void

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i10 = icmp slt i64 %4, 0
  br i1 %.not.i10, label %bb.i, label %bb.g, !prof !57

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp eq i64 %4, 0
  br i1 %i.aj, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread19, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10793
  %i.ak = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10793 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h
  %.sroa.4.0.ph = phi i64 [ 1, %bb.h ], [ 0, %bb.f ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %4) #46
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread19: ; preds = %bb.g, %bb.j
  %i.am = phi ptr [ %i.ak, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.g ]
  store i64 %4, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.an = invoke { i32, i32 } @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast10identifierNtNtB7_9generated4StmtNtB5_10Identifier10identifier(ptr noundef nonnull align 8 %1)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread19

bb.k:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread19
  %i.ao = extractvalue { i32, i32 } %i.an, 0
  %i.ap = extractvalue { i32, i32 } %i.an, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !align !88, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules30error_suffix_on_exception_name26ErrorSuffixOnExceptionNameEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i32 noundef %i.ao, i32 noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name30error_suffix_on_exception_name00EB2C_.exit

bb.l:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.as

bb.m:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread19
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules30error_suffix_on_exception_name26ErrorSuffixOnExceptionNameEBL_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #48
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules33constant_imported_as_non_constant33constant_imported_as_non_constant(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib3str18is_cased_uppercase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.d, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvNtCs4xX4QTdRF9r_18ruff_python_stdlib3str18is_cased_uppercase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.e, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not30.i = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %.not30.i, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %1, align 1, !noalias !10796, !noundef !6
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @454, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noalias !10796, !noundef !6
  %i.j = zext i8 %i.i to i64                      ; 6 uses
  %.not32.i = icmp uge i64 %2, %i.j
  tail call void @llvm.assume(i1 %.not32.i)
  %i.k = icmp samesign eq i64 %2, %i.j
  br i1 %i.k, label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !noalias !10799, !noundef !6 ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i: ; preds = %bb.e
  %i.o = add nuw nsw i64 %i.j, 1
  %i.p = icmp samesign ne i64 %i.o, %2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i8 %i.m, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i, label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i
  %i.r = add nuw nsw i64 %i.j, 2
  %i.s = icmp samesign ne i64 %i.r, %2
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp samesign ugt i8 %i.m, -17
  br i1 %i.t, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i, label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i
  %i.u = add nuw nsw i64 %i.j, 3
  %i.v = icmp samesign ne i64 %i.u, %2
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.f

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit: ; preds = %bb.c, %bb.d
  %i.w = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming7helpers12is_camelcase(ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.w, label %bb.as, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i, %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit
  %i.x = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming8settingsNtB5_11IgnoreNames7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.x, label %bb.as, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming8settingsNtB5_11IgnoreNames7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.y, label %bb.as, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.k, label %bb.i, !prof !57

bb.i:                                             ; preds = %bb.h
  br i1 %.not30.i, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10802
  %i.z = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10802 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.h, %bb.j
  %.sroa.4.0.ph = phi i64 [ 1, %bb.j ], [ 0, %bb.h ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #46
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35: ; preds = %bb.i, %bb.n
  %i.ab = phi ptr [ %i.z, %bb.n ], [ inttoptr (i64 1 to ptr), %bb.i ]
  store i64 %2, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.not.i12 = icmp slt i64 %4, 0
  br i1 %.not.i12, label %bb.p, label %bb.l, !prof !57

bb.l:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35
  %i.ac = icmp eq i64 %4, 0
  br i1 %i.ac, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit14.thread46, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10805
  %i.ad = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10805 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35

bb.o:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #48
          to label %bb.aq unwind label %bb.ap

bb.p:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35, %bb.m
  %.sroa.421.0.ph = phi i64 [ 1, %bb.m ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit.thread35 ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.421.0.ph, i64 %4) #46
          to label %bb.ar unwind label %bb.o

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit14.thread46: ; preds = %bb.l, %bb.q
  %i.ag = phi ptr [ %i.ad, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %4, ptr %i.ah, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.ag, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !6, !align !88, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pep8_naming5rules33constant_imported_as_non_constant29ConstantImportedAsNonConstantEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.an, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, i32 noundef %i.aj, i32 noundef %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvXsd_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit14.thread46

bb.r:                                             ; preds = %bb.an, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit14.thread46
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #48
          to label %bb.aq unwind label %bb.ap

bb.s:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter.exit14.thread46
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.ar = load i8, ptr %i.aq, align 4, !range !7815, !noundef !6 ; 2 uses
  %i.as = icmp samesign ugt i8 %i.ar, 1
  %i.at = zext nneg i8 %i.ar to i64
  %i.au = add nsw i64 %i.at, -1
  %i.av = select i1 %i.as, i64 %i.au, i64 0
  switch i64 %i.av, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.an
    i64 2, label %bb.an
    i64 3, label %bb.v
    i64 4, label %bb.w
    i64 5, label %bb.x
    i64 6, label %bb.y
    i64 7, label %bb.z
    i64 8, label %bb.aa
    i64 9, label %bb.ab
    i64 10, label %bb.ac
    i64 11, label %bb.ad
    i64 12, label %bb.ae
    i64 13, label %bb.an
    i64 14, label %bb.af
    i64 15, label %bb.ag
    i64 16, label %bb.ah
    i64 17, label %bb.ai
    i64 18, label %bb.aj
    i64 19, label %bb.ak
    i64 20, label %bb.al
    i64 21, label %bb.an
    i64 22, label %bb.an
    i64 23, label %bb.an
    i64 24, label %bb.am
  ]

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.an

bb.v:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.an

bb.w:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.an

bb.x:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.an

bb.y:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.an

bb.z:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.an

bb.aa:                                            ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.an

bb.ab:                                            ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.an

bb.ac:                                            ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %bb.an

bb.ad:                                            ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.an

bb.ae:                                            ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.an

bb.af:                                            ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48
  br label %bb.an

bb.ag:                                            ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.an

bb.ah:                                            ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.an

bb.ai:                                            ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.an

bb.aj:                                            ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.an

bb.ak:                                            ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.an

bb.al:                                            ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.an

bb.am:                                            ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %.sroa.0.0.in.i = phi ptr [ %i.bo, %bb.am ], [ %6, %bb.s ], [ %6, %bb.s ], [ %6, %bb.s ], [ %i.bn, %bb.al ], [ %i.bm, %bb.ak ], [ %i.bl, %bb.aj ], [ %i.bk, %bb.ai ], [ %i.bj, %bb.ah ], [ %i.bi, %bb.ag ], [ %i.bh, %bb.af ], [ %6, %bb.s ], [ %i.bg, %bb.ae ], [ %i.bf, %bb.ad ], [ %i.be, %bb.ac ], [ %i.bd, %bb.ab ], [ %i.bc, %bb.aa ], [ %i.bb, %bb.z ], [ %i.ba, %bb.y ], [ %i.az, %bb.x ], [ %i.ay, %bb.w ], [ %i.ax, %bb.v ], [ %6, %bb.s ], [ %i.aw, %bb.u ], [ %6, %bb.s ]
  %.sroa.0.0.i16 = load i32, ptr %.sroa.0.0.in.i, align 8, !noundef !6
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10set_parent(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao, i32 noundef %.sroa.0.0.i16)
          to label %bb.ao unwind label %bb.r

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
end_hunk_0
