Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.04?download=true
inline.NumInlined: 5984
inline.NumDeleted: 2399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8push_mutBK_:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %1) #43
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i16, ptr %i.b, align 8, !range !3677, !noundef !4 ; 2 uses
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i16 %i.c, 6
  %i.h = zext nneg i16 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4
  %.not4 = icmp eq ptr %i.p, null
  br i1 %.not4, label %.invoke, label %bb.d, !prof !33

bb.c:                                             ; preds = %bb.a
  %i.q = invoke noundef i8 @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard21resolve_applicability(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.i unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10remove_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.k

.invoke:                                          ; preds = %bb.i, %bb.b
  %i.r = phi ptr [ @199, %bb.b ], [ @200, %bb.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #45
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %lpad.thr_comm, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !4
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.invoke, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.q, ptr %i.w, align 8
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  br label %bb.h

bb.k:                                             ; preds = %.invoke, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %1) #43
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5239, !noalias !5242, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5239, !noalias !5242, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5239, !noalias !5242 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5244)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5244
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.p = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i, label %bb.p, !prof !4928

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5244
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #46, !noalias !5244 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 4
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #46, !noalias !5244 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5244
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5244
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5244
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5244
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4928

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5247
  store i64 0, ptr %i.a, align 8, !noalias !5247
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5247
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #46, !noalias !5244
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5250, !noalias !5253, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5250, !noalias !5253
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5255

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5256, !noalias !5259, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, label %bb.m, !prof !4928

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #46 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #46 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4928

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5261
  store i64 0, ptr %i.a, align 8, !noalias !5261
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5261
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E21reserve_one_uncheckedBS_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5264, !noalias !5267, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5264, !noalias !5267
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E8try_growBS_(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5255

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E8try_growBS_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5269, !noalias !5272, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 12                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 768614336404564650
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit, !prof !5274

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit
  %i.k = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, !prof !5274

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #46 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw i64 %.val, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit, !prof !5274

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5275
  store i64 0, ptr %i.a, align 8, !noalias !5275
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !5275
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5275
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !5278, !noalias !5281, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5278, !noalias !5281
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5255

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5283, !noalias !5286, !nonnull !4 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit
  %i.j = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.j, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, label %bb.m, !prof !4928

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.k = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #46 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45: ; preds = %bb.g
  %i.m = shl nuw nsw i64 %.sink.i, 3
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.m, i64 noundef 8, i64 noundef %i.i) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl nuw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl nuw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %or.cond.i = icmp ult i64 %i.b, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4928

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5288
  store i64 0, ptr %i.a, align 8, !noalias !5288
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5288
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  %i.r = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralj1_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5291, !noalias !5294, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5291, !noalias !5294, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5291, !noalias !5294 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5296
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.p = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i, label %bb.p, !prof !4928

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5296
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #46, !noalias !5296 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 3
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.o) #46, !noalias !5296 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5296
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5296
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5296
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5296
  %or.cond.i.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4928

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5299
  store i64 0, ptr %i.a, align 8, !noalias !5299
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5299
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #46, !noalias !5296
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5302, !noalias !5305, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5302, !noalias !5305
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5255

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5307, !noalias !5310, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, label %bb.m, !prof !4928

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #46 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #46 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4928

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5312
  store i64 0, ptr %i.a, align 8, !noalias !5312
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5312
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARej8_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5315, !noalias !5318, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5315, !noalias !5318, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5315, !noalias !5318 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5320)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5320
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4928

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.q = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i, label %bb.p, !prof !4928

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5320
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #46, !noalias !5320 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i: ; preds = %bb.i
  %i.t = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.t, i64 noundef 8, i64 noundef %i.p) #46, !noalias !5320 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5320
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5320
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5320
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl nuw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5320
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4928

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5323
  store i64 0, ptr %i.a, align 8, !noalias !5323
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5323
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 8) #46, !noalias !5320
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !420, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5326)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5326, !noalias !5329, !noundef !4 ; 5 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !5326, !noalias !5329 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i
  br i1 %i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not.i = icmp ugt i64 %i.h, %.val1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !5326, !noalias !5329 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i = load i8, ptr %i.p, align 1, !alias.scope !5326, !noalias !5329 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i
  %i.q = phi i64 [ %.promoted.i, %.lr.ph.split.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !5331
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.r, %bb.e ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.01.05.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !5332, !noalias !5331, !noundef !4
  %i.z = icmp eq i8 %i.y, %.pre.i
  br i1 %i.z, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.d
  %.merged.i.i = phi { i64, i64 } [ %i.w, %._crit_edge.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  %i.ad = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ae = add i64 %i.q, 1
  %i.af = add i64 %i.ae, %i.ad                    ; 7 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !5326, !noalias !5329
  %.not12.i = icmp ult i64 %i.af, %i.m
  %.not13.i = icmp ugt i64 %i.af, %.val1
  %or.cond.i = or i1 %.not12.i, %.not13.i
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !5326, !noalias !5329
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ag = icmp ult i64 %i.h, %i.af
  br i1 %i.ag, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.m                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.j, i64 %i.m), !noalias !5329
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, label %bb.h

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit: ; preds = %bb.i
  %i.ak = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.al = sub nuw i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  store i64 %i.af, ptr %0, align 8
  br label %bb.j

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %.lr.ph.i, %bb.b, %bb.g
  store i8 1, ptr %i.a, align 1, !alias.scope !5335
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !420, !alias.scope !5335, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2 = load i64, ptr %0, align 8, !alias.scope !5335 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5335 ; 2 uses
  %.not.i3 = icmp ne i64 %.pre2.i, %.pre.i2
  %or.cond.not.i = select i1 %i.ap, i1 true, i1 %.not.i3 ; 2 uses
  %i.aq = sub nuw i64 %.pre2.i, %.pre.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre.i2
  %.sroa.3.0.i = select i1 %or.cond.not.i, i64 %i.aq, i64 undef
  %.sroa.0.0.i = select i1 %or.cond.not.i, ptr %i.ar, ptr null
  br label %bb.j

bb.j:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.al, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.3.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.am, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.0.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsEhZmuQNqkz_11ruff_linter11suppression31rule_identifier_range_at_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 21 uses
  %i.g = alloca [12 x i8], align 4                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %5, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtCsEhZmuQNqkz_11ruff_linter4noqa31rule_identifier_range_at_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  %i.i = load i32, ptr %i.g, align 4, !range !289, !alias.scope !5341, !noalias !5343, !noundef !4
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.g, i64 12, i1 false), !alias.scope !5345, !noalias !5346
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeE7or_elseNCNvNtCsEhZmuQNqkz_11ruff_linter11suppression31rule_identifier_range_at_offset0EB1L_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5355)
  %i.k = zext i32 %3 to i64                       ; 6 uses
  %i.l = zext i32 %4 to i64                       ; 5 uses
  %.not.i.i.i.i = icmp ugt i32 %3, %4
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

end_hunk_0
